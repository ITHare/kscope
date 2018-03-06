//ithare::kscope::ssl crypto/chacha.h 
//  kaleidoscoped version of crypto/chacha/chacha-merged.c, include/openssl/chacha.h, and crypto/chacha/chacha.c from LibreSSL 2.6.4

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
//SEE ALSO COPYRIGHT NOTICES BELOW

#ifndef ithare_kscope_kaleidoscoped_ssl_crypto_chacha_h_included
#define ithare_kscope_kaleidoscoped_ssl_crypto_chacha_h_included

#include "../../../../src/kscope.h"
#include "../../../kindastd.h"
#include "../../../nostd.h"

namespace ithare { namespace kscope { namespace ssl {

/* $OpenBSD: chacha-merged.c,v 1.8 2017/08/13 16:55:31 jsing Exp $ */
/*
chacha-merged.c version 20080118
D. J. Bernstein
Public domain.
*/

constexpr int CHACHA_MINKEYLEN = 16;
constexpr int CHACHA_NONCELEN = 8;
constexpr int CHACHA_CTRLEN	= 8;
constexpr int CHACHA_STATELEN = CHACHA_NONCELEN+CHACHA_CTRLEN;
constexpr int CHACHA_BLOCKLEN = 64;

ITHARE_KSCOPE_DECLARECLASS
struct ChaCha_ctx {
	ITHARE_KSCOPE_CINT(uint32_t) input[16];
	ITHARE_KSCOPE_CINT(uint8_t) ks[CHACHA_BLOCKLEN];
	ITHARE_KSCOPE_CINT(uint8_t) unused;

