/********************************************************************************************
* Supersingular Isogeny Key Encapsulation Library
*
* Abstract: elliptic curve and isogeny functions
*********************************************************************************************/
#include "fp.h"

void xDBL(const point_proj_t P, point_proj_t Q, const f2elm_t A24plus, const f2elm_t C24)
{ // Doubling of a Montgomery point in projective coordinates (X:Z).
  // Input: projective Montgomery x-coordinates P = (X1:Z1), where x1=X1/Z1 and Montgomery curve constants A+2C and 4C.
  // Output: projective Montgomery x-coordinates Q = 2*P = (X2:Z2).
#pragma HLS inline recursive
#pragma HLS ALLOCATION instances=bc_mult_448 limit=2 function
#pragma HLS ALLOCATION instances=mp_mul limit=1 function
#pragma HLS ALLOCATION instances=rdc_mont limit=1 function
#pragma HLS ALLOCATION instances=Mul limit=110 core
#pragma HLS ALLOCATION instances=MulnS limit=110 core

    f2elm_t t0, t1;

    mp2_sub_p2(P->X, P->Z, t0);                     // t0 = X1-Z1
    mp2_add(P->X, P->Z, t1);                        // t1 = X1+Z1
    fp2sqr_mont(t0, t0);                            // t0 = (X1-Z1)^2
    fp2sqr_mont(t1, t1);                            // t1 = (X1+Z1)^2
    fp2mul_mont(C24, t0, Q->Z);                     // Z2 = C24*(X1-Z1)^2
    fp2mul_mont(t1, Q->Z, Q->X);                    // X2 = C24*(X1-Z1)^2*(X1+Z1)^2
    mp2_sub_p2(t1, t0, t1);                         // t1 = (X1+Z1)^2-(X1-Z1)^2
    fp2mul_mont(A24plus, t1, t0);                   // t0 = A24plus*[(X1+Z1)^2-(X1-Z1)^2]
    mp2_add(Q->Z, t0, Q->Z);                        // Z2 = A24plus*[(X1+Z1)^2-(X1-Z1)^2] + C24*(X1-Z1)^2
    fp2mul_mont(Q->Z, t1, Q->Z);                    // Z2 = [A24plus*[(X1+Z1)^2-(X1-Z1)^2] + C24*(X1-Z1)^2]*[(X1+Z1)^2-(X1-Z1)^2]
}

//
void eval_4_isog(point_proj_t P, f2elm_t coeff[3])
{ // Evaluates the isogeny at the point (X:Z) in the domain of the isogeny, given a 4-isogeny phi defined
  // by the 3 coefficients in coeff (computed in the function get_4_isog()).
  // Inputs: the coefficients defining the isogeny, and the projective point P = (X:Z).
  // Output: the projective point P = phi(P) = (X:Z) in the codomain.
#pragma HLS ALLOCATION instances=mp_mul limit=1 function
#pragma HLS ALLOCATION instances=mp2_add limit=2 function
#pragma HLS ALLOCATION instances=rdc_mont limit=1 function


	f2elm_t t0, t1;

    mp2_add(P->X, P->Z, t0);                        // t0 = X+Z
    mp2_sub_p2(P->X, P->Z, t1);                     // t1 = X-Z
    fp2mul_mont(t0, coeff[1], P->X);                // X = (X+Z)*coeff[1]
    fp2mul_mont(t1, coeff[2], P->Z);                // Z = (X-Z)*coeff[2]
    fp2mul_mont(t0, t1, t0);                        // t0 = (X+Z)*(X-Z)
    fp2mul_mont(coeff[0], t0, t0);                  // t0 = coeff[0]*(X+Z)*(X-Z)
    mp2_add(P->X, P->Z, t1);                        // t1 = (X-Z)*coeff[2] + (X+Z)*coeff[1]
    mp2_sub_p2(P->X, P->Z, P->Z);                   // Z = (X-Z)*coeff[2] - (X+Z)*coeff[1]
    fp2sqr_mont(t1, t1);                            // t1 = [(X-Z)*coeff[2] + (X+Z)*coeff[1]]^2
    fp2sqr_mont(P->Z, P->Z);                        // Z = [(X-Z)*coeff[2] - (X+Z)*coeff[1]]^2
    mp2_add(t1, t0, P->X);                          // X = coeff[0]*(X+Z)*(X-Z) + [(X-Z)*coeff[2] + (X+Z)*coeff[1]]^2
    mp2_sub_p2(P->Z, t0, t0);                       // t0 = [(X-Z)*coeff[2] - (X+Z)*coeff[1]]^2 - coeff[0]*(X+Z)*(X-Z)
    fp2mul_mont(P->X, t1, P->X);                    // Xfinal
    fp2mul_mont(P->Z, t0, P->Z);                    // Zfinal
}
