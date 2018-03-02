/*

Copyright (c) 2018, ITHare.com
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

* Redistributions of source code must retain the above copyright notice, this
  list of conditions and the following disclaimer.

* Redistributions in binary form must reproduce the above copyright notice,
  this list of conditions and the following disclaimer in the documentation
  and/or other materials provided with the distribution.

* Neither the name of the copyright holder nor the names of its
  contributors may be used to endorse or promote products derived from
  this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

*/

//TEST GENERATOR. Generates randomized command lines for a testing session
//  Using C++ to avoid writing the same logic twice in *nix .sh and Win* .bat

#include <iostream>
#include <string.h>
#include <string>
#include <stdio.h>
#include <assert.h>

static const char* randomtest_files[] = { "officialtest.cpp", "chachatest.cpp", nullptr };
std::string file_list(std::string srcDir)  {
	std::string ret = "";
	for(size_t i=0; randomtest_files[i] ; ++i ) {
		ret += " ";
		ret += srcDir;
		ret += randomtest_files[i];
	}
	return ret;
}

std::string replace_string(std::string subject, std::string search,//adapted from https://stackoverflow.com/a/14678964
	std::string replace) {
	size_t pos = 0;
	while ((pos = subject.find(search, pos)) != std::string::npos) {
		subject.replace(pos, search.length(), replace);
		pos += replace.length();
	}
	return subject;
}

#if defined(__APPLE_CC__) || defined(__linux__)

class KscopeTestEnvironment {
	public:
	enum class config { debug, release };
	using Flags = uint32_t;
	constexpr static Flags flag_auto_dbg_print = 0x01;
	std::string src_dir_prefix = "";
	bool gen_sh = false;
	
	virtual std::string root_test_dir() { return  src_dir_prefix + "../"; }
	virtual std::string test_src_dir() { return  src_dir_prefix + "../"; }

