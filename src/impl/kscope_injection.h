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

#ifndef ithare_kscope_injection_h_included
#define ithare_kscope_injection_h_included

//NOT intended to be #included directly (except within extension)
//  #include ../kscope.h instead

#include "kscope_common.h"
#include "kscope_prng.h"

//IMPORTANT: principles for cross-platform kaleidoscopes:
//  We DO want cross-platform kaleidoscopes to be IDENTICAL across the platforms (given the same ITHARE_KSCOPE_SEED)
//  To achieve it, all platform-specific injections MUST:
//    - EITHER have NON-platform specific calculations for probabilities across ALL the platforms 
//        - this includes KscopeDescriptors in *_descr, AND all the calculations within the injection itself 
//        - however, they MAY have different implementations  
//    - OR be disabled whenever InjectionRequirements::cross_platform_only flag is set
//  The same MUST stand for any 64-bit-specific injections

#ifdef ITHARE_KSCOPE_SEED

namespace ithare {
	namespace kscope {

#ifdef ITHARE_KSCOPE_DBG_RUNTIME_CHECKS
#define ITHARE_KSCOPE_DBG_ASSERT_SURJECTION_RECURSIVE(where,x,y) do {\
			if (surjection<seed,flags>(y) != x) {\
				std::cout << "DBG_ASSERT_SURJECTION_RECURSIVE FAILED @" << where << ": injection(" << x << ")=" << y << " but surjection(" << y << ") = " << surjection<seed,flags>(y) << " != " << x << std::endl; \
				dbg_print(); \
				abort(); \
			}\
		} while(false)
#define ITHARE_KSCOPE_DBG_ASSERT_SURJECTION_LOCAL(where,x,y) do {\
			if (local_surjection<seed,flags>(y) != x) {\
				std::cout << "DBG_ASSERT_SURJECTION_LOCAL FAILED @" << where << ": local_injection(" << x << ")=" << y << " but local_surjection(" << y << ") = " << local_surjection<seed,flags>(y) << " != " << x << std::endl; \
				dbg_print(); \
				abort(); \
			}\
		} while(false)
#define ITHARE_KSCOPE_DBG_CHECK_LITERAL(where, val, c) do {\
			if (val.value() != c) {\
				std::cout << "DBG_CHECK_LITERAL ERROR @" << where << ": " << val.value() << "!=" << c << std::endl; \
				val.dbg_check();\
				dbg_print(); \
				abort(); \
			}\
		}while(false)
#define ITHARE_KSCOPE_DBG_CHECK_SHORTCUT(where,shortcut,noshortcut_expr) do {\
			auto noshort = noshortcut_expr;/* can be long*/\
			if(shortcut!=noshort) {\
				std::cout << "DBG_CHECK_SHORTCUT ERROR @" << where << ": " << shortcut << "!=" << noshort << std::endl; \
				dbg_print();\
				abort();\
			}\
        }while(false)
