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

#ifndef ithare_kscope_common_h_included
#define ithare_kscope_common_h_included

//NOT intended to be #included directly
//  #include ../kscope.h instead

//kscope_common.h
//  Basic setup for ithare::kscope

#include <stdint.h>
#include <inttypes.h>
#include <limits>
//#include <array> - prefer KScopeArrayWrapper instead
//#include <algorithm>
#include <assert.h>
//#include <type_traits>
#include <atomic>
#include <string>//for dbg_print() only
#include <iostream>//for dbg_print() only

#ifdef ITHARE_KSCOPE_DBG_RUNTIME_CHECKS
#define ITHARE_KSCOPE_DBG_ENABLE_DBGPRINT//necessary for checks to work
#endif

#ifdef ITHARE_KSCOPE_ENABLE_AUTO_DBGPRINT
#define ITHARE_KSCOPE_DBG_ENABLE_DBGPRINT //prerequisite
#endif

#ifdef ITHARE_KSCOPE_SEED
#ifndef ITHARE_KSCOPE_SEED2
#define ITHARE_KSCOPE_SEED2 0
#endif
#endif

#ifndef ITHARE_KSCOPE_COMPILE_TIME_TESTS
#define ITHARE_KSCOPE_COMPILE_TIME_TESTS 100
#endif

#ifdef _MSC_VER
#if _MSC_VER < 1910
#pragma message("MSVC prior to VS2017 is not likely to work :-(")
#endif
#pragma warning (disable:4307)

#define ITHARE_KSCOPE_FORCEINLINE __forceinline
#define ITHARE_KSCOPE_NOINLINE __declspec(noinline)
#define ITHARE_KSCOPE_CONSTEXPR_ASSERT_UNREACHABLE assert(false)

#define ITHARE_KSCOPE_WORKAROUND_FOR_MSVC_BUG_195483

#elif defined(__clang__)//As Clang also #defines __GNUC__, we MUST always check __clang__ first

#ifdef __apple_build_version__
#if __clang_major__ < 8 
#pragma message "Apple Clang prior to version 8 is not likely to work :-("
#endif
#else
#if __clang_major__ < 4 
#pragma message "Clang prior to version 4 is not likely to work :-("
#endif
#endif

#define ITHARE_KSCOPE_FORCEINLINE __attribute__((always_inline)) inline
#define ITHARE_KSCOPE_NOINLINE __attribute__((noinline))
#define ITHARE_KSCOPE_CONSTEXPR_ASSERT_UNREACHABLE assert(false)

#elif defined(__GNUC__)

#if __GNUC__ < 7
#pragma message "GCC prior to version 7 is not likely to work :-("
#endif

#define ITHARE_KSCOPE_FORCEINLINE __attribute__((always_inline)) inline
#define ITHARE_KSCOPE_NOINLINE __attribute__((noinline))
#define ITHARE_KSCOPE_CONSTEXPR_ASSERT_UNREACHABLE  //as of GCC 7.2.0, assert(false) doesn't work in constexpr functions in GCC ; other ideas on "how to assert in supposedly-unreachable constexpr code" are very welcome

#else
#error Other compilers than MSVC, Clang, and GCC are not supported
#endif//_MSC_VER || __clang__ || __GNUC__

#if defined(__clang__)|| defined(__GNUC__)
#if __cplusplus <= 201402 //C++ 14 or before; for reference - working Apple Clang 9.0.0 gives 201406
#pragma message "Are you sure you didn't forget to specify -std=c++17 or -std=c++1z when compiling?"
#endif
#endif
//for VS2017, __cplusplus is still stuck at 199711 regardless of compiler switches :-(; no possibility to warn about missing /std:c++17