	virtual std::string always_define() {//relative to kscope/test
		return "-DITHARE_KSCOPE_TEST_EXTENSION=\"../src/kscope_sample_extension.h\"";
	}
	virtual std::string build_release(std::string defines) {
		return std::string("$CXX -O3 -DNDEBUG ") + always_define() + " " + defines + " -o randomtest -std=c++1z -lstdc++ -Werror -Wall -Wextra" + file_list(test_src_dir());
	}
	virtual std::string build_debug(std::string defines) {
		return std::string("$CXX ") + always_define() + " " + defines + " -o randomtest -std=c++1z -lstdc++ -Werror -Wall -Wextra" + file_list(test_src_dir());
	}
	virtual std::string build32option() {
		return " -m32";
	}
	virtual std::string gen_random64() {
		static FILE* frnd = fopen("/dev/urandom","rb");
		if(frnd==0) {
			std::cout << "Cannot open /dev/urandom, aborting" << std::endl;
			abort();
		}
		uint8_t buf[8];
		size_t rd = fread(buf,sizeof(buf),1,frnd);
		if( rd != 1 ) {
			std::cout << "Problems reading from /dev/urandom, aborting" << std::endl;
			abort();
		}

		char buf2[sizeof(buf)*2+1];
		for(size_t i=0; i < sizeof(buf) ; ++i) {
			assert(buf[i]<=255);
			sprintf(&buf2[i*2],"%02x",buf[i]);
		}
		return std::string(buf2);
	}
	virtual std::string exit_check(std::string cmd_, bool expectok = true) {
		std::string cmd = replace_string(cmd_,"\"", "\\\\\\\"");//yes, it is this many backslashes required to get through 3 levels of de-escaping (C++ compiler, 'echo', and failedrandomtest.sh)
		if( expectok )
			return std::string("if [ ! $? -eq 0 ]; then\n  echo \"") + cmd + ( "\">failedrandomtest.sh\n  exit 1\nfi");
		else
			return std::string("if [ ! $? -ne 0 ]; then\n  echo \"") + cmd + ( "\">failedrandomtest.sh\n  exit 1\nfi");
	}
	virtual std::string command(std::string cmd) {
		return replace_string(cmd,"\"", "\\\"");
	}
	virtual std::string echo(std::string s_,bool highlight=false) {
		std::string s = replace_string(s_,"\"", "\\\"");
		if(highlight)
			return std::string("echo \"${HIGHLIGHT}")+s+"${NOHIGHLIGHT}\"";	
		else
			return std::string("echo \"" + s +"\"");
	}
	virtual std::string run(std::string redirect) {
		if(redirect!="")
			return std::string("./randomtest >")+redirect;
		else
			return std::string("./randomtest");
	}
	virtual std::string check_exe(int nseeds,config cfg,Flags flags) {
		return "";
	}
	virtual std::string cmp_files(std::string f1, std::string f2) {
		return std::string("diff ") + f1 + " " + f2 + " 2>&1 >/dev/null";
	}
	virtual std::string setup() {
		if( !gen_sh ) {
			return  
			std::string("# no shebang - don't want to change current shell")
			+ "\nif [ -z ${BASH_VERSINFO[0]} ]; then"
			  "\necho \"Bash version 4+ is required (to work with .sh or older bash, re-generate using randomtestgen -gen_sh)\""
			  "\nexit 1"
			  "\nfi"
			  "\nif [ ${BASH_VERSINFO[0]} -lt 4 ]; then"
			  "\necho \"Bash version 4+ is required (to work with .sh or older bash, re-generate using randomtestgen -gen_sh)\""
			  "\nexit 1"
			  "\nfi"
			+ "\nCXX=${CXX:=g++}"
			+ "\nHIGHLIGHT=\"$(tput bold)$(tput setaf 2)$(tput rev)\""
			  "\nNOHIGHLIGHT=\"$(tput sgr0)\""
			+ "\n" + echo("===*** COMPILER BEING USED: CXX=${CXX} ***===",true)+"\n$CXX --version"
			+ "\nSTART=${1:-f1}"
			  "\ncase $START in";
		  }
		else {
			return std::string("# no shebang - don't want to change current shell")
			+ "\necho \"NOTICE: .sh version, start-from parameter is disabled\""
			+ "\nCXX=${CXX:=g++}"
			+ "\nHIGHLIGHT=\"$(tput bold)$(tput setaf 2)$(tput rev)\""
			  "\nNOHIGHLIGHT=\"$(tput sgr0)\""
			+ "\n" + echo("===*** COMPILER BEING USED: CXX=${CXX} ***===",true)+"\n$CXX --version";
		}
	}
	static int nlabels;
	virtual std::string label(std::string lab) {
		if( gen_sh )
			return "";
		if(nlabels++==0)
			return lab+")";
		else
			return std::string(";&")
			+ "\n"+lab+")";
	}
	virtual std::string cleanup() {
		if (!gen_sh ) {
			return std::string("esac") 
			+ "\nrm randomtest";
		}
		else
			return "rm randomtest";
	}

};

int KscopeTestEnvironment::nlabels = 0;
#elif defined(_WIN32)
#include <windows.h>
class KscopeTestEnvironment {
	public:
	enum class config { debug, release };
	using Flags = uint32_t;
	constexpr static Flags flag_auto_dbg_print = 0x01;
	std::string src_dir_prefix = "";
	
	virtual std::string root_test_dir() { return  src_dir_prefix + "..\\"; }
	virtual std::string test_src_dir() { return  src_dir_prefix + "..\\"; }

