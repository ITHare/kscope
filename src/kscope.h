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

#ifndef ithare_kscope_kscope_h_included
#define ithare_kscope_kscope_h_included

#include "impl/kscope_common.h"
#include "impl/kscope_prng.h"
#include "impl/kscope_injection.h"
#include "impl/kscope_context.h"
#include "impl/kscope_literal.h"

// LIST OF supported #defines:
// MAIN SWITCH:
//   ITHARE_KSCOPE_SEED 0x<some-random-64-bit-number>
//     if not specified - no kaleidoscoping happens (constexpr functions from kaleidoscoped libraries should still work) 
// TODO: add ITHARE_KSCOPE_DISABLED (to work around some compiler's performance hit even when no ITHARE_KSCOPE_SEED is specified)  
//
// COMMON ONES:
//   ITHARE_KSCOPE_SEED2
//
// DEBUG-ONLY
//    ITHARE_KSCOPE_COMPILE_TIME_TESTS
// DEBUG-ONLY; NOT to be used in production
//   ITHARE_KSCOPE_DBG_ENABLE_DBGPRINT
//   ITHARE_KSCOPE_DBG_RUNTIME_CHECKS

//ithare::kscope naming conventions: 
//  functions: 
//    kscope_function()
//  classes which-are-essentially-functions-over-classes (such as kscope_select_type<>):
//    kscope_class
//  classes (except for those classes-which-are-essentially-functions-over-classes):
//    KscopeClass
//  primitive types:
//    KSCOPETYPE
//  macros:
//    ITHARE_KSCOPE_MACRO

//ithare::kscope extensibility paradigm:
//  ALL extensibility happens directly in kscope.h, which means ALL the other headers safe to include before specifying extensions

#ifdef ITHARE_KSCOPE_SEED

namespace ithare {
	namespace kscope {

#ifndef ITHARE_KSCOPE_ADDITIONAL_INJECTION_DESCRIPTOR_LIST
#define ITHARE_KSCOPE_ADDITIONAL_INJECTION_DESCRIPTOR_LIST
#endif
#ifndef ITHARE_KSCOPE_ADDITIONAL_LITERAL_DESCRIPTOR_LIST
#define ITHARE_KSCOPE_ADDITIONAL_LITERAL_DESCRIPTOR_LIST
#endif

	//KscopeInjection: choosing one of KscopeInjectionVersion<which,...>
	template<class T, class Context, class InjectionRequirements,ITHARE_KSCOPE_SEEDTPARAM seed, KSCOPECYCLES cycles>
	class KscopeInjection {
		static_assert(std::is_same<T, typename Context::Type>::value);
		static_assert(cycles>=0);
		using Traits = KscopeTraits<T>;
		constexpr static KscopeDescriptor descr[] = {
			KscopeInjectionVersion0Descr<Context>::descr,
			KscopeInjectionVersion1Descr<Context>::descr,
			KscopeInjectionVersion2Descr<T,Context>::descr,
			KscopeInjectionVersion3Descr<T,Context>::descr,
			KscopeInjectionVersion4Descr<Context>::descr,
			KscopeInjectionVersion5Descr<T,Context>::descr,
			KscopeInjectionVersion6Descr<T,Context,InjectionRequirements>::descr,
			ITHARE_KSCOPE_ADDITIONAL_INJECTION_DESCRIPTOR_LIST
		};
		constexpr static size_t which = kscope_random_choice_from_list<ITHARE_KSCOPE_NEW_PRNG(seed, 1)>(cycles, descr,InjectionRequirements::exclude_version);
		static_assert(which >= 0 && which < kscope_arraysz(descr));
		using WhichType = KscopeInjectionVersion<which, T, Context, InjectionRequirements, seed, cycles>;

	public:
		using return_type = typename WhichType::return_type;
		template<ITHARE_KSCOPE_SEEDTPARAM seed2,KSCOPEFLAGS flags>
		ITHARE_KSCOPE_FORCEINLINE constexpr static return_type injection(T x) {
			ITHARE_KSCOPE_DECLAREPRNG_INFUNC seedc = ITHARE_KSCOPE_COMBINED_PRNG(seed,seed2);
			return WhichType::template injection<seedc,flags>(x);
		}
		template<ITHARE_KSCOPE_SEEDTPARAM seed2,KSCOPEFLAGS flags>
		ITHARE_KSCOPE_FORCEINLINE constexpr static T surjection(return_type y) {
			ITHARE_KSCOPE_DECLAREPRNG_INFUNC seedc = ITHARE_KSCOPE_COMBINED_PRNG(seed,seed2);
			return WhichType::template surjection<seedc,flags>(y);
		}

	public:
		static constexpr KSCOPEINJECTIONCAPS injection_caps = WhichType::injection_caps;
		template<ITHARE_KSCOPE_SEEDTPARAM seed2>
		ITHARE_KSCOPE_FORCEINLINE constexpr static return_type injected_add_mod_max_value_ex(return_type base, T x) {
			return WhichType::template injected_add_mod_max_value_ex<seed2,0>(base,x);
		}

#ifdef ITHARE_KSCOPE_DBG_ENABLE_DBGPRINT
		static void dbg_print(size_t offset = 0, const char* prefix = "") {
			size_t dbgWhich = kscope_random_choice_from_list<ITHARE_KSCOPE_NEW_PRNG(seed, 1)>(cycles, descr,InjectionRequirements::exclude_version);
			assert(dbgWhich==which);
			std::cout << std::string(offset, ' ') << prefix << "KscopeInjection<"<<kscope_dbg_print_t<T>()<<"," << kscope_dbg_print_seed<seed>() << "," << cycles << ">: which=" << which << " dbgWhich=" << dbgWhich << std::endl;
			//std::cout << std::string(offset, ' ') << " Context:" << std::endl;
			Context::dbg_print(offset + 1,"Context:");
			//std::cout << std::string(offset, ' ') << " Version:" << std::endl;
			WhichType::dbg_print(offset + 1);
		}
#endif
	};

	constexpr KSCOPECYCLES kscope_exp_cycles(int exp) {
		if (exp < 0)
			return 0;
		KSCOPECYCLES ret = 1;
		if (exp & 1) {
			ret *= 3;
			exp -= 1;
		}
		assert((exp & 1) == 0);
		exp >>= 1;
		for (int i = 0; i < exp; ++i)
			ret *= 10;
		return ret;
	}

	#ifdef ITHARE_KSCOPE_ZERO_LITERAL_CONTEXT
	template<class T>
	using KscopeExtendedZeroLiteralContext = ITHARE_KSCOPE_ZERO_LITERAL_CONTEXT<T>;
	#else
	template<class T>
	using KscopeExtendedZeroLiteralContext = KscopeZeroLiteralContext<T>;
	#endif
	#ifdef ITHARE_KSCOPE_INTVAR_CONTEXT
	template<class T, ITHARE_KSCOPE_SEEDTPARAM seed,KSCOPECYCLES cycles>
	using KscopeExtendedIntVarContext = ITHARE_KSCOPE_INTVAR_CONTEXT<T,seed,cycles>;
	#else
	template<class T, ITHARE_KSCOPE_SEEDTPARAM seed,KSCOPECYCLES cycles>
	using KscopeExtendedIntVarContext = KscopeIntVarContext<T,seed,cycles>;
	#endif

	#ifdef ITHARE_KSCOPE_LITERAL_CONTEXT
	template<class T, ITHARE_KSCOPE_SEEDTPARAM seed, KSCOPECYCLES cycles>
	class KscopeExtendedLiteralContext : public ITHARE_KSCOPE_LITERAL_CONTEXT<T,seed,cycles> {//for whatever-reason, 'using' doesn't work here
	};
	template<class T, class T0, ITHARE_KSCOPE_SEEDTPARAM seed, ITHARE_KSCOPE_SEEDTPARAM seed0, KSCOPECYCLES cycles0,KSCOPECYCLES cycles>
	struct KscopeRecursiveContext<T, KscopeExtendedLiteralContext<T0, seed0,cycles0>, seed, cycles> {
		using recursive_context_type = KscopeExtendedLiteralContext<T, ITHARE_KSCOPE_NEW_PRNG(seed, 1),cycles>;
		using intermediate_context_type = typename ithare::kscope::KscopeExtendedLiteralContext<T, ITHARE_KSCOPE_NEW_PRNG(seed, 2), cycles>;//whenever cycles is low (which is very often), will fallback to version0
	};
	#else
	template<class T>
	struct KscopeExtendedLiteralContextDescr {
		constexpr static KscopeDescriptor descr[] = {
			ITHARE_KSCOPE_STOCK_LITERAL_DESCRIPTOR_LIST
			ITHARE_KSCOPE_ADDITIONAL_LITERAL_DESCRIPTOR_LIST
		};
	}; 
	
	//EXTENSIBLE => according to extensibility paradigm, we cannot have it in kscope_context.h :-( 
	template<class T, ITHARE_KSCOPE_SEEDTPARAM seed, KSCOPECYCLES cycles>
	class KscopeExtendedLiteralContext : public KscopeExtensibleLiteralContext<KscopeExtendedLiteralContextDescr<T>,T,seed,cycles> {
	};
	template<class T, class T0, ITHARE_KSCOPE_SEEDTPARAM seed, ITHARE_KSCOPE_SEEDTPARAM seed0, KSCOPECYCLES cycles0,KSCOPECYCLES cycles>
	struct KscopeRecursiveContext<T, KscopeExtendedLiteralContext<T0, seed0,cycles0>, seed, cycles> {
		using recursive_context_type = KscopeExtendedLiteralContext<T, ITHARE_KSCOPE_NEW_PRNG(seed, 1),cycles>;
		using intermediate_context_type = typename ithare::kscope::KscopeExtendedLiteralContext<T, ITHARE_KSCOPE_NEW_PRNG(seed, 2), cycles>;//whenever cycles is low (which is very often), will fallback to version0
	};
	#endif

	//IMPORTANT: ANY API CHANGES MUST BE MIRRORED in KscopeLiteralDbg<>
	template<class T_, T_ C_, ITHARE_KSCOPE_SEEDTPARAM seed, KSCOPECYCLES cycles,KSCOPEFLAGS flags>
	class KscopeLiteral {
		static_assert(std::is_integral<T_>::value);
		using T = typename kscope_normalized_unsigned_integral_type<T_>::type;//from this point on, uint8_t..uint64_t only; simple std::make_unsigned didn't do as some compilers tried to treat unsigned long distinct from both uint32_t and uint64_t
		static constexpr T C = T(C_);

		using Context = KscopeExtendedLiteralContext<T, ITHARE_KSCOPE_NEW_PRNG(seed, 1),cycles>;
		struct InjectionRequirements {
			static constexpr size_t exclude_version = size_t(-1);
			static constexpr bool is_constexpr = true;
			static constexpr bool only_bijections = false;
			static constexpr bool no_substrate_size_increase = false;
			static constexpr bool cross_platform_only = false;//currently there seems to be no need to ensure cross-platform compatibility for literals
		};
		using Injection = KscopeInjection<T, Context, InjectionRequirements,ITHARE_KSCOPE_NEW_PRNG(seed, 2), cycles>;
		static constexpr typename Injection::return_type C0 = Injection::template injection<ITHARE_KSCOPE_NEW_PRNG(seed, 3),kscope_flag_is_constexpr>(C);
	public:
		ITHARE_KSCOPE_FORCEINLINE constexpr KscopeLiteral() : val(C0) {
		}
		ITHARE_KSCOPE_FORCEINLINE constexpr T_ value() const {
			if constexpr(flags&kscope_flag_is_constexpr)
				return C_;
			else
				return Injection::template surjection<ITHARE_KSCOPE_NEW_PRNG(seed, 4),flags>(val);
		}
		constexpr ITHARE_KSCOPE_FORCEINLINE operator T_() const {
			return value();
		}

#ifdef ITHARE_KSCOPE_DBG_ENABLE_DBGPRINT
		static void dbg_print(size_t offset = 0, const char* prefix = "") {
			std::cout << std::string(offset, ' ') << prefix << "KscopeLiteral<"<<kscope_dbg_print_t<T>()<<"," << C << "," << kscope_dbg_print_seed<seed>() << "," << cycles << ">" << std::endl;
			Injection::dbg_print(offset + 1);
		}
#endif
	private:
		typename Injection::return_type val;
	};
	
	template<bool is_real, class T, class Context, class InjectionRequirements,ITHARE_KSCOPE_SEEDTPARAM seed, KSCOPECYCLES cycles>
	struct KscopeCondInjection;
	
	template<class T, class Context, class InjectionRequirements,ITHARE_KSCOPE_SEEDTPARAM seed, KSCOPECYCLES cycles>
	struct KscopeCondInjection<true,T,Context,InjectionRequirements,seed,cycles> {
		using Injection = KscopeInjection<T, Context, InjectionRequirements,seed, cycles>;
	};
	template<class T, class Context, class InjectionRequirements,ITHARE_KSCOPE_SEEDTPARAM seed, KSCOPECYCLES cycles>
	struct KscopeCondInjection<false,T,Context,InjectionRequirements,seed,cycles> {
		using Injection = KscopeInjectionVersion<0,T, Context, InjectionRequirements, seed, 0>;
	};

	//KscopeInt
	//IMPORTANT: ANY API CHANGES MUST BE MIRRORED in KscopeIntDbg<>
	template<class T_, ITHARE_KSCOPE_SEEDTPARAM seed, KSCOPECYCLES cycles,KSCOPEFLAGS flags=0>
	class KscopeInt {
		static_assert(std::is_integral<T_>::value);
		//using SimulatedT = T_;//to use externally
		using T = typename kscope_normalized_unsigned_integral_type<T_>::type;//from this point on, uint8_t..uint64_t only; simple std::make_unsigned<> didn't do as some compilers tried to treat unsigned long distinct from both uint32_t and uint64_t
		//using TTraits = KscopeTraits<T>;