#ifndef _MSC_VER //MSVC doesn't seem to support C++ feature test macros :-(
#if __cpp_constexpr < 201304
#error "ithare::kscope DOES use constexprs extensively"
#endif
#if __cpp_if_constexpr < 201606
#error "ithare::kscope heavily relies on constexpr if"
#endif
#if __cpp_decltype < 200707
#error "ithare::kscope DOES need decltype."
#endif
#if __cpp_variadic_templates < 200704
#error "ithare::kscope DOES need variadic templates."
#endif
#if __cpp_static_assert < 201411
#error "ithare::kscope DOES use short form of static assert. Can be rewritten, but will unlikely help due to other requirements"
#endif
#endif//_MSC_VER

//NAMESPACE POLICIES (we have to be very strict as it is a header-only library):
//  EVERYTHING goes into ithare::kscope namespace - except for #defines
//  ALL #defines MUST be prefixed with ITHARE_KSCOPE_

//regardless of ITHARE_KSCOPE_SEED
namespace ithare {
	namespace kscope {
		template<class T,size_t N>
		ITHARE_KSCOPE_FORCEINLINE constexpr size_t kscope_arraysz(T(&)[N]) { return N; }

		template<class T,size_t N>
		struct KscopeArrayWrapper {//returns from constexpr functions
			T arr[N];
		};

		constexpr size_t kscope_strlen(const char* s) {
			for (size_t ret = 0; ; ++ret, ++s)
				if (*s == 0)
					return ret;
		}

		constexpr uint64_t kscope_string_hash(const char* s) {
			uint64_t u = 5381;
			for (const char* p = s; *p; ++p)//djb2 by Dan Bernstein
				u = ((u << 5) + u) + *p;
			return u;
		}
		
		enum class kscope_endian//along the lines of p0463r1, to be replaced with std::endian
		{
#ifdef _MSC_VER
#if defined(_M_IX86) || defined(_M_X64)
			little = 0x22d7,//from random.org :-), to discourage relying on specific values
			big    = 0xe72d,//from random.org
			native = little
//x86/x64
#else
#error "Endianness not defined yet"
#endif 

//_MSC_VER
#else
			little = __ORDER_LITTLE_ENDIAN__,
			big    = __ORDER_BIG_ENDIAN__,
			native = __BYTE_ORDER__,
#endif
		};

		using KSCOPEFLAGS = uint64_t;
		constexpr KSCOPEFLAGS kscope_flag_is_constexpr = 0x01;
		
		struct kscope_private_constructor_tag {
		};
		
		//type helpers
		template<bool which, class T, class T2> struct kscope_select_type;
			//NB: it is a 'function-like' class (="used to calculate functions over classes"), 
			//	hence function-like naming convention  
		template<class T, class T2>
		struct kscope_select_type<true, T, T2> {
			using type = T;
		};
		template<class T, class T2>
		struct kscope_select_type<false, T, T2> {
			using type = T2;
		};

		template<class T, class T2> struct kscope_larger_type {
			static_assert(std::is_integral<T>::value);
			static_assert(std::is_integral<T2>::value);
			constexpr static bool ts = std::is_signed<T>::value;
			constexpr static bool t2s = std::is_signed<T2>::value;
			static_assert(ts == t2s);//'larger_type' is undefined for different sign-ness
			constexpr static bool which = sizeof(T) > sizeof(T2);
			using type = typename kscope_select_type<which, T, T2>::type;

			static_assert(sizeof(type) >= sizeof(T));
			static_assert(sizeof(type) >= sizeof(T2));
		};

		template<size_t N>
		struct kscope_uint_by_size;
		template<>
		struct kscope_uint_by_size<8> { using type = uint8_t; };
		template<>
		struct kscope_uint_by_size<16> { using type = uint16_t; };
		template<>
		struct kscope_uint_by_size<32> { using type = uint32_t; };
		template<>
		struct kscope_uint_by_size<64> { using type = uint64_t; };
		template<class T>
		struct kscope_normalized_unsigned_integral_type {
			static_assert(std::is_integral<T>::value);
			using type = typename kscope_uint_by_size<8*sizeof(T)>::type;
			static_assert(sizeof(type)==sizeof(T));
			static_assert(std::is_unsigned<type>::value);
		};

