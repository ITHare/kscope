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

#ifndef ithare_kscope_prng_h_included
#define ithare_kscope_prng_h_included

//NOT intended to be #included directly
//  #include ../kscope.h instead

//kscope_prng.h
//  Compile-time pseudo-random generation from seeds

#include <stdint.h>
#include "kscope_common.h"

#ifdef ITHARE_KSCOPE_SEED

#define ITHARE_KSCOPE_UINT64C(c) UINT64_C(c)//to avoid issues with Clang when trying to UINT64_C(MACRO)

namespace ithare {
	namespace kscope {
		constexpr uint64_t kscope_global_seed = ITHARE_KSCOPE_UINT64C(ITHARE_KSCOPE_SEED);
		constexpr uint64_t kscope_global_seed2 = ITHARE_KSCOPE_UINT64C(ITHARE_KSCOPE_SEED2);

		constexpr uint64_t kscope_const_random0[] = {
			UINT64_C(0x4d97'89b5'e76f'c505), UINT64_C(0xac1e'21fb'6594'ce31), UINT64_C(0xbc9e'7c29'054a'beb5), UINT64_C(0x418c'3b82'd2d8'a0db),
			UINT64_C(0x9220'9ecf'b9b7'cb70), UINT64_C(0xfaca'eca7'6bf3'c919), UINT64_C(0x7379'36be'7574'654a), UINT64_C(0x4205'd596'48bc'd330),
			UINT64_C(0xf2aa'35c8'c670'b1a2), UINT64_C(0xeef5'9ef8'28d8'fed2), UINT64_C(0x8d86'2109'a268'8a6b), UINT64_C(0x535d'2930'052b'7ab5),
			UINT64_C(0x7f79'42d6'cffd'21a7), UINT64_C(0x8f18'3618'68b2'c1ac), UINT64_C(0x69da'cd1c'a7fd'549a), UINT64_C(0x9345'341d'e34a'81e0),
			UINT64_C(0x5344'84d5'2a07'c80c), UINT64_C(0xee2d'ef87'6dde'1d20), UINT64_C(0x43d0'3cc3'39ae'deea), UINT64_C(0xf2f3'dbac'698d'b760)  
			
		};/*from random.org*/
		constexpr uint64_t kscope_const_random1[] = {
			UINT64_C(0x30c9'c242'c935'61e2), UINT64_C(0xd529'3193'1e57'0a40), UINT64_C(0xd01d'41d1'142c'e938), UINT64_C(0x327b'2d31'2760'1f6b),
			UINT64_C(0x463b'ef56'47cb'121a), UINT64_C(0xb657'76c9'8087'3d61), UINT64_C(0x63e8'7a37'88c7'03b4), UINT64_C(0xd648'095c'c6f6'5473),
			UINT64_C(0xba02'be98'd2e6'4836), UINT64_C(0x6b2b'e8ab'f44c'2af3), UINT64_C(0x971c'4f88'0d7d'd7a5), UINT64_C(0xe728'ed94'3c0e'9724),
			UINT64_C(0xed42'd3d0'44cf'a1cc), UINT64_C(0xb333'dc8d'6f58'1f30), UINT64_C(0x2700'b0b7'ad09'32eb), UINT64_C(0xa431'c3be'c084'4f3c),
			UINT64_C(0xf11b'114c'eaab'76ed), UINT64_C(0xf387'892d'f0d6'9be2), UINT64_C(0x8078'e911'2775'9316), UINT64_C(0xce72'fb19'76fc'6ffe)   
		};/*from random.org*/

		constexpr const char* kscope_normalize_fname(const char* file) {
			//normalizing __FILE__ to the bare file name (without path, which does change between debug/release)
			const char* ret = file;
			for (const char *p = file; *p; ++p)
				if (*p == '/' || *p == '\\')
					ret = p + 1;
			return ret;
		}

#ifndef ITHARE_KSCOPE_CRYPTO_PRNG//CRYPTO PRNG slows down compile but uses 128-bit crypto-grade PRNGs 


