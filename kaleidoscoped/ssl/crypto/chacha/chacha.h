//ithare::kscope chacha.h 
//  kaleidoscoped version of crypto/chacha/chacha-merged.c, include/openssl/chacha.h, and crypto/chacha/chacha.c from LibreSSL 2.6.4

#ifndef ithare_kscope_kaleidoscoped_ssl_crypto_chacha_h_included
#define ithare_kscope_kaleidoscoped_ssl_crypto_chacha_h_included

#include "../../../../src/kscope.h"

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
	uint32_t input[16];
	uint8_t ks[CHACHA_BLOCKLEN];
	uint8_t unused;
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

/* Initialise with "expand 32-byte k". */
constexpr uint8_t chacha_sigma[16] = {
	0x65, 0x78, 0x70, 0x61, 0x6e, 0x64, 0x20, 0x33,
	0x32, 0x2d, 0x62, 0x79, 0x74, 0x65, 0x20, 0x6b,
};

/* Initialise with "expand 16-byte k". */
constexpr uint8_t chacha_tau[16] = {
	0x65, 0x78, 0x70, 0x61, 0x6e, 0x64, 0x20, 0x31,
	0x36, 0x2d, 0x62, 0x79, 0x74, 0x65, 0x20, 0x6b,
};

ITHARE_KSCOPE_DECLAREFUNC_WITHPARAMS_CLASS_INT
void chacha_keysetup(ITHARE_KSCOPE_DECLAREPARAM_CLASS(ChaCha_ctx) *x, const ITHARE_KSCOPE_DECLAREPARAM_INT(uint8_t) *k, unsigned kbits/*128 or 256*/)
ITHARE_KSCOPE_BOUNDED_MINBYTES(2, CHACHA_MINKEYLEN)
{
	const uint8_t* constants = nullptr;

	x->input[4] = ITHARE_KSCOPE_U8TO32_LITTLE(k + 0);
	x->input[5] = ITHARE_KSCOPE_U8TO32_LITTLE(k + 4);
	x->input[6] = ITHARE_KSCOPE_U8TO32_LITTLE(k + 8);
	x->input[7] = ITHARE_KSCOPE_U8TO32_LITTLE(k + 12);
	if (kbits == 256) { /* recommended */
		k += 16;
		constants = chacha_sigma;
	} else { /* kbits == 128 */
		assert(kbits==128);
		constants = chacha_tau;
	}
	x->input[8] = ITHARE_KSCOPE_U8TO32_LITTLE(k + 0);
	x->input[9] = ITHARE_KSCOPE_U8TO32_LITTLE(k + 4);
	x->input[10] = ITHARE_KSCOPE_U8TO32_LITTLE(k + 8);
	x->input[11] = ITHARE_KSCOPE_U8TO32_LITTLE(k + 12);
	x->input[0] = ITHARE_KSCOPE_U8TO32_LITTLE(constants + 0);
	x->input[1] = ITHARE_KSCOPE_U8TO32_LITTLE(constants + 4);
	x->input[2] = ITHARE_KSCOPE_U8TO32_LITTLE(constants + 8);
	x->input[3] = ITHARE_KSCOPE_U8TO32_LITTLE(constants + 12);
}

ITHARE_KSCOPE_DECLAREFUNC_WITHPARAMS_CLASS
void chacha_ivsetup(ITHARE_KSCOPE_DECLAREPARAM_CLASS(ChaCha_ctx)* x, const uint8_t* iv, const uint8_t* counter)
ITHARE_KSCOPE_BOUNDED_MINBYTES(2, CHACHA_NONCELEN)
ITHARE_KSCOPE_BOUNDED_MINBYTES(3, CHACHA_CTRLEN)
{
	x->input[12] = counter == NULL ? 0 : ITHARE_KSCOPE_U8TO32_LITTLE(counter + 0);
	x->input[13] = counter == NULL ? 0 : ITHARE_KSCOPE_U8TO32_LITTLE(counter + 4);
	x->input[14] = ITHARE_KSCOPE_U8TO32_LITTLE(iv + 0);
	x->input[15] = ITHARE_KSCOPE_U8TO32_LITTLE(iv + 4);
}