	constexpr ITHARE_KSCOPE_FORCEINLINE ChaCha_ctx() 
		: input{}, ks{}, unused{} {//more-or-less equivalent to default, declared to enforce force-inline
	}
	constexpr ITHARE_KSCOPE_FORCEINLINE ChaCha_ctx(const ChaCha_ctx& other) { //equivalent to default, declared to enforce force-inline 
		kscope_copy(other.input,other.input+16,input);
		kscope_copy(other.ks,other.ks+CHACHA_BLOCKLEN,ks);
		unused = other.unused;
	}
	constexpr ITHARE_KSCOPE_FORCEINLINE ChaCha_ctx& operator =(const ChaCha_ctx&) = delete;
	constexpr ITHARE_KSCOPE_FORCEINLINE ChaCha_ctx(const ChaCha_ctx&& other) { //equivalent to default, declared to enforce force-inline 
		kscope_copy(other.input, other.input + 16, input);
		kscope_copy(other.ks, other.ks + CHACHA_BLOCKLEN, ks);
		unused = other.unused;
	}
	constexpr ITHARE_KSCOPE_FORCEINLINE ChaCha_ctx& operator =(const ChaCha_ctx&&) = delete;
};

#define ITHARE_KSCOPE_U8V(v) ((uint8_t)(v) & UINT8_C(0xFF))
#define ITHARE_KSCOPE_U32V(v) ((uint32_t)(v) & UINT32_C(0xFFFFFFFF))

#define ITHARE_KSCOPE_ROTL32(v, n) \
  (ITHARE_KSCOPE_U32V((v) << (n)) | ((v) >> (32 - (n))))

#define ITHARE_KSCOPE_U8TO32_LITTLE(p) \
  (((uint32_t)((p)[0])) | \
   ((uint32_t)((p)[1]) <<  8) | \
   ((uint32_t)((p)[2]) << 16) | \
   ((uint32_t)((p)[3]) << 24))

#define ITHARE_KSCOPE_U32TO8_LITTLE(p, v) \
  do { \
    (p)[0] = ITHARE_KSCOPE_U8V((v)); \
    (p)[1] = ITHARE_KSCOPE_U8V((v) >>  8); \
    (p)[2] = ITHARE_KSCOPE_U8V((v) >> 16); \
    (p)[3] = ITHARE_KSCOPE_U8V((v) >> 24); \
  } while (0)

#define ITHARE_KSCOPE_ROTATE(v,c) (ITHARE_KSCOPE_ROTL32(v,c))
#define ITHARE_KSCOPE_XOR(v,w) ((v) ^ (w))
#define ITHARE_KSCOPE_PLUS(v,w) (ITHARE_KSCOPE_U32V((v) + (w)))
#define ITHARE_KSCOPE_PLUSONE(v) (ITHARE_KSCOPE_PLUS((v),1))

#define ITHARE_KSCOPE_QUARTERROUND(a,b,c,d) \
  a = ITHARE_KSCOPE_PLUS(a,b); d = ITHARE_KSCOPE_ROTATE(ITHARE_KSCOPE_XOR(d,a),16); \
  c = ITHARE_KSCOPE_PLUS(c,d); b = ITHARE_KSCOPE_ROTATE(ITHARE_KSCOPE_XOR(b,c),12); \
  a = ITHARE_KSCOPE_PLUS(a,b); d = ITHARE_KSCOPE_ROTATE(ITHARE_KSCOPE_XOR(d,a), 8); \
  c = ITHARE_KSCOPE_PLUS(c,d); b = ITHARE_KSCOPE_ROTATE(ITHARE_KSCOPE_XOR(b,c), 7);

ITHARE_KSCOPE_DECLAREFUNC_WITHPARAMS_CLASS_2xINT
void chacha_keysetup(ITHARE_KSCOPE_DECLAREPARAM_CLASS(ChaCha_ctx) *x, const ITHARE_KSCOPE_DECLAREPARAM_INT(uint8_t) *k, ITHARE_KSCOPE_DECLAREPARAM_INT2(unsigned) kbits/*128 or 256*/)
ITHARE_KSCOPE_BOUNDED_MINBYTES(2, CHACHA_MINKEYLEN)
{
	uint32_t constants32[4] = { 
		ITHARE_KSCOPE_FINTLIT(UINT32_C(0x6170'7865)), 
		ITHARE_KSCOPE_FINTLIT(UINT32_C(0x3320'646e)), 
		ITHARE_KSCOPE_FINTLIT(UINT32_C(0x7962'2d32)), 
		ITHARE_KSCOPE_FINTLIT(UINT32_C(0x6b20'6574)) };
	/* sigma:
			0x65, 0x78, 0x70, 0x61, 0x6e, 0x64, 0x20, 0x33,
			0x32, 0x2d, 0x62, 0x79, 0x74, 0x65, 0x20, 0x6b,
	*/

	x->input[4] = ITHARE_KSCOPE_U8TO32_LITTLE(k + 0);
	x->input[5] = ITHARE_KSCOPE_U8TO32_LITTLE(k + 4);
	x->input[6] = ITHARE_KSCOPE_U8TO32_LITTLE(k + 8);
	x->input[7] = ITHARE_KSCOPE_U8TO32_LITTLE(k + 12);
	if (kbits == ITHARE_KSCOPE_FINTLIT(256)) { /* recommended */
#ifdef ITHARE_KSCOPE_WORKAROUND_FOR_MSVC_BUG_199554
		k += 16;
#else
		k += ITHARE_KSCOPE_FINTLIT(16);
#endif
	} else { /* kbits == 128; NOT TESTED(!) */
		assert(kbits==128);
		constants32[1] -= ITHARE_KSCOPE_FINTLIT(UINT32_C(0x0200'0000));
		constants32[2] += ITHARE_KSCOPE_FINTLIT(UINT32_C(0x0000'0004));
		/* tau
			0x65, 0x78, 0x70, 0x61, 0x6e, 0x64, 0x20, 0x31,
			0x36, 0x2d, 0x62, 0x79, 0x74, 0x65, 0x20, 0x6b,
		};*/
	}
	x->input[8] = ITHARE_KSCOPE_U8TO32_LITTLE(k + 0);
	x->input[9] = ITHARE_KSCOPE_U8TO32_LITTLE(k + 4);
	x->input[10] = ITHARE_KSCOPE_U8TO32_LITTLE(k + 8);
	x->input[11] = ITHARE_KSCOPE_U8TO32_LITTLE(k + 12);
	//x->input[0] = ITHARE_KSCOPE_U8TO32_LITTLE(constants + 0);
	//x->input[1] = ITHARE_KSCOPE_U8TO32_LITTLE(constants + 4);
	//x->input[2] = ITHARE_KSCOPE_U8TO32_LITTLE(constants + 8);
	//x->input[3] = ITHARE_KSCOPE_U8TO32_LITTLE(constants + 12);
	x->input[0] = constants32[0];
	x->input[1] = constants32[1];
	x->input[2] = constants32[2];
	x->input[3] = constants32[3];
}

ITHARE_KSCOPE_DECLAREFUNC_WITHPARAMS_CLASS_2xINT
void chacha_ivsetup(ITHARE_KSCOPE_DECLAREPARAM_CLASS(ChaCha_ctx)* x, const ITHARE_KSCOPE_DECLAREPARAM_INT(uint8_t)* iv, const ITHARE_KSCOPE_DECLAREPARAM_INT2(uint8_t)* counter)
ITHARE_KSCOPE_BOUNDED_MINBYTES(2, CHACHA_NONCELEN)
ITHARE_KSCOPE_BOUNDED_MINBYTES(3, CHACHA_CTRLEN)
{
	x->input[12] = counter == NULL ? 0 : ITHARE_KSCOPE_U8TO32_LITTLE(counter + 0);
	x->input[13] = counter == NULL ? 0 : ITHARE_KSCOPE_U8TO32_LITTLE(counter + 4);
	x->input[14] = ITHARE_KSCOPE_U8TO32_LITTLE(iv + 0);
	x->input[15] = ITHARE_KSCOPE_U8TO32_LITTLE(iv + 4);
}

ITHARE_KSCOPE_DECLAREFUNC_WITHPARAMS_CLASS_3xINT
void chacha_encrypt_bytes(ITHARE_KSCOPE_DECLAREPARAM_CLASS(ChaCha_ctx)* x, const ITHARE_KSCOPE_DECLAREPARAM_INT(uint8_t)* m, ITHARE_KSCOPE_DECLAREPARAM_INT2(uint8_t)* c, ITHARE_KSCOPE_DECLAREPARAM_INT3(size_t) bytes)
ITHARE_KSCOPE_BOUNDED_BUFFER(2, 4)
ITHARE_KSCOPE_BOUNDED_BUFFER(3, 4)
{
	if (!bytes)
		return;

	ITHARE_KSCOPE_FINT(uint32_t) j0 = x->input[0];
	ITHARE_KSCOPE_FINT(uint32_t) j1 = x->input[1];
	ITHARE_KSCOPE_FINT(uint32_t) j2 = x->input[2];
	ITHARE_KSCOPE_FINT(uint32_t) j3 = x->input[3];
	ITHARE_KSCOPE_FINT(uint32_t) j4 = x->input[4];
	ITHARE_KSCOPE_FINT(uint32_t) j5 = x->input[5];
	ITHARE_KSCOPE_FINT(uint32_t) j6 = x->input[6];
	ITHARE_KSCOPE_FINT(uint32_t) j7 = x->input[7];
	ITHARE_KSCOPE_FINT(uint32_t) j8 = x->input[8];
	ITHARE_KSCOPE_FINT(uint32_t) j9 = x->input[9];
	ITHARE_KSCOPE_FINT(uint32_t) j10 = x->input[10];
	ITHARE_KSCOPE_FINT(uint32_t) j11 = x->input[11];
	ITHARE_KSCOPE_FINT(uint32_t) j12 = x->input[12];
	ITHARE_KSCOPE_FINT(uint32_t) j13 = x->input[13];
	ITHARE_KSCOPE_FINT(uint32_t) j14 = x->input[14];
	ITHARE_KSCOPE_FINT(uint32_t) j15 = x->input[15];

	for (;;) {
		ITHARE_KSCOPE_PTR_OF_SAME_TYPE_AS(c) ctarget = nullptr;
		ITHARE_KSCOPE_ARRAY_OF_SAME_TYPE_AS(m) tmpm[64] = {};
		ITHARE_KSCOPE_ARRAY_OF_SAME_TYPE_AS(c) tmpc[64] = {};
		if (bytes < ITHARE_KSCOPE_FINTLIT(64)) {
			for (ITHARE_KSCOPE_FINT(size_t) i = 0; i < bytes; ++i)
				tmpm[i] = m[i];
			m = tmpm;
			ctarget = c;
			c = tmpc;
		}
		ITHARE_KSCOPE_FINT(uint32_t) x0 = j0;
		ITHARE_KSCOPE_FINT(uint32_t) x1 = j1;
		ITHARE_KSCOPE_FINT(uint32_t) x2 = j2;
		ITHARE_KSCOPE_FINT(uint32_t) x3 = j3;
		ITHARE_KSCOPE_FINT(uint32_t) x4 = j4;
		ITHARE_KSCOPE_FINT(uint32_t) x5 = j5;
		ITHARE_KSCOPE_FINT(uint32_t) x6 = j6;
		ITHARE_KSCOPE_FINT(uint32_t) x7 = j7;
		ITHARE_KSCOPE_FINT(uint32_t) x8 = j8;
		ITHARE_KSCOPE_FINT(uint32_t) x9 = j9;
		ITHARE_KSCOPE_FINT(uint32_t) x10 = j10;
		ITHARE_KSCOPE_FINT(uint32_t) x11 = j11;
		ITHARE_KSCOPE_FINT(uint32_t) x12 = j12;
		ITHARE_KSCOPE_FINT(uint32_t) x13 = j13;
		ITHARE_KSCOPE_FINT(uint32_t) x14 = j14;
		ITHARE_KSCOPE_FINT(uint32_t) x15 = j15;
		for (ITHARE_KSCOPE_FINT(unsigned) i = 20; i > ITHARE_KSCOPE_FINTLIT(0); i -= 2) {
			ITHARE_KSCOPE_QUARTERROUND(x0, x4, x8, x12)
			ITHARE_KSCOPE_QUARTERROUND(x1, x5, x9, x13)
			ITHARE_KSCOPE_QUARTERROUND(x2, x6, x10, x14)
			ITHARE_KSCOPE_QUARTERROUND(x3, x7, x11, x15)
			ITHARE_KSCOPE_QUARTERROUND(x0, x5, x10, x15)
			ITHARE_KSCOPE_QUARTERROUND(x1, x6, x11, x12)
			ITHARE_KSCOPE_QUARTERROUND(x2, x7, x8, x13)
			ITHARE_KSCOPE_QUARTERROUND(x3, x4, x9, x14)
		}
		x0 = ITHARE_KSCOPE_PLUS(x0, j0);
		x1 = ITHARE_KSCOPE_PLUS(x1, j1);
		x2 = ITHARE_KSCOPE_PLUS(x2, j2);
		x3 = ITHARE_KSCOPE_PLUS(x3, j3);
		x4 = ITHARE_KSCOPE_PLUS(x4, j4);
		x5 = ITHARE_KSCOPE_PLUS(x5, j5);
		x6 = ITHARE_KSCOPE_PLUS(x6, j6);
		x7 = ITHARE_KSCOPE_PLUS(x7, j7);
		x8 = ITHARE_KSCOPE_PLUS(x8, j8);
		x9 = ITHARE_KSCOPE_PLUS(x9, j9);
		x10 = ITHARE_KSCOPE_PLUS(x10, j10);
		x11 = ITHARE_KSCOPE_PLUS(x11, j11);
		x12 = ITHARE_KSCOPE_PLUS(x12, j12);
		x13 = ITHARE_KSCOPE_PLUS(x13, j13);
		x14 = ITHARE_KSCOPE_PLUS(x14, j14);
		x15 = ITHARE_KSCOPE_PLUS(x15, j15);

		if (bytes < ITHARE_KSCOPE_FINTLIT(64)) {
			ITHARE_KSCOPE_U32TO8_LITTLE(x->ks + 0, x0);
			ITHARE_KSCOPE_U32TO8_LITTLE(x->ks + 4, x1);
			ITHARE_KSCOPE_U32TO8_LITTLE(x->ks + 8, x2);
			ITHARE_KSCOPE_U32TO8_LITTLE(x->ks + 12, x3);
			ITHARE_KSCOPE_U32TO8_LITTLE(x->ks + 16, x4);
			ITHARE_KSCOPE_U32TO8_LITTLE(x->ks + 20, x5);
			ITHARE_KSCOPE_U32TO8_LITTLE(x->ks + 24, x6);
			ITHARE_KSCOPE_U32TO8_LITTLE(x->ks + 28, x7);
			ITHARE_KSCOPE_U32TO8_LITTLE(x->ks + 32, x8);
			ITHARE_KSCOPE_U32TO8_LITTLE(x->ks + 36, x9);
			ITHARE_KSCOPE_U32TO8_LITTLE(x->ks + 40, x10);
			ITHARE_KSCOPE_U32TO8_LITTLE(x->ks + 44, x11);
			ITHARE_KSCOPE_U32TO8_LITTLE(x->ks + 48, x12);
			ITHARE_KSCOPE_U32TO8_LITTLE(x->ks + 52, x13);
			ITHARE_KSCOPE_U32TO8_LITTLE(x->ks + 56, x14);
			ITHARE_KSCOPE_U32TO8_LITTLE(x->ks + 60, x15);
		}

		x0 = ITHARE_KSCOPE_XOR(x0, ITHARE_KSCOPE_U8TO32_LITTLE(m + 0));
		x1 = ITHARE_KSCOPE_XOR(x1, ITHARE_KSCOPE_U8TO32_LITTLE(m + 4));
		x2 = ITHARE_KSCOPE_XOR(x2, ITHARE_KSCOPE_U8TO32_LITTLE(m + 8));
		x3 = ITHARE_KSCOPE_XOR(x3, ITHARE_KSCOPE_U8TO32_LITTLE(m + 12));
		x4 = ITHARE_KSCOPE_XOR(x4, ITHARE_KSCOPE_U8TO32_LITTLE(m + 16));
		x5 = ITHARE_KSCOPE_XOR(x5, ITHARE_KSCOPE_U8TO32_LITTLE(m + 20));
		x6 = ITHARE_KSCOPE_XOR(x6, ITHARE_KSCOPE_U8TO32_LITTLE(m + 24));
		x7 = ITHARE_KSCOPE_XOR(x7, ITHARE_KSCOPE_U8TO32_LITTLE(m + 28));
		x8 = ITHARE_KSCOPE_XOR(x8, ITHARE_KSCOPE_U8TO32_LITTLE(m + 32));
		x9 = ITHARE_KSCOPE_XOR(x9, ITHARE_KSCOPE_U8TO32_LITTLE(m + 36));
		x10 = ITHARE_KSCOPE_XOR(x10, ITHARE_KSCOPE_U8TO32_LITTLE(m + 40));
		x11 = ITHARE_KSCOPE_XOR(x11, ITHARE_KSCOPE_U8TO32_LITTLE(m + 44));
		x12 = ITHARE_KSCOPE_XOR(x12, ITHARE_KSCOPE_U8TO32_LITTLE(m + 48));
		x13 = ITHARE_KSCOPE_XOR(x13, ITHARE_KSCOPE_U8TO32_LITTLE(m + 52));
		x14 = ITHARE_KSCOPE_XOR(x14, ITHARE_KSCOPE_U8TO32_LITTLE(m + 56));
		x15 = ITHARE_KSCOPE_XOR(x15, ITHARE_KSCOPE_U8TO32_LITTLE(m + 60));

		j12 = ITHARE_KSCOPE_PLUSONE(j12);
		if (!j12) {
			j13 = ITHARE_KSCOPE_PLUSONE(j13);
			/*
			 * Stopping at 2^70 bytes per nonce is the user's
			 * responsibility.
			 */
		}

		ITHARE_KSCOPE_U32TO8_LITTLE(c + 0, x0);
		ITHARE_KSCOPE_U32TO8_LITTLE(c + 4, x1);
		ITHARE_KSCOPE_U32TO8_LITTLE(c + 8, x2);
		ITHARE_KSCOPE_U32TO8_LITTLE(c + 12, x3);
		ITHARE_KSCOPE_U32TO8_LITTLE(c + 16, x4);
		ITHARE_KSCOPE_U32TO8_LITTLE(c + 20, x5);
		ITHARE_KSCOPE_U32TO8_LITTLE(c + 24, x6);
		ITHARE_KSCOPE_U32TO8_LITTLE(c + 28, x7);
		ITHARE_KSCOPE_U32TO8_LITTLE(c + 32, x8);
		ITHARE_KSCOPE_U32TO8_LITTLE(c + 36, x9);
		ITHARE_KSCOPE_U32TO8_LITTLE(c + 40, x10);
		ITHARE_KSCOPE_U32TO8_LITTLE(c + 44, x11);
		ITHARE_KSCOPE_U32TO8_LITTLE(c + 48, x12);
		ITHARE_KSCOPE_U32TO8_LITTLE(c + 52, x13);
		ITHARE_KSCOPE_U32TO8_LITTLE(c + 56, x14);
		ITHARE_KSCOPE_U32TO8_LITTLE(c + 60, x15);

		if (bytes <= ITHARE_KSCOPE_FINTLIT(64)) {
			if (bytes < ITHARE_KSCOPE_FINTLIT(64)) {
				for (ITHARE_KSCOPE_FINT(size_t) i = 0; i < bytes; ++i)
					ctarget[i] = c[i];
			}
			x->input[12] = j12;
			x->input[13] = j13;
			x->unused = uint8_t(64 - bytes);
			return;
		}
		bytes -= 64;
		c += 64;
		m += 64;
	}
}

//undefining temporaries to avoid polluting macro namespace
#undef ITHARE_KSCOPE_QUARTERROUND

#undef ITHARE_KSCOPE_PLUSONE
#undef ITHARE_KSCOPE_PLUS
#undef ITHARE_KSCOPE_XOR
#undef ITHARE_KSCOPE_ROTATE

#undef ITHARE_KSCOPE_U32TO8_LITTLE
#undef ITHARE_KSCOPE_U8TO32_LITTLE

#undef ITHARE_KSCOPE_ROTL32

#undef ITHARE_KSCOPE_U32V
#undef ITHARE_KSCOPE_U8V

/* $OpenBSD: chacha.h,v 1.7 2015/12/09 14:07:55 bcook Exp $ */
/*
 * Copyright (c) 2014 Joel Sing <jsing@openbsd.org>
 *
 * Permission to use, copy, modify, and distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 */

/* $OpenBSD: chacha.c,v 1.7 2015/12/09 14:07:55 bcook Exp $ */
/*
 * Copyright (c) 2014 Joel Sing <jsing@openbsd.org>
 *
 * Permission to use, copy, modify, and distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 */

ITHARE_KSCOPE_DECLAREFUNC_WITHPARAMS_CLASS_2xINT
void ChaCha_set_key(ITHARE_KSCOPE_DECLAREPARAM_CLASS(ChaCha_ctx)* ctx, const ITHARE_KSCOPE_DECLAREPARAM_INT(uint8_t)* key, ITHARE_KSCOPE_DECLAREPARAM_INT2(uint32_t) keybits /*128 or 256*/)
{
	assert(keybits == 128 || keybits == 256);
	ITHARE_KSCOPE_FCALL(chacha_keysetup)(ctx, key, keybits);
	ctx->unused = 0;
}

ITHARE_KSCOPE_DECLAREFUNC_WITHPARAMS_CLASS_2xINT
void ChaCha_set_iv(ITHARE_KSCOPE_DECLAREPARAM_CLASS(ChaCha_ctx)* ctx, const ITHARE_KSCOPE_DECLAREPARAM_INT(uint8_t)* iv, const ITHARE_KSCOPE_DECLAREPARAM_INT2(uint8_t)* counter)
{
	ITHARE_KSCOPE_FCALL(chacha_ivsetup)(ctx, iv, counter);
	ctx->unused = 0;
}

ITHARE_KSCOPE_DECLAREFUNC_WITHPARAMS_CLASS_3xINT
void ChaCha(ITHARE_KSCOPE_DECLAREPARAM_CLASS(ChaCha_ctx)* ctx, ITHARE_KSCOPE_DECLAREPARAM_INT(uint8_t)* out, const ITHARE_KSCOPE_DECLAREPARAM_INT2(uint8_t)* in, ITHARE_KSCOPE_DECLAREPARAM_INT3(size_t) len_)
{
	ITHARE_KSCOPE_FINT(size_t) len = ITHARE_KSCOPE_USEPARAM_INT(len_);
	/* Consume remaining keystream, if any exists. */
	if (ctx->unused > 0) {
		auto k = ctx->ks + 64 - ctx->unused;
		size_t l = (len > ctx->unused) ? ITHARE_KSCOPE_VALUE(ctx->unused) : ITHARE_KSCOPE_VALUE(len);
		for (size_t i = 0; i < l; i++)
			*(out++) = *(in++) ^ *(k++);
		assert(l <= 255);
		ctx->unused -= uint8_t(l);
		len -= l;
	}

	ITHARE_KSCOPE_FCALL(chacha_encrypt_bytes)(ctx, in, out, len);
}

ITHARE_KSCOPE_DECLAREFUNC_WITHPARAMS_5xINT 
void CRYPTO_chacha_20(ITHARE_KSCOPE_DECLAREPARAM_INT(uint8_t)* out, const ITHARE_KSCOPE_DECLAREPARAM_INT2(uint8_t)* in, ITHARE_KSCOPE_DECLAREPARAM_INT3(size_t) len,
    const ITHARE_KSCOPE_DECLAREPARAM_INT4(uint8_t) key[32], const ITHARE_KSCOPE_DECLAREPARAM_INT5(uint8_t) iv[8], uint64_t counter)
{
	ITHARE_KSCOPE_KSCOPECLASS(ChaCha_ctx) ctx = {};

	/*
	 * chacha_ivsetup expects the counter to be in u8. Rather than
	 * converting size_t to u8 and then back again, pass a counter of
	 * NULL and manually assign it afterwards.
	 */
	ITHARE_KSCOPE_FCALL(chacha_keysetup)(&ctx, key, ITHARE_KSCOPE_FINTLITI(256));
	ITHARE_KSCOPE_FCALL(chacha_ivsetup)(&ctx, iv, ITHARE_KSCOPE_INTNULLPTR);
	if (counter != 0) {
		ctx.input[12] = (uint32_t)counter;
		ctx.input[13] = (uint32_t)(counter >> 32);
	}

	ITHARE_KSCOPE_FCALL(chacha_encrypt_bytes)(&ctx, in, out, len);
}

//wrappers for compile-time crypto; feel free to add more along the same lines as necessary
constexpr ChaCha_ctx<>
KSCOPE_CT_Chacha_set_key_iv(const uint8_t* key0, int keybits /*128 or 256*/, const uint8_t iv0[8], const uint8_t counter0[8]) {//combining Chacha_set_key() and Chacha_set_iv() to reduce number of constexpr vars for the user. If necessary - can be split back.
	ChaCha_ctx<> ctx = {};
	assert(keybits==128||keybits==256);
	auto key = kscope_int_arr_to_ct_kscope_int<64 /*maximum value*/>(key0,keybits/8 /*actual value*/);
	auto iv = kscope_int_arr_to_ct_kscope_int<8>(iv0);
	ITHARE_KSCOPE_CALL_AS_CONSTEXPR(ChaCha_set_key)(&ctx,key.arr, ITHARE_KSCOPE_INT_CONSTEXPR(int)(keybits));
	if(counter0==nullptr)
		ITHARE_KSCOPE_CALL_AS_CONSTEXPR(ChaCha_set_iv)(&ctx,iv.arr,ITHARE_KSCOPE_INTNULLPTR);
	else {
		auto counter = kscope_int_arr_to_ct_kscope_int<8>(counter0);
		ITHARE_KSCOPE_CALL_AS_CONSTEXPR(ChaCha_set_iv)(&ctx,iv.arr,counter.arr);
	}
	return ctx;
}

template<size_t N>
constexpr std::pair<ChaCha_ctx<>,KscopeArrayWrapper<uint8_t,N>>
KSCOPE_CT_Chacha(ChaCha_ctx<> ctx, const uint8_t (&in0)[N]) {
	auto in = kscope_int_arr_to_ct_kscope_int(in0);
	ITHARE_KSCOPE_INT_CONSTEXPR(uint8_t) out[N];
	ITHARE_KSCOPE_CALL_AS_CONSTEXPR(ChaCha)(&ctx, out, in.arr, ITHARE_KSCOPE_INT_CONSTEXPR(size_t)(N));
	KscopeArrayWrapper<uint8_t,N> ret = {};
	ithare::kscope::kscope_copyarr(ret.arr,out,N);
	return std::pair<ChaCha_ctx<>,KscopeArrayWrapper<uint8_t,N>>(ctx,ret);
}

}}} // namespace ithare::kscope::ssl

#endif //ithare_kscope_kaleidoscoped_ssl_crypto_chacha_h_included