		using Context = KscopeExtendedIntVarContext<T, ITHARE_KSCOPE_NEW_PRNG(seed, 1), cycles>;
		struct InjectionRequirements {
			static constexpr size_t exclude_version = size_t(-1);
			static constexpr bool is_constexpr = false;
			static constexpr bool only_bijections = false;
			static constexpr bool no_substrate_size_increase = false;
			static constexpr bool cross_platform_only = flags & kscope_flag_cross_platform_only;
		};
		using Injection = typename KscopeCondInjection<cycles >= 0,T, Context, InjectionRequirements,ITHARE_KSCOPE_NEW_PRNG(seed, 2), cycles>::Injection;
		//using Injection = KscopeInjection<T, Context, InjectionRequirements,seed, cycles>;

	public:
		ITHARE_KSCOPE_FORCEINLINE constexpr KscopeInt() : val(0) {
		}
		ITHARE_KSCOPE_FORCEINLINE constexpr KscopeInt(T_ t) : val(Injection::template injection<ITHARE_KSCOPE_NEW_PRNG(seed, 2),flags>(T(t))) {
		}
		template<class T2, ITHARE_KSCOPE_SEEDTPARAM seed2, KSCOPECYCLES cycles2,KSCOPEFLAGS flags2>
		ITHARE_KSCOPE_FORCEINLINE constexpr KscopeInt(KscopeInt<T2, seed2, cycles2,flags2> t) : val(Injection::template injection<ITHARE_KSCOPE_COMBINED_PRNG(seed,seed2),flags2>(T(T_(t.value())))) {//TODO: randomized injection implementation
		}
		template<class T2, T2 C2, ITHARE_KSCOPE_SEEDTPARAM seed2, KSCOPECYCLES cycles2,KSCOPEFLAGS flags2>
		ITHARE_KSCOPE_FORCEINLINE constexpr KscopeInt(KscopeLiteral<T2, C2, seed2, cycles2,flags2> t) : val(Injection::template injection<ITHARE_KSCOPE_COMBINED_PRNG(seed,seed2),flags2>(T(T_(t.value())))) {//TODO: randomized injection implementation
		}
		ITHARE_KSCOPE_FORCEINLINE constexpr KscopeInt& operator =(T_ t) {
			val = Injection::template injection<ITHARE_KSCOPE_NEW_PRNG(seed, 3),flags>(T(t));//TODO: different implementations of the same injection in different contexts
			return *this;
		}
		template<class T2, ITHARE_KSCOPE_SEEDTPARAM seed2, KSCOPECYCLES cycles2,KSCOPEFLAGS flags2>
		ITHARE_KSCOPE_FORCEINLINE constexpr KscopeInt& operator =(KscopeInt<T2, seed2, cycles2,flags2> t) {
			val = Injection::template injection<ITHARE_KSCOPE_NEW_PRNG(seed, 4),flags2>(T(T_(t.value())));//TODO: different implementations of the same injection in different contexts
			return *this;
		}
		template<class T2, T2 C2, ITHARE_KSCOPE_SEEDTPARAM seed2, KSCOPECYCLES cycles2,KSCOPEFLAGS flags2>
		ITHARE_KSCOPE_FORCEINLINE constexpr KscopeInt& operator =(KscopeLiteral<T2, C2, seed2, cycles2,flags2> t) {
			ITHARE_KSCOPE_DECLAREPRNG_INFUNC seedc = ITHARE_KSCOPE_COMBINED_PRNG(seed,seed2);
			val = Injection::template injection<seedc,flags2>(T(T_(t.value())));//TODO: different implementations of the same injection in different contexts
			return *this;
		}
		ITHARE_KSCOPE_FORCEINLINE constexpr /* depending on flags */ T_ value() const {
			return T_(Injection::template surjection<ITHARE_KSCOPE_NEW_PRNG(seed, 5),flags>(val));
		}

		ITHARE_KSCOPE_FORCEINLINE constexpr operator T_() const { return value(); }
		ITHARE_KSCOPE_FORCEINLINE constexpr KscopeInt& operator ++() { 
			constexpr bool has_shortcut = Injection::injection_caps & kscope_injection_has_add_mod_max_value_ex;
			if constexpr(has_shortcut) {
				typename Injection::return_type ret = Injection::template injected_add_mod_max_value_ex<ITHARE_KSCOPE_NEW_PRNG(seed, 6)>(val,1);
				ITHARE_KSCOPE_DBG_CHECK_SHORTCUT("++",ret,(Injection::template injection<seed,flags>(Injection::template surjection<seed,flags>(val)+1)));
				val = ret;
			}
			else {
				*this = value() + 1; 
			}
			return *this;
		}
		ITHARE_KSCOPE_FORCEINLINE constexpr KscopeInt& operator --() { *this = value() - 1; return *this; }
		ITHARE_KSCOPE_FORCEINLINE constexpr KscopeInt operator++(int) { KscopeInt ret = KscopeInt(value());  *this = value() + 1; return ret; }
		ITHARE_KSCOPE_FORCEINLINE constexpr KscopeInt operator--(int) { KscopeInt ret = KscopeInt(value());  *this = value() + 1; return ret; }

		template<class T2>
		ITHARE_KSCOPE_FORCEINLINE constexpr bool operator <(T2 t) { return value() < t; }
		template<class T2>
		ITHARE_KSCOPE_FORCEINLINE constexpr bool operator >(T2 t) { return value() > t; }
		template<class T2>
		ITHARE_KSCOPE_FORCEINLINE constexpr bool operator ==(T2 t) { return value() == t; }
		template<class T2>
		ITHARE_KSCOPE_FORCEINLINE constexpr bool operator !=(T2 t) { return value() != t; }
		template<class T2>
		ITHARE_KSCOPE_FORCEINLINE constexpr bool operator <=(T2 t) { return value() <= t; }
		template<class T2>
		ITHARE_KSCOPE_FORCEINLINE constexpr bool operator >=(T2 t) { return value() >= t; }

		template<class T2, ITHARE_KSCOPE_SEEDTPARAM seed2, KSCOPECYCLES cycles2,KSCOPEFLAGS flags2>
		ITHARE_KSCOPE_FORCEINLINE constexpr bool operator <(KscopeInt<T2, seed2, cycles2,flags2> t) {
			return value() < t.value();
		}
		template<class T2, ITHARE_KSCOPE_SEEDTPARAM seed2, KSCOPECYCLES cycles2,KSCOPEFLAGS flags2>
		ITHARE_KSCOPE_FORCEINLINE constexpr bool operator >(KscopeInt<T2, seed2, cycles2,flags2> t) {
			return value() > t.value();
		}
		template<class T2, ITHARE_KSCOPE_SEEDTPARAM seed2, KSCOPECYCLES cycles2,KSCOPEFLAGS flags2>
		ITHARE_KSCOPE_FORCEINLINE constexpr bool operator ==(KscopeInt<T2, seed2, cycles2,flags2> t) {
			return value() == t.value();
		}
		template<class T2, ITHARE_KSCOPE_SEEDTPARAM seed2, KSCOPECYCLES cycles2,KSCOPEFLAGS flags2>
		ITHARE_KSCOPE_FORCEINLINE constexpr bool operator !=(KscopeInt<T2, seed2, cycles2,flags2> t) {
			return value() != t.value();
		}
		template<class T2, ITHARE_KSCOPE_SEEDTPARAM seed2, KSCOPECYCLES cycles2,KSCOPEFLAGS flags2>
		ITHARE_KSCOPE_FORCEINLINE constexpr bool operator <=(KscopeInt<T2, seed2, cycles2,flags2> t) {
			return value() <= t.value();
		}
		template<class T2, ITHARE_KSCOPE_SEEDTPARAM seed2, KSCOPECYCLES cycles2,KSCOPEFLAGS flags2>
		ITHARE_KSCOPE_FORCEINLINE constexpr bool operator >=(KscopeInt<T2, seed2, cycles2,flags2> t) {
			return value() >= t.value();
		}

		template<class T2, T2 C2, ITHARE_KSCOPE_SEEDTPARAM seed2, KSCOPECYCLES cycles2,KSCOPEFLAGS flags2>
		ITHARE_KSCOPE_FORCEINLINE constexpr bool operator <(KscopeLiteral<T2, C2, seed2, cycles2,flags2> t) {
			constexpr bool is_safe = kscope_integral_operator_literal_cast_is_safe<T_, T2, C2>();
			if constexpr(is_safe)//safe to cast, avoiding spurious signed/unsigned mismatch warning
				return value() < T_(t.value());
			else
				return value() < t.value();
		}
		template<class T2, T2 C2, ITHARE_KSCOPE_SEEDTPARAM seed2, KSCOPECYCLES cycles2, KSCOPEFLAGS flags2>
		ITHARE_KSCOPE_FORCEINLINE constexpr bool operator >(KscopeLiteral<T2, C2, seed2, cycles2, flags2> t) {
			if constexpr(kscope_integral_operator_literal_cast_is_safe<T_,T2,C2>())//safe to cast, avoiding spurious signed/unsigned mismatch warning
				return value() > T_(t.value());
			else
				return value() > t.value();
		}
		template<class T2, T2 C2, ITHARE_KSCOPE_SEEDTPARAM seed2, KSCOPECYCLES cycles2, KSCOPEFLAGS flags2>
		ITHARE_KSCOPE_FORCEINLINE constexpr bool operator ==(KscopeLiteral<T2, C2, seed2, cycles2, flags2> t) {
			if constexpr(kscope_integral_operator_literal_cast_is_safe<T_,T2,C2>())//safe to cast, avoiding spurious signed/unsigned mismatch warning
				return value() == T_(t.value());
			else
				return value() == t.value();
		}
		template<class T2, T2 C2, ITHARE_KSCOPE_SEEDTPARAM seed2, KSCOPECYCLES cycles2, KSCOPEFLAGS flags2>
		ITHARE_KSCOPE_FORCEINLINE constexpr bool operator !=(KscopeLiteral<T2, C2, seed2, cycles2, flags2> t) {
			if constexpr(kscope_integral_operator_literal_cast_is_safe<T_,T2,C2>())//safe to cast, avoiding spurious signed/unsigned mismatch warning
				return value() != T_(t.value());
			else
				return value() != t.value();
		}
		template<class T2, T2 C2, ITHARE_KSCOPE_SEEDTPARAM seed2, KSCOPECYCLES cycles2, KSCOPEFLAGS flags2>
		ITHARE_KSCOPE_FORCEINLINE constexpr bool operator <=(KscopeLiteral<T2, C2, seed2, cycles2, flags2> t) {
			if constexpr(kscope_integral_operator_literal_cast_is_safe<T_,T2,C2>())//safe to cast, avoiding spurious signed/unsigned mismatch warning
				return value() <= T_(t.value());
			else
				return value() <= t.value();
		}
		template<class T2, T2 C2, ITHARE_KSCOPE_SEEDTPARAM seed2, KSCOPECYCLES cycles2, KSCOPEFLAGS flags2>
		ITHARE_KSCOPE_FORCEINLINE constexpr bool operator >=(KscopeLiteral<T2, C2, seed2, cycles2, flags2> t) {
			if constexpr(kscope_integral_operator_literal_cast_is_safe<T_,T2,C2>())//safe to cast, avoiding spurious signed/unsigned mismatch warning
				return value() >= T_(t.value());
			else
				return value() >= t.value();
		}

		template<class T2>
		ITHARE_KSCOPE_FORCEINLINE constexpr KscopeInt& operator +=(T2 t) { *this = value() + t; return *this; }
		template<class T2>
		ITHARE_KSCOPE_FORCEINLINE constexpr KscopeInt& operator -=(T2 t) { *this = value() - t; return *this; }
		template<class T2>
		ITHARE_KSCOPE_FORCEINLINE constexpr KscopeInt& operator *=(T2 t) { *this = value() * t; return *this; }
		template<class T2>
		ITHARE_KSCOPE_FORCEINLINE constexpr KscopeInt& operator /=(T2 t) { *this = value() / t; return *this; }
		template<class T2>
		ITHARE_KSCOPE_FORCEINLINE constexpr KscopeInt& operator %=(T2 t) { *this = value() % t; return *this; }

		template<class T2, ITHARE_KSCOPE_SEEDTPARAM seed2, KSCOPECYCLES cycles2,KSCOPEFLAGS flags2>
		ITHARE_KSCOPE_FORCEINLINE constexpr KscopeInt& operator +=(KscopeInt<T2, seed2, cycles2,flags2> t) {
			return *this += t.value();
		}
		template<class T2, ITHARE_KSCOPE_SEEDTPARAM seed2, KSCOPECYCLES cycles2,KSCOPEFLAGS flags2>
		ITHARE_KSCOPE_FORCEINLINE constexpr KscopeInt& operator -=(KscopeInt<T2, seed2, cycles2,flags2> t) {
			return *this -= t.value();
		}
		template<class T2, ITHARE_KSCOPE_SEEDTPARAM seed2, KSCOPECYCLES cycles2,KSCOPEFLAGS flags2>
		ITHARE_KSCOPE_FORCEINLINE constexpr KscopeInt& operator *=(KscopeInt<T2, seed2, cycles2,flags2> t) {
			return *this *= t.value();
		}
		template<class T2, ITHARE_KSCOPE_SEEDTPARAM seed2, KSCOPECYCLES cycles2,KSCOPEFLAGS flags2>
		ITHARE_KSCOPE_FORCEINLINE constexpr KscopeInt& operator /=(KscopeInt<T2, seed2, cycles2,flags2> t) {
			return *this /= t.value();
		}
		template<class T2, ITHARE_KSCOPE_SEEDTPARAM seed2, KSCOPECYCLES cycles2,KSCOPEFLAGS flags2>
		ITHARE_KSCOPE_FORCEINLINE constexpr KscopeInt& operator %=(KscopeInt<T2, seed2, cycles2,flags2> t) {
			return *this %= t.value();
		}

