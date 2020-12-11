#include "fp.c"

void fpmul_mont(const digit_t ma, const digit_t mb, digit_t* mc)
{ //  c = a*b mod p.
    digit_d temp ;

    mp_mul(ma, mb, &temp);
    rdc_mont(temp, mc);
}


void fpsqr_mont(const digit_t ma, digit_t* mc)
{ // c = a^2 mod p.
	digit_d temp ;

    mp_mul(ma, ma, &temp);
    rdc_mont(temp, mc);
}


void fpinv_mont(digit_t* a)
{ // Field inversion using Montgomery arithmetic, a = a^(-1)*R mod p.
	digit_t tt;
    tt = *a;
    fpinv_chain_mont(tt); ////////////////
    fpsqr_mont(tt, tt);
    fpsqr_mont(tt, tt);
    fpmul_mont(a, tt, &a);
}

void fp2add(const f2elm_t a, const f2elm_t b, f2elm_t c)
{ // GF(p^2) addition, c = a+b in GF(p^2).
#pragma HLS inline
    fpadd434(a[0], b[0], &c[0]);
    fpadd434(a[1], b[1], &c[1]);
}


void fp2sub(const f2elm_t a, const f2elm_t b, f2elm_t c)
{ // GF(p^2) subtraction, c = a-b in GF(p^2).
#pragma HLS inline
    fpsub434(a[0], b[0], &c[0]);
    fpsub434(a[1], b[1], &c[1]);
}


void fp2div2(const f2elm_t a, f2elm_t c)
{ // GF(p^2) division by two, c = a/2  in GF(p^2).
#pragma HLS inline
    fpdiv2_434(a[0], &c[0]);
    fpdiv2_434(a[1], &c[1]);
}


void fp2correction(f2elm_t a)
{ // Modular correction, a = a in GF(p^2).
#pragma HLS inline
    fpcorrection434(&a[0]);
    fpcorrection434(&a[1]);
}

static void mp2_add(const f2elm_t a, const f2elm_t b, f2elm_t c)
{ // GF(p^2) addition without correction, c = a+b in GF(p^2).
#pragma HLS inline
	c[0] = a[0] + b[0];
	c[1] = a[1] + b[1];
}


static void mp2_sub_p2(const f2elm_t a, const f2elm_t b, f2elm_t c)
{ // GF(p^2) subtraction with correction with 2*p, c = a-b+2p in GF(p^2).
#pragma HLS inline
    mp_sub_p2(a[0], b[0], &c[0]);
    mp_sub_p2(a[1], b[1], &c[1]);
}


static void mp2_sub_p4(const f2elm_t a, const f2elm_t b, f2elm_t c)
{ // GF(p^2) subtraction with correction with 4*p, c = a-b+4p in GF(p^2).
#pragma HLS inline
    mp_sub_p4(a[0], b[0], &c[0]);
    mp_sub_p4(a[1], b[1], &c[1]);
}


void fp2sqr_mont(const f2elm_t a, f2elm_t c)
{ // GF(p^2) squaring using Montgomery arithmetic, c = a^2 in GF(p^2).
  // Inputs: a = a0+a1*i, where a0, a1 are in [0, 2*p-1]
  // Output: c = c0+c1*i, where c0, c1 are in [0, 2*p-1]
    digit_t t1, t2, t3;

    t1 = a[0] + a[1];                      // t1 = a0+a1
    mp_sub434_p4(a[0], a[1], &t2);         // t2 = a0-a1
    t3 = a[0] + a[0];                      // t3 = 2a0
    fpmul_mont(t1, t2, &c[0]);                        // c0 = (a0+a1)(a0-a1)
    fpmul_mont(t3, a[1], &c[1]);                      // c1 = 2a0*a1
}