	virtual std::string always_define() {
		return "/DITHARE_KSCOPE_TEST_EXTENSION=\"../src/kscope_sample_extension.h\"";
	}
	virtual std::string build_release(std::string defines_) {
		std::string defines = replace_string(defines_, " -D", " /D");
		return std::string("cl /permissive- /GS /GL /W4 /Gy /Zc:wchar_t /Gm- /O2 /sdl /Zc:inline /fp:precise /DNDEBUG /D_CONSOLE /D_UNICODE /DUNICODE /errorReport:prompt /WX /Zc:forScope /GR- /Gd /Oi /MT /EHsc /nologo /diagnostics:classic /std:c++17 /cgthreads1 /INCREMENTAL:NO /Ferandomtest.exe") + defines + " " + always_define() + file_list(test_src_dir());
			//string is copy-pasted from Rel-NoPDB config with manually-added /cgthreads1 /INCREMENTAL:NO, /Fe, and /WX- replaced with /WX
	}
	virtual std::string build_debug(std::string defines_) {
		std::string defines = replace_string(defines_, " -D", " /D");
		return std::string("cl /permissive- /GS /W4 /Zc:wchar_t /ZI /Gm /Od /sdl /Zc:inline /fp:precise /D_DEBUG /D_CONSOLE /D_UNICODE /DUNICODE /errorReport:prompt /WX /Zc:forScope /RTC1 /Gd /MDd /EHsc /nologo /diagnostics:classic /std:c++17 /cgthreads1 /INCREMENTAL:NO /bigobj /Ferandomtest.exe") + defines + " " + always_define() + file_list(test_src_dir());
			//string is copy-pasted from Debug config with manually-added /cgthreads1 /INCREMENTAL:NO /bigobj, /Fe, and /WX- replaced with /WX
	}
	virtual std::string build32option() {
		std::cout << "no option to run both 32-bit and 64-bit testing for MSVC now, run testing without -add32tests in two different 'Tools command prompts' instead" << std::endl;
		abort();
	}

	virtual std::string gen_random64() {
		static HCRYPTPROV prov = NULL;
		if (!prov) {
			BOOL ok = CryptAcquireContext(&prov,NULL,NULL,PROV_RSA_FULL,0);
			if (!ok) {
				std::cout << "CryptAcquireContext() returned error, aborting" << std::endl;
				abort();
			}
		};
		uint8_t buf[8];
		BOOL ok = CryptGenRandom(prov, sizeof(buf), buf);
		if (!ok) {
			std::cout << "Problems calling CryptGenRandom(), aborting" << std::endl;
			abort();
		}

		char buf2[sizeof(buf) * 2 + 1];
		for (size_t i = 0; i < sizeof(buf); ++i) {
			assert(buf[i] <= 255);
			sprintf(&buf2[i * 2], "%02x", buf[i]);
		}
		return std::string(buf2);
	}
	virtual std::string exit_check(std::string cmd_,bool expectok = true) {
		std::string cmd = replace_string(cmd_,"\"", "\\\"");
		static int nextlabel = 1;
		if (expectok) {

			auto ret = std::string("IF NOT ERRORLEVEL 1 GOTO LABEL") + std::to_string(nextlabel)
				+ "\nECHO " + replace_string(cmd,">","^>") + ">failedrandomtest.bat"
				+ "\nEXIT /B\n:LABEL" + std::to_string(nextlabel);
			nextlabel++;
			return ret;
		}
		else {
			auto ret = std::string("IF ERRORLEVEL 1 GOTO LABEL") + std::to_string(nextlabel)
				+ "\nECHO " + replace_string(cmd, ">", "^>") + ">failedrandomtest.bat"
				+ "\nEXIT /B\n:LABEL" + std::to_string(nextlabel);
			nextlabel++;
			return ret;
		}
	}
	virtual std::string command(std::string cmd) {
		return replace_string(cmd,"\"", "\\\"");
	}
	virtual std::string echo(std::string s_,bool highlight=false) {
		std::string s = replace_string(s_,"\"", "\\\"");
		return std::string("ECHO ") + replace_string(s, ">", "^>");
	}
	virtual std::string run(std::string redirect) {
		if(redirect!="")
			return std::string("randomtest.exe >")+redirect;
		else
			return std::string("randomtest.exe");
	}
	virtual std::string check_exe(int nseeds,config cfg,Flags flags) {
		return "";
	}
	virtual std::string cmp_files(std::string f1, std::string f2) {
		return std::string("fc ") + f1 + " " + f2 + " >nul";
	}
	virtual std::string cleanup() {
		return std::string("del randomtest.exe");
	}
	virtual std::string label(std::string lab) {
		return std::string(":") + lab;
	}
	std::string setup() {
		return "@ECHO OFF\nDEL *.PDB\nDEL *.IDB"
		"\nIF .%1==. GOTO CONT"
		"\nGOTO %1"
		"\n:CONT" ;
	}
};
#else
#error "Unrecognized platform for randomized testing"
#endif 

