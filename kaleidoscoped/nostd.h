//ithare::kscope nostd.h
//  helpers for writing and using kaleidoscoped functions

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

#ifndef ithare_kscope_kaleidoscoped_nostd_h_included
#define ithare_kscope_kaleidoscoped_nostd_h_included

#include "../src/kscope.h"

namespace ithare { namespace kscope {
	
	/* //ITHARE_KSCOPE_DECLAREFUNC_WITHEXTRA(class TT,class T,size_t N)
	template<class TT,ITHARE_KSCOPE_SEEDTPARAM kscopeseed = ITHARE_KSCOPE_DUMMYSEED, KSCOPELEVEL kscopelevel=-1,KSCOPEFLAGS kscopeflags=0,class T,size_t N> constexpr ITHARE_KSCOPE_FORCEINLINE 
	KscopeArrayWrapper<TT,N> kscope_copyarr(T(&src)[N]) {
		KscopeArrayWrapper<TT,N> ret = {};
		for( size_t i=0; i < N ; ++i) {
			ret.arr[i] = src[i];
		}
		return ret;
	}*/
	
	/* //NOT kaleidoscoped (at least ATM, there seems to be no need for it)
	template<class T,size_t N>
	constexpr ITHARE_KSCOPE_FORCEINLINE KscopeArrayWrapper<typename T::SimulatedT,N> kscope_toplainarr(T(&src)[N]) {//converts KscopeInt<TT>[N] into KscopeArrayWrapper<TT,N>  
		KscopeArrayWrapper<typename T::SimulatedT,N> ret = {};
		for( size_t i=0; i < N ; ++i ) {
			ret[i] = src[i];
		}
	}*/
	
	//kscope_to_ct_kscope_int(), kscope_int_arr_to_kscope_int(),  functions are NOT kaleidoscoped (at least ATM, it is used only in KSCOPE_CT wrappers, so there seems to be no need for kaleidoscoping this function)

	#ifndef ITHARE_KSCOPE_DISABLE
	#ifdef ITHARE_KSCOPE_SEED
	/*template<class T,size_t N> constexpr ITHARE_KSCOPE_FORCEINLINE 
	KscopeArrayWrapper<KscopeInt<T,ITHARE_KSCOPE_DUMMYSEED,-1,kscope_flag_is_constexpr>,N> 
		kscope_int_arr_to_ct_kscope_int(T(&src)[N]) {//converts T[N] into KscopeArrayWrapper<ithare::kscope::KscopeInt<T,ITHARE_KSCOPE_DUMMYSEED,-1,ithare::kscope::kscope_flag_is_constexpr>,N>  
		KscopeArrayWrapper<KscopeInt<T,ITHARE_KSCOPE_DUMMYSEED,-1,kscope_flag_is_constexpr>,N> ret = {};
		for( size_t i=0; i < N ; ++i ) {
			ret.arr[i] = src[i];
		}
		return ret;
	}
	template<size_t N,class T> constexpr ITHARE_KSCOPE_FORCEINLINE 
	KscopeArrayWrapper<KscopeInt<T,ITHARE_KSCOPE_DUMMYSEED,-1,kscope_flag_is_constexpr>,N> 
		kscope_int_arr_to_ct_kscope_int(T* src,size_t m=N) {//converts TT[N] into KscopeArrayWrapper<ithare::kscope::KscopeInt<type,ITHARE_KSCOPE_DUMMYSEED,-1,ithare::kscope::kscope_flag_is_constexpr>,N>  
		assert(m<=N);
		KscopeArrayWrapper<KscopeInt<T,ITHARE_KSCOPE_DUMMYSEED,-1,kscope_flag_is_constexpr>,N> ret = {};
		for( size_t i=0; i < m ; ++i ) {
			ret.arr[i] = src[i];
		}
		return ret;
	}*/

	template<ITHARE_KSCOPE_SEEDTPARAM seed, KSCOPELEVEL level, class T,size_t N> constexpr ITHARE_KSCOPE_FORCEINLINE 
	KscopeArrayWrapper<KscopeInt<T,seed,ithare::kscope::kscope_exp_cycles(level),0>,N> 
		kscope_int_arr_to_kscope_int(T(&src)[N]) {//converts T[N] into KscopeArrayWrapper<ithare::kscope::KscopeInt<T,ITHARE_KSCOPE_DUMMYSEED,-1,ithare::kscope::kscope_flag_is_constexpr>,N>  
		KscopeArrayWrapper<KscopeInt<T,seed,ithare::kscope::kscope_exp_cycles(level),0>,N> ret = {};
		for( size_t i=0; i < N ; ++i ) {
			ret.arr[i] = src[i];
		}
		return ret;
	}
	#define ITHARE_KSCOPE_INT_ARR_TO_KSCOPE_INT3(src) ithare::kscope::kscope_int_arr_to_kscope_int<ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__),3>(src)
	template<ITHARE_KSCOPE_SEEDTPARAM seed, KSCOPELEVEL level, size_t N, class T> constexpr ITHARE_KSCOPE_FORCEINLINE 
	KscopeArrayWrapper<KscopeInt<T,seed,ithare::kscope::kscope_exp_cycles(level),0>,N> 
		kscope_int_arr_to_kscope_int(T* src, size_t m=N) {//converts T[N] into KscopeArrayWrapper<ithare::kscope::KscopeInt<T,ITHARE_KSCOPE_DUMMYSEED,-1,ithare::kscope::kscope_flag_is_constexpr>,N>  
		KscopeArrayWrapper<KscopeInt<T,seed,ithare::kscope::kscope_exp_cycles(level),0>,N> ret = {};
		assert(m<=N);
		for( size_t i=0; i < m ; ++i ) {
			ret.arr[i] = src[i];
		}
		return ret;
	}
	#define ITHARE_KSCOPE_INT_ARR_TO_KSCOPE_INT3X(maxsz,src,cursz) ithare::kscope::kscope_int_arr_to_kscope_int<ITHARE_KSCOPE_INIT_PRNG(__FILE__,ITHARE_KSCOPE_LINE,__COUNTER__),3,maxsz>(src,cursz)
	#else //ITHARE_KSCOPE_SEED
	