		template<class T2, T2 C2, ITHARE_KSCOPE_SEEDTPARAM seed2, KSCOPECYCLES cycles2,KSCOPEFLAGS flags2>
		ITHARE_KSCOPE_FORCEINLINE constexpr KscopeInt& operator +=(KscopeLiteral<T2, C2, seed2, cycles2,flags2> t) {
			return *this += t.value();
		}
		template<class T2, T2 C2, ITHARE_KSCOPE_SEEDTPARAM seed2, KSCOPECYCLES cycles2,KSCOPEFLAGS flags2>
		ITHARE_KSCOPE_FORCEINLINE constexpr KscopeInt& operator -=(KscopeLiteral<T2, C2, seed2, cycles2,flags2> t) {
			return *this -= t.value();
		}
		template<class T2, T2 C2, ITHARE_KSCOPE_SEEDTPARAM seed2, KSCOPECYCLES cycles2,KSCOPEFLAGS flags2>
		ITHARE_KSCOPE_FORCEINLINE constexpr KscopeInt& operator *=(KscopeLiteral<T2, C2, seed2, cycles2,flags2> t) {
			return *this *= t.value();
		}
		template<class T2, T2 C2, ITHARE_KSCOPE_SEEDTPARAM seed2, KSCOPECYCLES cycles2,KSCOPEFLAGS flags2>
		ITHARE_KSCOPE_FORCEINLINE constexpr KscopeInt& operator /=(KscopeLiteral<T2, C2, seed2, cycles2,flags2> t) {
			return *this /= t.value();
		}
		template<class T2, T2 C2, ITHARE_KSCOPE_SEEDTPARAM seed2, KSCOPECYCLES cycles2,KSCOPEFLAGS flags2>
		ITHARE_KSCOPE_FORCEINLINE constexpr KscopeInt& operator %=(KscopeLiteral<T2, C2, seed2, cycles2,flags2> t) {
			return *this %= t.value();
		}

		template<class T2>
		ITHARE_KSCOPE_FORCEINLINE constexpr KscopeInt operator +(T2 t) { return KscopeInt(value()+t); }
		template<class T2>
		ITHARE_KSCOPE_FORCEINLINE constexpr KscopeInt operator -(T2 t) { return KscopeInt(value() - t); }
		template<class T2>
		ITHARE_KSCOPE_FORCEINLINE constexpr KscopeInt operator *(T2 t) { return KscopeInt(value() * t); }
		template<class T2>
		ITHARE_KSCOPE_FORCEINLINE constexpr KscopeInt operator /(T2 t) { return KscopeInt(value() / t); }
		template<class T2>
		ITHARE_KSCOPE_FORCEINLINE constexpr KscopeInt operator %(T2 t) { return KscopeInt(value() % t); }
		
		template<class T2, ITHARE_KSCOPE_SEEDTPARAM seed2, KSCOPECYCLES cycles2,KSCOPEFLAGS flags2>
		ITHARE_KSCOPE_FORCEINLINE constexpr KscopeInt operator +(KscopeInt<T2,seed2,cycles2,flags2> t) { return KscopeInt(value() + t.value()); }
		template<class T2, ITHARE_KSCOPE_SEEDTPARAM seed2, KSCOPECYCLES cycles2,KSCOPEFLAGS flags2>
		ITHARE_KSCOPE_FORCEINLINE constexpr KscopeInt operator -(KscopeInt<T2, seed2, cycles2,flags2> t) { return KscopeInt(value() - t.value()); }
		template<class T2, ITHARE_KSCOPE_SEEDTPARAM seed2, KSCOPECYCLES cycles2,KSCOPEFLAGS flags2>
		ITHARE_KSCOPE_FORCEINLINE constexpr KscopeInt operator *(KscopeInt<T2, seed2, cycles2,flags2> t) { return KscopeInt(value() * t.value()); }
		template<class T2, ITHARE_KSCOPE_SEEDTPARAM seed2, KSCOPECYCLES cycles2,KSCOPEFLAGS flags2>
		ITHARE_KSCOPE_FORCEINLINE constexpr KscopeInt operator /(KscopeInt<T2, seed2, cycles2,flags2> t) { return KscopeInt(value() / t.value()); }
		template<class T2, ITHARE_KSCOPE_SEEDTPARAM seed2, KSCOPECYCLES cycles2,KSCOPEFLAGS flags2>
		ITHARE_KSCOPE_FORCEINLINE constexpr KscopeInt operator %(KscopeInt<T2, seed2, cycles2,flags2> t) { return KscopeInt(value() % t.value()); }

		template<class T2, T2 C2, ITHARE_KSCOPE_SEEDTPARAM seed2, KSCOPECYCLES cycles2,KSCOPEFLAGS flags2>
		ITHARE_KSCOPE_FORCEINLINE constexpr KscopeInt operator +(KscopeLiteral<T2, C2, seed2, cycles2,flags2> t) { return KscopeInt(value() + t.value()); }
		template<class T2, T2 C2, ITHARE_KSCOPE_SEEDTPARAM seed2, KSCOPECYCLES cycles2,KSCOPEFLAGS flags2>
		ITHARE_KSCOPE_FORCEINLINE constexpr KscopeInt operator -(KscopeLiteral<T2, C2, seed2, cycles2,flags2> t) { return KscopeInt(value() - t.value()); }
		template<class T2, T2 C2, ITHARE_KSCOPE_SEEDTPARAM seed2, KSCOPECYCLES cycles2,KSCOPEFLAGS flags2>
		ITHARE_KSCOPE_FORCEINLINE constexpr KscopeInt operator *(KscopeLiteral<T2, C2, seed2, cycles2,flags2> t) { return KscopeInt(value() * t.value()); }
		template<class T2, T2 C2, ITHARE_KSCOPE_SEEDTPARAM seed2, KSCOPECYCLES cycles2,KSCOPEFLAGS flags2>
		ITHARE_KSCOPE_FORCEINLINE constexpr KscopeInt operator /(KscopeLiteral<T2, C2, seed2, cycles2,flags2> t) { return KscopeInt(value() / t.value()); }
		template<class T2, T2 C2, ITHARE_KSCOPE_SEEDTPARAM seed2, KSCOPECYCLES cycles2,KSCOPEFLAGS flags2>
		ITHARE_KSCOPE_FORCEINLINE constexpr KscopeInt operator %(KscopeLiteral<T2, C2, seed2, cycles2,flags2> t) { return KscopeInt(value() % t.value()); }

		//TODO: bitwise

#ifdef ITHARE_KSCOPE_DBG_ENABLE_DBGPRINT
		static void dbg_print(size_t offset = 0, const char* prefix = "") {
			std::cout << std::string(offset, ' ') << prefix << "KscopeInt<" << kscope_dbg_print_t<T>() << "," << kscope_dbg_print_seed<seed>() <<","<<cycles<<">" << std::endl;
			Injection::dbg_print(offset+1);
		}
#endif

	private:
		typename Injection::return_type val;
	};

	//IMPORTANT: ANY API CHANGES MUST BE MIRRORED in KscopeStrLiteralDbg<>
	template<ITHARE_KSCOPE_SEEDTPARAM seed, KSCOPECYCLES cycles, char... C>//TODO! - wchar_t
	struct KscopeStrLiteral {
		//TODO: consider using different contexts beyond current (effectively global var)
		static_assert(sizeof(char) == 1);
		static constexpr size_t origSz = sizeof...(C);
		static constexpr char const str[sizeof...(C)+1] = { C...,'\0' };
		static constexpr size_t sz = kscope_strlen(str);
		static_assert(sz > 0);
		static_assert(sz <= 32);
		static constexpr size_t sz4 = (sz+3)/ 4;
		static_assert(sz4 > 0);
		static_assert(sz4 <= 8);//corresponds to max literal = 32, TODO: more later
		static constexpr uint32_t FILLER = uint32_t(ITHARE_KSCOPE_RANDOM_UINT32(seed,1));

		constexpr static size_t split[] = { 100 /*Injection0*/, 
											sz4>1?100:0 /* Injection1*/, 
											sz4>2?100:0 /*Injection2*/, 
											sz4>3?100:0 /*Injection3*/, 
											sz4>4?100:0 /*Injection4*/, 
											sz4>5?100:0 /*Injection5*/,
											sz4>6?100:0 /*Injection6*/,
											sz4>7?100:0 /*Injection7*/ };
		static constexpr auto splitCycles = kscope_random_split<ITHARE_KSCOPE_NEW_PRNG(seed, 2)>(cycles, split);
		static constexpr KSCOPECYCLES split0 = splitCycles.arr[0];
		static constexpr KSCOPECYCLES split1 = splitCycles.arr[1];
		static constexpr KSCOPECYCLES split2 = splitCycles.arr[2];
		static constexpr KSCOPECYCLES split3 = splitCycles.arr[3];
		static constexpr KSCOPECYCLES split4 = splitCycles.arr[4];
		static constexpr KSCOPECYCLES split5 = splitCycles.arr[5];
		static constexpr KSCOPECYCLES split6 = splitCycles.arr[6];
		static constexpr KSCOPECYCLES split7 = splitCycles.arr[7];

		struct InjectionRequirements {
			static constexpr size_t exclude_version = size_t(-1);
			static constexpr bool is_constexpr = true;
			static constexpr bool only_bijections = true;
			static constexpr bool no_substrate_size_increase = false;
			static constexpr bool cross_platform_only = false;//currently there seems to be no need to ensure cross-platform compatibility for literals 
		};

		using Injection0 = KscopeInjection<uint32_t, KscopeExtendedZeroLiteralContext<uint32_t>, InjectionRequirements, ITHARE_KSCOPE_NEW_PRNG(seed, 3), std::max(split0,2)>;
		static_assert(sizeof(typename Injection0::return_type) == sizeof(uint32_t));//only_bijections
		using Injection1 = KscopeInjection<uint32_t, KscopeExtendedZeroLiteralContext<uint32_t>, InjectionRequirements, ITHARE_KSCOPE_NEW_PRNG(seed, 4), std::max(split1,2)>;
		static_assert(sizeof(typename Injection1::return_type) == sizeof(uint32_t));//only_bijections
		using Injection2 = KscopeInjection<uint32_t, KscopeExtendedZeroLiteralContext<uint32_t>, InjectionRequirements, ITHARE_KSCOPE_NEW_PRNG(seed, 5), std::max(split2,2)>;
		static_assert(sizeof(typename Injection2::return_type) == sizeof(uint32_t));//only_bijections
		using Injection3 = KscopeInjection<uint32_t, KscopeExtendedZeroLiteralContext<uint32_t>, InjectionRequirements, ITHARE_KSCOPE_NEW_PRNG(seed, 6), std::max(split3,2)>;
		static_assert(sizeof(typename Injection3::return_type) == sizeof(uint32_t));//only_bijections
		using Injection4 = KscopeInjection<uint32_t, KscopeExtendedZeroLiteralContext<uint32_t>, InjectionRequirements, ITHARE_KSCOPE_NEW_PRNG(seed, 7), std::max(split4,2)>;
		static_assert(sizeof(typename Injection4::return_type) == sizeof(uint32_t));//only_bijections
		using Injection5 = KscopeInjection<uint32_t, KscopeExtendedZeroLiteralContext<uint32_t>, InjectionRequirements, ITHARE_KSCOPE_NEW_PRNG(seed, 8), std::max(split5,2)>;
		static_assert(sizeof(typename Injection5::return_type) == sizeof(uint32_t));//only_bijections
		using Injection6 = KscopeInjection<uint32_t, KscopeExtendedZeroLiteralContext<uint32_t>, InjectionRequirements, ITHARE_KSCOPE_NEW_PRNG(seed, 9), std::max(split6,2)>;
		static_assert(sizeof(typename Injection6::return_type) == sizeof(uint32_t));//only_bijections
		using Injection7 = KscopeInjection<uint32_t, KscopeExtendedZeroLiteralContext<uint32_t>, InjectionRequirements, ITHARE_KSCOPE_NEW_PRNG(seed, 10), std::max(split7,2)>;
		static_assert(sizeof(typename Injection7::return_type) == sizeof(uint32_t));//only_bijections

		ITHARE_KSCOPE_FORCEINLINE static constexpr uint32_t little_endian4(const char* str, size_t offset) {//TODO: BIG-ENDIAN
			//replacement for non-constexpr return *(uint32_t*)(str + offset);
			return str[offset] | (uint32_t(str[offset + 1]) << 8) | (uint32_t(str[offset + 2]) << 16) | (uint32_t(str[offset + 3]) << 24);
		}
		ITHARE_KSCOPE_FORCEINLINE static constexpr uint32_t last4(char const str[origSz], size_t offset, uint32_t filler) {
			assert(origSz > offset);
			size_t delta = origSz - offset;
			assert(delta <= 3);
			char buf[4] = {};
			size_t i = 0;
			for (; i < delta; ++i) {
				buf[i] = str[origSz + i];
			}
			for (; i < 4; ++i) {
				buf[i] = char(filler);
				filler >>= 8;
			}
			return little_endian4(buf,0);
		}
		ITHARE_KSCOPE_FORCEINLINE static constexpr uint32_t get4(char const str[origSz], size_t offset) {
			assert(offset < origSz);
			if (offset + 4 < origSz)
				return little_endian4(str, offset);
			else
				return last4(str, offset,FILLER);
		}
		ITHARE_KSCOPE_FORCEINLINE static constexpr KscopeArrayWrapper<uint32_t, sz4> str_kscoped() {
			KscopeArrayWrapper<uint32_t, sz4> ret = {{}};
			ret.arr[0] = Injection0::template injection<ITHARE_KSCOPE_NEW_PRNG(seed,3),kscope_flag_is_constexpr>(get4(str,0));
			if constexpr(sz4 > 1)
				ret.arr[1] = Injection1::template injection<ITHARE_KSCOPE_NEW_PRNG(seed,4),kscope_flag_is_constexpr>(get4(str, 4));
			if constexpr(sz4 > 2)
				ret.arr[2] = Injection2::template injection<ITHARE_KSCOPE_NEW_PRNG(seed,5),kscope_flag_is_constexpr>(get4(str, 8));
			if constexpr(sz4 > 3)
				ret.arr[3] = Injection3::template injection<ITHARE_KSCOPE_NEW_PRNG(seed,6),kscope_flag_is_constexpr>(get4(str, 12));
			if constexpr(sz4 > 4)
				ret.arr[4] = Injection4::template injection<ITHARE_KSCOPE_NEW_PRNG(seed,7),kscope_flag_is_constexpr>(get4(str, 16));
			if constexpr(sz4 > 5)
				ret.arr[5] = Injection5::template injection<ITHARE_KSCOPE_NEW_PRNG(seed,8),kscope_flag_is_constexpr>(get4(str, 20));
			if constexpr(sz4 > 6)
				ret.arr[6] = Injection6::template injection<ITHARE_KSCOPE_NEW_PRNG(seed,9),kscope_flag_is_constexpr>(get4(str, 24));
			if constexpr(sz4 > 7)
				ret.arr[7] = Injection7::template injection<ITHARE_KSCOPE_NEW_PRNG(seed,10),kscope_flag_is_constexpr>(get4(str, 28));
			return ret;
		}

