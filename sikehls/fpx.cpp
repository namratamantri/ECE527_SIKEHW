#include "fp.h"
//////////////////////////////////
//#include<ap_cint.h>
//#include "constants434.h"
//#include "mult.cpp"

void mp_sub434_p2(const digit_t a, const digit_t b, digit_t* c)
{
#pragma HLS inline
	*c = a - b + p434x2;
}

void mp_sub434_p4(const digit_t a, const digit_t b, digit_t* c)
{
#pragma HLS inline
	*c = a - b + p434x4;
}

void fpadd434(const digit_t a, const digit_t b, digit_t* c)
{
#pragma HLS inline
	digit_t temp = a + b;
	if(temp>p434x2) temp = temp - p434x2;
	*c = temp;
}

void fpsub434(const digit_t a, const digit_t b, digit_t* c)
{
#pragma HLS inline
	digit_t temp = a - b;
	digit_t mask = 0;
	if(a < b) mask = 0 - (digit_t)1;
	*c = temp + (p434x2 & mask);
}

void fpneg434(digit_t* a)
{
#pragma HLS inline
	digit_t temp = *a;
	*a = p434x2 - temp;
}

void fpdiv2_434(const digit_t a, digit_t* c)
{
#pragma HLS inline
	*c = a;
	if(a & (digit_t)1) *c = a + p434;
	*c = *c >> 1;
}

void fpcorrection434(digit_t* a)
{
#pragma HLS inline
	digit_t temp = *a - p434;
	if(*a >= p434) *a = temp;
}


void mp_mul(const digit_t a, const digit_t b, digit_d* c)
{
#pragma HLS inline off
//#pragma HLS ALLOCATION instances=Mul limit=20 core
	//*c = a * b;
	bc_mult_448(a,b,c);
}

void rdc_mont(digit_d ma, digit_t* mc)
{
#pragma HLS inline off
	digit_d one = 1;
	digit_d mask = one<<448 - 1;
	digit_t ma_trunc = (digit_t) ma;
	digit_d mult;
	bc_mult_448(ma_trunc,p434p1,&mult);
	digit_t m = (digit_t)(mult & mask) ; //m=ma*P^-1 % R, R=2^448
	bc_mult_448(m,p434,&mult);
	digit_d sum = (digit_d)ma + mult;
	*mc = (digit_t)(sum >> 448); // mc = (ma+m*p)/R
}