class KscopeTestGenerator {
protected:
	KscopeTestEnvironment* kenv;

	public:
	enum class write_output { none, stable, random, stable_first, stable_next };
	bool add32tests = false;

	KscopeTestGenerator(KscopeTestEnvironment& kenv_) : kenv(&kenv_) {
	}

	virtual std::string project_name() {
		return "kscope";
	}
	virtual std::string fixed_seeds() {
		return std::string(" -DITHARE_KSCOPE_SEED=0x4b295ebab3333abc -DITHARE_KSCOPE_SEED2=0x36e007a38ae8e0ea");//from random.org
	}
	virtual std::string gen_seed() {
		return std::string(" -DITHARE_KSCOPE_SEED=0x") + kenv->gen_random64();
	}

	virtual std::string gen_seeds() {
		return gen_seed() + " -DITHARE_KSCOPE_SEED2=0x" + kenv->gen_random64();
	}

	virtual void issue_command(std::string cmd) {
		std::cout << kenv->echo(cmd) << std::endl;
		std::cout << kenv->command(cmd) << std::endl;
	}

	virtual void build_check_run_check(std::string cmd,int nseeds,KscopeTestEnvironment::config cfg,KscopeTestEnvironment::Flags flags,write_output wo) {
		issue_command(cmd);
		std::cout << kenv->exit_check(cmd) << std::endl;
		std::cout << kenv->check_exe(nseeds,cfg,flags) << std::endl;

		std::string tofile = "";
		switch (wo) {
		case write_output::none:
			break;
		case write_output::stable_first:
			tofile = kenv->root_test_dir() + "kscope.txt";
			break;
		case write_output::stable_next:
			tofile = kenv->root_test_dir() + "kscope2.txt";
			break;
		case write_output::random:
			tofile = "local_kscope.txt";
			break;
		default:
			assert(false);
		}
		std::string cmdrun = kenv->run(tofile);
		issue_command(cmdrun);
		std::cout << kenv->exit_check(cmdrun) << std::endl;
		if(wo==write_output::stable_next) {
			std::string cmpfiles = kenv->cmp_files(kenv->root_test_dir() + "kscope.txt", kenv->root_test_dir() + "kscope2.txt");
			issue_command(cmpfiles);
			std::cout << kenv->exit_check(cmpfiles) << std::endl;
		}
	}

	virtual std::string seedsByNum(int nseeds) {
		assert(nseeds >= -1 && nseeds <= 2);
		if(nseeds==1)
			return gen_seed();
		else if(nseeds==2)
			return gen_seeds();
		else if(nseeds==-1)
			return fixed_seeds();
		assert(nseeds==0);
		return "";
	}

	virtual std::string buildCmd(KscopeTestEnvironment::config cfg,std::string defs) {
		switch(cfg) {
		case KscopeTestEnvironment::config::debug:
			return kenv->build_debug(defs);
		case KscopeTestEnvironment::config::release:
			return kenv->build_release(defs);
		}
		assert(false);
		return "";
	}
	
	virtual void insert_label(std::string label) {
		std::cout << kenv->label(label) << "\n";
	}

	virtual void fixed_test(KscopeTestEnvironment::config cfg,std::string defs,int nseeds,KscopeTestEnvironment::Flags flags=0,write_output wo=write_output::none) {
		assert(nseeds >= -1 && nseeds <= 2);
		write_output wox = wo;
		if(wo==write_output::stable){
			assert(nseeds<0);
			wox = write_output::stable_first;
		}
		else {
			assert(nseeds>=0);
		}
		
		std::string cmd1 = buildCmd(cfg, defs + seedsByNum(nseeds));
		build_check_run_check(cmd1,nseeds,cfg,flags,wox);
		if(wox==write_output::stable_first)
			wox = write_output::stable_next;
		std::string cmd2 = buildCmd(cfg, defs + seedsByNum(nseeds) + " -DITHARE_KSCOPE_TEST_NO_NAMESPACE");
		build_check_run_check(cmd2,nseeds,cfg,flags,wox);
		
		if(add32tests) {
			std::string m32 = kenv->build32option();
			std::string cmd1 = buildCmd(cfg, defs + m32 + seedsByNum(nseeds));
			build_check_run_check(cmd1,nseeds,cfg,flags,wox);
			std::string cmd2 = buildCmd(cfg, defs + m32 + seedsByNum(nseeds) + " -DITHARE_KSCOPE_TEST_NO_NAMESPACE");
			build_check_run_check(cmd2,nseeds,cfg,flags,wox);
		}
	}
	
