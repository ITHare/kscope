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

#ifndef ithare_kscope_kscope_sample_extension_h_included
#define ithare_kscope_kscope_sample_extension_h_included

#ifdef ithare_kscope_kscope_h_included
#error IF using kscope_sample_extension, it MUST be included BEFORE kscope.h. See test/officialtest.cpp for usage example
#endif

#include "impl/kscope_injection.h"

#ifdef ITHARE_KSCOPE_SEED

namespace ithare { namespace kscope {
		
	//version last+1 (="additional1"): rotl (using intrinsic, or asm, or non-intrinsic for surjection)
	//is a 'simple' injection, which uses KscopeSimpleInjectionHelper for cycle arithmetics (for less trivial examples with multiple dependent injections - you may need to look into impl/kscope_injection.h)
	template<class T, class Context>
	struct KscopeInjectionAdditionalVersion1Descr {
		using Traits = KscopeTraits<T>;
		static constexpr KSCOPECYCLES own_min_injection_cycles = 1;//estimate in CPU cycles
		static constexpr KSCOPECYCLES own_min_surjection_cycles = 1;//estimate in CPU cycles
		static constexpr KSCOPECYCLES own_min_cycles = KscopeSimpleInjectionHelper<Context>::descriptor_own_min_cycles(own_min_injection_cycles,own_min_surjection_cycles);
		static constexpr KscopeDescriptor descr = Traits::is_bit_based // for this rotl injection, we DON'T want to deal with types-which-are-not-power-of-2; however, by requiring only Traits::is_bit_based we still have to deal with KscopeBitUint<> as our T; IF this is undesirable (and you want to restrict yourself only to uint8_t..uint64_t - check for Traits::is_built_in instead) 
													&& Traits::nbits > 1 ? //single-bit ones are not so interesting to rotate (and will cause trouble with our naive random generation attempts)
			KscopeDescriptor(own_min_cycles, 100)//'100' is a 'relative weight' of this injection; increase to use this injection more; kscope stock non-trivial injections have weight of '100'  
			: KscopeDescriptor(nullptr);//an indicator NOT to use this injection
	};

	template <class T, class Context, class InjectionRequirements, ITHARE_KSCOPE_SEEDTPARAM seed, KSCOPECYCLES cycles>
	class KscopeInjectionVersion<ITHARE_KSCOPE_LAST_STOCK_INJECTION+1, T, Context, InjectionRequirements, seed, cycles> {
								 //use '+2' etc. for subsequent injections
		using Traits = KscopeTraits<T>;
		static_assert(Traits::nbits>1);
	public:

		struct RecursiveInjectionRequirements : public InjectionRequirements {
			static constexpr size_t exclude_version = ITHARE_KSCOPE_LAST_STOCK_INJECTION+1;//prevents _immediate_ RecursiveInjection from being ITHARE_KSCOPE_LAST_STOCK_INJECTION+1 (in practice - Good Thing(tm) unless you want long-chains-consisting-of-the-same-injection-over-and-over). If this is undesirable - assign size_t(-1) instead.
		};

		constexpr static KSCOPECYCLES recursive_injection_cycles = KscopeSimpleInjectionHelper<Context>::recursive_injection_cycles(cycles,KscopeInjectionAdditionalVersion1Descr<T,Context>::own_min_cycles);
		using RecursiveInjection = KscopeInjection<T, Context, RecursiveInjectionRequirements,ITHARE_KSCOPE_NEW_PRNG(seed, 1), recursive_injection_cycles>;
		using return_type = typename RecursiveInjection::return_type;//does NOT have to (but MAY) coincide with T
		constexpr static size_t SHIFT = //having SHIFT as size_t helps to deal with shifts in KscopeBitUint<>
			Context::template random_const<
				typename kscope_normalized_unsigned_integral_type<size_t>::type /*MUST be one of uint*_t types, OR T; having it as non-normalized size_t will fail for those compilers where size_t is not 'the same' as _any_ of uint*_t (which MAY happen)*/
				,ITHARE_KSCOPE_NEW_PRNG(seed, 2),kscope_const_one_ok>(Traits::nbits);
			
		static_assert(SHIFT > 0);
		static_assert(SHIFT < Traits::nbits);

