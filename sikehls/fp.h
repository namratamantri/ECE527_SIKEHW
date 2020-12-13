#include "constants434.h"
void mp_sub434_p2(const digit_t a, const digit_t b, digit_t* c);
void mp_sub434_p4(const digit_t a, const digit_t b, digit_t* c);
void fpadd434(const digit_t a, const digit_t b, digit_t* c);
void fpsub434(const digit_t a, const digit_t b, digit_t* c);
void fpneg434(digit_t* a);
void fpdiv2_434(const digit_t a, digit_t* c);
void fpcorrection434(digit_t* a);
void mp_mul(const digit_t a, const digit_t b, digit_d* c);
void rdc_mont(digit_d ma, digit_t* mc);
void fpmul_mont(const digit_t ma, const digit_t mb, digit_t* mc);
void fpsqr_mont(const digit_t ma, digit_t* mc);
void fp2add(const f2elm_t a, const f2elm_t b, f2elm_t c);
void fp2sub(const f2elm_t a, const f2elm_t b, f2elm_t c);
void fp2div2(const f2elm_t a, f2elm_t c);
void fp2correction(f2elm_t a);
void mp2_add(const f2elm_t a, const f2elm_t b, f2elm_t c);
void mp2_sub_p2(const f2elm_t a, const f2elm_t b, f2elm_t c);
void mp2_sub_p4(const f2elm_t a, const f2elm_t b, f2elm_t c);
void fp2sqr_mont(const f2elm_t a, f2elm_t c);
void fp2mul_mont(const f2elm_t a, const f2elm_t b, f2elm_t c);
void fp2inv_mont(f2elm_t a);
void to_fp2mont(const f2elm_t a, f2elm_t mc);
void from_fp2mont(const f2elm_t ma, f2elm_t c);
void fpinv_chain_mont(digit_t* a);
void fpinv_mont(digit_t* a);
void koa_mult(digit_t a,digit_t b, digit_d* c);
void bc_mult_448(digit_t a,digit_t b, digit_d* c);