	virtual void gen_fixed_tests() {
		insert_label("f1");		
		std::cout << kenv->echo("=== "+project_name()+" Fixed Test 1/12 (DEBUG, -DITHARE_KSCOPE_ENABLE_AUTO_DBGPRINT, write_output::stable) ===",true) << std::endl;
		fixed_test(KscopeTestEnvironment::config::debug, " -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_ENABLE_AUTO_DBGPRINT", -1, KscopeTestEnvironment::flag_auto_dbg_print, write_output::stable);
		insert_label("f2");
		std::cout << kenv->echo("=== "+project_name()+" Fixed Test 2/12 (RELEASE, -DITHARE_KSCOPE_ENABLE_AUTO_DBGPRINT=2, write_output::random)===",true) << std::endl;
		fixed_test(KscopeTestEnvironment::config::release, " -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_ENABLE_AUTO_DBGPRINT=2", 2, KscopeTestEnvironment::flag_auto_dbg_print,write_output::random);
		insert_label("f3");
		std::cout << kenv->echo("=== "+project_name()+" Fixed Test 3/12 (DEBUG, no ITHARE_KSCOPE_SEED) ===",true ) << std::endl;
		fixed_test(KscopeTestEnvironment::config::debug,"",0);
		insert_label("f4");
		std::cout << kenv->echo("=== "+project_name()+" Fixed Test 4/12 (RELEASE, no ITHARE_KSCOPE_SEED) ===",true) << std::endl;
		fixed_test(KscopeTestEnvironment::config::release,"",0);
		insert_label("f5");
		std::cout << kenv->echo("=== "+project_name()+" Fixed Test 5/12 (DEBUG, single ITHARE_KSCOPE_SEED) ===",true) << std::endl;
		fixed_test(KscopeTestEnvironment::config::debug,"",1);
		insert_label("f6");
		std::cout << kenv->echo("=== "+project_name()+" Fixed Test 6/12 (RELEASE, single ITHARE_KSCOPE_SEED) ===",true) << std::endl;
		fixed_test(KscopeTestEnvironment::config::release,"",1);
		insert_label("f7");
		std::cout << kenv->echo("=== "+project_name()+" Fixed Test 7/12 (DEBUG) ===",true ) << std::endl;
		fixed_test(KscopeTestEnvironment::config::debug,"",2);
		insert_label("f8");
		std::cout << kenv->echo("=== "+project_name()+" Fixed Test 8/12 (RELEASE) ===",true ) << std::endl;
		fixed_test(KscopeTestEnvironment::config::release,"",2);
		insert_label("f9");
		std::cout << kenv->echo("=== "+project_name()+" Fixed Test 9/12 (DEBUG, -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS) ===" ,true ) << std::endl;
	#if defined(_MSC_VER)
		std::cout << kenv->echo("*** SKIPPED -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS FOR MSVC (cannot cope) ***",true) << std::endl;
	#else
		fixed_test(KscopeTestEnvironment::config::debug, " -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS", 2);
	#endif
		insert_label("f10");
		std::cout << kenv->echo( "=== "+project_name()+" Fixed Test 10/12 (RELEASE, -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS) ===" ,true ) << std::endl;
	#if defined(_MSC_VER)
		std::cout << kenv->echo("*** SKIPPED -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS FOR MSVC (cannot cope) ***",true) << std::endl;
	#else
		fixed_test(KscopeTestEnvironment::config::release, " -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS",2);
	#endif
		insert_label("f11");
		std::cout << kenv->echo("=== "+project_name()+" Fixed Test 11/12 (DEBUG, -DITHARE_KSCOPE_CRYPTO_PRNG) ===",true) << std::endl;
	#if defined(_MSC_VER) && !defined(_M_X64)
		std::cout << kenv->echo("*** SKIPPED -DITHARE_KSCOPE_DBG_CRYPTO_PRNG FOR MSVC/x86 (cannot cope) ***",true) << std::endl;
	#else
		fixed_test(KscopeTestEnvironment::config::debug," -DITHARE_KSCOPE_CRYPTO_PRNG",2);
	#endif
		insert_label("f12");
		std::cout << kenv->echo("=== "+project_name()+" Fixed Test 12/12 (RELEASE, -DITHARE_KSCOPE_CRYPTO_PRNG) ===",true) << std::endl;
	#if defined(_MSC_VER) && !defined(_M_X64)
		std::cout << kenv->echo("*** SKIPPED -DITHARE_KSCOPE_DBG_CRYPTO_PRNG FOR MSVC/x86 (cannot cope) ***",true) << std::endl;
	#else
		fixed_test(KscopeTestEnvironment::config::release, " -DITHARE_KSCOPE_CRYPTO_PRNG", 2);
	#endif
	}