		template<size_t N>
		struct kscope_sint_by_size;
		template<>
		struct kscope_sint_by_size<8> { using type = int8_t; };
		template<>
		struct kscope_sint_by_size<16> { using type = int16_t; };
		template<>
		struct kscope_sint_by_size<32> { using type = int32_t; };
		template<>
		struct kscope_sint_by_size<64> { using type = int64_t; };
		template<class T>
		struct kscope_normalized_signed_integral_type {
			static_assert(std::is_integral<T>::value);
			using type = typename kscope_sint_by_size<8*sizeof(T)>::type;
			static_assert(sizeof(type)==sizeof(T));
			static_assert(std::is_signed<type>::value);
		};

		template<class T>
		struct kscope_normalized_integral_type {//to normalize things such as 'unsigned long' which MIGHT happen to be different from our standard set
			static_assert(std::is_integral<T>::value);
			using type = typename kscope_select_type< std::is_signed<T>::value,
				typename kscope_normalized_signed_integral_type<T>::type,
				typename kscope_normalized_unsigned_integral_type<T>::type
			>::type;
			
			static_assert(std::is_integral<type>::value);
			static_assert(sizeof(T)==sizeof(type));
			static_assert(std::is_signed<type>::value == std::is_signed<T>::value);
		};

		//well-known shortcuts just to save a bit of compile time...
		template<>
		struct kscope_normalized_integral_type<uint64_t> {
			using type = uint64_t;
		};
		template<>
		struct kscope_normalized_integral_type<uint32_t> {
			using type = uint32_t;
		};
		template<>
		struct kscope_normalized_integral_type<uint16_t> {
			using type = uint16_t;
		};
		template<>
		struct kscope_normalized_integral_type<uint8_t> {
			using type = uint8_t;
		};
		template<>
		struct kscope_normalized_integral_type<int64_t> {
			using type = int64_t;
		};
		template<>
		struct kscope_normalized_integral_type<int32_t> {
			using type = int32_t;
		};
		template<>
		struct kscope_normalized_integral_type<int16_t> {
			using type = int16_t;
		};
		template<>
		struct kscope_normalized_integral_type<int8_t> {
			using type = int8_t;
		};

		template<>
		struct kscope_normalized_unsigned_integral_type<uint64_t> {
			using type = uint64_t;
		};
		template<>
		struct kscope_normalized_unsigned_integral_type<uint32_t> {
			using type = uint32_t;
		};
		template<>
		struct kscope_normalized_unsigned_integral_type<uint16_t> {
			using type = uint16_t;
		};
		template<>
		struct kscope_normalized_unsigned_integral_type<uint8_t> {
			using type = uint8_t;
		};
		template<>
		struct kscope_normalized_unsigned_integral_type<int64_t> {
			using type = uint64_t;
		};
		template<>
		struct kscope_normalized_unsigned_integral_type<int32_t> {
			using type = uint32_t;
		};
		template<>
		struct kscope_normalized_unsigned_integral_type<int16_t> {
			using type = uint16_t;
		};
		template<>
		struct kscope_normalized_unsigned_integral_type<int8_t> {
			using type = uint8_t;
		};

		constexpr size_t kscope_smallest_uint_size(size_t n) {
			assert(n <= 64);
			if (n <= 8)
				return 8;
			else if (n <= 16)
				return 16;
			else if (n <= 32)
				return 32;
			else {
				assert(n <= 64);
				return 64;
			}
		}