	/*template<class T,size_t N> constexpr ITHARE_KSCOPE_FORCEINLINE 
	KscopeArrayWrapper<KscopeIntDbg<T>,N> 
		kscope_int_arr_to_ct_kscope_int(T(&src)[N]) {//converts T[N] into KscopeArrayWrapper<ithare::kscope::KscopeIntDbg<T>,N>  
		KscopeArrayWrapper<KscopeIntDbg<T>,N> ret = {};
		for( size_t i=0; i < N ; ++i ) {
			ret.arr[i] = src[i];
		}
		return ret;
	}
	template<size_t N,class T> constexpr ITHARE_KSCOPE_FORCEINLINE 
	KscopeArrayWrapper<KscopeIntDbg<T>,N> 
		kscope_int_arr_to_ct_kscope_int(T* src,size_t m=N) {//converts TT[N] into KscopeArrayWrapper<ithare::kscope::KscopeIntDbg<type>,N>  
		assert(m<=N);
		KscopeArrayWrapper<KscopeIntDbg<T>,N> ret = {};
		for( size_t i=0; i < m ; ++i ) {
			ret.arr[i] = src[i];
		}
		return ret;
	}*/

	template<class T,size_t N> constexpr ITHARE_KSCOPE_FORCEINLINE 
	KscopeArrayWrapper<KscopeIntDbg<T>,N> 
		kscope_int_arr_to_kscope_int(T(&src)[N]) {//converts T[N] into KscopeArrayWrapper<ithare::kscope::KscopeIntDbg<T>,N>  
		KscopeArrayWrapper<KscopeIntDbg<T>,N> ret = {};
		for( size_t i=0; i < N ; ++i ) {
			ret.arr[i] = src[i];
		}
		return ret;
	}
	#define ITHARE_KSCOPE_INT_ARR_TO_KSCOPE_INT3(src) ithare::kscope::kscope_int_arr_to_kscope_int(src)
	template<size_t N, class T> constexpr ITHARE_KSCOPE_FORCEINLINE 
	KscopeArrayWrapper<KscopeIntDbg<T>,N> 
		kscope_int_arr_to_kscope_int(T* src, size_t m=N) {//converts T[N] into KscopeArrayWrapper<ithare::kscope::KscopeIntDbg<T>,N>  
		KscopeArrayWrapper<KscopeIntDbg<T>,N> ret = {};
		assert(m<=N);
		for( size_t i=0; i < m ; ++i ) {
			ret.arr[i] = src[i];
		}
		return ret;
	}	
	#define ITHARE_KSCOPE_INT_ARR_TO_KSCOPE_INT3X(maxsz,src,cursz) ithare::kscope::kscope_int_arr_to_kscope_int<maxsz>(src,cursz)
	#endif //ITHARE_KSCOPE_SEED
	
	#define ITHARE_KSCOPE_INT_ARR(x) x.arr

	#else //ITHARE_KSCOPE_DISABLE
	
	#define ITHARE_KSCOPE_INT_ARR_TO_KSCOPE_INT3(src) src
	#define ITHARE_KSCOPE_INT_ARR_TO_KSCOPE_INT3X(maxsz,src,cursz) src
	#define ITHARE_KSCOPE_INT_ARR(x) x
	
	#endif //ITHARE_KSCOPE_DISABLE
	
	//TODO: kaleidoscope (?)
	template<class T, class TT> constexpr ITHARE_KSCOPE_FORCEINLINE
	void kscope_copyarr(T* dst,const TT* src, size_t N) {
		for(size_t i=0; i < N ; ++i) {
			dst[i] = src[i];
		}
	}
	//TODO: kaleidoscope (?)
	template<class T, class TT> constexpr ITHARE_KSCOPE_FORCEINLINE
	int kscope_cmparr(const T* a,const TT* b, size_t N) {
		for(size_t i=0; i < N ; ++i) {
			if( a[i] != b[i] )
				return a[i] < b[i] ? -1 : 1;
		}
		return 0;
	}
}} //namespace ithare::kscope

#endif //ithare_kscope_kaleidoscoped_nostd_h_included
