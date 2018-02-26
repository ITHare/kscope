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

static const char* randomtestfiles[] = { "officialtest.cpp", "chachatest.cpp", nullptr };
std::string file_list(std::string srcDir)  {
	std::string ret = "";
	for(size_t i=0; randomtestfiles[i] ; ++i ) {
		ret += " ";
		ret += srcDir;
		ret += randomtestfiles[i];
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
	using Flags = uint32_t; 
	constexpr static Flags flag_auto_dbg_print = 0x01;
	std::string srcDirPrefix = "";
	
	virtual std::string rootTestFolder() { return  srcDirPrefix + "../"; }
	virtual std::string testSrcFolder() { return  srcDirPrefix + "../"; }

	virtual std::string alwaysDefine() {//relative to kscope/test
		return "-DITHARE_KSCOPE_TEST_EXTENSION=\"../src/kscope_sample_extension.h\"";
	}
	virtual std::string buildRelease(std::string defines) {
		return std::string("$CXX -O3 -DNDEBUG ") + alwaysDefine() + " " + defines + " -o testapp -std=c++1z -lstdc++ -Werror" + file_list(testSrcFolder());
	}
	virtual std::string buildDebug(std::string defines) {
		return std::string("$CXX ") + alwaysDefine() + " " + defines + " -o testapp -std=c++1z -lstdc++ -Werror" + file_list(testSrcFolder());
	}
	virtual std::string build32option() {
		return " -m32";
	}
	virtual std::string genRandom64() {
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
	virtual std::string exitCheck(std::string cmd_, bool expectok = true) {
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
			return std::string("./testapp >")+redirect;
		else
			return std::string("./testapp");
	}
	virtual std::string checkExe(int nseeds,Flags flags) {
		return "";
	}
	virtual std::string cmpFiles(std::string f1, std::string f2) {
		return std::string("diff ") + f1 + " " + f2 + " 2>&1 >/dev/null";
	}
	virtual std::string setup() {
		return std::string("#!/bin/sh") 
		+ "\nCXX=\"${CXX:=g++}\""
		+ "\nHIGHLIGHT='\\033[32m\\033[1m\\033[7m'\nNOHIGHLIGHT='\\033[0m'\n" //along the lines of https://stackoverflow.com/a/5947802/4947867
		+ echo("===*** COMPILER BEING USED: CXX=${CXX} ***===",true)+"\n$CXX --version";
	}
	virtual std::string cleanup() {
		return std::string("rm testapp");	
	}

};
#elif defined(_WIN32)
#include <windows.h>
class KscopeTestEnvironment {
	public:
	using Flags = uint32_t; 
	constexpr static Flags flag_auto_dbg_print = 0x01;
	std::string srcDirPrefix = "";
	
	virtual std::string rootTestFolder() { return  srcDirPrefix + "..\\"; }
	virtual std::string testSrcFolder() { return  srcDirPrefix + "..\\"; }

	virtual std::string alwaysDefine() {
		return "/DITHARE_KSCOPE_TEST_EXTENSION=\"../src/kscope_sample_extension.h\"";
	}
	virtual std::string buildRelease(std::string defines_) {
		std::string defines = replace_string(defines_, " -D", " /D");
		return std::string("cl /permissive- /GS /GL /W3 /Gy /Zc:wchar_t /Gm- /O2 /sdl /Zc:inline /fp:precise /DNDEBUG /D_CONSOLE /D_UNICODE /DUNICODE /errorReport:prompt /WX /Zc:forScope /GR- /Gd /Oi /MT /EHsc /nologo /diagnostics:classic /std:c++17 /cgthreads1 /INCREMENTAL:NO") + defines + " " + alwaysDefine() + file_list(testSrcFolder());
			//string is copy-pasted from Rel-NoPDB config with manually-added /cgthreads1 /INCREMENTAL:NO, and /WX- replaced with /WX
	}
	virtual std::string buildDebug(std::string defines_) {
		std::string defines = replace_string(defines_, " -D", " /D");
		return std::string("cl /permissive- /GS /W3 /Zc:wchar_t /ZI /Gm /Od /sdl /Zc:inline /fp:precise /D_DEBUG /D_CONSOLE /D_UNICODE /DUNICODE /errorReport:prompt /WX /Zc:forScope /RTC1 /Gd /MDd /EHsc /nologo /diagnostics:classic /std:c++17 /cgthreads1 /INCREMENTAL:NO /bigobj") + defines + " " + alwaysDefine() + file_list(testSrcFolder());
			//string is copy-pasted from Debug config with manually-added /cgthreads1 /INCREMENTAL:NO /bigobj, and /WX- replaced with /WX
	}
	virtual std::string build32option() {
		std::cout << "no option to run both 32-bit and 64-bit testing for MSVC now, run testing without -add32tests in two different 'Tools command prompts' instead" << std::endl;
		abort();
	}

	virtual std::string genRandom64() {
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
	virtual std::string exitCheck(std::string cmd_,bool expectok = true) {
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
			return std::string("officialtest.exe >")+redirect;
		else
			return std::string("officialtest.exe");
	}
	virtual std::string checkExe(int nseeds,Flags flags) {
		return "";
	}
	virtual std::string cmpFiles(std::string f1, std::string f2) {
		return std::string("fc ") + f1 + " " + f2 + " >nul";
	}
	virtual std::string cleanup() {
		return std::string("del officialtest.exe");
	}
	std::string setup() {
		return "@ECHO OFF\nDEL *.PDB\nDEL *.IDB";
	}
};
#else
#error "Unrecognized platform for randomized testing"
#endif 

class KscopeTestGenerator {
	KscopeTestEnvironment* kenv;

	public:
	enum class write_output { none, stable, random, stable_first, stable_next };
	enum class config { debug, release };
	bool add32tests = false;

	KscopeTestGenerator(KscopeTestEnvironment& kenv_) : kenv(&kenv_) {
	}

	virtual std::string fixedSeeds() {
		return std::string(" -DITHARE_KSCOPE_SEED=0x4b295ebab3333abc -DITHARE_KSCOPE_SEED2=0x36e007a38ae8e0ea");//from random.org
	}
	virtual std::string genSeed() {
		return std::string(" -DITHARE_KSCOPE_SEED=0x") + kenv->genRandom64();
	}

	virtual std::string genSeeds() {
		return genSeed() + " -DITHARE_KSCOPE_SEED2=0x" + kenv->genRandom64();
	}

	virtual void issueCommand(std::string cmd) {
		std::cout << kenv->echo(cmd) << std::endl;
		std::cout << kenv->command(cmd) << std::endl;
	}

	virtual void buildCheckRunCheck(std::string cmd,int nseeds,KscopeTestEnvironment::Flags flags,write_output wo) {
		issueCommand(cmd);
		std::cout << kenv->exitCheck(cmd) << std::endl;
		std::cout << kenv->checkExe(nseeds,flags) << std::endl;

		std::string tofile = "";
		switch (wo) {
		case write_output::none:
			break;
		case write_output::stable_first:
			tofile = kenv->rootTestFolder() + "kscope.txt";
			break;
		case write_output::stable_next:
			tofile = kenv->rootTestFolder() + "kscope2.txt";
			break;
		case write_output::random:
			tofile = "local_kscope.txt";
			break;
		default:
			assert(false);
		}
		std::string cmdrun = kenv->run(tofile);
		issueCommand(cmdrun);
		std::cout << kenv->exitCheck(cmdrun) << std::endl;
		if(wo==write_output::stable_next) {
			std::string cmpfiles = kenv->cmpFiles(kenv->rootTestFolder() + "kscope.txt", kenv->rootTestFolder() + "kscope2.txt");
			issueCommand(cmpfiles);
			std::cout << kenv->exitCheck(cmpfiles) << std::endl;
		}
	}

	virtual std::string seedsByNum(int nseeds) {
		assert(nseeds >= -1 && nseeds <= 2);
		if(nseeds==1)
			return genSeed();
		else if(nseeds==2)
			return genSeeds();
		else if(nseeds==-1)
			return fixedSeeds();
		assert(nseeds==0);
		return "";
	}

	virtual std::string buildCmd(config cfg,std::string defs) {
		switch(cfg) {
		case config::debug:
			return kenv->buildDebug(defs);
		case config::release:
			return kenv->buildRelease(defs);
		}
		assert(false);
		return "";
	}

	virtual void buildCheckRunCheckx2(config cfg,std::string defs,int nseeds,KscopeTestEnvironment::Flags flags=0,write_output wo=write_output::none) {
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
		buildCheckRunCheck(cmd1,nseeds,flags,wox);
		if(wox==write_output::stable_first)
			wox = write_output::stable_next;
		std::string cmd2 = buildCmd(cfg, defs + seedsByNum(nseeds) + " -DITHARE_KSCOPE_TEST_NO_NAMESPACE");
		buildCheckRunCheck(cmd2,nseeds,flags,wox);
		
		if(add32tests) {
			std::string m32 = kenv->build32option();
			std::string cmd1 = buildCmd(cfg, defs + m32 + seedsByNum(nseeds));
			buildCheckRunCheck(cmd1,nseeds,flags,wox);
			std::string cmd2 = buildCmd(cfg, defs + m32 + seedsByNum(nseeds) + " -DITHARE_KSCOPE_TEST_NO_NAMESPACE");
			buildCheckRunCheck(cmd2,nseeds,flags,wox);
		}
	}
	
	virtual void postBuildCheckRunCheck(std::string extra) {
	}

	virtual void genDefineTests() {
		std::cout << kenv->echo("=== kscope -Define Test 1/12 (DEBUG, -DITHARE_KSCOPE_ENABLE_AUTO_DBGPRINT, write_output::stable) ===",true) << std::endl;
		buildCheckRunCheckx2(config::debug, " -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_ENABLE_AUTO_DBGPRINT", -1, KscopeTestEnvironment::flag_auto_dbg_print, write_output::stable);
		std::cout << kenv->echo("=== kscope -Define Test 2/12 (RELEASE, -DITHARE_KSCOPE_ENABLE_AUTO_DBGPRINT=2, write_output::random)===",true) << std::endl;
		buildCheckRunCheckx2(config::release, " -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_ENABLE_AUTO_DBGPRINT=2", 2, KscopeTestEnvironment::flag_auto_dbg_print,write_output::random);
		std::cout << kenv->echo("=== kscope -Define Test 3/12 (DEBUG, no ITHARE_KSCOPE_SEED) ===",true ) << std::endl;
		buildCheckRunCheckx2(config::debug,"",0);
		std::cout << kenv->echo("=== kscope -Define Test 4/12 (RELEASE, no ITHARE_KSCOPE_SEED) ===",true) << std::endl;
		buildCheckRunCheckx2(config::release,"",0);
		std::cout << kenv->echo("=== kscope -Define Test 5/12 (DEBUG, single ITHARE_KSCOPE_SEED) ===",true) << std::endl;
		buildCheckRunCheckx2(config::debug,"",1);
		std::cout << kenv->echo("=== kscope -Define Test 6/12 (RELEASE, single ITHARE_KSCOPE_SEED) ===",true) << std::endl;
		buildCheckRunCheckx2(config::release,"",1);
		std::cout << kenv->echo("=== kscope -Define Test 7/12 (DEBUG) ===",true ) << std::endl;
		buildCheckRunCheckx2(config::debug,"",2);
		std::cout << kenv->echo("=== kscope -Define Test 8/12 (RELEASE) ===",true ) << std::endl;
		buildCheckRunCheckx2(config::release,"",2);
		std::cout << kenv->echo("=== kscope -Define Test 9/12 (DEBUG, -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS) ===" ,true ) << std::endl;
	#if defined(_MSC_VER)
		std::cout << kenv->echo("*** SKIPPED -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS FOR MSVC (cannot cope) ***",true) << std::endl;
	#else
		buildCheckRunCheckx2(config::debug, " -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS", 2);
	#endif
		std::cout << kenv->echo( "=== kscope -Define Test 10/12 (RELEASE, -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS) ===" ,true ) << std::endl;
	#if defined(_MSC_VER)
		std::cout << kenv->echo("*** SKIPPED -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS FOR MSVC (cannot cope) ***",true) << std::endl;
	#else
		buildCheckRunCheckx2(config::release, " -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS",2);
	#endif
		std::cout << kenv->echo("=== kscope -Define Test 11/12 (DEBUG, -DITHARE_KSCOPE_CRYPTO_PRNG) ===",true) << std::endl;
	#if defined(_MSC_VER) && !defined(_M_X64)
		std::cout << kenv->echo("*** SKIPPED -DITHARE_KSCOPE_DBG_CRYPTO_PRNG FOR MSVC/x86 (cannot cope) ***",true) << std::endl;
	#else
		buildCheckRunCheckx2(config::debug," -DITHARE_KSCOPE_CRYPTO_PRNG",2);
	#endif
		std::cout << kenv->echo("=== kscope -Define Test 12/12 (RELEASE, -DITHARE_KSCOPE_CRYPTO_PRNG) ===",true) << std::endl;
	#if defined(_MSC_VER) && !defined(_M_X64)
		std::cout << kenv->echo("*** SKIPPED -DITHARE_KSCOPE_DBG_CRYPTO_PRNG FOR MSVC/x86 (cannot cope) ***",true) << std::endl;
	#else
		buildCheckRunCheckx2(config::release, " -DITHARE_KSCOPE_CRYPTO_PRNG", 2);
	#endif
	}

	virtual void genRandomTests(size_t n) {
		for (size_t i = 0; i < n; ++i) {
			config cfg = config::release;
			if (i % 4 == 0)
				cfg = config::debug;
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
			std::cout << kenv->echo( std::string("=== Random Test ") + std::to_string(i+1) + "/" + std::to_string(n) + " ===", true ) << std::endl;
			std::string defines = genSeeds()+" -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS"+extra;
			if( cfg == config::debug ) 
				buildCheckRunCheck(kenv->buildDebug(defines),2,0,write_output::none);
			else {
				assert(cfg == config::release);
				buildCheckRunCheck(kenv->buildRelease(defines),2,0,write_output::none);
				postBuildCheckRunCheck(extra);
			}
		}
	}

	void genSetup() {
		std::cout << kenv->setup() << std::endl;
	}

	void genCleanup() {
		std::cout << kenv->cleanup() << std::endl;
	}
};

inline int usage() {
	std::cout << "Usage:" << std::endl;
	std::cout << "helper [-nodefinetests] <nrandomtests>" << std::endl; 
	return 1;
}

inline int almost_main(KscopeTestEnvironment& kenv, KscopeTestGenerator& kgen, int argc, char** argv) {
	bool nodefinetests = false;
	
	int argcc = 1;
	while(argcc<argc) {
		if(strcmp(argv[argcc],"-nodefinetests") == 0) {
			nodefinetests = true;
			argcc++;
		}
		else if(strcmp(argv[argcc],"-add32tests") == 0) {
			kgen.add32tests = true;
			argcc++;
		}
		else if (strcmp(argv[argcc], "-srcdirprefix") == 0) {
			assert(argcc +1 < argc);
			kenv.srcDirPrefix = argv[argcc+1];
			argcc+=2;
		}
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
		
	kgen.genSetup();
	if(!nodefinetests)
		kgen.genDefineTests();

	kgen.genRandomTests(nrandom);
	kgen.genCleanup();
	return 0;
}