////////////////////////////////////////////////////////
void fpmul_mont(const digit_t ma, const digit_t mb, digit_t* mc)
{ //  c = a*b mod p.
#pragma HLS inline
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

void mp2_add(const f2elm_t a, const f2elm_t b, f2elm_t c)
{ // GF(p^2) addition without correction, c = a+b in GF(p^2).
//#pragma HLS inline
	c[0] = a[0] + b[0];
	c[1] = a[1] + b[1];
}


void mp2_sub_p2(const f2elm_t a, const f2elm_t b, f2elm_t c)
{ // GF(p^2) subtraction with correction with 2*p, c = a-b+2p in GF(p^2).
//#pragma HLS inline
    mp_sub434_p2(a[0], b[0], &c[0]);
    mp_sub434_p2(a[1], b[1], &c[1]);
}


void mp2_sub_p4(const f2elm_t a, const f2elm_t b, f2elm_t c)
{ // GF(p^2) subtraction with correction with 4*p, c = a-b+4p in GF(p^2).
#pragma HLS inline
    mp_sub434_p4(a[0], b[0], &c[0]);
    mp_sub434_p4(a[1], b[1], &c[1]);
}


void fp2sqr_mont(const f2elm_t a, f2elm_t c)
{ // GF(p^2) squaring using Montgomery arithmetic, c = a^2 in GF(p^2).
  // Inputs: a = a0+a1*i, where a0, a1 are in [0, 2*p-1]
  // Output: c = c0+c1*i, where c0, c1 are in [0, 2*p-1]
#pragma HLS ALLOCATION instances=fpmul_mont limit=1 function
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
	fpcorrection434(&c[0]);
	fpmul_mont(ma[1], one, &c[1]);
	fpcorrection434(&c[1]);
}

void fpinv_chain_mont(digit_t* a)
{ // Chain to compute a^(p-3)/4 using Montgomery arithmetic.
    unsigned int i, j;
    digit_t t[31], tt;

    // Precomputed table
    fpsqr_mont(*a, &tt);
    fpmul_mont(*a, tt, &t[0]);
    for (i = 0; i <= 29; i++) fpmul_mont(t[i], tt, &t[i+1]);

    tt = *a;
    for (i = 0; i < 7; i++) fpsqr_mont(tt, &tt);
    fpmul_mont(t[5], tt, &tt);
    for (i = 0; i < 10; i++) fpsqr_mont(tt, &tt);
    fpmul_mont(t[14], tt, &tt);
    for (i = 0; i < 6; i++) fpsqr_mont(tt, &tt);
    fpmul_mont(t[3], tt, &tt);
    for (i = 0; i < 6; i++) fpsqr_mont(tt, &tt);
    fpmul_mont(t[23], tt, &tt);
    for (i = 0; i < 6; i++) fpsqr_mont(tt, &tt);
    fpmul_mont(t[13], tt, &tt);
    for (i = 0; i < 6; i++) fpsqr_mont(tt, &tt);
    fpmul_mont(t[24], tt, &tt);
    for (i = 0; i < 6; i++) fpsqr_mont(tt, &tt);
    fpmul_mont(t[7], tt, &tt);
    for (i = 0; i < 8; i++) fpsqr_mont(tt, &tt);
    fpmul_mont(t[12], tt, &tt);
    for (i = 0; i < 8; i++) fpsqr_mont(tt, &tt);
    fpmul_mont(t[30], tt, &tt);
    for (i = 0; i < 6; i++) fpsqr_mont(tt, &tt);
    fpmul_mont(t[1], tt, &tt);
    for (i = 0; i < 6; i++) fpsqr_mont(tt, &tt);
    fpmul_mont(t[30], tt, &tt);
    for (i = 0; i < 7; i++) fpsqr_mont(tt, &tt);
    fpmul_mont(t[21], tt, &tt);
    for (i = 0; i < 9; i++) fpsqr_mont(tt, &tt);
    fpmul_mont(t[2], tt, &tt);
    for (i = 0; i < 9; i++) fpsqr_mont(tt, &tt);
    fpmul_mont(t[19], tt, &tt);
    for (i = 0; i < 9; i++) fpsqr_mont(tt, &tt);
    fpmul_mont(t[1], tt, &tt);
    for (i = 0; i < 7; i++) fpsqr_mont(tt, &tt);
    fpmul_mont(t[24], tt, &tt);
    for (i = 0; i < 6; i++) fpsqr_mont(tt, &tt);
    fpmul_mont(t[26], tt, &tt);
    for (i = 0; i < 6; i++) fpsqr_mont(tt, &tt);
    fpmul_mont(t[16], tt, &tt);
    for (i = 0; i < 7; i++) fpsqr_mont(tt, &tt);
    fpmul_mont(t[10], tt, &tt);
    for (i = 0; i < 7; i++) fpsqr_mont(tt, &tt);
    fpmul_mont(t[6], tt, &tt);
    for (i = 0; i < 7; i++) fpsqr_mont(tt, &tt);
    fpmul_mont(t[0], tt, &tt);
    for (i = 0; i < 9; i++) fpsqr_mont(tt, &tt);
    fpmul_mont(t[20], tt, &tt);
    for (i = 0; i < 8; i++) fpsqr_mont(tt, &tt);
    fpmul_mont(t[9], tt, &tt);
    for (i = 0; i < 6; i++) fpsqr_mont(tt, &tt);
    fpmul_mont(t[25], tt, &tt);
    for (i = 0; i < 9; i++) fpsqr_mont(tt, &tt);
    fpmul_mont(t[30], tt, &tt);
    for (i = 0; i < 6; i++) fpsqr_mont(tt, &tt);
    fpmul_mont(t[26], tt, &tt);
    for (i = 0; i < 6; i++) fpsqr_mont(tt, &tt);
    fpmul_mont(a, tt, &tt);
    for (i = 0; i < 7; i++) fpsqr_mont(tt, &tt);
    fpmul_mont(t[28], tt, &tt);
    for (i = 0; i < 6; i++) fpsqr_mont(tt, &tt);
    fpmul_mont(t[6], tt, &tt);
    for (i = 0; i < 6; i++) fpsqr_mont(tt, &tt);
    fpmul_mont(t[10], tt, &tt);
    for (i = 0; i < 9; i++) fpsqr_mont(tt, &tt);
    fpmul_mont(t[22], tt, &tt);
    for (j = 0; j < 35; j++) {
        for (i = 0; i < 6; i++) fpsqr_mont(tt, &tt);
        fpmul_mont(t[30], tt, &tt);
    }
    *a = tt;
}

void fpinv_mont(digit_t* a)
{ // Field inversion using Montgomery arithmetic, a = a^(-1)*R mod p.
	digit_t tt;
    tt = *a;
    fpinv_chain_mont(&tt); ////////////////
    fpsqr_mont(tt, &tt);
    fpsqr_mont(tt, &tt);
    fpmul_mont(*a, tt, a);
}