		static constexpr KscopeArrayWrapper<uint32_t, sz4> strC = str_kscoped();

		static KscopeArrayWrapper<uint32_t, sz4> c;//TODO: different contexts?
		ITHARE_KSCOPE_FORCEINLINE std::string value() const {
			char buf[sz4 * 4];
			*(uint32_t*)(buf + 0) = Injection0::template surjection<ITHARE_KSCOPE_NEW_PRNG(seed,11),kscope_flag_is_constexpr>(c.arr[0]);
			if constexpr(sz4 > 1)
				*(uint32_t*)(buf + 4) = Injection1::template surjection<ITHARE_KSCOPE_NEW_PRNG(seed,12),kscope_flag_is_constexpr>(c.arr[1]);
			if constexpr(sz4 > 2)
				*(uint32_t*)(buf + 8) = Injection2::template surjection<ITHARE_KSCOPE_NEW_PRNG(seed,13),kscope_flag_is_constexpr>(c.arr[2]);
			if constexpr(sz4 > 3)
				*(uint32_t*)(buf + 12) = Injection3::template surjection<ITHARE_KSCOPE_NEW_PRNG(seed,14),kscope_flag_is_constexpr>(c.arr[3]);
			if constexpr(sz4 > 4)
				*(uint32_t*)(buf + 16) = Injection4::template surjection<ITHARE_KSCOPE_NEW_PRNG(seed,15),kscope_flag_is_constexpr>(c.arr[4]);
			if constexpr(sz4 > 5)
				*(uint32_t*)(buf + 20) = Injection5::template surjection<ITHARE_KSCOPE_NEW_PRNG(seed,16),kscope_flag_is_constexpr>(c.arr[5]);
			if constexpr(sz4 > 6)
				*(uint32_t*)(buf + 24) = Injection6::template surjection<ITHARE_KSCOPE_NEW_PRNG(seed,17),kscope_flag_is_constexpr>(c.arr[6]);
			if constexpr(sz4 > 7)
				*(uint32_t*)(buf + 28) = Injection7::template surjection<ITHARE_KSCOPE_NEW_PRNG(seed,18),kscope_flag_is_constexpr>(c.arr[7]);
			return std::string(buf,sz);
		}
		ITHARE_KSCOPE_FORCEINLINE operator std::string() const {
			return value();
		}

#ifdef ITHARE_KSCOPE_DBG_ENABLE_DBGPRINT
		static void dbg_print(size_t offset = 0, const char* prefix = "") {
			std::cout << std::string(offset, ' ') << prefix << "KscopeStrLiteral<'" << str << "'," << kscope_dbg_print_seed<seed>() << "," << cycles << ">" << std::endl;
			Injection0::dbg_print(offset + 1, "Injection0:");
			if constexpr(sz4 > 1)
				Injection1::dbg_print(offset+1,"Injection1:");
			if constexpr(sz4 > 2)
				Injection2::dbg_print(offset + 1, "Injection2:");
			if constexpr(sz4 > 3)
				Injection3::dbg_print(offset + 1, "Injection3:");
			if constexpr(sz4 > 4)
				Injection4::dbg_print(offset + 1, "Injection4:");
			if constexpr(sz4 > 5)
				Injection5::dbg_print(offset + 1, "Injection5:");
			if constexpr(sz4 > 6)
				Injection6::dbg_print(offset + 1, "Injection6:");
			if constexpr(sz4 > 7)
				Injection7::dbg_print(offset + 1, "Injection7:");
		}
#endif
	};

	template<ITHARE_KSCOPE_SEEDTPARAM seed, KSCOPECYCLES cycles, char... C>
	KscopeArrayWrapper<uint32_t, KscopeStrLiteral<seed,cycles,C...>::sz4> KscopeStrLiteral<seed,cycles,C...>::c = strC;

#ifdef ITHARE_KSCOPE_DBG_ENABLE_DBGPRINT
	inline void kscope_dbg_print() {
	}
#endif

	}//namespace kscope
}//namespace ithare

//Macros; DON'T belong to any namespace :-(

//Macros for use WITHIN 'kaleidoscoped' libraries:
#define ITHARE_KSCOPE_DECLARECLASS template<ITHARE_KSCOPE_SEEDTPARAM kscopeclsseed = ITHARE_KSCOPE_DUMMYSEED, KSCOPELEVEL kscopeclslevel=-1,KSCOPEFLAGS kscopeclsflags=0> 
#define ITHARE_KSCOPE_KSCOPECLASS(name) name<ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__),0,0> 
//TODO: LIBKSCOPELIBCLASS M3..P3

#define ITHARE_KSCOPE_DECLAREFUNC template<ITHARE_KSCOPE_SEEDTPARAM kscopeseed = ITHARE_KSCOPE_DUMMYSEED, KSCOPELEVEL kscopelevel=-1,KSCOPEFLAGS kscopeflags=0> constexpr ITHARE_KSCOPE_FORCEINLINE
#define ITHARE_KSCOPE_DECLAREFUNC_WITHEXTRA(...) template<ITHARE_KSCOPE_SEEDTPARAM kscopeseed = ITHARE_KSCOPE_DUMMYSEED, KSCOPELEVEL kscopelevel=-1,KSCOPEFLAGS kscopeflags=0,__VA_ARGS__> constexpr ITHARE_KSCOPE_FORCEINLINE
#define ITHARE_KSCOPE_DECLAREFUNC_WITHPARAMS_INT template<ITHARE_KSCOPE_SEEDTPARAM kscopeseed = ITHARE_KSCOPE_DUMMYSEED, KSCOPELEVEL kscopelevel=-1,KSCOPEFLAGS kscopeflags=0,class kscopeinttype, ITHARE_KSCOPE_SEEDTPARAM kscopeintseed,KSCOPECYCLES kscopeintcycles,KSCOPEFLAGS kscopeintflags> constexpr ITHARE_KSCOPE_FORCEINLINE
#define ITHARE_KSCOPE_DECLAREFUNC_WITHPARAMS_2xINT template<ITHARE_KSCOPE_SEEDTPARAM kscopeseed = ITHARE_KSCOPE_DUMMYSEED, KSCOPELEVEL kscopelevel=-1,KSCOPEFLAGS kscopeflags=0,class kscopeinttype,ITHARE_KSCOPE_SEEDTPARAM kscopeintseed,KSCOPECYCLES kscopeintcycles,KSCOPEFLAGS kscopeintflags,class kscopeinttype2, ITHARE_KSCOPE_SEEDTPARAM kscopeintseed2,KSCOPECYCLES kscopeintcycles2,KSCOPEFLAGS kscopeintflags2> constexpr ITHARE_KSCOPE_FORCEINLINE
#define ITHARE_KSCOPE_DECLAREFUNC_WITHPARAMS_3xINT template<ITHARE_KSCOPE_SEEDTPARAM kscopeseed = ITHARE_KSCOPE_DUMMYSEED, KSCOPELEVEL kscopelevel=-1,KSCOPEFLAGS kscopeflags=0,class kscopeinttype,ITHARE_KSCOPE_SEEDTPARAM kscopeintseed,KSCOPECYCLES kscopeintcycles,KSCOPEFLAGS kscopeintflags,class kscopeinttype2, ITHARE_KSCOPE_SEEDTPARAM kscopeintseed2,KSCOPECYCLES kscopeintcycles2,KSCOPEFLAGS kscopeintflags2,class kscopeinttype3, ITHARE_KSCOPE_SEEDTPARAM kscopeintseed3,KSCOPECYCLES kscopeintcycles3,KSCOPEFLAGS kscopeintflags3> constexpr ITHARE_KSCOPE_FORCEINLINE
#define ITHARE_KSCOPE_DECLAREFUNC_WITHPARAMS_4xINT template<ITHARE_KSCOPE_SEEDTPARAM kscopeseed = ITHARE_KSCOPE_DUMMYSEED, KSCOPELEVEL kscopelevel=-1,KSCOPEFLAGS kscopeflags=0,class kscopeinttype,ITHARE_KSCOPE_SEEDTPARAM kscopeintseed,KSCOPECYCLES kscopeintcycles,KSCOPEFLAGS kscopeintflags,class kscopeinttype2, ITHARE_KSCOPE_SEEDTPARAM kscopeintseed2,KSCOPECYCLES kscopeintcycles2,KSCOPEFLAGS kscopeintflags2,class kscopeinttype3, ITHARE_KSCOPE_SEEDTPARAM kscopeintseed3,KSCOPECYCLES kscopeintcycles3,KSCOPEFLAGS kscopeintflags3,class kscopeinttype4, ITHARE_KSCOPE_SEEDTPARAM kscopeintseed4,KSCOPECYCLES kscopeintcycles4,KSCOPEFLAGS kscopeintflags4> constexpr ITHARE_KSCOPE_FORCEINLINE
#define ITHARE_KSCOPE_DECLAREFUNC_WITHPARAMS_5xINT template<ITHARE_KSCOPE_SEEDTPARAM kscopeseed = ITHARE_KSCOPE_DUMMYSEED, KSCOPELEVEL kscopelevel=-1,KSCOPEFLAGS kscopeflags=0,class kscopeinttype,ITHARE_KSCOPE_SEEDTPARAM kscopeintseed,KSCOPECYCLES kscopeintcycles,KSCOPEFLAGS kscopeintflags,class kscopeinttype2, ITHARE_KSCOPE_SEEDTPARAM kscopeintseed2,KSCOPECYCLES kscopeintcycles2,KSCOPEFLAGS kscopeintflags2,class kscopeinttype3, ITHARE_KSCOPE_SEEDTPARAM kscopeintseed3,KSCOPECYCLES kscopeintcycles3,KSCOPEFLAGS kscopeintflags3,class kscopeinttype4, ITHARE_KSCOPE_SEEDTPARAM kscopeintseed4,KSCOPECYCLES kscopeintcycles4,KSCOPEFLAGS kscopeintflags4,class kscopeinttype5, ITHARE_KSCOPE_SEEDTPARAM kscopeintseed5,KSCOPECYCLES kscopeintcycles5,KSCOPEFLAGS kscopeintflags5> constexpr ITHARE_KSCOPE_FORCEINLINE
#define ITHARE_KSCOPE_DECLAREFUNC_WITHPARAMS_CLASS template<ITHARE_KSCOPE_SEEDTPARAM kscopeseed = ITHARE_KSCOPE_DUMMYSEED, KSCOPELEVEL kscopelevel=-1,KSCOPEFLAGS kscopeflags=0,ITHARE_KSCOPE_SEEDTPARAM kscopeclsseed,KSCOPELEVEL kscopeclslevel,KSCOPEFLAGS kscopeclsflags> constexpr ITHARE_KSCOPE_FORCEINLINE
#define ITHARE_KSCOPE_DECLAREFUNC_WITHPARAMS_CLASS_INT template<ITHARE_KSCOPE_SEEDTPARAM kscopeseed = ITHARE_KSCOPE_DUMMYSEED, KSCOPELEVEL kscopelevel=-1,KSCOPEFLAGS kscopeflags=0,ITHARE_KSCOPE_SEEDTPARAM kscopeclsseed,KSCOPELEVEL kscopeclslevel,KSCOPEFLAGS kscopeclsflags,class kscopeinttype,ITHARE_KSCOPE_SEEDTPARAM kscopeintseed,KSCOPECYCLES kscopeintcycles,KSCOPEFLAGS kscopeintflags> constexpr ITHARE_KSCOPE_FORCEINLINE
#define ITHARE_KSCOPE_DECLAREFUNC_WITHPARAMS_CLASS_2xINT template<ITHARE_KSCOPE_SEEDTPARAM kscopeseed = ITHARE_KSCOPE_DUMMYSEED, KSCOPELEVEL kscopelevel=-1,KSCOPEFLAGS kscopeflags=0,ITHARE_KSCOPE_SEEDTPARAM kscopeclsseed,KSCOPELEVEL kscopeclslevel,KSCOPEFLAGS kscopeclsflags,class kscopeinttype,ITHARE_KSCOPE_SEEDTPARAM kscopeintseed,KSCOPECYCLES kscopeintcycles,KSCOPEFLAGS kscopeintflags,class kscopeinttype2, ITHARE_KSCOPE_SEEDTPARAM kscopeintseed2,KSCOPECYCLES kscopeintcycles2,KSCOPEFLAGS kscopeintflags2> constexpr ITHARE_KSCOPE_FORCEINLINE
#define ITHARE_KSCOPE_DECLAREFUNC_WITHPARAMS_CLASS_3xINT template<ITHARE_KSCOPE_SEEDTPARAM kscopeseed = ITHARE_KSCOPE_DUMMYSEED, KSCOPELEVEL kscopelevel=-1,KSCOPEFLAGS kscopeflags=0,ITHARE_KSCOPE_SEEDTPARAM kscopeclsseed,KSCOPELEVEL kscopeclslevel,KSCOPEFLAGS kscopeclsflags,class kscopeinttype,ITHARE_KSCOPE_SEEDTPARAM kscopeintseed,KSCOPECYCLES kscopeintcycles,KSCOPEFLAGS kscopeintflags,class kscopeinttype2, ITHARE_KSCOPE_SEEDTPARAM kscopeintseed2,KSCOPECYCLES kscopeintcycles2,KSCOPEFLAGS kscopeintflags2,class kscopeinttype3, ITHARE_KSCOPE_SEEDTPARAM kscopeintseed3,KSCOPECYCLES kscopeintcycles3,KSCOPEFLAGS kscopeintflags3> constexpr ITHARE_KSCOPE_FORCEINLINE
#define ITHARE_KSCOPE_DECLAREPARAM_INT(type) /* yes, 'type' parameter is NOT used here */ ithare::kscope::KscopeInt<kscopeinttype,kscopeintseed,kscopeintcycles,kscopeintflags> 
#define ITHARE_KSCOPE_DECLAREPARAM_INT2(type) /* yes, 'type' parameter is NOT used here */ ithare::kscope::KscopeInt<kscopeinttype2,kscopeintseed2,kscopeintcycles2,kscopeintflags2>
#define ITHARE_KSCOPE_DECLAREPARAM_INT3(type) /* yes, 'type' parameter is NOT used here */ ithare::kscope::KscopeInt<kscopeinttype3,kscopeintseed3,kscopeintcycles3,kscopeintflags3>
#define ITHARE_KSCOPE_DECLAREPARAM_INT4(type) /* yes, 'type' parameter is NOT used here */ ithare::kscope::KscopeInt<kscopeinttype4,kscopeintseed4,kscopeintcycles4,kscopeintflags4>
#define ITHARE_KSCOPE_DECLAREPARAM_INT5(type) /* yes, 'type' parameter is NOT used here */ ithare::kscope::KscopeInt<kscopeinttype5,kscopeintseed5,kscopeintcycles5,kscopeintflags5>
#define ITHARE_KSCOPE_DECLAREPARAM_CLASS(name) name<kscopeclsseed,kscopeclslevel,kscopeclsflags>