		//this is the REAL essence of our injection
		template<ITHARE_KSCOPE_SEEDTPARAM seedc,KSCOPEFLAGS flags>
		ITHARE_KSCOPE_FORCEINLINE constexpr static T local_injection(T x) {  
			return (x << SHIFT) | (x >> (Traits::nbits - SHIFT));
		}
#ifdef __GNUC__ //including __clang__
		//NB: I do NOT claim asm below is optimal (it is irrelevant)
		//  in particular, it maybe easily over-constrained (my knowledge of constraints is unfortunately very limited)
		//  Heck, it can even have bugs-which-didn't-manifest-themselves-yet even under severe injection-based testing (I don't think so, but with __asm__ you can never be 100% sure :-( )
		//	What is important, is that using asm within kscope injection IS one way to TEST ASM CORRECTNESS (including constraints)
#if defined(__i386__) || defined(__x86_64__)
		ITHARE_KSCOPE_FORCEINLINE static uint32_t rotr32(uint32_t x) {
			uint8_t sh = SHIFT;
			__asm__ ("rorl %1,%0" : "+r" (x) : "c" (sh) : "cc");
			return x;
		}
#endif
#ifdef __x86_64__
		ITHARE_KSCOPE_FORCEINLINE static uint64_t rotr64(uint64_t x) {
			uint8_t sh = SHIFT;
			__asm__ ("rorq %1,%0" : "+r" (x) : "c" (sh) : "cc");
			return x;
		} 
#endif
#endif
		template<ITHARE_KSCOPE_SEEDTPARAM seedc,KSCOPEFLAGS flags>
		ITHARE_KSCOPE_FORCEINLINE constexpr static T local_surjection(T y) {
			if constexpr(flags&kscope_flag_is_constexpr)
				return (y >> SHIFT) | (y << (Traits::nbits - SHIFT));
			else {
#ifdef __GNUC__ //including __clang__
#if defined(__i386__) || defined(__x86_64__)
				if constexpr(Traits::nbits == 32) {
					return rotr32(y);
				}
#endif
#ifdef __x86_64__
				if constexpr(Traits::nbits == 64) {
					return rotr64(y);
				}
#endif
#elif defined (_MSC_VER)
				if constexpr(Traits::nbits == 32) {
					return _rotr(y,SHIFT);
				}
				if constexpr(Traits::nbits == 64) {
					return _rotr64(y,SHIFT);
				}
#endif
				return (y >> SHIFT) | (y << (Traits::nbits - SHIFT));
			}
		}

		//some boilerplate stuff (NB: it is boilerplate only for trivial cases like our one)
		template<ITHARE_KSCOPE_SEEDTPARAM seed2,KSCOPEFLAGS flags>
		ITHARE_KSCOPE_FORCEINLINE constexpr static return_type injection(T x) {
			ITHARE_KSCOPE_DECLAREPRNG_INFUNC seedc = ITHARE_KSCOPE_COMBINED_PRNG(seed, seed2);
			T y = local_injection<seedc,flags>(x);
			ITHARE_KSCOPE_DBG_ASSERT_SURJECTION_LOCAL("<1>", x, y);

			return_type ret = RecursiveInjection::template injection<seedc,flags>(y);
			return ret;
		}
		template<ITHARE_KSCOPE_SEEDTPARAM seed2,KSCOPEFLAGS flags>
		ITHARE_KSCOPE_FORCEINLINE constexpr static T surjection(return_type y) {
			ITHARE_KSCOPE_DECLAREPRNG_INFUNC seedc = ITHARE_KSCOPE_COMBINED_PRNG(seed,seed2);
			T yy0 = RecursiveInjection::template surjection<seedc,flags>(y);
			return local_surjection<seedc,flags>(yy0);
		}

		static constexpr KSCOPEINJECTIONCAPS injection_caps = 0;//look for non-0 examples in impl/kscope_injection, IF you want to enable "shortcuts"

#ifdef ITHARE_KSCOPE_DBG_ENABLE_DBGPRINT
		static void dbg_print(size_t offset = 0, const char* prefix = "") {
			std::cout << std::string(offset, ' ') << prefix << "KscopeInjectionVersion<ITHARE_KSCOPE_LAST_STOCK_INJECTION+1=" << ITHARE_KSCOPE_LAST_STOCK_INJECTION+1 << "/*rotl*/," << kscope_dbg_print_t<T>() << "," << kscope_dbg_print_seed<seed>() << "," << cycles << ">: nbits=" << Traits::nbits << " SHIFT=" << SHIFT << std::endl;
			RecursiveInjection::dbg_print(offset + 1);
		}
#endif
	};
	
//More injections can go here (numbered ITHARE_KSCOPE_LAST_STOCK_INJECTION+2, ITHARE_KSCOPE_LAST_STOCK_INJECTION+3, ...)
// DON'T forget to add their descriptors to ITHARE_KSCOPE_ADDITIONAL_INJECTION_DESCRIPTOR_LIST below
	
}} //namespace ithare::kscope
	
#define ITHARE_KSCOPE_ADDITIONAL_INJECTION_DESCRIPTOR_LIST \
	KscopeInjectionAdditionalVersion1Descr<T,Context>::descr,
	
#endif //ITHARE_KSCOPE_SEED
	
#endif // ithare_kscope_kscope_sample_extension_h_included