#else
#define ITHARE_KSCOPE_DBG_ASSERT_SURJECTION_RECURSIVE(where,x,y)
#define ITHARE_KSCOPE_DBG_ASSERT_SURJECTION_LOCAL(where,x,y)
#define ITHARE_KSCOPE_DBG_CHECK_LITERAL(where, val, c)
#define ITHARE_KSCOPE_DBG_CHECK_SHORTCUT(where,shortcut,noshortcut_expr)
#endif//ITHARE_KSCOPE_DBG_RUNTIME_CHECKS

		template<ITHARE_KSCOPE_SEEDTPARAM seed, size_t N>
		constexpr size_t kscope_random_from_list(size_t(&weights)[N]) {
			//returns index in weights
			size_t total_weight = 0;
			for (size_t i = 0; i < N; ++i)
				total_weight += weights[i];
			assert(total_weight > 0);
			assert(uint32_t(total_weight) == total_weight);
			size_t ref_weight = ITHARE_KSCOPE_RANDOM(seed, 1, uint32_t(total_weight));
			assert(ref_weight < total_weight);
			for (size_t i = 0; i < N; ++i) {
				if (ref_weight < weights[i])
					return i;
				ref_weight -= weights[i];
			}
			ITHARE_KSCOPE_CONSTEXPR_ASSERT_UNREACHABLE;
			return size_t(-1);
		}

		struct KscopeDescriptor {
			static constexpr uint32_t flag_is_last_resort = 0x01;
			
			KSCOPECYCLES min_cycles;
			uint32_t weight;
			uint32_t flags;

			constexpr KscopeDescriptor(KSCOPECYCLES min_cycles_, uint32_t weight_,uint32_t flags_=0)
				: min_cycles(min_cycles_), weight(weight_), flags(flags_) {
			}
			constexpr KscopeDescriptor(std::nullptr_t)
				: min_cycles(0), weight(0), flags(0) {
			}
		};

		template<ITHARE_KSCOPE_SEEDTPARAM seed, size_t N>
		constexpr size_t kscope_random_choice_from_list(KSCOPECYCLES cycles, const KscopeDescriptor (&descr)[N], size_t exclude_version = size_t(-1)) {
			//returns index in descr
			size_t weights[N] = {};
			size_t lr_weights[N] = {};
			size_t sum = 0;
			size_t lr_sum = 0;
			for (size_t i = 0; i < N; ++i) {
				if (i != exclude_version && cycles >= descr[i].min_cycles) {
					if ((descr[i].flags&KscopeDescriptor::flag_is_last_resort)==0) {
						weights[i] = descr[i].weight;
						sum += weights[i];
					}
					else {
						lr_weights[i] = descr[i].weight;
						lr_sum += lr_weights[i];
					}
				}
			}
			if (sum)
				return kscope_random_from_list<seed>(weights);
			else {
				assert(lr_sum > 0);
				return kscope_random_from_list<seed>(lr_weights);
			}
		}

		template<ITHARE_KSCOPE_SEEDTPARAM seed, size_t N>
		constexpr KscopeArrayWrapper<KSCOPECYCLES, N> kscope_random_split(KSCOPECYCLES cycles, const size_t (&weights)[N]) {
			assert(cycles >= 0);
			KSCOPECYCLES leftovers = cycles;
			assert(leftovers >= 0);
			KscopeArrayWrapper<KSCOPECYCLES, N> ret = {};
			size_t total_weight = 0;
			for (size_t i = 0; i < N; ++i) {
				if (weights[i] > 0)
					ret.arr[i] = KSCOPECYCLES(ITHARE_KSCOPE_RANDOM(seed, int(i + 1), weights[i])) + 1;//'+1' is to avoid "all-zeros" case
				else
					ret.arr[i] = 0;
				total_weight += ret.arr[i];
			}
			size_t total_weight2 = 0;
			double q = double(leftovers) / double(total_weight);
			for (size_t i = 0; i < N; ++i) {
				ret.arr[i] = KSCOPECYCLES(double(ret.arr[i]) * double(q));
				total_weight2 += ret.arr[i];
			}
			assert(KSCOPECYCLES(total_weight2) <= leftovers);
			return ret;
		}
		
		template<class T,ITHARE_KSCOPE_SEEDTPARAM seed,KSCOPECONSTFLAGS flags>
		constexpr static T kscope_random_const(T upper_bound=0) {
			using TT = typename KscopeTraits<T>::construct_from_type;
			for (uint32_t modifier = 1;;modifier+=2) {
				uint64_t ret = 0;
				//if constexpr(KscopeTraits<T>::nbits <= 32)
				//	ret = ITHARE_KSCOPE_RANDOM_UINT32(seed,modifier);
				//else
					ret = (uint64_t(ITHARE_KSCOPE_RANDOM_UINT32(seed,modifier)) << 32) | ITHARE_KSCOPE_RANDOM_UINT32(seed,modifier+1);
				if(upper_bound!= 0) {
					ret %= upper_bound;
				}
				if constexpr( ( flags & kscope_const_odd_only ) != 0 )
					ret |= 1;

#ifdef ITHARE_KSCOPE_WORKAROUND_FOR_MSVC_BUG_195483
				//https://developercommunity.visualstudio.com/content/problem/195483/continue-in-constexpr-function-causes-constexpr-fu.html
				bool ok = true;
				if constexpr ((flags & kscope_const_zero_ok) == 0)
					if(ret == 0)
						ok = false;//cannot 'continue' here as MSVC goes crazy...
				if constexpr( (flags & kscope_const_one_ok) == 0)
					if(ret == 1)
						ok = false;
				if (ok)
					return T(TT(ret));
#else
				if constexpr((flags & kscope_const_zero_ok) == 0)
					if(ret == 0)
						continue;
				if constexpr ((flags & kscope_const_one_ok) == 0)
					if(ret == 1)
						continue;
				return T(TT(ret));
#endif
			}
		}

	//forward declarations
	template<class T, class Context, class InjectionRequirements,ITHARE_KSCOPE_SEEDTPARAM seed, KSCOPECYCLES cycles>
	class KscopeInjection;

	//injection-with-constant - building block both for injections and for literals
	template <size_t which, class T, class Context, class InjectionRequirements, ITHARE_KSCOPE_SEEDTPARAM seed, KSCOPECYCLES cycles>
	class KscopeInjectionVersion;

	//KscopeSimpleInjectionHelper
	//currently used only in extensions, TODO: use where applicable in this file
	template<class Context>
	struct KscopeSimpleInjectionHelper {
		static constexpr KSCOPECYCLES descriptor_own_min_cycles(KSCOPECYCLES own_min_injection_cycles,KSCOPECYCLES own_min_surjection_cycles) {
			return Context::context_cycles + Context::calc_cycles(own_min_injection_cycles, own_min_surjection_cycles); 
		}
		static constexpr KSCOPECYCLES recursive_injection_cycles(KSCOPECYCLES cycles, KSCOPECYCLES own_min_cycles) {
			KSCOPECYCLES availCycles = cycles - own_min_cycles;
			assert(availCycles >= 0);
			return availCycles+Context::context_cycles;
		}
	};

	//version 0: identity
	template<class Context>
	struct KscopeInjectionVersion0Descr {
		//cannot make it a part of class KscopeInjectionVersion<0, T, C, seed, cycles>,
		//  as it would cause infinite recursion in template instantiation
		static constexpr KSCOPECYCLES own_min_injection_cycles = 0;
		static constexpr KSCOPECYCLES own_min_surjection_cycles = 0;
		static constexpr KSCOPECYCLES own_min_cycles = Context::context_cycles + Context::calc_cycles(own_min_injection_cycles, own_min_surjection_cycles);
		static constexpr KscopeDescriptor descr = KscopeDescriptor(own_min_cycles, 1,KscopeDescriptor::flag_is_last_resort);
	};

	template <class T, class Context, class InjectionRequirements, ITHARE_KSCOPE_SEEDTPARAM seed, KSCOPECYCLES cycles>
	class KscopeInjectionVersion<0, T, Context, InjectionRequirements, seed, cycles> {
		using Traits = KscopeTraits<T>;

		static constexpr KSCOPECYCLES availCycles = cycles - KscopeInjectionVersion0Descr<Context>::own_min_cycles;
		static_assert(availCycles >= 0);

	public:
		using return_type = T;
		template<ITHARE_KSCOPE_SEEDTPARAM seed2,KSCOPEFLAGS flags>
		ITHARE_KSCOPE_FORCEINLINE constexpr static return_type injection(T x) {
			return_type ret = Context::template final_injection<seed2,flags>(x);
			//ITHARE_KSCOPE_DBG_ASSERT_SURJECTION_RECURSIVE("<0>", x, ret);
			return ret;
		}
		template<ITHARE_KSCOPE_SEEDTPARAM seed2,KSCOPEFLAGS flags>
		ITHARE_KSCOPE_FORCEINLINE constexpr static T surjection(return_type y) {
			return Context::template final_surjection<seed2,flags>(y);
		}

		static constexpr KSCOPEINJECTIONCAPS injection_caps = 0;

#ifdef ITHARE_KSCOPE_DBG_ENABLE_DBGPRINT
		static void dbg_print(size_t offset = 0,const char* prefix="") {
			std::cout << std::string(offset, ' ') << prefix << "KscopeInjectionVersion<0/*identity*/," << kscope_dbg_print_t<T>() << "," << kscope_dbg_print_seed<seed>() << "," << cycles << ">: availCycles=" << availCycles << std::endl;
			Context::dbg_print(offset + 1);
		}
#endif
	};

	//version 1: add mod 2^n
	template<class Context>
	struct KscopeInjectionVersion1Descr {
		static constexpr KSCOPECYCLES own_min_injection_cycles = 1;
		static constexpr KSCOPECYCLES own_min_surjection_cycles = 1;
		static constexpr KSCOPECYCLES own_min_cycles = Context::context_cycles + Context::calc_cycles(own_min_injection_cycles, own_min_surjection_cycles);
		static constexpr KscopeDescriptor descr = KscopeDescriptor(own_min_cycles, 100);
	};

	template <class T, class Context, class InjectionRequirements, ITHARE_KSCOPE_SEEDTPARAM seed, KSCOPECYCLES cycles>
	class KscopeInjectionVersion<1, T, Context, InjectionRequirements, seed, cycles> {
		using Traits = KscopeTraits<T>;
	public:
		static constexpr KSCOPECYCLES availCycles = cycles - KscopeInjectionVersion1Descr<Context>::own_min_cycles;
		static_assert(availCycles >= 0);

		struct RecursiveInjectionRequirements : public InjectionRequirements {
			static constexpr size_t exclude_version = 1;
		};

		using RecursiveInjection = KscopeInjection<T, Context, RecursiveInjectionRequirements,ITHARE_KSCOPE_NEW_PRNG(seed, 1), availCycles+Context::context_cycles>;
		using return_type = typename RecursiveInjection::return_type;
		constexpr static T C = Context::template random_const<T,ITHARE_KSCOPE_NEW_PRNG(seed, 2),kscope_const_zero_ok|kscope_const_one_ok>();
		static constexpr bool neg = C == 0 ? true : ITHARE_KSCOPE_RANDOM(seed, 3, 2) == 0;
		//using ST = typename Traits::signed_type;

		template<ITHARE_KSCOPE_SEEDTPARAM seedc,KSCOPEFLAGS flags>
		ITHARE_KSCOPE_FORCEINLINE constexpr static T local_injection(T x) {
			if constexpr(neg) {
				return -x + C;//yes, unary minus to unsigned
			}
			else {
				return x + C;
			}
		}
		template<ITHARE_KSCOPE_SEEDTPARAM seed2,KSCOPEFLAGS flags>
		ITHARE_KSCOPE_FORCEINLINE constexpr static return_type injection(T x) {
			ITHARE_KSCOPE_DECLAREPRNG_INFUNC seedc = ITHARE_KSCOPE_COMBINED_PRNG(seed, seed2);
			T y = local_injection<seedc,flags>(x);
			ITHARE_KSCOPE_DBG_ASSERT_SURJECTION_LOCAL("<1>", x, y);

			return_type ret = RecursiveInjection::template injection<seedc,flags>(y);
			//ITHARE_KSCOPE_DBG_ASSERT_SURJECTION_RECURSIVE("<1>/a", x, ret);
			return ret;
		}
		template<ITHARE_KSCOPE_SEEDTPARAM seedc,KSCOPEFLAGS flags>
		ITHARE_KSCOPE_FORCEINLINE constexpr static T local_surjection(T y) {
			T yy = y - C;
			if constexpr(neg) {
				return -yy;
			}
			else {
				return yy;
			}
		}
		template<ITHARE_KSCOPE_SEEDTPARAM seed2,KSCOPEFLAGS flags>
		ITHARE_KSCOPE_FORCEINLINE constexpr static T surjection(return_type y) {
			ITHARE_KSCOPE_DECLAREPRNG_INFUNC seedc = ITHARE_KSCOPE_COMBINED_PRNG(seed,seed2);
			T yy0 = RecursiveInjection::template surjection<seedc,flags>(y);
			return local_surjection<seedc,flags>(yy0);
		}

		static constexpr KSCOPEINJECTIONCAPS injection_caps = kscope_injection_has_add_mod_max_value_ex;

		template<ITHARE_KSCOPE_SEEDTPARAM seed2,KSCOPEFLAGS flags>
		ITHARE_KSCOPE_FORCEINLINE constexpr static return_type injected_add_mod_max_value_ex(return_type base,T x) {
			//effectively returns base + x (base - x if neg); sic! - no C involved
			ITHARE_KSCOPE_DECLAREPRNG_INFUNC seedc = ITHARE_KSCOPE_COMBINED_PRNG(seed,seed2);
			constexpr bool has_shortcut = RecursiveInjection::injection_caps & kscope_injection_has_add_mod_max_value_ex;
			if constexpr(has_shortcut) {
				if constexpr(neg) {
					return_type ret = RecursiveInjection::template injected_add_mod_max_value_ex<seedc>(base, -x);
									//mutually exclusive with all the other non-CHECK calls to injection<> => no need to randomize seedc further 
					ITHARE_KSCOPE_DBG_CHECK_SHORTCUT("<1>/-/r",ret,(RecursiveInjection::template injection<seedc,flags>(RecursiveInjection::template surjection<seedc,flags>(base) - x)));
					ITHARE_KSCOPE_DBG_CHECK_SHORTCUT("<1>/-/0", ret, (injection<seedc,flags>(surjection<seedc,flags>(base) + x)));
					return ret;
				}
				else {
					return_type ret = RecursiveInjection::template injected_add_mod_max_value_ex<seedc>(base, x);
					ITHARE_KSCOPE_DBG_CHECK_SHORTCUT("<1>/+/r",ret,(RecursiveInjection::template injection<seedc,flags>(RecursiveInjection::template surjection<seedc,flags>(base) + x)));
					ITHARE_KSCOPE_DBG_CHECK_SHORTCUT("<1>/+/0", ret, (injection<seedc,flags>(surjection<seedc,flags>(base) + x)));
					return ret;
				}
			}
			else {
				if constexpr(neg) {
					return_type ret = RecursiveInjection::template injection<seedc,flags>(RecursiveInjection::template surjection<seedc,flags>(base) - x);
					ITHARE_KSCOPE_DBG_CHECK_SHORTCUT("<1>/-/1", ret, (injection<seedc,flags>(surjection<seedc,flags>(base) + x)));
					return ret;
				}
				else {
					return_type ret = RecursiveInjection::template injection<seedc,flags>(RecursiveInjection::template surjection<seedc,flags>(base) + x);
					ITHARE_KSCOPE_DBG_CHECK_SHORTCUT("<1>/+/1", ret, (injection<seedc,flags>(surjection<seedc,flags>(base)+x)));
					return ret;
				}
			}
		}

#ifdef ITHARE_KSCOPE_DBG_ENABLE_DBGPRINT
		static void dbg_print(size_t offset = 0, const char* prefix = "") {
			std::cout << std::string(offset, ' ') << prefix << "KscopeInjectionVersion<1/*add mod 2^N*/," << kscope_dbg_print_t<T>() << "," << kscope_dbg_print_seed<seed>() << "," << cycles << ">: C=" << kscope_dbg_print_c<T>(C) << " neg=" << neg << std::endl;
			RecursiveInjection::dbg_print(offset + 1);
		}
#endif
	};

	//helper for Feistel-like: randomized_non_reversible_function 
	template<size_t which, class T, ITHARE_KSCOPE_SEEDTPARAM seed, KSCOPECYCLES cycles>
	struct KscopeRandomizedNonReversibleFunctionVersion;

	struct KscopeRandomizedNonReversibleFunctionVersion0Descr {
		static constexpr KscopeDescriptor descr = KscopeDescriptor(0, 100,KscopeDescriptor::flag_is_last_resort);
	};

	template<class T, ITHARE_KSCOPE_SEEDTPARAM seed, KSCOPECYCLES cycles>
	struct KscopeRandomizedNonReversibleFunctionVersion<0, T, seed, cycles> {
		constexpr ITHARE_KSCOPE_FORCEINLINE T operator()(T x) {
			return x;
		}

#ifdef ITHARE_KSCOPE_DBG_ENABLE_DBGPRINT
		static void dbg_print(size_t offset = 0, const char* prefix = "") {
			std::cout << std::string(offset, ' ') << prefix << "KscopeRandomizedNonReversibleFunction<0/*identity*/," << kscope_dbg_print_t<T>() << "," << kscope_dbg_print_seed<seed>() << "," << cycles << ">" << std::endl;
		}
#endif		
	};

	struct KscopeRandomizedNonReversibleFunctionVersion1Descr {
		static constexpr KscopeDescriptor descr = KscopeDescriptor(3, 100);
	};

	template<class T, ITHARE_KSCOPE_SEEDTPARAM seed, KSCOPECYCLES cycles>
	struct KscopeRandomizedNonReversibleFunctionVersion<1,T,seed,cycles> {
		using UintT = typename KscopeTraits<T>::UintT;
		constexpr ITHARE_KSCOPE_FORCEINLINE T operator()(T x) {
			return UintT(x)*UintT(x);
		}

#ifdef ITHARE_KSCOPE_DBG_ENABLE_DBGPRINT
		static void dbg_print(size_t offset = 0, const char* prefix = "") {
			std::cout << std::string(offset, ' ') << prefix << "KscopeRandomizedNonReversibleFunction<1/*x^2*/," << kscope_dbg_print_t<T>() << "," << kscope_dbg_print_seed<seed>() << "," << cycles << ">" << std::endl;
		}
#endif		
	};

	struct KscopeRandomizedNonReversibleFunctionVersion2Descr {
		static constexpr KscopeDescriptor descr = KscopeDescriptor(7, 100);
	};

	template<class T, ITHARE_KSCOPE_SEEDTPARAM seed, KSCOPECYCLES cycles>
	struct KscopeRandomizedNonReversibleFunctionVersion<2, T, seed, cycles> {
		using ST = typename std::make_signed<T>::type;
		constexpr ITHARE_KSCOPE_FORCEINLINE T operator()(T x) {
			ST sx = ST(x);
			return T(sx < 0 ? -sx : sx);
		}

#ifdef ITHARE_KSCOPE_DBG_ENABLE_DBGPRINT
		static void dbg_print(size_t offset = 0, const char* prefix = "") {
			std::cout << std::string(offset, ' ') << prefix << "KscopeRandomizedNonReversibleFunction<2/*abs*/," << kscope_dbg_print_t<T>() << "," << kscope_dbg_print_seed<seed>() << "," << cycles << ">" << std::endl;
		}
#endif		
	};

	template<size_t N>
	constexpr KSCOPECYCLES kscope_max_min_descr(const KscopeDescriptor (&descr)[N]) {
		KSCOPECYCLES ret = 0;
		for (size_t i = 0; i < N; ++i) {
			KSCOPECYCLES mn = descr[i].min_cycles;
			if (ret < mn)
				ret = mn;
		}
		return ret;
	}

	template<class T, ITHARE_KSCOPE_SEEDTPARAM seed, KSCOPECYCLES cycles>
	struct KscopeRandomizedNonReversibleFunction {
		constexpr static KscopeDescriptor descr[] = {
			KscopeRandomizedNonReversibleFunctionVersion0Descr::descr,
			KscopeRandomizedNonReversibleFunctionVersion1Descr::descr,
			KscopeRandomizedNonReversibleFunctionVersion2Descr::descr,
			//TODO: allow extending for non-reversible functions (generalized, as it can be also used at least for Lai-Massey)
		};
		constexpr static size_t max_cycles_that_make_sense = kscope_max_min_descr(descr);
		constexpr static size_t which = kscope_random_choice_from_list<ITHARE_KSCOPE_NEW_PRNG(seed, 1)>(cycles, descr);
		using FType = KscopeRandomizedNonReversibleFunctionVersion<which, T, seed, cycles>;
		constexpr ITHARE_KSCOPE_FORCEINLINE T operator()(T x) {
			return FType()(x);
		}

#ifdef ITHARE_KSCOPE_DBG_ENABLE_DBGPRINT
		static void dbg_print(size_t offset = 0, const char* prefix = "") {
			std::cout << std::string(offset, ' ') << prefix << "KscopeRandomizedNonReversibleFunction<" << kscope_dbg_print_t<T>() << "," << kscope_dbg_print_seed<seed>() << "," << cycles << ">: which=" << which << std::endl;
			FType::dbg_print(offset + 1);
		}
#endif		
	};

	//version 2: kinda-Feistel round
	template<class T, class Context>
	struct KscopeInjectionVersion2Descr {
		static constexpr KSCOPECYCLES own_min_injection_cycles = 7;
		static constexpr KSCOPECYCLES own_min_surjection_cycles = 7;
		static constexpr KSCOPECYCLES own_min_cycles = Context::context_cycles + Context::calc_cycles(own_min_injection_cycles, own_min_surjection_cycles);
		static constexpr KscopeDescriptor descr =
			KscopeTraits<T>::has_half_type ?
			KscopeDescriptor(own_min_cycles, 100) :
			KscopeDescriptor(nullptr);
	};

	template <class T, class Context, class InjectionRequirements, ITHARE_KSCOPE_SEEDTPARAM seed, KSCOPECYCLES cycles>
	class KscopeInjectionVersion<2, T, Context, InjectionRequirements, seed, cycles> {
		static_assert(std::is_integral<T>::value);
		static_assert(std::is_unsigned<T>::value);
	public:
		static constexpr KSCOPECYCLES availCycles = cycles - KscopeInjectionVersion2Descr<T,Context>::own_min_cycles;
		static_assert(availCycles >= 0);
		constexpr static size_t split[] = { 100 /*f()*/, 100 /*RecursiveInjection*/ };
		static constexpr auto splitCycles = kscope_random_split<ITHARE_KSCOPE_NEW_PRNG(seed, 1)>(availCycles, split);
		static constexpr KSCOPECYCLES cycles_f0 = splitCycles.arr[0];
		static constexpr KSCOPECYCLES cycles_rInj0 = splitCycles.arr[1];
		static_assert(cycles_f0 + cycles_rInj0 <= availCycles);

		//doesn't make sense to use more than max_cycles_that_make_sense cycles for f...
		static constexpr KSCOPECYCLES max_cycles_that_make_sense = KscopeRandomizedNonReversibleFunction<T, ITHARE_KSCOPE_DUMMY_PRNG, 0>::max_cycles_that_make_sense;
		static constexpr KSCOPECYCLES delta_f = cycles_f0 > max_cycles_that_make_sense ? cycles_f0 - max_cycles_that_make_sense : 0;
		static constexpr KSCOPECYCLES cycles_f = cycles_f0 - delta_f;
		static constexpr KSCOPECYCLES cycles_rInj = cycles_rInj0 + delta_f;
		static_assert(cycles_f + cycles_rInj <= availCycles);

		struct RecursiveInjectionRequirements : public InjectionRequirements {
			static constexpr size_t exclude_version = size_t(-1);
		};

		using RecursiveInjection = KscopeInjection<T, Context, RecursiveInjectionRequirements,ITHARE_KSCOPE_NEW_PRNG(seed, 2), cycles_rInj+ Context::context_cycles>;
		using return_type = typename RecursiveInjection::return_type;

		using halfT = typename KscopeTraits<T>::HalfT;
		using FType = KscopeRandomizedNonReversibleFunction<halfT, ITHARE_KSCOPE_NEW_PRNG(seed, 3), cycles_f>;

		constexpr static int halfTBits = sizeof(halfT) * 8;

		template<ITHARE_KSCOPE_SEEDTPARAM seedc,KSCOPEFLAGS flags>
		ITHARE_KSCOPE_FORCEINLINE constexpr static T local_injection(T x) {
			T lo = x >> halfTBits;
			//T hi = (x & mask) + f((halfT)lo);
			T hi = x + f((halfT)lo);
			return (hi << halfTBits) + lo;
		}
		template<ITHARE_KSCOPE_SEEDTPARAM seed2,KSCOPEFLAGS flags>
		ITHARE_KSCOPE_FORCEINLINE constexpr static return_type injection(T x) {
			ITHARE_KSCOPE_DECLAREPRNG_INFUNC seedc = ITHARE_KSCOPE_COMBINED_PRNG(seed, seed2);
			T y = local_injection<seedc,flags>(x);
			ITHARE_KSCOPE_DBG_ASSERT_SURJECTION_LOCAL("<2>", x, y);
			return_type ret = RecursiveInjection::template injection<seedc,flags>(y);
			//ITHARE_KSCOPE_DBG_ASSERT_SURJECTION_RECURSIVE("<2>", x, ret);
			return ret;
		}

		template<ITHARE_KSCOPE_SEEDTPARAM seedc,KSCOPEFLAGS flags>
		ITHARE_KSCOPE_FORCEINLINE constexpr static T local_surjection(T y) {
			halfT hi = y >> halfTBits;
			T lo = y;
			//T z = (hi - f((halfT)lo)) & mask;
			halfT z = (hi - f((halfT)lo));
			return z + (lo << halfTBits);
		}
		template<ITHARE_KSCOPE_SEEDTPARAM seed2,KSCOPEFLAGS flags>
		ITHARE_KSCOPE_FORCEINLINE constexpr static T surjection(return_type y_) {
			ITHARE_KSCOPE_DECLAREPRNG_INFUNC seedc = ITHARE_KSCOPE_COMBINED_PRNG(seed, seed2);
			T y = RecursiveInjection::template surjection<seedc,flags>(y_);
			return local_surjection<seedc,flags>(y);
		}

		static constexpr KSCOPEINJECTIONCAPS injection_caps = 0;

#ifdef ITHARE_KSCOPE_DBG_ENABLE_DBGPRINT
		static void dbg_print(size_t offset = 0, const char* prefix = "") {
			std::cout << std::string(offset, ' ') << prefix << "KscopeInjectionVersion<2/*kinda-Feistel*/,"<<kscope_dbg_print_t<T>()<<"," << kscope_dbg_print_seed<seed>() << "," << cycles << ">:" 
				" availCycles=" << availCycles << " cycles_f=" << cycles_f << " cycles_rInj=" << cycles_rInj << std::endl;
			FType::dbg_print(offset + 1,"f():");
			RecursiveInjection::dbg_print(offset + 1,"Recursive:");
		}
#endif

	private:
		ITHARE_KSCOPE_FORCEINLINE static constexpr halfT f(halfT x) {
			return FType()(x);
		}
	};

	//version 3: split-join
	template<class T,class Context>
	struct KscopeInjectionVersion3Descr {
		static constexpr KSCOPECYCLES own_min_injection_cycles = 7;
		static constexpr KSCOPECYCLES own_min_surjection_cycles = 7;
		static constexpr KSCOPECYCLES own_min_cycles = Context::context_cycles + Context::calc_cycles(own_min_injection_cycles, own_min_surjection_cycles);
		static constexpr KscopeDescriptor descr =
			KscopeTraits<T>::has_half_type ?
			KscopeDescriptor(own_min_cycles, 100) :
			KscopeDescriptor(nullptr);
	};

	template <class T, class Context, class InjectionRequirements, ITHARE_KSCOPE_SEEDTPARAM seed, KSCOPECYCLES cycles>
	class KscopeInjectionVersion<3, T, Context, InjectionRequirements, seed, cycles> {
		static_assert(std::is_integral<T>::value);
		static_assert(std::is_unsigned<T>::value);
	public:
		//TODO:split-join based on (using byte=unsigned char) representations (memcpy() or equivalent), which are exempt from strict aliasing rules
		static constexpr KSCOPECYCLES availCycles = cycles - KscopeInjectionVersion3Descr<T, Context>::own_min_cycles;
		static_assert(availCycles >= 0);

		using halfT = typename KscopeTraits<T>::HalfT;
		constexpr static int halfTBits = sizeof(halfT) * 8;

		constexpr static size_t split[] = { 200 /*RecursiveInjection*/, 100 /*LoInjection*/, 100 /*HiInjection*/ };
		static constexpr auto splitCycles = kscope_random_split<ITHARE_KSCOPE_NEW_PRNG(seed, 1)>(availCycles, split);
		static constexpr KSCOPECYCLES cycles_rInj = splitCycles.arr[0];
		static constexpr KSCOPECYCLES cycles_lo = splitCycles.arr[1];
		static constexpr KSCOPECYCLES cycles_hi = splitCycles.arr[2];
		static_assert(cycles_rInj + cycles_lo + cycles_hi <= availCycles);

		struct RecursiveInjectionRequirements : public InjectionRequirements {
			static constexpr size_t exclude_version = size_t(-1);
		};
		using RecursiveInjection = KscopeInjection<T, Context, RecursiveInjectionRequirements,ITHARE_KSCOPE_NEW_PRNG(seed, 2), cycles_rInj+ Context::context_cycles>;
		using return_type = typename RecursiveInjection::return_type;

		struct LoHiInjectionRequirements : public InjectionRequirements {
			static constexpr size_t exclude_version = size_t(-1);
			static constexpr bool only_bijections = true;
		};

		constexpr static size_t splitLo[] = { 100 /*Context*/, 100/*Injection*/ };
		static constexpr auto splitCyclesLo = kscope_random_split<ITHARE_KSCOPE_NEW_PRNG(seed, 2)>(cycles_lo, splitLo);
		static constexpr KSCOPECYCLES cycles_loCtx = splitCyclesLo.arr[0];
		static constexpr KSCOPECYCLES cycles_loInj = splitCyclesLo.arr[1];
		static_assert(cycles_loCtx + cycles_loInj <= cycles_lo);
		using LoContext = typename Context::template intermediate_context_type< halfT, ITHARE_KSCOPE_NEW_PRNG(seed, 3), cycles_loCtx>;
		using LoInjection = KscopeInjection<halfT, LoContext, LoHiInjectionRequirements,ITHARE_KSCOPE_NEW_PRNG(seed, 4), cycles_loInj+LoContext::context_cycles>;
		static_assert(sizeof(typename LoInjection::return_type) == sizeof(halfT));//bijections ONLY

		constexpr static size_t splitHi[] = { 100 /*Context*/, 100 /*Injection*/ };
		static constexpr auto splitCyclesHi = kscope_random_split<ITHARE_KSCOPE_NEW_PRNG(seed, 5)>(cycles_hi, splitHi);
		static constexpr KSCOPECYCLES cycles_hiCtx = splitCyclesHi.arr[0];
		static constexpr KSCOPECYCLES cycles_hiInj = splitCyclesHi.arr[1];
		static_assert(cycles_hiCtx + cycles_hiInj <= cycles_hi);
		using HiContext = typename Context::template intermediate_context_type<halfT, ITHARE_KSCOPE_NEW_PRNG(seed, 6), cycles_hiCtx>;
		using HiInjection = KscopeInjection<halfT, HiContext, LoHiInjectionRequirements,ITHARE_KSCOPE_NEW_PRNG(seed, 7), cycles_hiInj+HiContext::context_cycles>;
		static_assert(sizeof(typename HiInjection::return_type) == sizeof(halfT));//bijections ONLY

		template<ITHARE_KSCOPE_SEEDTPARAM seedc,KSCOPEFLAGS flags>
		ITHARE_KSCOPE_FORCEINLINE constexpr static T local_injection(T x) {
			halfT lo = x >> halfTBits;
			typename LoInjection::return_type lo1 = LoInjection::template injection<ITHARE_KSCOPE_NEW_PRNG(seedc,1),flags>(lo);
			lo = halfT(lo1);// *reinterpret_cast<halfT*>(&lo1);//relies on static_assert(sizeof(return_type)==sizeof(halfT)) above
			halfT hi = (halfT)x;
			typename HiInjection::return_type hi1 = HiInjection::template injection<ITHARE_KSCOPE_NEW_PRNG(seedc,2),flags>(hi);
			hi = halfT(hi1);// *reinterpret_cast<halfT*>(&hi1);//relies on static_assert(sizeof(return_type)==sizeof(halfT)) above
			return (T(hi) << halfTBits) + T(lo);
		}
		template<ITHARE_KSCOPE_SEEDTPARAM seed2,KSCOPEFLAGS flags>
		ITHARE_KSCOPE_FORCEINLINE constexpr static return_type injection(T x) {
			ITHARE_KSCOPE_DECLAREPRNG_INFUNC seedc = ITHARE_KSCOPE_COMBINED_PRNG(seed, seed2);
			T y = local_injection<seedc,flags>(x);
			ITHARE_KSCOPE_DBG_ASSERT_SURJECTION_LOCAL("<3>", x, y);
			return_type ret = RecursiveInjection::template injection<ITHARE_KSCOPE_NEW_PRNG(seedc, 3),flags>(y);
			//ITHARE_KSCOPE_DBG_ASSERT_SURJECTION_RECURSIVE("<3>", x, ret);
			return ret;
		}

		template<ITHARE_KSCOPE_SEEDTPARAM seedc,KSCOPEFLAGS flags>
		ITHARE_KSCOPE_FORCEINLINE constexpr static T local_surjection(T y) {
			halfT hi0 = y >> halfTBits;
			halfT lo0 = (halfT)y;
			halfT hi = HiInjection::template surjection<ITHARE_KSCOPE_NEW_PRNG(seedc, 5),flags>(/* *reinterpret_cast<typename HiInjection::return_type*>(&hi0)*/typename HiInjection::return_type(hi0));//relies on static_assert(sizeof(return_type)==sizeof(halfT)) above
			halfT lo = LoInjection::template surjection<ITHARE_KSCOPE_NEW_PRNG(seedc, 6),flags>(/**reinterpret_cast<typename LoInjection::return_type*>(&lo0)*/ typename LoInjection::return_type(lo0));//relies on static_assert(sizeof(return_type)==sizeof(halfT)) above
			return T(hi) + (T(lo) << halfTBits);
		}
		template<ITHARE_KSCOPE_SEEDTPARAM seed2,KSCOPEFLAGS flags>
		ITHARE_KSCOPE_FORCEINLINE constexpr static T surjection(return_type y_) {
			ITHARE_KSCOPE_DECLAREPRNG_INFUNC seedc = ITHARE_KSCOPE_COMBINED_PRNG(seed, seed2);
			T y = RecursiveInjection::template surjection<ITHARE_KSCOPE_NEW_PRNG(seedc, 4),flags>(y_);
			return local_surjection<seedc,flags>(y);
		}

		static constexpr KSCOPEINJECTIONCAPS injection_caps = 0;

#ifdef ITHARE_KSCOPE_DBG_ENABLE_DBGPRINT
		static void dbg_print(size_t offset = 0, const char* prefix = "") {
			std::cout << std::string(offset, ' ') << prefix << "KscopeInjectionVersion<3/*split-join*/,"<<kscope_dbg_print_t<T>()<<"," << kscope_dbg_print_seed<seed>() << "," << cycles << ">" << std::endl;
			//std::cout << std::string(offset, ' ') << " Lo:" << std::endl;
			LoInjection::dbg_print(offset + 1,"Lo:");
			//std::cout << std::string(offset, ' ') << " Hi:" << std::endl;
			HiInjection::dbg_print(offset + 1,"Hi:");
			//std::cout << std::string(offset, ' ') << " Recursive:" << std::endl;
			RecursiveInjection::dbg_print(offset + 1,"Recursive:");
		}
#endif
	};
	
	//version 4: multiply by odd
	template< class T >
	constexpr T kscope_mul_inverse_mod2n(T num) {//extended GCD, intended to be used in compile-time only
											  //implementation by Dmytro Ivanchykhin
#ifndef NDEBUG //to be used in assert() below
		using UintT = typename KscopeTraits<T>::UintT;
		T num0 = num;
#endif

		assert(num & T(1));
		T x = 0, lastx = 1, y = 1, lasty = 0;
		T q=0, temp1=0, temp2=0, temp3=0;
		T mod = 0;

		// zero step: do some tricks to avoid overflowing
		// note that initially mod is power of 2 that does not fit to T
		if (num == T(mod - T(1)))
			return num;
		q = T((T(mod - num)) / num) + T(1);
		temp1 = (T(T(T(mod - T(2))) % num) + T(2)) % num;
		mod = num;
		num = temp1;

		temp2 = x;
		x = lastx - T(q * x);
		lastx = temp2;

		temp3 = y;
		y = lasty - T(q * y);
		lasty = temp3;

		while (num != 0) {
			q = mod / num;
			temp1 = mod % num;
			mod = num;
			num = temp1;

			temp2 = x;
			x = lastx - T(q * x);
			lastx = temp2;

			temp3 = y;
			y = lasty - T(q * y);
			lasty = temp3;
		}
		assert(T(UintT(num0)*UintT(lasty)) == T(1));
		return lasty;
	}

	template<class Context>
	struct KscopeInjectionVersion4Descr {
		static constexpr KSCOPECYCLES own_min_injection_cycles = 3 + Context::literal_cycles;
		static constexpr KSCOPECYCLES own_min_surjection_cycles = 3;
		static constexpr KSCOPECYCLES own_min_cycles = Context::context_cycles + Context::calc_cycles(own_min_injection_cycles, own_min_surjection_cycles);
		static constexpr KscopeDescriptor descr = KscopeDescriptor(own_min_cycles, 100);
	};

	template <class T, class Context, class InjectionRequirements, ITHARE_KSCOPE_SEEDTPARAM seed, KSCOPECYCLES cycles>
	class KscopeInjectionVersion<4, T, Context, InjectionRequirements, seed, cycles> {
		using Traits = KscopeTraits<T>;
		static constexpr KSCOPECYCLES availCycles = cycles - KscopeInjectionVersion4Descr<Context>::own_min_cycles;
		static_assert(availCycles >= 0);

		struct RecursiveInjectionRequirements : public InjectionRequirements {
			static constexpr size_t exclude_version = 4;
		};

	public:
		using RecursiveInjection = KscopeInjection<T, Context, RecursiveInjectionRequirements,ITHARE_KSCOPE_NEW_PRNG(seed, 1), availCycles+Context::context_cycles>;
		using return_type = typename RecursiveInjection::return_type;
		constexpr static T C = Context::template random_const<T,ITHARE_KSCOPE_NEW_PRNG(seed, 2),kscope_const_odd_only>();
		static_assert((C & T(1)) == 1);
		constexpr static T CINV0 = kscope_mul_inverse_mod2n(C);
		static_assert(T(typename Traits::UintT(C)*typename Traits::UintT(CINV0)) == T(1));
		constexpr static typename Traits::literal_type CINV = CINV0;

		using literal = typename Context::template literal<typename Traits::literal_type, CINV, ITHARE_KSCOPE_NEW_PRNG(seed, 3)>::type;
			//using CINV in injection to hide literals a bit better...

		template<ITHARE_KSCOPE_SEEDTPARAM seedc,KSCOPEFLAGS flags>
		ITHARE_KSCOPE_FORCEINLINE constexpr static T local_injection(T x) {
			auto lit = literal();
			ITHARE_KSCOPE_DBG_CHECK_LITERAL("<4>", lit, CINV0);
			T y = typename Traits::UintT(x) * typename Traits::UintT(lit.value());
			return y;
		}
		template<ITHARE_KSCOPE_SEEDTPARAM seed2,KSCOPEFLAGS flags>
		ITHARE_KSCOPE_FORCEINLINE constexpr static return_type injection(T x) {
			ITHARE_KSCOPE_DECLAREPRNG_INFUNC seedc = ITHARE_KSCOPE_COMBINED_PRNG(seed, seed2);
			T y = local_injection<seedc,flags>(x);
			ITHARE_KSCOPE_DBG_ASSERT_SURJECTION_LOCAL("<4>", x, y);
			return_type ret = RecursiveInjection::template injection<seedc,flags>(y);
			//ITHARE_KSCOPE_DBG_ASSERT_SURJECTION_RECURSIVE("<4>", x, ret);
			return ret;
		}

		template<ITHARE_KSCOPE_SEEDTPARAM seedc,KSCOPEFLAGS flags>
		ITHARE_KSCOPE_FORCEINLINE constexpr static T local_surjection(T y) {
			return typename Traits::UintT(y) * typename Traits::UintT(C);
		}
		template<ITHARE_KSCOPE_SEEDTPARAM seed2,KSCOPEFLAGS flags>
		ITHARE_KSCOPE_FORCEINLINE constexpr static T surjection(return_type y) {
			ITHARE_KSCOPE_DECLAREPRNG_INFUNC seedc = ITHARE_KSCOPE_COMBINED_PRNG(seed, seed2);
			T x = RecursiveInjection::template surjection<seedc,flags>(y);
			return local_surjection<seedc,flags>(x);
		}

		static constexpr KSCOPEINJECTIONCAPS injection_caps = kscope_injection_has_add_mod_max_value_ex;
		template<ITHARE_KSCOPE_SEEDTPARAM seed2,KSCOPEFLAGS flags>
		ITHARE_KSCOPE_FORCEINLINE constexpr static return_type injected_add_mod_max_value_ex(return_type base, T x) {
			//effectively returns base + x*CINV0
			ITHARE_KSCOPE_DECLAREPRNG_INFUNC seedc = ITHARE_KSCOPE_COMBINED_PRNG(seed,seed2);
			if constexpr(RecursiveInjection::injection_caps & kscope_injection_has_add_mod_max_value_ex) {
				auto lit = literal();
				ITHARE_KSCOPE_DBG_CHECK_LITERAL("<4>/0", lit, CINV0);
				return_type ret = RecursiveInjection::template injected_add_mod_max_value_ex<seedc>(base, x*lit.value());
				ITHARE_KSCOPE_DBG_CHECK_SHORTCUT("<4>/r", ret, (RecursiveInjection::template injection<seedc,flags>(RecursiveInjection::template surjection<seedc,flags>(base) + CINV0*x)));
				ITHARE_KSCOPE_DBG_CHECK_SHORTCUT("<4>/0", ret, (injection<seedc,flags>(surjection<seedc,flags>(base) + x)));
				return ret;
			}
			else {
				auto lit = literal();
				ITHARE_KSCOPE_DBG_CHECK_LITERAL("<4>/1", lit, CINV0);
				return_type ret = (RecursiveInjection::template injection<seedc,flags>(RecursiveInjection::template surjection<seedc,flags>(base) + lit.value()*x));
				ITHARE_KSCOPE_DBG_CHECK_SHORTCUT("<4>/1", ret, (injection<seedc,flags>(surjection<seedc,flags>(base) + x)));
				return ret;
			}
		}

#ifdef ITHARE_KSCOPE_DBG_ENABLE_DBGPRINT
		static void dbg_print(size_t offset = 0, const char* prefix = "") {
			std::cout << std::string(offset, ' ') << prefix << "KscopeInjectionVersion<4/*mul odd mod 2^N*/,"<<kscope_dbg_print_t<T>()<<"," << kscope_dbg_print_seed<seed>() << "," << cycles << ">: C=" << kscope_dbg_print_c<T>(C) << " CINV=" << kscope_dbg_print_c<T>(CINV) << std::endl;
			//std::cout << std::string(offset, ' ') << " literal:" << std::endl;
			literal::dbg_print(offset + 1,"literal:");
			//std::cout << std::string(offset, ' ') << " Recursive:" << std::endl;
			RecursiveInjection::dbg_print(offset + 1,"Recursive:");
		}
#endif
	};

	//version 5: split (w/o join)
	template<class T, class Context>
	struct KscopeInjectionVersion5Descr {
		static constexpr KSCOPECYCLES own_min_injection_cycles = 3;
		static constexpr KSCOPECYCLES own_min_surjection_cycles = 3;
		static constexpr KSCOPECYCLES own_min_cycles = 2*Context::context_cycles /* have to allocate context_cycles for BOTH branches */ + Context::calc_cycles(own_min_injection_cycles, own_min_surjection_cycles);
		static constexpr KscopeDescriptor descr =
			KscopeTraits<T>::has_half_type ?
			KscopeDescriptor(own_min_cycles, 100) :
			KscopeDescriptor(nullptr);
	};

	template <class T, class Context, class InjectionRequirements, ITHARE_KSCOPE_SEEDTPARAM seed, KSCOPECYCLES cycles>
	class KscopeInjectionVersion<5, T, Context, InjectionRequirements, seed, cycles> {
		static_assert(std::is_integral<T>::value);
		static_assert(std::is_unsigned<T>::value);
	public:
		using halfT = typename KscopeTraits<T>::HalfT;
		constexpr static int halfTBits = sizeof(halfT) * 8;

		struct RecursiveInjectionRequirements : public InjectionRequirements {
			static constexpr size_t exclude_version = size_t(-1);
		};

		static constexpr KSCOPECYCLES availCycles = cycles - KscopeInjectionVersion5Descr<T,Context>::own_min_cycles;
		static_assert(availCycles >= 0);

		constexpr static size_t split[] = { 100 /*LoInjection*/, 100 /*HiInjection*/ };
		static constexpr auto splitCycles = kscope_random_split<ITHARE_KSCOPE_NEW_PRNG(seed, 1)>(availCycles, split);
		static constexpr KSCOPECYCLES cycles_lo = splitCycles.arr[0];
		static constexpr KSCOPECYCLES cycles_hi = splitCycles.arr[1];
		static_assert(cycles_lo + cycles_hi <= availCycles);

		constexpr static size_t splitLo[] = { 100 /*Context*/, 100 /*Injection*/ };
		static constexpr auto splitCyclesLo = kscope_random_split<ITHARE_KSCOPE_NEW_PRNG(seed, 2)>(cycles_lo, splitLo);
		static constexpr KSCOPECYCLES cycles_loCtx = splitCyclesLo.arr[0];
		static constexpr KSCOPECYCLES cycles_loInj = splitCyclesLo.arr[1];
		static_assert(cycles_loCtx + cycles_loInj <= cycles_lo);
		using RecursiveLoContext = typename Context::template recursive_context_type<halfT, ITHARE_KSCOPE_NEW_PRNG(seed, 3), cycles_loCtx+Context::context_cycles>;
		using RecursiveInjectionLo = KscopeInjection<halfT, RecursiveLoContext, RecursiveInjectionRequirements,ITHARE_KSCOPE_NEW_PRNG(seed, 4), cycles_loInj+ RecursiveLoContext::context_cycles>;

		constexpr static size_t splitHi[] = { 100 /*Context*/, 100/*Injection*/ };
		static constexpr auto splitCyclesHi = kscope_random_split<ITHARE_KSCOPE_NEW_PRNG(seed, 5)>(cycles_hi, splitHi);
		static constexpr KSCOPECYCLES cycles_hiCtx = splitCyclesHi.arr[0];
		static constexpr KSCOPECYCLES cycles_hiInj = splitCyclesHi.arr[1];
		static_assert(cycles_hiCtx + cycles_hiInj <= cycles_hi);
		using RecursiveHiContext = typename Context::template recursive_context_type<halfT, ITHARE_KSCOPE_NEW_PRNG(seed, 6), cycles_hiCtx+Context::context_cycles>;
		using RecursiveInjectionHi = KscopeInjection < halfT, RecursiveHiContext, RecursiveInjectionRequirements,ITHARE_KSCOPE_NEW_PRNG(seed, 7), cycles_hiInj+ RecursiveHiContext::context_cycles> ;

		struct return_type {
			typename RecursiveInjectionLo::return_type lo;
			typename RecursiveInjectionHi::return_type hi;

			constexpr return_type(typename RecursiveInjectionLo::return_type lo_, typename RecursiveInjectionHi::return_type hi_)
				: lo(lo_), hi(hi_) {
			}
			constexpr return_type(T x) 
			: lo(halfT(x)), hi(halfT(x>>halfTBits)){
			}
			constexpr operator T() {
				halfT lo1 = halfT(lo);
				halfT hi1 = halfT(hi);
				return ( T(hi1) << halfTBits ) + T(lo1);
			}
		};
		template<ITHARE_KSCOPE_SEEDTPARAM seed2,KSCOPEFLAGS flags>
		ITHARE_KSCOPE_FORCEINLINE constexpr static return_type injection(T x) {
			ITHARE_KSCOPE_DECLAREPRNG_INFUNC seedc = ITHARE_KSCOPE_COMBINED_PRNG(seed,seed2);
			return_type ret{ RecursiveInjectionLo::template injection<ITHARE_KSCOPE_NEW_PRNG(seedc,1),flags>((halfT)x), RecursiveInjectionHi::template injection<ITHARE_KSCOPE_NEW_PRNG(seedc,2),flags>(x >> halfTBits) };
			ITHARE_KSCOPE_DBG_ASSERT_SURJECTION_RECURSIVE("<5>", x, ret);//sic! - _ASSERTION_RECURSIVE for version<5,...> (moving to local_injection would be too cumbersome)
			return ret;
		}
		template<ITHARE_KSCOPE_SEEDTPARAM seed2,KSCOPEFLAGS flags>
		ITHARE_KSCOPE_FORCEINLINE constexpr static T surjection(return_type y_) {
			ITHARE_KSCOPE_DECLAREPRNG_INFUNC seedc = ITHARE_KSCOPE_COMBINED_PRNG(seed,seed2);
			halfT hi = RecursiveInjectionHi::template surjection<ITHARE_KSCOPE_NEW_PRNG(seedc,3),flags>(y_.hi);
			halfT lo = RecursiveInjectionLo::template surjection<ITHARE_KSCOPE_NEW_PRNG(seedc,4),flags>(y_.lo);
			return (T)lo + ((T)hi << halfTBits);
		}

		static constexpr KSCOPEINJECTIONCAPS injection_caps = 0;

#ifdef ITHARE_KSCOPE_DBG_ENABLE_DBGPRINT
		static void dbg_print(size_t offset = 0, const char* prefix = "") {
			std::cout << std::string(offset, ' ') << prefix << "KscopeInjectionVersion<5/*split*/,"<<kscope_dbg_print_t<T>()<<"," << kscope_dbg_print_seed<seed>() << "," << cycles << ">" << std::endl;
			//std::cout << std::string(offset, ' ') << " Lo:" << std::endl;
			RecursiveInjectionLo::dbg_print(offset + 1,"Lo:");
			//std::cout << std::string(offset, ' ') << " Hi:" << std::endl;
			RecursiveInjectionHi::dbg_print(offset + 1,"Hi:");
		}
#endif
	};

	//version 6: split into two KscopeBitUints (w/o join)
	template<class T, class Context, class InjectionRequirements>
	struct KscopeInjectionVersion6Descr {
		static constexpr KSCOPECYCLES own_min_injection_cycles = 15;
		static constexpr KSCOPECYCLES own_min_surjection_cycles = 15;
		static constexpr KSCOPECYCLES own_min_cycles = 2 * Context::context_cycles /* have to allocate context_cycles for BOTH branches */ + Context::calc_cycles(own_min_injection_cycles, own_min_surjection_cycles);
		static constexpr KscopeDescriptor descr =
			!InjectionRequirements::only_bijections && !InjectionRequirements::no_substrate_size_increase && KscopeTraits<T>::nbits >= 2 ?
			KscopeDescriptor(own_min_cycles, 100)
			: 
			KscopeDescriptor(nullptr);
	};

	template <class T, class Context, class InjectionRequirements, ITHARE_KSCOPE_SEEDTPARAM seed, KSCOPECYCLES cycles>
	class KscopeInjectionVersion<6, T, Context, InjectionRequirements, seed, cycles> {
		using Traits = KscopeTraits<T>;
	public:
		static constexpr size_t loBits = ITHARE_KSCOPE_RANDOM(seed, 1, Traits::nbits-1) + 1;
		static_assert(loBits > 0);
		static_assert(loBits < Traits::nbits);
		static constexpr size_t hiBits = Traits::nbits - loBits;
		using TypeLo = KscopeBitUint<loBits>;
		using TypeHi = KscopeBitUint<hiBits>;

		struct RecursiveInjectionRequirements : public InjectionRequirements {
			static constexpr size_t exclude_version = size_t(-1);
			static constexpr bool no_substrate_size_increase = true;//not a strict requirement, but we don't want to grow infinitely 
		};

		static constexpr KSCOPECYCLES availCycles = cycles - KscopeInjectionVersion6Descr<T, Context,InjectionRequirements>::own_min_cycles;
		static_assert(availCycles >= 0);

		constexpr static size_t split[] = { 100 /*LoInjection*/, 100/*HiInjection*/ };
		static constexpr auto splitCycles = kscope_random_split<ITHARE_KSCOPE_NEW_PRNG(seed, 2)>(availCycles, split);
		static constexpr KSCOPECYCLES cycles_lo = splitCycles.arr[0];
		static constexpr KSCOPECYCLES cycles_hi = splitCycles.arr[1];
		static_assert(cycles_lo + cycles_hi <= availCycles);

		constexpr static size_t splitLo[] = { 100 /*Context*/, 100 /*Injection*/ };
		static constexpr auto splitCyclesLo = kscope_random_split<ITHARE_KSCOPE_NEW_PRNG(seed, 2)>(cycles_lo, splitLo);
		static constexpr KSCOPECYCLES cycles_loCtx = splitCyclesLo.arr[0];
		static constexpr KSCOPECYCLES cycles_loInj = splitCyclesLo.arr[1];
		static_assert(cycles_loCtx + cycles_loInj <= cycles_lo);
		using RecursiveLoContext = typename Context::template recursive_context_type<TypeLo, ITHARE_KSCOPE_NEW_PRNG(seed, 3), cycles_loCtx + Context::context_cycles>;
		using RecursiveInjectionLo = KscopeInjection<TypeLo, RecursiveLoContext, RecursiveInjectionRequirements,ITHARE_KSCOPE_NEW_PRNG(seed, 4), cycles_loInj + RecursiveLoContext::context_cycles>;

		constexpr static size_t splitHi[] = { 100 /*Context*/, 100 /*Injection*/ };
		static constexpr auto splitCyclesHi = kscope_random_split<ITHARE_KSCOPE_NEW_PRNG(seed, 5)>(cycles_hi, splitHi);
		static constexpr KSCOPECYCLES cycles_hiCtx = splitCyclesHi.arr[0];
		static constexpr KSCOPECYCLES cycles_hiInj = splitCyclesHi.arr[1];
		static_assert(cycles_hiCtx + cycles_hiInj <= cycles_hi);
		using RecursiveHiContext = typename Context::template recursive_context_type<TypeHi, ITHARE_KSCOPE_NEW_PRNG(seed, 6), cycles_hiCtx + Context::context_cycles>;
		using RecursiveInjectionHi = KscopeInjection <TypeHi, RecursiveHiContext, RecursiveInjectionRequirements,ITHARE_KSCOPE_NEW_PRNG(seed, 7), cycles_hiInj + RecursiveHiContext::context_cycles >;

		struct return_type {
			typename RecursiveInjectionLo::return_type lo;
			typename RecursiveInjectionHi::return_type hi;

			constexpr return_type(typename RecursiveInjectionLo::return_type lo_, typename RecursiveInjectionHi::return_type hi_)
				: lo(lo_), hi(hi_) {
			}
			constexpr return_type(T x)
				: lo(TypeLo(x)), hi(TypeHi(x >> loBits)) {
			}
			constexpr operator T() {
				TypeLo lo1 = TypeLo(lo);
				TypeHi hi1 = TypeHi(hi);
				return (T(hi1) << loBits) + T(lo1);
			}
		};

		template<ITHARE_KSCOPE_SEEDTPARAM seed2,KSCOPEFLAGS flags>
		ITHARE_KSCOPE_FORCEINLINE constexpr static return_type injection(T x) {
			ITHARE_KSCOPE_DECLAREPRNG_INFUNC seedc = ITHARE_KSCOPE_COMBINED_PRNG(seed,seed2);
			TypeLo lo = TypeLo(typename TypeLo::T(x));
			TypeHi hi = TypeHi(typename TypeHi::T(x >> loBits));
			return_type ret{ RecursiveInjectionLo::template injection<ITHARE_KSCOPE_NEW_PRNG(seedc,1),flags>(lo),
				RecursiveInjectionHi::template injection<ITHARE_KSCOPE_NEW_PRNG(seedc,2),flags>(hi) };
			ITHARE_KSCOPE_DBG_ASSERT_SURJECTION_RECURSIVE("<6>", x, ret);//sic! - _ASSERTION_RECURSIVE for version<6,...> (moving to local_injection would be too cumbersome)
			return ret;
		}
		template<ITHARE_KSCOPE_SEEDTPARAM seed2,KSCOPEFLAGS flags>
		ITHARE_KSCOPE_FORCEINLINE constexpr static T surjection(return_type y_) {
			ITHARE_KSCOPE_DECLAREPRNG_INFUNC seedc = ITHARE_KSCOPE_COMBINED_PRNG(seed,seed2);
			TypeHi hi = RecursiveInjectionHi::template surjection<ITHARE_KSCOPE_NEW_PRNG(seedc,3),flags>(y_.hi);
			TypeLo lo = RecursiveInjectionLo::template surjection<ITHARE_KSCOPE_NEW_PRNG(seedc,4),flags>(y_.lo);

			T ret = T(lo) + T(T(hi) << loBits);
			return ret;
		}

		static constexpr KSCOPEINJECTIONCAPS injection_caps = 0;

#ifdef ITHARE_KSCOPE_DBG_ENABLE_DBGPRINT
		static void dbg_print(size_t offset = 0, const char* prefix = "") {
			std::cout << std::string(offset, ' ') << prefix << "KscopeInjectionVersion<6/*split into KscopeBitUint<>*/," << kscope_dbg_print_t<T>() << ", Context, InjectionRequirements, " << kscope_dbg_print_seed<seed>() << "," << cycles << ">" << std::endl;
			Context::dbg_print(offset + 1, "Context:");
			TypeLo::dbg_print(offset + 1, "TypeLo:");
			RecursiveInjectionLo::dbg_print(offset + 1, "Lo:");
			TypeHi::dbg_print(offset + 1, "TypeHi:");
			RecursiveInjectionHi::dbg_print(offset + 1, "Hi:");
		}
#endif
	};
	
#define ITHARE_KSCOPE_LAST_STOCK_INJECTION 6	
	
  }//namespace kscope
}//namespace ithare
#endif //ITHARE_KSCOPE_SEED

#endif //ithare_KscopeInjection_h_included