#define ITHARE_KSCOPE_USEPARAM_INT(name) name.value()

#define ITHARE_KSCOPE_FCALLM3(fname) fname<ITHARE_KSCOPE_COMBINED_PRNG(kscopeseed,ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__)),ithare::kscope::kscope_addlevel(kscopelevel,-3),kscopeflags>
#define ITHARE_KSCOPE_FCALLM2(fname) fname<ITHARE_KSCOPE_COMBINED_PRNG(kscopeseed,ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__)),ithare::kscope::kscope_addlevel(kscopelevel,-2),kscopeflags>
#define ITHARE_KSCOPE_FCALLM1(fname) fname<ITHARE_KSCOPE_COMBINED_PRNG(kscopeseed,ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__)),ithare::kscope::kscope_addlevel(kscopelevel,-1),kscopeflags>
#define ITHARE_KSCOPE_FCALL(fname)   fname<ITHARE_KSCOPE_COMBINED_PRNG(kscopeseed,ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__)),kscopelevel,kscopeflags>
#define ITHARE_KSCOPE_FCALLP1(fname) fname<ITHARE_KSCOPE_COMBINED_PRNG(kscopeseed,ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__)),ithare::kscope::kscope_addlevel(kscopelevel,1),kscopeflags>
#define ITHARE_KSCOPE_FCALLP2(fname) fname<ITHARE_KSCOPE_COMBINED_PRNG(kscopeseed,ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__)),ithare::kscope::kscope_addlevel(kscopelevel,2),kscopeflags>
#define ITHARE_KSCOPE_FCALLP3(fname) fname<ITHARE_KSCOPE_COMBINED_PRNG(kscopeseed,ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__)),ithare::kscope::kscope_addlevel(kscopelevel,3),kscopeflags>

#define ITHARE_KSCOPE_FINTM3(type) ithare::kscope::KscopeInt<type,ITHARE_KSCOPE_INIT_COMBINED_PRNG(kscopeseed,__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__),ithare::kscope::kscope_exp_cycles(ithare::kscope::kscope_addlevel(kscopelevel,-3)),kscopeflags>
#define ITHARE_KSCOPE_FINTM2(type) ithare::kscope::KscopeInt<type,ITHARE_KSCOPE_INIT_COMBINED_PRNG(kscopeseed,__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__),ithare::kscope::kscope_exp_cycles(ithare::kscope::kscope_addlevel(kscopelevel,-2)),kscopeflags>
#define ITHARE_KSCOPE_FINTM1(type) ithare::kscope::KscopeInt<type,ITHARE_KSCOPE_INIT_COMBINED_PRNG(kscopeseed,__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__),ithare::kscope::kscope_exp_cycles(ithare::kscope::kscope_addlevel(kscopelevel,-1)),kscopeflags>
#define ITHARE_KSCOPE_FINT(type) ithare::kscope::KscopeInt<type,ITHARE_KSCOPE_INIT_COMBINED_PRNG(kscopeseed,__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__),ithare::kscope::kscope_exp_cycles(kscopelevel),kscopeflags>
#define ITHARE_KSCOPE_FINTP1(type) ithare::kscope::KscopeInt<type,ITHARE_KSCOPE_INIT_COMBINED_PRNG(kscopeseed,__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__),ithare::kscope::kscope_exp_cycles(ithare::kscope::kscope_addlevel(kscopelevel,1)),kscopeflags>
#define ITHARE_KSCOPE_FINTP2(type) ithare::kscope::KscopeInt<type,ITHARE_KSCOPE_INIT_COMBINED_PRNG(kscopeseed,__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__),ithare::kscope::kscope_exp_cycles(ithare::kscope::kscope_addlevel(kscopelevel,2)),kscopeflags>
#define ITHARE_KSCOPE_FINTP3(type) ithare::kscope::KscopeInt<type,ITHARE_KSCOPE_INIT_COMBINED_PRNG(kscopeseed,__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__),ithare::kscope::kscope_exp_cycles(ithare::kscope::kscope_addlevel(kscopelevel,3)),kscopeflags>

#define ITHARE_KSCOPE_CINT(type) ithare::kscope::KscopeInt<type,ITHARE_KSCOPE_COMBINED_PRNG(kscopeclsseed,ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__)),ithare::kscope::kscope_exp_cycles(kscopeclslevel),kscopeclsflags>
//TODO!: M3..P3
//TODO!: FCINT

#define ITHARE_KSCOPE_FINTLITM3(c) ithare::kscope::KscopeLiteral<typename std::remove_cv<decltype(c)>::type,c,ITHARE_KSCOPE_COMBINED_PRNG(kscopeseed,ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__)),ithare::kscope::kscope_exp_cycles(ithare::kscope::kscope_addlevel(kscopelevel,-3)),kscopeflags>()
#define ITHARE_KSCOPE_FINTLITM2(c) ithare::kscope::KscopeLiteral<typename std::remove_cv<decltype(c)>::type,c,ITHARE_KSCOPE_COMBINED_PRNG(kscopeseed,ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__)),ithare::kscope::kscope_exp_cycles(ithare::kscope::kscope_addlevel(kscopelevel,-2)),kscopeflags>()
#define ITHARE_KSCOPE_FINTLITM1(c) ithare::kscope::KscopeLiteral<typename std::remove_cv<decltype(c)>::type,c,ITHARE_KSCOPE_COMBINED_PRNG(kscopeseed,ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__)),ithare::kscope::kscope_exp_cycles(ithare::kscope::kscope_addlevel(kscopelevel,-1)),kscopeflags>()
#define ITHARE_KSCOPE_FINTLIT(c) ithare::kscope::KscopeLiteral<typename std::remove_cv<decltype(c)>::type,c,ITHARE_KSCOPE_COMBINED_PRNG(kscopeseed,ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__)),ithare::kscope::kscope_exp_cycles(kscopelevel),kscopeflags>()
#define ITHARE_KSCOPE_FINTLITP1(c) ithare::kscope::KscopeLiteral<typename std::remove_cv<decltype(c)>::type,c,ITHARE_KSCOPE_COMBINED_PRNG(kscopeseed,ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__)),ithare::kscope::kscope_exp_cycles(ithare::kscope::kscope_addlevel(kscopelevel,1)),kscopeflags>()
#define ITHARE_KSCOPE_FINTLITP2(c) ithare::kscope::KscopeLiteral<typename std::remove_cv<decltype(c)>::type,c,ITHARE_KSCOPE_COMBINED_PRNG(kscopeseed,ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__)),ithare::kscope::kscope_exp_cycles(ithare::kscope::kscope_addlevel(kscopelevel,2)),kscopeflags>()
#define ITHARE_KSCOPE_FINTLITP3(c) ithare::kscope::KscopeLiteral<typename std::remove_cv<decltype(c)>::type,c,ITHARE_KSCOPE_COMBINED_PRNG(kscopeseed,ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__)),ithare::kscope::kscope_exp_cycles(ithare::kscope::kscope_addlevel(kscopelevel,3)),kscopeflags>()

//INTLIT?I(c): INTLIT-casted-to-INT (shortcut to pass literals to functions)
#define ITHARE_KSCOPE_FINTLITM3I(c) ithare::kscope::KscopeInt<typename std::remove_cv<decltype(c)>::type,ITHARE_KSCOPE_DUMMYSEED,0,0>(ITHARE_KSCOPE_FINTLITM3(c))
#define ITHARE_KSCOPE_FINTLITM2I(c) ithare::kscope::KscopeInt<typename std::remove_cv<decltype(c)>::type,ITHARE_KSCOPE_DUMMYSEED,0,0>(ITHARE_KSCOPE_FINTLITM2(c))
#define ITHARE_KSCOPE_FINTLITM1I(c) ithare::kscope::KscopeInt<typename std::remove_cv<decltype(c)>::type,ITHARE_KSCOPE_DUMMYSEED,0,0>(ITHARE_KSCOPE_FINTLITM1(c))
#define ITHARE_KSCOPE_FINTLITI(c) ithare::kscope::KscopeInt<typename std::remove_cv<decltype(c)>::type,ITHARE_KSCOPE_DUMMYSEED,0,0>(ITHARE_KSCOPE_FINTLIT(c))
#define ITHARE_KSCOPE_FINTLITP1I(c) ithare::kscope::KscopeInt<typename std::remove_cv<decltype(c)>::type,ITHARE_KSCOPE_DUMMYSEED,0,0>(ITHARE_KSCOPE_FINTLITP1(c))
#define ITHARE_KSCOPE_FINTLITP2I(c) ithare::kscope::KscopeInt<typename std::remove_cv<decltype(c)>::type,ITHARE_KSCOPE_DUMMYSEED,0,0>(ITHARE_KSCOPE_FINTLITP2(c))
#define ITHARE_KSCOPE_FINTLITP3I(c) ithare::kscope::KscopeInt<typename std::remove_cv<decltype(c)>::type,ITHARE_KSCOPE_DUMMYSEED,0,0>(ITHARE_KSCOPE_FINTLITP3(c))

//TODO: ITHARE_KSCOPE_FSTRLIT

//Macros to be used OUTSIDE of 'kaleidoscoped' libraries 
#define ITHARE_KSCOPE_INT0(type) ithare::kscope::KscopeInt<type,ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__),ithare::kscope::kscope_exp_cycles(0),0>
#define ITHARE_KSCOPE_INT1(type) ithare::kscope::KscopeInt<type,ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__),ithare::kscope::kscope_exp_cycles(1),0>
#define ITHARE_KSCOPE_INT2(type) ithare::kscope::KscopeInt<type,ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__),ithare::kscope::kscope_exp_cycles(2),0>
#define ITHARE_KSCOPE_INT3(type) ithare::kscope::KscopeInt<type,ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__),ithare::kscope::kscope_exp_cycles(3),0>
#define ITHARE_KSCOPE_INT4(type) ithare::kscope::KscopeInt<type,ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__),ithare::kscope::kscope_exp_cycles(4),0>
#define ITHARE_KSCOPE_INT5(type) ithare::kscope::KscopeInt<type,ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__),ithare::kscope::kscope_exp_cycles(5),0>
#define ITHARE_KSCOPE_INT6(type) ithare::kscope::KscopeInt<type,ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__),ithare::kscope::kscope_exp_cycles(6),0>

#define ITHARE_KSCOPE_INT0C(type) ithare::kscope::KscopeInt<type,ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__),ithare::kscope::kscope_exp_cycles(0),ithare::kscope::kscope_flag_is_constexpr>
#define ITHARE_KSCOPE_INT1C(type) ithare::kscope::KscopeInt<type,ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__),ithare::kscope::kscope_exp_cycles(1),ithare::kscope::kscope_flag_is_constexpr>
#define ITHARE_KSCOPE_INT2C(type) ithare::kscope::KscopeInt<type,ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__),ithare::kscope::kscope_exp_cycles(2),ithare::kscope::kscope_flag_is_constexpr>
#define ITHARE_KSCOPE_INT3C(type) ithare::kscope::KscopeInt<type,ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__),ithare::kscope::kscope_exp_cycles(3),ithare::kscope::kscope_flag_is_constexpr>
#define ITHARE_KSCOPE_INT4C(type) ithare::kscope::KscopeInt<type,ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__),ithare::kscope::kscope_exp_cycles(4),ithare::kscope::kscope_flag_is_constexpr>
#define ITHARE_KSCOPE_INT5C(type) ithare::kscope::KscopeInt<type,ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__),ithare::kscope::kscope_exp_cycles(5),ithare::kscope::kscope_flag_is_constexpr>
#define ITHARE_KSCOPE_INT6C(type) ithare::kscope::KscopeInt<type,ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__),ithare::kscope::kscope_exp_cycles(6),ithare::kscope::kscope_flag_is_constexpr>