		// My translation of "integral promotion" section from http://en.cppreference.com/w/cpp/language/implicit_conversion, PLUS http://en.cppreference.com/w/cpp/language/operator_arithmetic#Conversions (under more-or-less reasonable assumptions of real-world 32/64-bit platforms):
		// If we have type T on the left, and type T2 on the right, all arithmetic is done in the type TT (which is also returned); TT can be calculated as follows:
		// 		assert( sizeof(int)==sizeof(unsigned))
		// 		TPROMOTED = sizeof(T) < sizeof(int) ? int : T; //sic - int regardless of the T being signed or not!
		// 		same logic for TPROMOTED2
		// if both TPROMOTED and TPROMOTED2 are signed, or both are unsigned:
		//		-- TT = larger_type<TPROMOTED,TPROMOTED2>
		// if TPROMOTED is signed and TPROMOTED2 is unsigned:
		//		-- TT = sizeof(TPROMOTED)>sizeof(TPROMOTED2) ? TPROMOTED : /* including equal size */ TPROMOTED2;
		// 		same logic for TPROMOTED2 signed and TPROMOTED unsigned
		// Hope it makes sense

		static_assert(sizeof(int)==sizeof(unsigned));
		template<class T>
		struct kscope_integral_promotion {
			static_assert(std::is_integral<T>::value);
			using type = typename kscope_select_type< (sizeof(T) < sizeof(int)), int, T >::type;

			static_assert(sizeof(type) >= sizeof(T));
			static_assert(sizeof(type) >= sizeof(int));
		};

		template<class T, class T2>
		struct kscope_integral_operator_promoconv {
			using TPROMOTED = typename kscope_integral_promotion<T>::type;
			using T2PROMOTED = typename kscope_integral_promotion<T2>::type;
			static_assert(sizeof(TPROMOTED) >= sizeof(T));
			static_assert(sizeof(T2PROMOTED) >= sizeof(T2));
			static constexpr bool ts = std::is_signed<TPROMOTED>::value;
			static constexpr bool t2s = std::is_signed<T2PROMOTED>::value;
			
			using type = typename kscope_select_type< ts == t2s, 
										  typename kscope_select_type< (sizeof(TPROMOTED) >= sizeof(T2PROMOTED)), TPROMOTED,T2PROMOTED>::type,
										  typename kscope_select_type< ts ,
														   typename kscope_select_type< (sizeof(TPROMOTED) > sizeof(T2PROMOTED)), TPROMOTED, T2PROMOTED >::type,
														   typename kscope_select_type< (sizeof(T2PROMOTED) > sizeof(TPROMOTED)), T2PROMOTED, TPROMOTED >::type
														 >::type
										>::type;
			
			static_assert(sizeof(type) >= sizeof(TPROMOTED));
			static_assert(sizeof(type) >= sizeof(T2PROMOTED));
		};
		
		class KscopeSint128 {//larger than the largest integral type, so we can use it to store maximums/minimums for ALL the types, signed or unsigned 
			int64_t hi;
			uint64_t lo;
			
			public:
			constexpr KscopeSint128(uint64_t x) : hi(0), lo(x) {
			}
			constexpr KscopeSint128(int64_t x) : hi(x<0?int64_t(-1):0), lo(x) {
			}
			constexpr KscopeSint128(uint32_t x) : KscopeSint128(uint64_t(x)) {
			}
			constexpr KscopeSint128(int32_t x) : KscopeSint128(int64_t(x)) {
			}
			constexpr KscopeSint128(uint16_t x) : KscopeSint128(uint64_t(x)) {
			}
			constexpr KscopeSint128(int16_t x) : KscopeSint128(int64_t(x)) {
			}
			constexpr KscopeSint128(uint8_t x) : KscopeSint128(uint64_t(x)) {
			}
			constexpr KscopeSint128(int8_t x) : KscopeSint128(int64_t(x)) {
			}
			
			constexpr bool operator <=(const KscopeSint128& other) const {
				return cmp(other) <= 0;
			}
			constexpr bool operator >=(const KscopeSint128& other) const {
				return cmp(other) >= 0;
			}
			
			private:
			constexpr int cmp(const KscopeSint128& other) const {
				if( hi < other.hi )
					return -1;
				if( hi > other.hi )
					return 1;
					
				int ret = 0;
				if( lo < other.lo )
					ret = -1;
				if( lo > other.lo )
					ret = 1;
				return hi >= 0 ? ret : -ret;
			}
		};