		constexpr uint64_t kscope_murmurhash2(uint64_t u, uint64_t seed) {
			//adapted to 64-bit-only input from https://sites.google.com/site/murmurhash/MurmurHash2_64.cpp
			const int len = 8;
			const uint64_t m = 0xc6a4'a793'5bd1'e995;
			const int r = 47;

			uint64_t h = seed ^ (len * m);

			//was loop in original, but we don't need loop here
			uint64_t k = u;

			k *= m;
			k ^= k >> r;
			k *= m;

			h ^= k;
			h *= m;
			//end of loop-in-original

			h ^= h >> r;
			h *= m;
			h ^= h >> r;

			return h;
		}
		constexpr uint64_t kscope_ranhash(uint64_t u) {
			//ranhash from Numerical Recipes
			uint64_t v = u * UINT64_C(3935559000370003845) + UINT64_C(2691343689449507681);
			v ^= v >> 21; v ^= v << 37; v ^= v >> 4;
			v *= UINT64_C(4768777513237032717);
			v ^= v << 20; v ^= v >> 41; v ^= v << 5;
			return v;
		}
		constexpr size_t kscope_random(uint64_t seed, uint32_t modifier, size_t maxn) {
			//for maxn < 1M, bias is limited to <0.1% - more than enough for our purposes
			assert(maxn > 0);
			assert(maxn < 1'048'576);//limiting bits to 20 and bias to <0.1%
									 //  if REALLY necessary - can raise the limit at the cost of increased bias

			assert(modifier < sizeof(kscope_const_random0) / sizeof(uint64_t));//if necessary - add more random data to kscope_const_random0
			uint64_t u = kscope_const_random0[modifier] ^ seed;
			uint64_t v = kscope_ranhash(u);
			return v % maxn;
		}
		static constexpr size_t kscope_const_nrandom0 = sizeof(kscope_const_random0) / sizeof(uint64_t);
		constexpr uint32_t kscope_random_uint32(uint64_t seed, uint32_t modifier) {
			uint64_t init = 0;
			if(modifier >= kscope_const_nrandom0) {
				init ^= kscope_const_random0[kscope_const_nrandom0-1];
				modifier -= kscope_const_nrandom0;
				assert(modifier<kscope_const_nrandom0-1);//if necessary - add another round of xor-ing (with kscope_const_nrandom0-2)
			}
			assert(modifier<kscope_const_nrandom0);
			uint64_t u = init ^ kscope_const_random0[modifier] ^ seed;
			uint64_t v = kscope_ranhash(u);
			return uint32_t(v);
		}