#define ITHARE_KSCOPE_INTNULLPTR ((ithare::kscope::KscopeInt<int,ITHARE_KSCOPE_DUMMYSEED,0,0>*)nullptr)

//INTLIT: constructing KscopeInt to be compatible with ITHARE_KSCOPE_DECLAREFUNC* functions
#define ITHARE_KSCOPE_INTLIT0(c) ithare::kscope::KscopeLiteral<typename std::remove_cv<decltype(c)>::type,c,ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__),ithare::kscope::kscope_exp_cycles(0),0>()
#define ITHARE_KSCOPE_INTLIT1(c) ithare::kscope::KscopeLiteral<typename std::remove_cv<decltype(c)>::type,c,ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__),ithare::kscope::kscope_exp_cycles(1),0>()
#define ITHARE_KSCOPE_INTLIT2(c) ithare::kscope::KscopeLiteral<typename std::remove_cv<decltype(c)>::type,c,ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__),ithare::kscope::kscope_exp_cycles(2),0>()
#define ITHARE_KSCOPE_INTLIT3(c) ithare::kscope::KscopeLiteral<typename std::remove_cv<decltype(c)>::type,c,ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__),ithare::kscope::kscope_exp_cycles(3),0>()
#define ITHARE_KSCOPE_INTLIT4(c) ithare::kscope::KscopeLiteral<typename std::remove_cv<decltype(c)>::type,c,ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__),ithare::kscope::kscope_exp_cycles(4),0>()
#define ITHARE_KSCOPE_INTLIT5(c) ithare::kscope::KscopeLiteral<typename std::remove_cv<decltype(c)>::type,c,ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__),ithare::kscope::kscope_exp_cycles(5),0>()
#define ITHARE_KSCOPE_INTLIT6(c) ithare::kscope::KscopeLiteral<typename std::remove_cv<decltype(c)>::type,c,ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__),ithare::kscope::kscope_exp_cycles(6),0>()

//INTLIT?I(c): INTLIT-casted-to-INT (shortcut to pass literals to functions)
#define ITHARE_KSCOPE_INTLIT0I(c) ithare::kscope::KscopeInt<typename std::remove_cv<decltype(c)>::type,ITHARE_KSCOPE_DUMMYSEED,0,0>(ITHARE_KSCOPE_INTLIT0(c))
#define ITHARE_KSCOPE_INTLIT1I(c) ithare::kscope::KscopeInt<typename std::remove_cv<decltype(c)>::type,ITHARE_KSCOPE_DUMMYSEED,0,0>(ITHARE_KSCOPE_INTLIT1(c))
#define ITHARE_KSCOPE_INTLIT2I(c) ithare::kscope::KscopeInt<typename std::remove_cv<decltype(c)>::type,ITHARE_KSCOPE_DUMMYSEED,0,0>(ITHARE_KSCOPE_INTLIT2(c))
#define ITHARE_KSCOPE_INTLIT3I(c) ithare::kscope::KscopeInt<typename std::remove_cv<decltype(c)>::type,ITHARE_KSCOPE_DUMMYSEED,0,0>(ITHARE_KSCOPE_INTLIT3(c))
#define ITHARE_KSCOPE_INTLIT4I(c) ithare::kscope::KscopeInt<typename std::remove_cv<decltype(c)>::type,ITHARE_KSCOPE_DUMMYSEED,0,0>(ITHARE_KSCOPE_INTLIT4(c))
#define ITHARE_KSCOPE_INTLIT5I(c) ithare::kscope::KscopeInt<typename std::remove_cv<decltype(c)>::type,ITHARE_KSCOPE_DUMMYSEED,0,0>(ITHARE_KSCOPE_INTLIT5(c))
#define ITHARE_KSCOPE_INTLIT6I(c) ithare::kscope::KscopeInt<typename std::remove_cv<decltype(c)>::type,ITHARE_KSCOPE_DUMMYSEED,0,0>(ITHARE_KSCOPE_INTLIT6(c))

//STRLIT:
#define ITHARE_KSCOPE_STR_HELPER(seed,cycles,s) ithare::kscope::KscopeStrLiteral<seed,cycles,(sizeof(s)>0?s[0]:'\0'),(sizeof(s)>1?s[1]:'\0'),(sizeof(s)>2?s[2]:'\0'),(sizeof(s)>3?s[3]:'\0'),\
							(sizeof(s)>4?s[4]:'\0'),(sizeof(s)>5?s[5]:'\0'),(sizeof(s)>6?s[6]:'\0'),(sizeof(s)>7?s[7]:'\0'),\
							(sizeof(s)>8?s[8]:'\0'),(sizeof(s)>9?s[9]:'\0'),(sizeof(s)>10?s[10]:'\0'),(sizeof(s)>11?s[11]:'\0'),\
							(sizeof(s)>12?s[12]:'\0'),(sizeof(s)>13?s[13]:'\0'),(sizeof(s)>14?s[14]:'\0'),(sizeof(s)>15?s[15]:'\0'),\
							(sizeof(s)>16?s[16]:'\0'),(sizeof(s)>17?s[17]:'\0'),(sizeof(s)>18?s[18]:'\0'),(sizeof(s)>19?s[19]:'\0'),\
							(sizeof(s)>20?s[20]:'\0'),(sizeof(s)>21?s[21]:'\0'),(sizeof(s)>22?s[22]:'\0'),(sizeof(s)>23?s[23]:'\0'),\
							(sizeof(s)>24?s[24]:'\0'),(sizeof(s)>25?s[25]:'\0'),(sizeof(s)>26?s[26]:'\0'),(sizeof(s)>27?s[27]:'\0'),\
							(sizeof(s)>28?s[28]:'\0'),(sizeof(s)>29?s[29]:'\0'),(sizeof(s)>30?s[30]:'\0'),(sizeof(s)>31?s[31]:'\0'),\
							(sizeof(s)>32?s[32]:'\0')/*one extra to generate an error if we're over*/>

#define ITHARE_KSCOPE_STRLIT0(s) ITHARE_KSCOPE_STR_HELPER(ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__),ithare::kscope::kscope_exp_cycles(0),s)()
#define ITHARE_KSCOPE_STRLIT1(s) ITHARE_KSCOPE_STR_HELPER(ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__),ithare::kscope::kscope_exp_cycles(1),s)()
#define ITHARE_KSCOPE_STRLIT2(s) ITHARE_KSCOPE_STR_HELPER(ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__),ithare::kscope::kscope_exp_cycles(2),s)()
#define ITHARE_KSCOPE_STRLIT3(s) ITHARE_KSCOPE_STR_HELPER(ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__),ithare::kscope::kscope_exp_cycles(3),s)()
#define ITHARE_KSCOPE_STRLIT4(s) ITHARE_KSCOPE_STR_HELPER(ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__),ithare::kscope::kscope_exp_cycles(4),s)()
#define ITHARE_KSCOPE_STRLIT5(s) ITHARE_KSCOPE_STR_HELPER(ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__),ithare::kscope::kscope_exp_cycles(5),s)()
#define ITHARE_KSCOPE_STRLIT6(s) ITHARE_KSCOPE_STR_HELPER(ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__),ithare::kscope::kscope_exp_cycles(6),s)()

#define ITHARE_KSCOPE_CALL0(fname) fname<ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__),0,0>
#define ITHARE_KSCOPE_CALL1(fname) fname<ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__),1,0>
#define ITHARE_KSCOPE_CALL2(fname) fname<ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__),2,0>
#define ITHARE_KSCOPE_CALL3(fname) fname<ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__),3,0>
#define ITHARE_KSCOPE_CALL4(fname) fname<ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__),4,0>
#define ITHARE_KSCOPE_CALL5(fname) fname<ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__),5,0>
#define ITHARE_KSCOPE_CALL6(fname) fname<ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__),6,0>
#define ITHARE_KSCOPE_CALL_AS_CONSTEXPR(fname) fname<ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__),-1,ithare::kscope::kscope_flag_is_constexpr>

#define ITHARE_KSCOPE_VALUE(x) x.value()
#define ITHARE_KSCOPE_ARRAY_OF_SAME_TYPE_AS(arr) typename std::remove_cv<typename std::remove_reference<decltype(*(arr))>::type>::type
#define ITHARE_KSCOPE_PTR_OF_SAME_TYPE_AS(arr) typename std::remove_cv<typename std::remove_reference<decltype(*(arr))>::type>::type*

#else//ITHARE_KSCOPE_SEED
namespace ithare {
	namespace kscope {

#ifdef ITHARE_KSCOPE_DBG_ENABLE_DBGPRINT
		//dbg_print helpers
		template<class T>
		std::string kscope_dbg_print_t() {
			return std::string("T(sizeof=") + std::to_string(sizeof(T)) + ")";
		}

		inline void kscope_dbg_print() {
		}
#endif

		//KscopeLiteralDbg
		//IMPORTANT: ANY API CHANGES MUST BE MIRRORED in KscopeLiteral<>
		template<class T, T C>
		class KscopeLiteralDbg {
			static_assert(std::is_integral<T>::value);

		public:
			constexpr KscopeLiteralDbg() : val(C) {
			}
			constexpr T value() const {
				return val;
			}
			constexpr operator T() const {
				return value();
			}

#ifdef ITHARE_KSCOPE_DBG_ENABLE_DBGPRINT
			static void dbg_print(size_t offset = 0, const char* prefix = "") {
				std::cout << std::string(offset, ' ') << prefix << "KscopeLiteral<" << kscope_dbg_print_t<T>() << "," << C << std::endl;
			}
#endif
		private:
			T val;
		};

		//KscopeIntDbg
		//IMPORTANT: ANY API CHANGES MUST BE MIRRORED in KscopeInt<>
		template<class T_>
		class KscopeIntDbg {
			static_assert(std::is_integral<T_>::value);
			using T = typename kscope_normalized_unsigned_integral_type<T_>::type;

		public:
			ITHARE_KSCOPE_FORCEINLINE constexpr KscopeIntDbg() : val(0) {
			}
			constexpr KscopeIntDbg(T_ t) : val(T(t)) {
			}
			template<class T2>
			constexpr KscopeIntDbg(KscopeIntDbg<T2> t) : val(T(T_(t.value()))) {
			}
			template<class T2,T2 C2>
			constexpr KscopeIntDbg(KscopeLiteralDbg<T2,C2> t) : val(T(T_(t.value()))) {
			}
			constexpr KscopeIntDbg& operator =(T_ t) {
				val = T(t);
				return *this;
			}
			template<class T2>
			constexpr KscopeIntDbg& operator =(KscopeIntDbg<T2> t) {
				val = T(T_(t.value()));
				return *this;
			}
			template<class T2, T2 C2>
			constexpr KscopeIntDbg& operator =(KscopeLiteralDbg<T2,C2> t) {
				val = T(T_(t.value()));
				return *this;
			}

			constexpr T_ value() const {
				return T_(val);
			}
			constexpr operator T_() const { return value(); }
			
			constexpr KscopeIntDbg& operator ++() { *this = value() + 1; return *this; }
			constexpr KscopeIntDbg& operator --() { *this = value() - 1; return *this; }
			constexpr KscopeIntDbg operator++(int) { KscopeIntDbg ret = KscopeIntDbg(value());  *this = value() + 1; return ret; }
			constexpr KscopeIntDbg operator--(int) { KscopeIntDbg ret = KscopeIntDbg(value());  *this = value() + 1; return ret; }

			template<class T2>
			constexpr bool operator <(T2 t) { return value() < t; }
			template<class T2>
			constexpr bool operator >(T2 t) { return value() > t; }
			template<class T2>
			constexpr bool operator ==(T2 t) { return value() == t; }
			template<class T2>
			constexpr bool operator !=(T2 t) { return value() != t; }
			template<class T2>
			constexpr bool operator <=(T2 t) { return value() <= t; }
			template<class T2>
			constexpr bool operator >=(T2 t) { return value() >= t; }

			template<class T2>
			constexpr bool operator <(KscopeIntDbg<T2> t) {
				return value() < t.value();
			}//TODO: template<KscopeLiteralDbg>(for ALL comparisons)
			template<class T2>
			constexpr bool operator >(KscopeIntDbg<T2> t) {
				return value() > t.value();
			}
			template<class T2>
			constexpr bool operator ==(KscopeIntDbg<T2> t) {
				return value() == t.value();
			}
			template<class T2>
			constexpr bool operator !=(KscopeIntDbg<T2> t) {
				return value() != t.value();
			}
			template<class T2>
			constexpr bool operator <=(KscopeIntDbg<T2> t) {
				return value() <= t.value();
			}
			template<class T2>
			constexpr bool operator >=(KscopeIntDbg<T2> t) {
				return value() >= t.value();
			}