	virtual void gen_random_tests(size_t n) {
		for (size_t i = 0; i < n; ++i) {
			KscopeTestEnvironment::config cfg = KscopeTestEnvironment::config::release;
			if (i % 4 == 0)
				cfg = KscopeTestEnvironment::config::debug;
			std::string extra;
			if (i % 3 == 0) { //every third, non-exclusive
				bool rtchecks_ok = true;
	#if defined(_MSC_VER) 
				rtchecks_ok = false;//cl doesn't seem to cope well with RUNTIME_CHECKS :-(
	#endif
				if(rtchecks_ok)
					extra += " -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS";
			}
			if(add32tests && i%5 <=1)
				extra += kenv->build32option();
			insert_label(std::string("r")+std::to_string(i+1));
			std::cout << kenv->echo( std::string("=== " + project_name() + " Random Test ") + std::to_string(i+1) + "/" + std::to_string(n) + " ===", true ) << std::endl;
			std::string defines = gen_seeds()+" -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS"+extra;
			if( cfg == KscopeTestEnvironment::config::debug ) {
				build_check_run_check(kenv->build_debug(defines),2, KscopeTestEnvironment::config::debug,0,write_output::none);
			}
			else {
				assert(cfg == KscopeTestEnvironment::config::release);
				build_check_run_check(kenv->build_release(defines),2, KscopeTestEnvironment::config::release,0,write_output::none);
			}
		}
	}

	void gen_setup() {
		std::cout << kenv->setup() << std::endl;
	}

	void gen_cleanup() {
		std::cout << kenv->cleanup() << std::endl;
	}
};

inline int usage() {
	std::cerr << "Usage:" << std::endl;
	std::cerr << "randomtestgen"; 
#if defined(__APPLE_CC__) || defined(__linux__)
	std::cerr << " [-gen_sh]";
#endif
	std::cerr << " [-add32tests] [-srcdirprefix] <nrandomtests>" << std::endl;
	return 1;
}

inline int almost_main(KscopeTestEnvironment& kenv, KscopeTestGenerator& kgen, int argc, char** argv) {
	int argcc = 1;
	while(argcc<argc) {
		if(strcmp(argv[argcc],"-add32tests") == 0) {
			kgen.add32tests = true;
			argcc++;
		}
		else if (strcmp(argv[argcc], "-srcdirprefix") == 0) {
			assert(argcc +1 < argc);
			kenv.src_dir_prefix = argv[argcc+1];
			argcc+=2;
		}
#if defined(__APPLE_CC__) || defined(__linux__)
		else if(strcmp(argv[argcc],"-gen_sh") == 0) {
			kenv.gen_sh = true;
			argcc++;
		}
#endif
		//other options go here
		else
			break;
	}
	
	if(argcc >= argc)
		return usage();
	char* end;
	unsigned long nrandom = strtoul(argv[argcc],&end,10);
	if(*end!=0)
		return usage();
		
	kgen.gen_setup();
	kgen.gen_fixed_tests();

	kgen.gen_random_tests(nrandom);
	kgen.gen_cleanup();
	return 0;
}