		constexpr uint64_t kscope_new_prng(uint64_t seed, uint32_t modifier) {
			assert(modifier < sizeof(kscope_const_random0) / sizeof(uint64_t));//if necessary - add more random data to kscope_const_random0
			uint64_t u = kscope_const_random1[modifier];
			return kscope_murmurhash2(u, seed);//could use ranhash here too, but why not?
		}
		constexpr uint64_t kscope_init_prng(const char* file, int line, [[maybe_unused]] int counter) {
			uint64_t u = kscope_global_seed ^ line;
#ifdef ITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS
			const char* filename = kscope_normalize_fname(file);
#else//!CONSISTENT
			u ^= counter;
			const char* filename = file;
#endif
			for (const char* p = filename; *p; ++p)//effectively djb2 by Dan Bernstein, albeit with different initializer
				u = ((u << 5) + u) + *p;
			return kscope_murmurhash2(u, kscope_global_seed2);
		}
		constexpr uint64_t kscope_combined_prng(uint64_t seed, uint64_t seed2) {
			return kscope_murmurhash2(seed, seed2);
		}

#define ITHARE_KSCOPE_SEEDTPARAM uint64_t
#define ITHARE_KSCOPE_DUMMYSEED 0
#define ITHARE_KSCOPE_DECLAREPRNG constexpr static uint64_t /* sic! */
#define ITHARE_KSCOPE_DECLAREPRNG_INFUNC constexpr uint64_t
#define	ITHARE_KSCOPE_INIT_PRNG(file,line,counter) ithare::kscope::kscope_init_prng(file,line,counter) 
#define ITHARE_KSCOPE_NEW_PRNG(prng,modifier) ithare::kscope::kscope_new_prng(prng,modifier)
#define ITHARE_KSCOPE_COMBINED_PRNG(prng,prng2) ithare::kscope::kscope_combined_prng(prng,prng2)
#if defined(ITHARE_KSCOPE_WORKAROUND_FOR_MSVC_BUG_196885) || defined(ITHARE_KSCOPE_WORKAROUND_FOR_GCC_BUG_47488) || defined(ITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS) 
		//https://developercommunity.visualstudio.com/content/problem/196885/c1001-in-fddvctoolscompilercxxfeslp1cwalkcpp-line.html //MSVC doesn't like 'too complicated' stuff (what it does accept, was found experimentally)
		//https://gcc.gnu.org/bugzilla/show_bug.cgi?id=47488 ; GCC doesn't like using __FILE__ literal in this context...
		//  as soon as BOTH these bugs are fixed, the whole #if branch is to be removed
#ifdef ITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS
#define ITHARE_KSCOPE_INIT_COMBINED_PRNG(prng2,file,line,counter) (ithare::kscope::kscope_ranhash(line)^prng2) //not TOO bad, and happens to satisfy both MSVC and GCC
#else
#define ITHARE_KSCOPE_INIT_COMBINED_PRNG(prng2,file,line,counter) (ithare::kscope::kscope_ranhash(line)^ithare::kscope::kscope_murmurhash2(counter,prng2))
#endif

#else//!ITHARE_KSCOPE_WORKAROUND_FOR_MSVC_BUG_196885
#define ITHARE_KSCOPE_INIT_COMBINED_PRNG(prng2,file,line,counter) ITHARE_KSCOPE_COMBINED_PRNG(ITHARE_KSCOPE_INIT_PRNG(file,line,counter),prng2)
#endif
#define ITHARE_KSCOPE_RANDOM(prng,modifier,maxn) ithare::kscope::kscope_random(prng,modifier,maxn)
#define ITHARE_KSCOPE_RANDOM_UINT32(prng,modifier) ithare::kscope::kscope_random_uint32(prng,modifier)
#define ITHARE_KSCOPE_DUMMY_PRNG 0
#ifdef ITHARE_KSCOPE_DBG_ENABLE_DBGPRINT
		//dbg_print helpers
		template<ITHARE_KSCOPE_SEEDTPARAM seed>
		std::string kscope_dbg_print_seed() {
			return std::to_string(seed);
		}
#endif
#else
//XXTEA as a PLACEHOLDER for real crypto; TODO - replace with a serious cryptography

#define ITHARE_KSCOPE_XXTEA_MX (((z>>5^y<<2) + (y>>3^z<<4)) ^ ((sum^y) + (key[(p&3)^e] ^ z)))
		constexpr KscopeArrayWrapper<uint32_t, 4> kscope_xxtea_encipher(std::pair<uint64_t, uint64_t> v0, const uint32_t key[4]) {
			//TODO: validate implementation
			constexpr uint32_t DELTA = 0x9e3779b9;
			unsigned n = 4;
			unsigned rounds = 6 + 52 / n;
			KscopeArrayWrapper<uint32_t, 4> v{ { uint32_t(v0.first), uint32_t(v0.first >> 32), uint32_t(v0.second), uint32_t(v0.second >> 32) } };
			uint32_t y = 0, z = 0, sum = 0;
			unsigned p = 0, e = 0;
			sum = 0;
			z = v.arr[n - 1];
			do {
				sum += DELTA;
				e = (sum >> 2) & 3;
				for (p = 0; p < n - 1; p++) {
					y = v.arr[p + 1];
					z = v.arr[p] = v.arr[p] + ITHARE_KSCOPE_XXTEA_MX;
				}
				y = v.arr[0];
				z = v.arr[n - 1] = v.arr[n - 1] + ITHARE_KSCOPE_XXTEA_MX;
			} while (--rounds);

			return v;
		}
#undef ITHARE_KSCOPE_XXTEA_MX

