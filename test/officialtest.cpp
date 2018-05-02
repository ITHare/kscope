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

#include "lest.hpp"
#ifdef ITHARE_KSCOPE_TEST_EXTENSION
#include ITHARE_KSCOPE_TEST_EXTENSION //MUST go BEFORE ../src/kscope.h
#endif
//NB: normally, in your own files you should use simple #include "your_extension.h", 
//  #include MACRO above is to allow using the same test .cpp with external extensions

#include "../src/kscope.h"

#ifndef ITHARE_KSCOPE_TEST_NO_NAMESPACE
using namespace ithare::kscope;
#define ITKSCOPE
#else
#define ITKSCOPE ithare::kscope::
#endif

class MyException {
public:
	MyException(std::string msg)
		: message(msg) {
	}
	virtual const char* what() const {
		return message.c_str();
	}

private:
	std::string message;
};

namespace ithare{ namespace kscope {

ITHARE_KSCOPE_DECLAREFUNC_WITHPARAMS_INT
ITHARE_KSCOPE_FINTP2(uint64_t) factorial(ITHARE_KSCOPE_DECLAREPARAM_INT(int64_t) x) {
	//DBGPRINT(x_)
	if (x < 0) {
		auto lit = ITHARE_KSCOPE_STRLIT3("Negative argument to factorial!"); ITHARE_KSCOPE_DBGPRINT(lit);
		throw MyException(lit);
	}
	ITHARE_KSCOPE_FINTM1(uint64_t) ret = 1;
	//DBGPRINT(ret)
	for (ITHARE_KSCOPE_FINTM1(int64_t) i = 1; i <= x; ++i) {
		//DBGPRINT(i);
		ret *= i;
	}
	return ret;
}

ITHARE_KSCOPE_NOINLINE ITHARE_KSCOPE_INT3(uint64_t) factorial(ITHARE_KSCOPE_INT3(int64_t) x) {
	return ITHARE_KSCOPE_CALL3(factorial)(x);
}
}}//namespace ithare::kscope

/*
class Benchmark {
	std::chrono::high_resolution_clock::time_point start;

public:
	Benchmark() {
		start = std::chrono::high_resolution_clock::now();
	}
	int64_t us() {
		auto stop = std::chrono::high_resolution_clock::now();
		auto length = std::chrono::duration_cast<std::chrono::microseconds>(stop - start);
		return (int64_t)length.count();
	}
};

#define NBENCH 1000

//TODO: reinstate
	CASE("benchmarks") {
#if !defined(ITHARE_KSCOPE_ENABLE_AUTO_DBGPRINT) || ITHARE_KSCOPE_ENABLE_AUTO_DBGPRINT == 2//excluding platform-specific stuff to avoid spurious changes to kscope.txt with -DITHARE_KSCOPE_ENABLE_AUTO_DBGPRINT
		{
			Benchmark bm0;
			for (size_t i = 0; i < NBENCH; ++i) {
				uint8_t inp[16] = { 0 };
				uint8_t out[16] = { 0 };
				test_chacha_cipher(inp, out);
			}
			std::cout << "chacha_cipher():" << ( bm0.us() * 1000 / NBENCH ) << " nanoseconds" << std::endl; 
		}
#endif
	}
*/

#ifdef __clang__ //warning in lest.hpp - can only disable :-(
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wmissing-braces"
#endif