void fp2mul_mont(const f2elm_t a, const f2elm_t b, f2elm_t c)
{ // GF(p^2) multiplication using Montgomery arithmetic, c = a*b in GF(p^2).
  // Inputs: a = a0+a1*i and b = b0+b1*i, where a0, a1, b0, b1 are in [0, 2*p-1]
  // Output: c = c0+c1*i, where c0, c1 are in [0, 2*p-1]
    digit_t t1, t2;
    digit_d tt1, tt2, tt3;

    t1 = (a[0] + a[1]);                              // t1 = a0+a1
    t2 = (b[0] + b[1]);                              // t2 = b0+b1
    mp_mul(a[0], b[0], &tt1);                        // tt1 = a0*b0
    mp_mul(a[1], b[1], &tt2);                        // tt2 = a1*b1
    mp_mul(t1, t2, &tt3);                            // tt3 = (a0+a1)*(b0+b1)
    tt3 = (tt1 - tt2);                               // tt3 = (a0+a1)*(b0+b1) - a0*b0 - a1*b1
    tt1 = (tt1 - tt2);                               // tt1 = a0*b0 - a1*b1 + p*2^MAXBITS_FIELD if a0*b0 - a1*b1 < 0, else tt1 = a0*b0 - a1*b1
    rdc_mont(tt3, &c[1]);                             // c[1] = (a0+a1)*(b0+b1) - a0*b0 - a1*b1
    rdc_mont(tt1, &c[0]);                             // c[0] = a0*b0 - a1*b1
}

void fp2inv_mont(f2elm_t a)
{// GF(p^2) inversion using Montgomery arithmetic, a = (a0-i*a1)/(a0^2+a1^2).
    f2elm_t t1;

    fpsqr_mont(a[0], &t1[0]);                         // t10 = a0^2
    fpsqr_mont(a[1], &t1[1]);                         // t11 = a1^2
    fpadd434(t1[0], t1[1], &t1[0]);                      // t10 = a0^2+a1^2
    fpinv_mont(&t1[0]);                               // t10 = (a0^2+a1^2)^-1
    fpneg434(&a[1]);                                     // a = a0-i*a1
    fpmul_mont(a[0], t1[0], &a[0]);
    fpmul_mont(a[1], t1[0], &a[1]);                   // a = (a0-i*a1)*(a0^2+a1^2)^-1
}


void to_fp2mont(const f2elm_t a, f2elm_t mc)
{ // Conversion of a GF(p^2) element to Montgomery representation,
  // mc_i = a_i*R^2*R^(-1) = a_i*R in GF(p^2).
#pragma HLS inline
	fpmul_mont(a[0], Montgomery_R2, &mc[0]);
	fpmul_mont(a[1], Montgomery_R2, &mc[1]);
}


void from_fp2mont(const f2elm_t ma, f2elm_t c)
{ // Conversion of a GF(p^2) element from Montgomery representation to standard representation,
  // c_i = ma_i*R^(-1) = a_i in GF(p^2).
#pragma HLS inline
	digit_t one = 1;
	fpmul_mont(ma[0], one, &c[0]);
	fpcorrection(&c[0]);
	fpmul_mont(ma[1], one, &c[1]);
	fpcorrection(&c[1]);
}

////////////////////////////////////////////////////////////////////

void fp2inv_mont(f2elm_t a)
{// GF(p^2) inversion using Montgomery arithmetic, a = (a0-i*a1)/(a0^2+a1^2).
    f2elm_t t1;

    fpsqr_mont(a[0], &t1[0]);                         // t10 = a0^2
    fpsqr_mont(a[1], &t1[1]);                         // t11 = a1^2
    fpadd434(t1[0], t1[1], &t1[0]);                      // t10 = a0^2+a1^2
    fpinv_mont(&t1[0]);                               // t10 = (a0^2+a1^2)^-1
    fpneg434(&a[1]);                                     // a = a0-i*a1
    fpmul_mont(a[0], t1[0], &a[0]);
    fpmul_mont(a[1], t1[0], &a[1]);                   // a = (a0-i*a1)*(a0^2+a1^2)^-1
}




