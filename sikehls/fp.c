//#include<ap_cint.h>
#include "constants434.h"


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
	*c = a * b;
}

void rdc_mont(digit_d ma, digit_t* mc)
{
	digit_d mask = 1<<448 - 1;
	digit_t m = (digit_t)(ma*(p434p1) & mask) ; //m=ma*P^-1 % R, R=2^448
	*mc = ((ma+m*p434) >> 448); // mc = (ma+m*p)/R
}










