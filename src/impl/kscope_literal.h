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

#ifndef ithare_kscope_literal_h_included
#define ithare_kscope_literal_h_included

//NOT intended to be #included directly
//  #include ../kscope.h instead

#include "kscope_common.h"
#include "kscope_prng.h"

//NB: principles for cross-platform kaleidoscopes, laid out in kscope_injection.h, _seem_ to be UNNECESSARY for literals
//  Current implementation still complies with them, but it _seems_ that if necessary, we can ignore them for literals

#ifdef ITHARE_KSCOPE_SEED

namespace ithare {
	namespace kscope {

	//KscopeLiteralContext
	template<size_t which, class T, ITHARE_KSCOPE_SEEDTPARAM seed>
	struct KscopeLiteralContextVersion;
	//forward declaration:
	template<class T, ITHARE_KSCOPE_SEEDTPARAM seed, KSCOPECYCLES cycles>
	class KscopeLiteralContext;

	//version 0: identity
	struct KscopeLiteralContextVersion0Descr {
		static constexpr KscopeDescriptor descr = KscopeDescriptor(0, 1,KscopeDescriptor::flag_is_last_resort);
	};

	template<class T, ITHARE_KSCOPE_SEEDTPARAM seed>
	struct KscopeLiteralContextVersion<0,T,seed> {
		using Traits = KscopeTraits<T>;
		constexpr static KSCOPECYCLES context_cycles = KscopeLiteralContextVersion0Descr::descr.min_cycles;

		template<ITHARE_KSCOPE_SEEDTPARAM seed2,KSCOPEFLAGS flags>
		ITHARE_KSCOPE_FORCEINLINE static constexpr T final_injection(T x) {
			return x;
		}
		template<ITHARE_KSCOPE_SEEDTPARAM seed2,KSCOPEFLAGS flags>
		ITHARE_KSCOPE_FORCEINLINE static constexpr T final_surjection(T y) {
			return y;
		}

#ifdef ITHARE_KSCOPE_DBG_ENABLE_DBGPRINT
		static void dbg_print(size_t offset = 0, const char* prefix = "") {
			std::cout << std::string(offset, ' ') << prefix << "KscopeLiteralContextVersion<0/*identity*/," << kscope_dbg_print_t<T>() << ">" << std::endl;
		}
#endif
	};

	//version 1: global volatile constant
	struct KscopeLiteralContextVersion1Descr {
		static constexpr KscopeDescriptor descr = KscopeDescriptor(6, 100);
	};

	template<class T, ITHARE_KSCOPE_SEEDTPARAM seed>
	struct KscopeLiteralContextVersion<1,T,seed> {
		using Traits = KscopeTraits<T>;
		constexpr static KSCOPECYCLES context_cycles = KscopeLiteralContextVersion1Descr::descr.min_cycles;

		constexpr static T CC = kscope_random_const<T,ITHARE_KSCOPE_NEW_PRNG(seed, 1),0>();
		template<ITHARE_KSCOPE_SEEDTPARAM seed2,KSCOPEFLAGS flags>
		ITHARE_KSCOPE_FORCEINLINE static constexpr T final_injection(T x) {
			return x + CC;
		}
		template<ITHARE_KSCOPE_SEEDTPARAM seed2,KSCOPEFLAGS flags>
		ITHARE_KSCOPE_FORCEINLINE static constexpr /* only if flags & kscope_flag_is_constexpr */ T final_surjection(T y) {
			if constexpr(flags&kscope_flag_is_constexpr)
				return y - CC;
			else
				return y - T(c);
		}

#ifdef ITHARE_KSCOPE_DBG_ENABLE_DBGPRINT
		static void dbg_print(size_t offset = 0, const char* prefix = "") {
			std::cout << std::string(offset, ' ') << prefix << "KscopeLiteralContextVersion<1/*global volatile*/," << kscope_dbg_print_t<T>() << "," << kscope_dbg_print_seed<seed>() << ">: CC=" << kscope_dbg_print_c<T>(CC) << std::endl;
		}
#endif
	private:
		static volatile T c;
	};

	template<class T, ITHARE_KSCOPE_SEEDTPARAM seed>
	volatile T KscopeLiteralContextVersion<1, T, seed>::c = CC;
	
  } //namespace kscope
} //namespace ithare

#define ITHARE_KSCOPE_STOCK_LITERAL_DESCRIPTOR_LIST \
 			KscopeLiteralContextVersion0Descr::descr,\
			KscopeLiteralContextVersion1Descr::descr,

#define ITHARE_KSCOPE_LAST_STOCK_LITERAL 1	

#endif //ITHARE_KSCOPE_SEED

#endif //ithare_kscope_literal_h_included