ITHARE_KSCOPE_DECLAREFUNC_WITHPARAMS_CLASS
void chacha_encrypt_bytes(ITHARE_KSCOPE_DECLAREPARAM_CLASS(ChaCha_ctx)* x, const uint8_t* m, uint8_t* c, size_t bytes)
ITHARE_KSCOPE_BOUNDED_BUFFER(2, 4)
ITHARE_KSCOPE_BOUNDED_BUFFER(3, 4)
{
	if (!bytes)
		return;

	uint32_t j0 = x->input[0];
	uint32_t j1 = x->input[1];
	uint32_t j2 = x->input[2];
	uint32_t j3 = x->input[3];
	uint32_t j4 = x->input[4];
	uint32_t j5 = x->input[5];
	uint32_t j6 = x->input[6];
	uint32_t j7 = x->input[7];
	uint32_t j8 = x->input[8];
	uint32_t j9 = x->input[9];
	uint32_t j10 = x->input[10];
	uint32_t j11 = x->input[11];
	uint32_t j12 = x->input[12];
	uint32_t j13 = x->input[13];
	uint32_t j14 = x->input[14];
	uint32_t j15 = x->input[15];

	for (;;) {
		uint8_t* ctarget = nullptr;
		uint8_t tmp[64] = {};
		if (bytes < 64) {
			for (size_t i = 0; i < bytes; ++i)
				tmp[i] = m[i];
			m = tmp;
			ctarget = c;
			c = tmp;
		}
		uint32_t x0 = j0;
		uint32_t x1 = j1;
		uint32_t x2 = j2;
		uint32_t x3 = j3;
		uint32_t x4 = j4;
		uint32_t x5 = j5;
		uint32_t x6 = j6;
		uint32_t x7 = j7;
		uint32_t x8 = j8;
		uint32_t x9 = j9;
		uint32_t x10 = j10;
		uint32_t x11 = j11;
		uint32_t x12 = j12;
		uint32_t x13 = j13;
		uint32_t x14 = j14;
		uint32_t x15 = j15;
		for (unsigned i = 20; i > 0; i -= 2) {
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

		if (bytes < 64) {
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

		if (bytes <= 64) {
			if (bytes < 64) {
				for (size_t i = 0; i < bytes; ++i)
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

ITHARE_KSCOPE_DECLAREFUNC_WITHPARAMS_CLASS_INT
void ChaCha_set_key(ITHARE_KSCOPE_DECLAREPARAM_CLASS(ChaCha_ctx)* ctx, const ITHARE_KSCOPE_DECLAREPARAM_INT(uint8_t)* key, uint32_t keybits /*128 or 256*/)
{
	assert(keybits == 128 || keybits == 256);
	chacha_keysetup(ctx, key, keybits);
	ctx->unused = 0;
}

ITHARE_KSCOPE_DECLAREFUNC_WITHPARAMS_CLASS
void ChaCha_set_iv(ITHARE_KSCOPE_DECLAREPARAM_CLASS(ChaCha_ctx)* ctx, const uint8_t* iv, const uint8_t* counter)
{
	chacha_ivsetup(ctx, iv, counter);
	ctx->unused = 0;
}

ITHARE_KSCOPE_DECLAREFUNC_WITHPARAMS_CLASS
void ChaCha(ITHARE_KSCOPE_DECLAREPARAM_CLASS(ChaCha_ctx)* ctx, uint8_t* out, const uint8_t* in, size_t len)
{
	/* Consume remaining keystream, if any exists. */
	if (ctx->unused > 0) {
		uint8_t* k = ctx->ks + 64 - ctx->unused;
		size_t l = (len > ctx->unused) ? ctx->unused : len;
		for (size_t i = 0; i < l; i++)
			*(out++) = *(in++) ^ *(k++);
		assert(l <= 255);
		ctx->unused -= uint8_t(l);
		len -= l;
	}

	chacha_encrypt_bytes(ctx, in, out, len);
}

ITHARE_KSCOPE_DECLAREFUNC_WITHPARAMS_INT 
void CRYPTO_chacha_20(uint8_t* out, const uint8_t* in, size_t len,
    const ITHARE_KSCOPE_DECLAREPARAM_INT(uint8_t) key[32], const uint8_t iv[8], uint64_t counter)
{
	ITHARE_KSCOPE_KSCOPECLASS(ChaCha_ctx) ctx = {};

	/*
	 * chacha_ivsetup expects the counter to be in u8. Rather than
	 * converting size_t to u8 and then back again, pass a counter of
	 * NULL and manually assign it afterwards.
	 */
	ITHARE_KSCOPE_FCALL(chacha_keysetup)(&ctx, key, 256);
	chacha_ivsetup(&ctx, iv, NULL);
	if (counter != 0) {
		ctx.input[12] = (uint32_t)counter;
		ctx.input[13] = (uint32_t)(counter >> 32);
	}

	chacha_encrypt_bytes(&ctx, in, out, len);
}


}}} // namespace ithare::kscope::ssl

#endif //ithare_kscope_kaleidoscoped_ssl_crypto_chacha_h_included