		template<class T, class TC, TC C>
		constexpr bool kscope_integral_operator_literal_cast_is_safe() {
			using TCNORMAL = typename kscope_normalized_integral_type<TC>::type;			
			static_assert(std::numeric_limits<TCNORMAL>::min()==std::numeric_limits<TC>::min());
			static_assert(std::numeric_limits<TCNORMAL>::max()==std::numeric_limits<TC>::max());

			using TNORMAL = typename kscope_normalized_integral_type<T>::type;
			static_assert(std::numeric_limits<TNORMAL>::min()==std::numeric_limits<T>::min());
			static_assert(std::numeric_limits<TNORMAL>::max()==std::numeric_limits<T>::max());

			return KscopeSint128(TCNORMAL(C)) <= KscopeSint128(std::numeric_limits<TNORMAL>::max()) &&
				KscopeSint128(TCNORMAL(C)) >= KscopeSint128(std::numeric_limits<TNORMAL>::min());
		}
		
	}//namespace kscope
}//namespace ithare

//Generic string manipulation macros with lots of indirections to solve problems ;-)
#define ITHARE_KSCOPE_STRINGIFY(X) ITHARE_KSCOPE_STRINGIFY2(X)    
#define ITHARE_KSCOPE_STRINGIFY2(X) #X

#define ITHARE_KSCOPE_CAT(X,Y) ITHARE_KSCOPE_CAT2(X,Y)
#define ITHARE_KSCOPE_CAT2(X,Y) X##Y

//direct use of __LINE__ doesn't count as constexpr in MSVC - don't ask why...
//  AND we DO want to align other compilers with MSVC at least for ITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS

//along the lines of https://stackoverflow.com/questions/19343205/c-concatenating-file-and-line-macros:
#define ITHARE_KSCOPE_LOCATION __FILE__ ":" ITHARE_KSCOPE_STRINGIFY(__LINE__)

//KSCOPE_SEED-dependent stuff
#ifdef ITHARE_KSCOPE_SEED

namespace ithare {
	namespace kscope {
		using KSCOPECYCLES = int32_t;//signed!
		using KSCOPELEVEL = int16_t;//signed! 

		constexpr KSCOPELEVEL kscope_addlevel(KSCOPELEVEL base, KSCOPELEVEL diff) {
			KSCOPELEVEL ret = base + diff;
			if( base < 0 )
				return std::min(KSCOPELEVEL(-1),ret);
			else {
				assert( base >= 0 );
				return std::max(KSCOPELEVEL(0),ret);
			}
		}

		//KSCOPEFLAGS 0x01 is already defined regardless of KSCOPE_SEED, see above 
		constexpr KSCOPEFLAGS kscope_flag_cross_platform_only = 0x02;
		
		using KSCOPEINJECTIONCAPS = uint64_t;//injection capability flags
		constexpr KSCOPEINJECTIONCAPS kscope_injection_has_add_mod_max_value_ex = 0x01;

		using KSCOPECONSTFLAGS = uint64_t;//constant description flags
		constexpr KSCOPECONSTFLAGS kscope_const_zero_ok = 0x01;
		constexpr KSCOPECONSTFLAGS kscope_const_one_ok = 0x02;
		constexpr KSCOPECONSTFLAGS kscope_const_odd_only = 0x04;
		
		constexpr bool kscope_avoid_memxxx = true;

		//KscopeTraits<>
		template<class T>
		struct KscopeTraits;

		template<>
		struct KscopeTraits<uint64_t> {
			static constexpr bool is_built_in = true;
			static std::string type_name() { return "uint64_t"; }
			using signed_type = int64_t;
			using literal_type = uint64_t;
			using construct_from_type = uint64_t;