			template<class T2, T2 C2>
			constexpr bool operator <(KscopeLiteralDbg<T2, C2> t) {
				if constexpr(kscope_integral_operator_literal_cast_is_safe<T,T2,C2>())//safe to cast, avoiding spurious signed/unsigned mismatch warning
					return value() < T(t.value());
				else
					return value() < t.value();
			}
			template<class T2, T2 C2>
			constexpr bool operator >(KscopeLiteralDbg<T2, C2> t) {
				if constexpr(kscope_integral_operator_literal_cast_is_safe<T,T2,C2>())//safe to cast, avoiding spurious signed/unsigned mismatch warning
					return value() > T(t.value());
				else
					return value() > t.value();
			}
			template<class T2, T2 C2>
			constexpr bool operator ==(KscopeLiteralDbg<T2, C2> t) {
				if constexpr(kscope_integral_operator_literal_cast_is_safe<T,T2,C2>())//safe to cast, avoiding spurious signed/unsigned mismatch warning
					return value() == T(t.value());
				else
					return value() == t.value();
			}
			template<class T2, T2 C2>
			constexpr bool operator !=(KscopeLiteralDbg<T2, C2> t) {
				if constexpr(kscope_integral_operator_literal_cast_is_safe<T,T2,C2>())//safe to cast, avoiding spurious signed/unsigned mismatch warning
					return value() != T(t.value());
				else
					return value() != t.value();
			}
			template<class T2, T2 C2>
			constexpr bool operator <=(KscopeLiteralDbg<T2, C2> t) {
				if constexpr(kscope_integral_operator_literal_cast_is_safe<T,T2,C2>())//safe to cast, avoiding spurious signed/unsigned mismatch warning
					return value() <= T(t.value());
				else
					return value() <= t.value();
			}
			template<class T2, T2 C2>
			constexpr bool operator >=(KscopeLiteralDbg<T2, C2> t) {
				if constexpr(kscope_integral_operator_literal_cast_is_safe<T,T2,C2>())//safe to cast, avoiding spurious signed/unsigned mismatch warning
					return value() > T(t.value());
				else
					return value() > t.value();
			}

			template<class T2>
			constexpr KscopeIntDbg& operator +=(T2 t) { *this = value() + t; return *this; }
			template<class T2>
			constexpr KscopeIntDbg& operator -=(T2 t) { *this = value() - t; return *this; }
			template<class T2>
			constexpr KscopeIntDbg& operator *=(T2 t) { *this = value() * t; return *this; }
			template<class T2>
			constexpr KscopeIntDbg& operator /=(T2 t) { *this = value() / t; return *this; }
			template<class T2>
			constexpr KscopeIntDbg& operator %=(T2 t) { *this = value() % t; return *this; }

			template<class T2>
			constexpr KscopeIntDbg& operator +=(KscopeIntDbg<T2> t) {
				return *this += t.value();
			}
			template<class T2>
			constexpr KscopeIntDbg& operator -=(KscopeIntDbg<T2> t) {
				return *this -= t.value();
			}
			template<class T2>
			constexpr KscopeIntDbg& operator *=(KscopeIntDbg<T2> t) {
				return *this *= t.value();
			}
			template<class T2>
			constexpr KscopeIntDbg& operator /=(KscopeIntDbg<T2> t) {
				return *this /= t.value();
			}
			template<class T2>
			constexpr KscopeIntDbg& operator %=(KscopeIntDbg<T2> t) {
				return *this %= t.value();
			}

			template<class T2, T2 C2>
			constexpr KscopeIntDbg& operator +=(KscopeLiteralDbg<T2, C2> t) {
				return *this += t.value();
			}
			template<class T2, T2 C2>
			constexpr KscopeIntDbg& operator -=(KscopeLiteralDbg<T2, C2> t) {
				return *this -= t.value();
			}
			template<class T2, T2 C2>
			constexpr KscopeIntDbg& operator *=(KscopeLiteralDbg<T2, C2> t) {
				return *this *= t.value();
			}
			template<class T2, T2 C2>
			constexpr KscopeIntDbg& operator /=(KscopeLiteralDbg<T2, C2> t) {
				return *this /= t.value();
			}
			template<class T2, T2 C2>
			constexpr KscopeIntDbg& operator %=(KscopeLiteralDbg<T2, C2> t) {
				return *this %= t.value();
			}

			template<class T2>
			constexpr KscopeIntDbg operator +(T2 t) { return KscopeIntDbg(value() + t); }
			template<class T2>
			constexpr KscopeIntDbg operator -(T2 t) { return KscopeIntDbg(value() - t); }
			template<class T2>
			constexpr KscopeIntDbg operator *(T2 t) { return KscopeIntDbg(value() * t); }
			template<class T2>
			constexpr KscopeIntDbg operator /(T2 t) { return KscopeIntDbg(value() / t); }
			template<class T2>
			constexpr KscopeIntDbg operator %(T2 t) { return KscopeIntDbg(value() % t); }

			template<class T2>//TODO: template<KscopeLiteralDbg>(for ALL binary operations)
			constexpr KscopeIntDbg operator +(KscopeIntDbg<T2> t) { return KscopeIntDbg(value() + t.value()); }
			template<class T2>
			constexpr KscopeIntDbg operator -(KscopeIntDbg<T2> t) { return KscopeIntDbg(value() - t.value()); }
			template<class T2>
			constexpr KscopeIntDbg operator *(KscopeIntDbg<T2> t) { return KscopeIntDbg(value() * t.value()); }
			template<class T2>
			constexpr KscopeIntDbg operator /(KscopeIntDbg<T2> t) { return KscopeIntDbg(value() / t.value()); }
			template<class T2>
			constexpr KscopeIntDbg operator %(KscopeIntDbg<T2> t) { return KscopeIntDbg(value() % t.value()); }

			template<class T2, T2 C2>
			constexpr KscopeIntDbg operator +(KscopeLiteralDbg<T2, C2> t) { return KscopeIntDbg(value() + t.value()); }
			template<class T2, T2 C2>
			constexpr KscopeIntDbg operator -(KscopeLiteralDbg<T2, C2> t) { return KscopeIntDbg(value() - t.value()); }
			template<class T2, T2 C2>
			constexpr KscopeIntDbg operator *(KscopeLiteralDbg<T2, C2> t) { return KscopeIntDbg(value() * t.value()); }
			template<class T2, T2 C2>
			constexpr KscopeIntDbg operator /(KscopeLiteralDbg<T2, C2> t) { return KscopeIntDbg(value() / t.value()); }
			template<class T2, T2 C2>
			constexpr KscopeIntDbg operator %(KscopeLiteralDbg<T2, C2> t) { return KscopeIntDbg(value() % t.value()); }

			//TODO: bitwise

#ifdef ITHARE_KSCOPE_DBG_ENABLE_DBGPRINT
			static void dbg_print(size_t offset = 0,const char* prefix="") {
				std::cout << std::string(offset, ' ') << prefix << "KscopeIntDbg<" << kscope_dbg_print_t<T>() << ">" << std::endl;
			}
#endif

		private:
			T val;
		};

		//IMPORTANT: ANY API CHANGES MUST BE MIRRORED in KscopeStrLiteral
		template<char... C>
		struct KscopeStrLiteralDbg {
			static constexpr size_t origSz = sizeof...(C);
			static constexpr char const str[sizeof...(C)+1] = { C...,'\0'};
			static constexpr size_t sz = kscope_strlen(str);
			static_assert(sz > 0);
			static_assert(sz <= 32);

			ITHARE_KSCOPE_FORCEINLINE std::string value() const {
				return std::string(str, origSz);
			}
			ITHARE_KSCOPE_FORCEINLINE operator std::string() const {
				return value();
			}

#ifdef ITHARE_KSCOPE_DBG_ENABLE_DBGPRINT
			static void dbg_print(size_t offset = 0, const char* prefix = "") {
				std::cout << std::string(offset, ' ') << prefix << "KscopeStrLiteralDbg<'" << str << "'>" << std::endl;
			}
#endif
		};

	}//namespace kscope
}//namespace ithare

#define ITHARE_KSCOPE_DECLARECLASS template<KSCOPEFLAGS kscopeclsflags=0> 
#define ITHARE_KSCOPE_KSCOPECLASS(name) name<0> 
//TODO: M3..P3

#define ITHARE_KSCOPE_DECLAREFUNC template<KSCOPEFLAGS kscopeflags=0> constexpr inline
#define ITHARE_KSCOPE_DECLAREFUNC_WITHEXTRA(...) template<KSCOPEFLAGS kscopeflags=0,__VA_ARGS__> constexpr inline
#define ITHARE_KSCOPE_DECLAREFUNC_WITHPARAMS_INT template<KSCOPEFLAGS kscopeflags=0,class kscopeinttype> constexpr inline
#define ITHARE_KSCOPE_DECLAREFUNC_WITHPARAMS_2xINT template<KSCOPEFLAGS kscopeflags=0,class kscopeinttype, class kscopeinttype2> constexpr inline
#define ITHARE_KSCOPE_DECLAREFUNC_WITHPARAMS_3xINT template<KSCOPEFLAGS kscopeflags=0,class kscopeinttype, class kscopeinttype2, class kscopeinttype3> constexpr inline
#define ITHARE_KSCOPE_DECLAREFUNC_WITHPARAMS_4xINT template<KSCOPEFLAGS kscopeflags=0,class kscopeinttype, class kscopeinttype2, class kscopeinttype3, class kscopeinttype4> constexpr inline
#define ITHARE_KSCOPE_DECLAREFUNC_WITHPARAMS_5xINT template<KSCOPEFLAGS kscopeflags=0,class kscopeinttype, class kscopeinttype2, class kscopeinttype3, class kscopeinttype4, class kscopeinttype5> constexpr inline
#define ITHARE_KSCOPE_DECLAREFUNC_WITHPARAMS_CLASS template<KSCOPEFLAGS kscopeflags=0,KSCOPEFLAGS kscopeclsflags> constexpr ITHARE_KSCOPE_FORCEINLINE
#define ITHARE_KSCOPE_DECLAREFUNC_WITHPARAMS_CLASS_INT template<KSCOPEFLAGS kscopeflags=0,KSCOPEFLAGS kscopeclsflags,class kscopeinttype> constexpr ITHARE_KSCOPE_FORCEINLINE
#define ITHARE_KSCOPE_DECLAREFUNC_WITHPARAMS_CLASS_2xINT template<KSCOPEFLAGS kscopeflags=0,KSCOPEFLAGS kscopeclsflags,class kscopeinttype,class kscopeinttype2> constexpr ITHARE_KSCOPE_FORCEINLINE
#define ITHARE_KSCOPE_DECLAREFUNC_WITHPARAMS_CLASS_3xINT template<KSCOPEFLAGS kscopeflags=0,KSCOPEFLAGS kscopeclsflags,class kscopeinttype,class kscopeinttype2,class kscopeinttype3> constexpr ITHARE_KSCOPE_FORCEINLINE
#define ITHARE_KSCOPE_DECLAREPARAM_INT(type) ithare::kscope::KscopeIntDbg<kscopeinttype>
#define ITHARE_KSCOPE_DECLAREPARAM_INT2(type) ithare::kscope::KscopeIntDbg<kscopeinttype2>
#define ITHARE_KSCOPE_DECLAREPARAM_INT3(type) ithare::kscope::KscopeIntDbg<kscopeinttype3>
#define ITHARE_KSCOPE_DECLAREPARAM_INT4(type) ithare::kscope::KscopeIntDbg<kscopeinttype4>
#define ITHARE_KSCOPE_DECLAREPARAM_INT5(type) ithare::kscope::KscopeIntDbg<kscopeinttype5>
#define ITHARE_KSCOPE_DECLAREPARAM_CLASS(name) name<kscopeclsflags>

#define ITHARE_KSCOPE_USEPARAM_INT(name) name.value()

#define ITHARE_KSCOPE_FCALLM3(fname) fname<kscopeflags>
#define ITHARE_KSCOPE_FCALLM2(fname) fname<kscopeflags>
#define ITHARE_KSCOPE_FCALLM1(fname) fname<kscopeflags>
#define ITHARE_KSCOPE_FCALL(fname) fname<kscopeflags>
#define ITHARE_KSCOPE_FCALLP1(fname) fname<kscopeflags>
#define ITHARE_KSCOPE_FCALLP2(fname) fname<kscopeflags>
#define ITHARE_KSCOPE_FCALLP3(fname) fname<kscopeflags>

#define ITHARE_KSCOPE_FINTM3(type) ithare::kscope::KscopeIntDbg<type>
#define ITHARE_KSCOPE_FINTM2(type) ithare::kscope::KscopeIntDbg<type>
#define ITHARE_KSCOPE_FINTM1(type) ithare::kscope::KscopeIntDbg<type>
#define ITHARE_KSCOPE_FINT(type) ithare::kscope::KscopeIntDbg<type>
#define ITHARE_KSCOPE_FINTP1(type) ithare::kscope::KscopeIntDbg<type>
#define ITHARE_KSCOPE_FINTP2(type) ithare::kscope::KscopeIntDbg<type>
#define ITHARE_KSCOPE_FINTP3(type) ithare::kscope::KscopeIntDbg<type>

#define ITHARE_KSCOPE_CINT(type) ithare::kscope::KscopeIntDbg<type>
//TODO: M3..P3

#define ITHARE_KSCOPE_FINTLITM3(c) KscopeLiteralDbg<typename std::remove_cv<decltype(c)>::type,c>()
#define ITHARE_KSCOPE_FINTLITM2(c) KscopeLiteralDbg<typename std::remove_cv<decltype(c)>::type,c>()
#define ITHARE_KSCOPE_FINTLITM1(c) KscopeLiteralDbg<typename std::remove_cv<decltype(c)>::type,c>()
#define ITHARE_KSCOPE_FINTLIT(c) KscopeLiteralDbg<typename std::remove_cv<decltype(c)>::type,c>()
#define ITHARE_KSCOPE_FINTLITP1(c) KscopeLiteralDbg<typename std::remove_cv<decltype(c)>::type,c>()
#define ITHARE_KSCOPE_FINTLITP2(c) KscopeLiteralDbg<typename std::remove_cv<decltype(c)>::type,c>()
#define ITHARE_KSCOPE_FINTLITP3(c) KscopeLiteralDbg<typename std::remove_cv<decltype(c)>::type,c>()