		template<uint64_t lo_, uint64_t hi_, int depth_>
		struct KscopeSeed {
			static constexpr uint64_t lo = lo_;
			static constexpr uint64_t hi = hi_;
			static constexpr int depth = depth_;
		};
		//TODO: generate ALL the keys (for_random, for_init, and a hundred of keys for different depths) from an externally-provided-seed...
		constexpr uint32_t kscope_prng_xxtea_key_for_init[4] = {
			UINT32_C(0xf4f8'a649), UINT32_C(0xa77a'ee49), UINT32_C(0xfbdb'8ec9), UINT32_C(0x380b'2725)
		};//from random.org
		constexpr uint32_t kscope_prng_xxtea_key_for_random[4] = {
			UINT32_C(0x1fa3'669f), UINT32_C(0x7cf5'7cf9), UINT32_C(0x7df5'4887), UINT32_C(0x9c92'd8d5)
		};//from random.org
		constexpr uint32_t kscope_prng_xxtea_key0[4] = {
			UINT32_C(0xa0d7'9b06), UINT32_C(0x29da'2659), UINT32_C(0x3b70'20ec), UINT32_C(0xa3ff'52fb)
		};//from random.org
		constexpr std::pair<uint64_t, uint64_t> kscope_new_prng(uint64_t lo, uint64_t hi, uint32_t modifier) {
			assert(modifier < sizeof(kscope_const_random0) / sizeof(uint64_t));//if necessary - add more random data to kscope_const_random0
																			//using block cipher (currently XXTEA) in CTR mode
			assert(modifier < sizeof(kscope_const_random1) / sizeof(uint64_t));//if necessary - add more random data to kscope_const_random0
																			//using block cipher (currently XXTEA) in CTR mode

			uint64_t l = lo ^ kscope_const_random0[modifier];
			uint64_t h = hi ^ kscope_const_random1[modifier];
			std::pair<uint64_t, uint64_t> ctr_block = { l ^ kscope_global_seed,h ^kscope_global_seed2 };
			//TODO: use different keys for different 'depth'
			KscopeArrayWrapper<uint32_t, 4> v = kscope_xxtea_encipher(ctr_block, kscope_prng_xxtea_key0);

			uint64_t rlo = (uint64_t(v.arr[1]) << 32) | uint64_t(v.arr[0]);
			uint64_t rhi = (uint64_t(v.arr[3]) << 32) | uint64_t(v.arr[2]);
			return std::pair<uint64_t, uint64_t>(rlo, rhi);
		}
		constexpr size_t kscope_random(uint64_t lo, uint64_t hi, uint32_t modifier, size_t maxn) {
			//for maxn < 1M, bias is limited to <0.1% - more than enough for our purposes
			assert(maxn > 0);
			assert(maxn < 1'048'576);//limiting bits to 20 and bias to <0.1%
									 //  if REALLY necessary - can raise the limit at the cost of increased bias

			assert(modifier < sizeof(kscope_const_random0) / sizeof(uint64_t));//if necessary - add more random data to kscope_const_random0
																			//using block cipher (currently XXTEA) in CTR mode
			assert(modifier < sizeof(kscope_const_random1) / sizeof(uint64_t));//if necessary - add more random data to kscope_const_random0
																			//using block cipher (currently XXTEA) in CTR mode

			uint64_t l = lo ^ kscope_const_random1[modifier];//TODO: add random 2/3
			uint64_t h = hi ^ kscope_const_random0[modifier];

			std::pair<uint64_t, uint64_t> ctr_block = { l ^ kscope_global_seed,h ^kscope_global_seed2 };
			KscopeArrayWrapper<uint32_t, 4> v = kscope_xxtea_encipher(ctr_block, kscope_prng_xxtea_key_for_random);
			uint64_t rlo = (uint64_t(v.arr[1]) << 32) | uint64_t(v.arr[0]);
			return rlo % maxn;
		}
		constexpr uint32_t kscope_random_uint32(uint64_t lo, uint64_t hi, uint32_t modifier) {
			assert(modifier < sizeof(kscope_const_random0) / sizeof(uint64_t));//if necessary - add more random data to kscope_const_random0
																			//using block cipher (currently XXTEA) in CTR mode
			assert(modifier < sizeof(kscope_const_random1) / sizeof(uint64_t));//if necessary - add more random data to kscope_const_random0
																			//using block cipher (currently XXTEA) in CTR mode

			uint64_t l = lo ^ kscope_const_random1[modifier];//TODO: add random 2/3
			uint64_t h = hi ^ kscope_const_random0[modifier];

			std::pair<uint64_t, uint64_t> ctr_block = { l ^ kscope_global_seed,h ^kscope_global_seed2 };
			KscopeArrayWrapper<uint32_t, 4> v = kscope_xxtea_encipher(ctr_block, kscope_prng_xxtea_key_for_random);
			uint64_t rlo = (uint64_t(v.arr[1]) << 32) | uint64_t(v.arr[0]);
			return uint32_t(rlo);
		}
		constexpr std::pair<uint64_t, uint64_t> kscope_init_prng(const char* file, int line, int counter) {
			uint64_t v0 = line;
#ifdef ITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS
			const char* filename = kscope_normalize_fname(file);
#else//!CONSISTENT
			v0 ^= counter;
			const char* filename = file;
#endif
			uint64_t u = kscope_string_hash(filename);
			std::pair<uint64_t, uint64_t> ctr_block = { u ^ kscope_global_seed,v0 ^kscope_global_seed2 };
			KscopeArrayWrapper<uint32_t, 4> v = kscope_xxtea_encipher(ctr_block, kscope_prng_xxtea_key_for_init);
			uint64_t rlo = (uint64_t(v.arr[1]) << 32) | uint64_t(v.arr[0]);
			uint64_t rhi = (uint64_t(v.arr[3]) << 32) | uint64_t(v.arr[2]);
			return std::pair<uint64_t, uint64_t>(rlo, rhi);
		}
		constexpr std::pair<uint64_t, uint64_t> kscope_init_prng_gcc_workaround(int line, int counter) {
			uint64_t v0 = line;
#ifdef ITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS
#else//!CONSISTENT
			v0 ^= counter;
#endif
			uint64_t u = 0;
			std::pair<uint64_t, uint64_t> ctr_block = { u ^ kscope_global_seed,v0 ^kscope_global_seed2 };
			KscopeArrayWrapper<uint32_t, 4> v = kscope_xxtea_encipher(ctr_block, kscope_prng_xxtea_key_for_init);
			uint64_t rlo = (uint64_t(v.arr[1]) << 32) | uint64_t(v.arr[0]);
			uint64_t rhi = (uint64_t(v.arr[3]) << 32) | uint64_t(v.arr[2]);
			return std::pair<uint64_t, uint64_t>(rlo, rhi);
		}
		constexpr std::pair<uint64_t, uint64_t> kscope_combined_prng(uint64_t lo, uint64_t hi, uint64_t lo2, uint64_t hi2) {
			uint64_t l = lo ^ hi2;//why not?
			uint64_t h = hi ^ lo2;
			std::pair<uint64_t, uint64_t> ctr_block = { l ^ kscope_global_seed,h ^kscope_global_seed2 };
			//TODO: use different keys for different 'depth'
			KscopeArrayWrapper<uint32_t, 4> v = kscope_xxtea_encipher(ctr_block, kscope_prng_xxtea_key0);

			uint64_t rlo = (uint64_t(v.arr[1]) << 32) | uint64_t(v.arr[0]);
			uint64_t rhi = (uint64_t(v.arr[3]) << 32) | uint64_t(v.arr[2]);
			return std::pair<uint64_t, uint64_t>(rlo, rhi);
		}
#define ITHARE_KSCOPE_SEEDTPARAM class /* sic! */
#define ITHARE_KSCOPE_DUMMYSEED ithare::kscope::KscopeSeed<0,0,-1>
#define ITHARE_KSCOPE_DECLAREPRNG using /* don't ask ;-) */
#define ITHARE_KSCOPE_DECLAREPRNG_INFUNC using
#define	ITHARE_KSCOPE_INIT_PRNG(file,line,counter) ithare::kscope::KscopeSeed<ithare::kscope::kscope_init_prng(file,line,counter).first,ithare::kscope::kscope_init_prng(file,line,counter).second,0>
#define ITHARE_KSCOPE_NEW_PRNG(prng,modifier) ithare::kscope::KscopeSeed<ithare::kscope::kscope_new_prng(prng::lo,prng::hi,modifier).first,ithare::kscope::kscope_new_prng(prng::lo,prng::hi,modifier).second,prng::depth+1>
#define ITHARE_KSCOPE_COMBINED_PRNG(prng,prng2) ithare::kscope::KscopeSeed<ithare::kscope::kscope_combined_prng(prng::lo,prng::hi,prng2::lo,prng2::hi).first,ithare::kscope::kscope_combined_prng(prng::lo,prng::hi,prng2::lo,prng2::hi).second,std::max(prng::depth,prng2::depth)+1>
#if defined(ITHARE_KSCOPE_WORKAROUND_FOR_MSVC_BUG_196900) || defined(ITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS) 
		//https://developercommunity.visualstudio.com/content/problem/196885/c1001-in-fddvctoolscompilercxxfeslp1cwalkcpp-line.html //MSVC doesn't like 'too complicated' stuff (what it does accept, was found experimentally)
		//as soon as the bug is fixed, the whole #if branch can be removed

#define ITHARE_KSCOPE_INIT_COMBINED_PRNG(prng2,file,line,counter) ithare::kscope::KscopeSeed<ithare::kscope::kscope_init_prng_gcc_workaround(line,counter).first,ithare::kscope::kscope_init_prng_gcc_workaround(line,counter).second,0> //HAVE to use gcc_workaround to cover CONSISTENT_XPLATFORM case

#ifdef _MSC_VER
#pragma message("SERIOUS DEGRADATION: NO DEPENDENCY ON prng2 in ITHARE_KSCOPE_INIT_COMBINED_PRNG(). Fix depends on https://developercommunity.visualstudio.com/content/problem/196900/c1001-in-file-msc1cpp-line-1507.html. Meanwhile, you may want to avoid using ITHARE_KSCOPE_CRYPTO_PRNG under MSVC.")
#else
#pragma message "SERIOUS DEGRADATION: NO DEPENDENCY ON prng2 in ITHARE_KSCOPE_INIT_COMBINED_PRNG(). Problem is due to a bug in MSVC, and will go away if NOT using ITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS, or ITHARE_KSCOPE_CRYPTO_PRNG"
#endif

#elif defined(ITHARE_KSCOPE_WORKAROUND_FOR_GCC_BUG_47488)
		//https://gcc.gnu.org/bugzilla/show_bug.cgi?id=47488 ; GCC doesn't like using __FILE__ literal in this context...
		//  as soon as the bug is fixed, the whole #elif branch is to be removed

#define ITHARE_KSCOPE_INIT_PRNG_WORKAROUND(file,line,counter) ithare::kscope::KscopeSeed<ithare::kscope::kscope_init_prng_gcc_workaround(line,counter).first,ithare::kscope::kscope_init_prng_gcc_workaround(line,counter).second,0>
#define ITHARE_KSCOPE_INIT_COMBINED_PRNG(prng2,file,line,counter) ITHARE_KSCOPE_COMBINED_PRNG(prng2,ITHARE_KSCOPE_INIT_PRNG_WORKAROUND(file,line,counter))

#pragma message "MINOR DEGRADATION: __FILE__ is not used in ITHARE_KSCOPE_INIT_COMBINED_PRNG(). Problem is due to a bug in GCC, but is hopefully not TOO bad"

#else//!CONSISTENT_XPLATFORM && !MSVC_BUG && !GCC_BUG 

#define ITHARE_KSCOPE_INIT_COMBINED_PRNG(prng2,file,line,counter) ITHARE_KSCOPE_COMBINED_PRNG(ITHARE_KSCOPE_INIT_PRNG(file,line,counter),prng2)
#endif
#define ITHARE_KSCOPE_RANDOM(prng,modifier,maxn) ithare::kscope::kscope_random(prng::lo,prng::hi,modifier,maxn)
#define ITHARE_KSCOPE_RANDOM_UINT32(prng,modifier) ithare::kscope::kscope_random_uint32(prng::lo,prng::hi,modifier)
#define ITHARE_KSCOPE_DUMMY_PRNG KscopeSeed<0,0,0>
#ifdef ITHARE_KSCOPE_DBG_ENABLE_DBGPRINT
		//dbg_print helpers
		template<ITHARE_KSCOPE_SEEDTPARAM seed>
		std::string kscope_dbg_print_seed() {
			return std::string("<") + std::to_string(seed::lo) + "," + std::to_string(seed::hi) + ">";
		}
#endif

#endif//ITHARE_KSCOPE_CRYPTO_PRNG
	}//namespace kscope
}//namespace ithare

#endif//ITHARE_KSCOPE_SEED

#endif//#ifndef ithare_kscope_prng_h_included