			static constexpr bool has_half_type = true;
			using HalfT = uint32_t;
			using UintT = typename kscope_larger_type<uint64_t, unsigned>::type;//UintT is a type to cast to, to avoid idiocies like uint16_t*uint16_t being promoted to signed(!) int, and then overflowing to cause UB
			static constexpr bool is_bit_based = true;
			static constexpr size_t nbits = 64;
		};

		template<>
		struct KscopeTraits<uint32_t> {
			static constexpr bool is_built_in = true;
			static std::string type_name() { return "uint32_t"; }
			using signed_type = int32_t;
			using literal_type = uint32_t;
			using construct_from_type = uint32_t;

			static constexpr bool has_half_type = true;
			using HalfT = uint16_t;
			using UintT = typename kscope_larger_type<uint32_t, unsigned>::type;
			static constexpr bool is_bit_based = true;
			static constexpr size_t nbits = 32;
		};

		template<>
		struct KscopeTraits<uint16_t> {
			static constexpr bool is_built_in = true;
			static std::string type_name() { return "uint16_t"; }
			using signed_type = int16_t;
			using literal_type = uint16_t;
			using construct_from_type = uint16_t;

			static constexpr bool has_half_type = true;
			using HalfT = uint8_t;
			using UintT = typename kscope_larger_type<uint16_t, unsigned>::type;
			static constexpr bool is_bit_based = true;
			static constexpr size_t nbits = 16;
		};

		template<>
		struct KscopeTraits<uint8_t> {
			static constexpr bool is_built_in = true;
			static std::string type_name() { return "uint8_t"; }
			using signed_type = int8_t;
			using literal_type = uint8_t;
			using construct_from_type = uint8_t;

			static constexpr bool has_half_type = false;
			using UintT = typename kscope_larger_type<uint8_t, unsigned>::type;
			static constexpr bool is_bit_based = true;
			static constexpr size_t nbits = 8;
		};

#ifdef ITHARE_KSCOPE_DBG_ENABLE_DBGPRINT
		//dbg_print helpers
		template<class T>
		std::string kscope_dbg_print_t() {
			return KscopeTraits<T>::type_name();
		}

		//fwd decl
		template<size_t N>
		class KscopeBitUint;

		template<class T>
		struct KscopePrintC {
			using type = T;
		};
		template<>
		struct KscopePrintC<uint8_t> {
			using type = int;
		};
		template<size_t N>
		struct KscopePrintC<KscopeBitUint<N>> {
			using type = typename KscopePrintC<typename KscopeBitUint<N>::T>::type;
		};

		template<class T>
		typename KscopePrintC<T>::type kscope_dbg_print_c(T c) {
			return typename KscopePrintC<T>::type(c);
		}
#endif

		template<class T>
		constexpr T kscope_mask(size_t n) {
			assert(n <= sizeof(T) * 8);
			if (n == sizeof(T) * 8)
				return T(-1);
			else
				return (T(1) << n) - T(1);
		}

		template<size_t N_>
		class KscopeBitUint {
		public:
			static constexpr size_t N = N_;
			using T = typename kscope_uint_by_size<kscope_smallest_uint_size(N)>::type;
			static_assert(N <= sizeof(T) * 8);

		private:
			static constexpr T mask = kscope_mask<T>(N);

		public:
			constexpr ITHARE_KSCOPE_FORCEINLINE KscopeBitUint() : val(0) {}
			constexpr ITHARE_KSCOPE_FORCEINLINE KscopeBitUint(T x) : val(x & mask) {}
			//constexpr KscopeBitUint(const KscopeBitUint& other) : val(other.val) {}
			//constexpr KscopeBitUint(const volatile KscopeBitUint& other) : val(other.val) {}
			constexpr ITHARE_KSCOPE_FORCEINLINE operator T() const { assert((val&mask) == val); return val & mask; }