#define ITHARE_KSCOPE_FINTLITM3I(c) ithare::kscope::KscopeIntDbg<typename std::remove_cv<decltype(c)>::type>(ITHARE_KSCOPE_FINTLITM3(c))
#define ITHARE_KSCOPE_FINTLITM2I(c) ithare::kscope::KscopeIntDbg<typename std::remove_cv<decltype(c)>::type>(ITHARE_KSCOPE_FINTLITM2(c))
#define ITHARE_KSCOPE_FINTLITM1I(c) ithare::kscope::KscopeIntDbg<typename std::remove_cv<decltype(c)>::type>(ITHARE_KSCOPE_FINTLITM1(c))
#define ITHARE_KSCOPE_FINTLITI(c) ithare::kscope::KscopeIntDbg<typename std::remove_cv<decltype(c)>::type>(ITHARE_KSCOPE_FINTLIT(c))
#define ITHARE_KSCOPE_FINTLITP1I(c) ithare::kscope::KscopeIntDbg<typename std::remove_cv<decltype(c)>::type>(ITHARE_KSCOPE_FINTLITP1(c))
#define ITHARE_KSCOPE_FINTLITP2I(c) ithare::kscope::KscopeIntDbg<typename std::remove_cv<decltype(c)>::type>(ITHARE_KSCOPE_FINTLITP2(c))
#define ITHARE_KSCOPE_FINTLITP3I(c) ithare::kscope::KscopeIntDbg<typename std::remove_cv<decltype(c)>::type>(ITHARE_KSCOPE_FINTLITP3(c))

//Macros to be used OUTSIDE of 'kaleidoscoped' libraries 
#define ITHARE_KSCOPE_INT0(type) ithare::kscope::KscopeIntDbg<type>
#define ITHARE_KSCOPE_INT1(type) ithare::kscope::KscopeIntDbg<type>
#define ITHARE_KSCOPE_INT2(type) ithare::kscope::KscopeIntDbg<type>
#define ITHARE_KSCOPE_INT3(type) ithare::kscope::KscopeIntDbg<type>
#define ITHARE_KSCOPE_INT4(type) ithare::kscope::KscopeIntDbg<type>
#define ITHARE_KSCOPE_INT5(type) ithare::kscope::KscopeIntDbg<type>
#define ITHARE_KSCOPE_INT6(type) ithare::kscope::KscopeIntDbg<type>

#define ITHARE_KSCOPE_INT0C(type) ithare::kscope::KscopeIntDbg<type>
#define ITHARE_KSCOPE_INT1C(type) ithare::kscope::KscopeIntDbg<type>
#define ITHARE_KSCOPE_INT2C(type) ithare::kscope::KscopeIntDbg<type>
#define ITHARE_KSCOPE_INT3C(type) ithare::kscope::KscopeIntDbg<type>
#define ITHARE_KSCOPE_INT4C(type) ithare::kscope::KscopeIntDbg<type>
#define ITHARE_KSCOPE_INT5C(type) ithare::kscope::KscopeIntDbg<type>
#define ITHARE_KSCOPE_INT6C(type) ithare::kscope::KscopeIntDbg<type>

#define ITHARE_KSCOPE_INTNULLPTR ((ithare::kscope::KscopeIntDbg<int>*)nullptr)

#define ITHARE_KSCOPE_INTLIT0(c) ithare::kscope::KscopeLiteralDbg<typename std::remove_cv<decltype(c)>::type,c>()
#define ITHARE_KSCOPE_INTLIT1(c) ithare::kscope::KscopeLiteralDbg<typename std::remove_cv<decltype(c)>::type,c>()
#define ITHARE_KSCOPE_INTLIT2(c) ithare::kscope::KscopeLiteralDbg<typename std::remove_cv<decltype(c)>::type,c>()
#define ITHARE_KSCOPE_INTLIT3(c) ithare::kscope::KscopeLiteralDbg<typename std::remove_cv<decltype(c)>::type,c>()
#define ITHARE_KSCOPE_INTLIT4(c) ithare::kscope::KscopeLiteralDbg<typename std::remove_cv<decltype(c)>::type,c>()
#define ITHARE_KSCOPE_INTLIT5(c) ithare::kscope::KscopeLiteralDbg<typename std::remove_cv<decltype(c)>::type,c>()
#define ITHARE_KSCOPE_INTLIT6(c) ithare::kscope::KscopeLiteralDbg<typename std::remove_cv<decltype(c)>::type,c>()

#define ITHARE_KSCOPE_INTLIT0I(c) ithare::kscope::KscopeIntDbg<typename std::remove_cv<decltype(c)>::type>(ITHARE_KSCOPE_INTLIT0(c))
#define ITHARE_KSCOPE_INTLIT1I(c) ithare::kscope::KscopeIntDbg<typename std::remove_cv<decltype(c)>::type>(ITHARE_KSCOPE_INTLIT1(c))
#define ITHARE_KSCOPE_INTLIT2I(c) ithare::kscope::KscopeIntDbg<typename std::remove_cv<decltype(c)>::type>(ITHARE_KSCOPE_INTLIT2(c))
#define ITHARE_KSCOPE_INTLIT3I(c) ithare::kscope::KscopeIntDbg<typename std::remove_cv<decltype(c)>::type>(ITHARE_KSCOPE_INTLIT3(c))
#define ITHARE_KSCOPE_INTLIT4I(c) ithare::kscope::KscopeIntDbg<typename std::remove_cv<decltype(c)>::type>(ITHARE_KSCOPE_INTLIT4(c))
#define ITHARE_KSCOPE_INTLIT5I(c) ithare::kscope::KscopeIntDbg<typename std::remove_cv<decltype(c)>::type>(ITHARE_KSCOPE_INTLIT5(c))
#define ITHARE_KSCOPE_INTLIT6I(c) ithare::kscope::KscopeIntDbg<typename std::remove_cv<decltype(c)>::type>(ITHARE_KSCOPE_INTLIT6(c))

#define ITHARE_KSCOPE_STR_DBG_HELPER(s) ithare::kscope::KscopeStrLiteralDbg<(sizeof(s)>0?s[0]:'\0'),(sizeof(s)>1?s[1]:'\0'),(sizeof(s)>2?s[2]:'\0'),(sizeof(s)>3?s[3]:'\0'),\
							(sizeof(s)>4?s[4]:'\0'),(sizeof(s)>5?s[5]:'\0'),(sizeof(s)>6?s[6]:'\0'),(sizeof(s)>7?s[7]:'\0'),\
							(sizeof(s)>8?s[8]:'\0'),(sizeof(s)>9?s[9]:'\0'),(sizeof(s)>10?s[10]:'\0'),(sizeof(s)>11?s[11]:'\0'),\
							(sizeof(s)>12?s[12]:'\0'),(sizeof(s)>13?s[13]:'\0'),(sizeof(s)>14?s[14]:'\0'),(sizeof(s)>15?s[15]:'\0'),\
							(sizeof(s)>16?s[16]:'\0'),(sizeof(s)>17?s[17]:'\0'),(sizeof(s)>18?s[18]:'\0'),(sizeof(s)>19?s[19]:'\0'),\
							(sizeof(s)>20?s[20]:'\0'),(sizeof(s)>21?s[21]:'\0'),(sizeof(s)>22?s[22]:'\0'),(sizeof(s)>23?s[23]:'\0'),\
							(sizeof(s)>24?s[24]:'\0'),(sizeof(s)>25?s[25]:'\0'),(sizeof(s)>26?s[26]:'\0'),(sizeof(s)>27?s[27]:'\0'),\
							(sizeof(s)>28?s[28]:'\0'),(sizeof(s)>29?s[29]:'\0'),(sizeof(s)>30?s[30]:'\0'),(sizeof(s)>31?s[31]:'\0'),\
							(sizeof(s)>32?s[32]:'\0')/*one extra to generate an error if we're over*/>

#define ITHARE_KSCOPE_STRLIT0(s) ITHARE_KSCOPE_STR_DBG_HELPER(s)()
#define ITHARE_KSCOPE_STRLIT1(s) ITHARE_KSCOPE_STR_DBG_HELPER(s)()
#define ITHARE_KSCOPE_STRLIT2(s) ITHARE_KSCOPE_STR_DBG_HELPER(s)()
#define ITHARE_KSCOPE_STRLIT3(s) ITHARE_KSCOPE_STR_DBG_HELPER(s)()
#define ITHARE_KSCOPE_STRLIT4(s) ITHARE_KSCOPE_STR_DBG_HELPER(s)()
#define ITHARE_KSCOPE_STRLIT5(s) ITHARE_KSCOPE_STR_DBG_HELPER(s)()
#define ITHARE_KSCOPE_STRLIT6(s) ITHARE_KSCOPE_STR_DBG_HELPER(s)()

#define ITHARE_KSCOPE_CALL0(fname) fname<0>
#define ITHARE_KSCOPE_CALL1(fname) fname<0>
#define ITHARE_KSCOPE_CALL2(fname) fname<0>
#define ITHARE_KSCOPE_CALL3(fname) fname<0>
#define ITHARE_KSCOPE_CALL4(fname) fname<0>
#define ITHARE_KSCOPE_CALL5(fname) fname<0>
#define ITHARE_KSCOPE_CALL6(fname) fname<0>
#define ITHARE_KSCOPE_CALL_AS_CONSTEXPR(fname) fname<ithare::kscope::kscope_flag_is_constexpr>

#define ITHARE_KSCOPE_VALUE(x) x.value()
#define ITHARE_KSCOPE_ARRAY_OF_SAME_TYPE_AS(arr) typename std::remove_cv<typename std::remove_reference<decltype(*arr)>::type>::type
#define ITHARE_KSCOPE_PTR_OF_SAME_TYPE_AS(arr) typename std::remove_cv<typename std::remove_reference<decltype(*arr)>::type>::type*

#endif //ITHARE_KSCOPE_SEED

#ifdef ITHARE_KSCOPE_ENABLE_AUTO_DBGPRINT
namespace ithare { namespace kscope {
template<uint64_t filelinehash,uint64_t msghash,class T> //all but T just to ensure uniqueness
void kscope_auto_dbg_print(const T&,const char* what, const char* file, int line) {
	static bool printed = false;
	if(!printed) {
		std::cout << "\n----- " << what << "(@" << kscope_normalize_fname(file) << " @" << line << ") -----" << std::endl;
		if constexpr(std::is_integral<T>::value)//accidental call of auto_dbg_print() on int etc.
			std::cout << "int(sizeof=" << sizeof(T) << ")" << std::endl;
		else
			T::dbg_print(1);
		printed = true;
	}
}
template<ITHARE_KSCOPE_SEEDTPARAM seed,KSCOPELEVEL level,KSCOPEFLAGS flags,uint64_t filelinehash,uint64_t msghash,class T> //all but T just to ensure uniqueness
void kscope_auto_dbg_print_fromlib(const T&,const char* what, const char* file, int line) {
	static bool printed = false;
	if(!printed) {
		std::cout << "\n----- some_func<"<< kscope_dbg_print_seed<seed>()<< "," << int(level) << "," << flags << ">():" << what << "(@" << kscope_normalize_fname(file) << " @" << line << ") -----" << std::endl;
		T::dbg_print(1);
		printed = true;
	}
}
template<ITHARE_KSCOPE_SEEDTPARAM seed,KSCOPELEVEL level,KSCOPEFLAGS flags,uint64_t filelinehash,uint64_t msghash> //all but T just to ensure uniqueness
void kscope_auto_dbg_print_libfuncname(const char* fname, const char* file, int line) {
	static bool printed = false;
	if(!printed) {
		std::cout << "\n===== " << fname <<"<"<< kscope_dbg_print_seed<seed>()<< "," << int(level) << "," << flags << ">() (@" << kscope_normalize_fname(file) << " @" << line << ") =====" << std::endl;
		printed = true;
	}
}
}}//namespace ithare::kscope

#define ITHARE_KSCOPE_DBGPRINT(x) do {\
		ithare::kscope::kscope_auto_dbg_print<ithare::kscope::kscope_string_hash(ithare::kscope::kscope_normalize_fname(__FILE__)),ithare::kscope::kscope_string_hash(#x)>(x,#x,__FILE__,ITHARE_KSCOPE_LINE);\
	} while(false)

#define ITHARE_KSCOPE_FDBGPRINTFUNCNAMEX(fname)  /*'X' at the end stands for "cross-platform'*/ do {\
		if constexpr(!(kscopeflags&kscope_flag_is_constexpr)) {\
			ithare::kscope::kscope_auto_dbg_print_libfuncname<kscopeseed,kscopelevel,kscopeflags,ithare::kscope::kscope_string_hash(ithare::kscope::kscope_normalize_fname(__FILE__)),ithare::kscope::kscope_string_hash(#fname)>(fname,__FILE__,ITHARE_KSCOPE_LINE);\
		}\
	} while(false)
#define ITHARE_KSCOPE_FDBGPRINTX(x) do {\
		if constexpr(!(kscopeflags&kscope_flag_is_constexpr)) {\
				ithare::kscope::kscope_auto_dbg_print_fromlib<kscopeseed,kscopelevel,kscopeflags,ithare::kscope::kscope_string_hash(ithare::kscope::kscope_normalize_fname(__FILE__)),ithare::kscope::kscope_string_hash(#x)>(x,#x,__FILE__,ITHARE_KSCOPE_LINE);\
		}\
	} while(false)
#if ITHARE_KSCOPE_ENABLE_AUTO_DBGPRINT>=2 //if not >=2, stick to cross-platform-only
#define ITHARE_KSCOPE_FDBGPRINT ITHARE_KSCOPE_FDBGPRINTX
#define ITHARE_KSCOPE_FDBGPRINTFUNCNAME ITHARE_KSCOPE_FDBGPRINTFUNCNAMEX
#else
#define ITHARE_KSCOPE_FDBGPRINTLIB(x)
#define ITHARE_KSCOPE_FDBGPRINTFUNCNAME(fname)
#endif
#else
#define ITHARE_KSCOPE_DBGPRINT(x)
#define ITHARE_KSCOPE_FDBGPRINT(x)
#define ITHARE_KSCOPE_FDBGPRINTX(x)
#define ITHARE_KSCOPE_FDBGPRINTFUNCNAME(fname)
#define ITHARE_KSCOPE_FDBGPRINTFUNCNAMEX(fname)
#endif

#endif//ithare_kscope_kscope_h_included