static const lest::test module[] = {
	CASE("types",) {
		//well, at least for common 32/64-bit platforms is should stand
		using TT1 = typename ITKSCOPE kscope_integral_operator_promoconv<int8_t,unsigned short>::type;
		static_assert(std::is_same<TT1,int>::value);

		using TT1A = typename ITKSCOPE kscope_integral_operator_promoconv<unsigned short,unsigned short>::type;
		static_assert(std::is_same<TT1A,int>::value);
		
		using TT2 = typename ITKSCOPE kscope_integral_operator_promoconv<int8_t,uint64_t>::type;
		static_assert(std::is_same<TT2,uint64_t>::value);
		EXPECT((ITKSCOPE kscope_integral_operator_literal_cast_is_safe<int8_t,int,127>()==true));
		EXPECT((ITKSCOPE kscope_integral_operator_literal_cast_is_safe<int8_t, int, 128>() == false));
		EXPECT((ITKSCOPE kscope_integral_operator_literal_cast_is_safe<int, int, 16>() == true));

		using TT3 = typename ITKSCOPE kscope_integral_operator_promoconv<int16_t,unsigned int>::type;
		static_assert(std::is_same<TT3,unsigned int>::value);
		EXPECT((ITKSCOPE kscope_integral_operator_literal_cast_is_safe<int32_t,unsigned int,0x7fff'ffffU>()==true));
		EXPECT((ITKSCOPE kscope_integral_operator_literal_cast_is_safe<int32_t,unsigned int,0x8000'0000U>()==false));

		using TT4 = typename ITKSCOPE kscope_integral_operator_promoconv<unsigned int,int>::type;
		static_assert(std::is_same<TT4,unsigned>::value);
		EXPECT((ITKSCOPE kscope_integral_operator_literal_cast_is_safe<TT4,int,-1>()==false));
		EXPECT((ITKSCOPE kscope_integral_operator_literal_cast_is_safe<TT4,int,0>()==true));
		EXPECT((ITKSCOPE kscope_integral_operator_literal_cast_is_safe<TT4,int,0x7fff'ffff>()==true));
	},
	CASE("factorial()",) {
		auto f = ITKSCOPE ITHARE_KSCOPE_CALL4(factorial)(ITHARE_KSCOPE_INTLIT3(17)); ITHARE_KSCOPE_DBGPRINT(f);
		EXPECT(f==UINT64_C(355687428096000));
		EXPECT( ITKSCOPE factorial(18) == UINT64_C(6402373705728000));
		EXPECT( ITKSCOPE factorial(19) == UINT64_C(121645100408832000));
		EXPECT( ITKSCOPE factorial(20) == UINT64_C(2432902008176640000));
		EXPECT( ITKSCOPE factorial(21) == UINT64_C(14197454024290336768));//with wrap-around(!)
		EXPECT_THROWS_AS( ITKSCOPE factorial(-1),MyException);
	},
};

lest::tests& specification() {
	static lest::tests all_tests;
	return all_tests;
}

MODULE( specification(), module )

#ifdef __clang__
#pragma GCC diagnostic pop
#endif

int main(int argc, char** argv) {
#if !defined(ITHARE_KSCOPE_ENABLE_AUTO_DBGPRINT) || ITHARE_KSCOPE_ENABLE_AUTO_DBGPRINT == 2//excluding platform-specific stuff to avoid spurious changes to kscope.txt with -DITHARE_KSCOPE_ENABLE_AUTO_DBGPRINT
		std::cout << "__cplusplus=" << __cplusplus << std::endl;
#ifdef _MSC_VER
		std::cout << "_MSC_VER=" << _MSC_VER << " _MSC_FULL_VER=" << _MSC_FULL_VER << " _MSC_BUILD=" << _MSC_BUILD << std::endl;
#endif
#ifdef __GNUC__
		std::cout << "__GNUC__=" << __GNUC__ << " __GNUC_MINOR__=" << __GNUC_MINOR__ << " __GNUC_PATCHLEVEL__=" << __GNUC_PATCHLEVEL__ << std::endl;
#endif
#ifdef __clang__
		std::string modifier = "";
#ifdef __apple_build_version__
		modifier = "__apple_build_version__: ";
#endif
		std::cout << modifier << "__clang_major__=" << __clang_major__ << " __clang_minor__=" << 	__clang_minor__ << " __clang_patchlevel__=" << __clang_patchlevel__ << std::endl;
#endif
		std::cout << "sizeof(void*) == " << sizeof(void*) << std::endl;
#endif
#ifdef ITHARE_KSCOPE_SEED
		std::cout << "ITHARE_KSCOPE_SEED=" << std::hex << ITHARE_KSCOPE_SEED << std::dec << std::endl;
#endif
#ifdef ITHARE_KSCOPE_SEED2
		std::cout << "ITHARE_KSCOPE_SEED2=" << std::hex << ITHARE_KSCOPE_SEED2 << std::dec << std::endl;
#endif

	return lest::run(specification(),argc,argv);
}