			constexpr ITHARE_KSCOPE_FORCEINLINE KscopeBitUint operator -() const { return KscopeBitUint(-val); }
			constexpr ITHARE_KSCOPE_FORCEINLINE KscopeBitUint operator *(KscopeBitUint x) const { return KscopeBitUint(val * x.val); }
			constexpr ITHARE_KSCOPE_FORCEINLINE KscopeBitUint operator +(KscopeBitUint x) const { return KscopeBitUint(val + x.val); }
			constexpr ITHARE_KSCOPE_FORCEINLINE KscopeBitUint operator -(KscopeBitUint x) const { return KscopeBitUint(val - x.val); }
			constexpr ITHARE_KSCOPE_FORCEINLINE KscopeBitUint operator %(KscopeBitUint x) const { return KscopeBitUint(val%x.val); }
			constexpr ITHARE_KSCOPE_FORCEINLINE KscopeBitUint operator /(KscopeBitUint x) const { return KscopeBitUint(val / x.val); }

			constexpr ITHARE_KSCOPE_FORCEINLINE KscopeBitUint operator ~() const { return KscopeBitUint(~val); }
			constexpr ITHARE_KSCOPE_FORCEINLINE KscopeBitUint operator &(KscopeBitUint x) const { return KscopeBitUint(val & x.val); }
			constexpr ITHARE_KSCOPE_FORCEINLINE KscopeBitUint operator |(KscopeBitUint x) const { return KscopeBitUint(val | x.val); }
			constexpr ITHARE_KSCOPE_FORCEINLINE KscopeBitUint operator ^(KscopeBitUint x) const { return KscopeBitUint(val ^ x.val); }
			constexpr ITHARE_KSCOPE_FORCEINLINE KscopeBitUint operator <<(size_t shift) const { return KscopeBitUint(val << shift); }
			constexpr ITHARE_KSCOPE_FORCEINLINE KscopeBitUint operator >>(size_t shift) const { return KscopeBitUint(val >> shift); }

#ifdef ITHARE_KSCOPE_DBG_ENABLE_DBGPRINT
		static void dbg_print(size_t offset = 0,const char* prefix="") {
			std::cout << std::string(offset, ' ') << prefix << "KscopeBitUint<" << N << ">: mask =" << kscope_dbg_print_c<T>(mask) << std::endl;
		}
#endif

		private:
			T val;
		};

		template<size_t N_>
		class KscopeBitSint {
		public:
			static constexpr size_t N = N_;
			using UT = typename kscope_uint_by_size<kscope_smallest_uint_size(N)>::type;
			using T = typename std::make_signed<UT>::type;
			static_assert(N <= sizeof(T) * 8);
			static_assert(sizeof(T) == sizeof(typename KscopeBitUint<N_>::T));

		private:
			static constexpr UT mask = kscope_mask<UT>(N);

		public:
			constexpr KscopeBitSint() : val(0) {}
			constexpr KscopeBitSint(T x) : val(UT(x)&mask) {}
			constexpr operator T() const { return T(val & mask); }

			constexpr KscopeBitSint operator -() const { return KscopeBitSint((~val)+1); }

		private:
			UT val;
		};

		template<size_t N>
		struct KscopeTraits<KscopeBitUint<N>> {
		private:
			using TT = KscopeBitUint<N>;
		public:
			static constexpr bool is_built_in = false;
			static std::string type_name() {
				return std::string("KscopeBitUint<") + std::to_string(N) + ">";
			}
			using signed_type = KscopeBitSint<N>;
			using literal_type = typename TT::T;
			using construct_from_type = typename TT::T;

			static constexpr bool has_half_type = false;
			using UintT = typename kscope_larger_type<typename TT::T, unsigned>::type;
			static constexpr bool is_bit_based = true;
			static constexpr size_t nbits = N;
		};

	}//namespace kscope
}//namespace ithare

#else
namespace ithare {
	namespace kscope {

		constexpr bool kscope_avoid_memxxx = false;

	}//namespace kscope
}//namespace ithare
#endif //ITHARE_KSCOPE_SEED

#endif //ithare_kscope_common_h_included
