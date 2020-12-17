#include<ap_int.h>

const ap_uint<448> p434("2341F271773446CFC5FD681C520567BC65C783158AEA3FDC1767AE2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",16);

const ap_uint<448> p434x2("4683E4E2EE688D9F8BFAD038A40ACF78CB8F062B15D47FB82ECF5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE",16);

const ap_uint<448> p434p1("2341F271773446CFC5FD681C520567BC65C783158AEA3FDC1767AE3000000000000000000000000000000000000000000000000000000",16);

// Montgomery constant Montgomery_R2 = (2^448)^2 mod p434
const ap_uint<448> Montgomery_R2("25A89BCDD12A69E16A61C7686D9AABCD92BF2DDE347E175CC6AF8D6C7C0BAB27973F8311688DACEC7367768798C228E55B65DCD69B30",16);


typedef ap_uint<448> digit_t;
typedef ap_uint<450> digit_t1;
typedef ap_uint<896> digit_d; //double
typedef ap_int<224> digit_h; //half
typedef ap_int<225> digit_h1; //half
typedef ap_int<226> digit_h2; //half

typedef ap_int<112> digit_q; //quarter
typedef ap_int<113> digit_q1; //quarter
typedef ap_int<114> digit_q2; //quarter
typedef ap_uint<16> digit_16; //16bits
typedef ap_uint<17> digit_17; //16bits
typedef ap_uint<34> digit_34; //16bits

typedef digit_t  f2elm_t[2];   // Datatype for representing quadratic extension field elements GF(p434^2)

typedef struct { f2elm_t X; f2elm_t Z; } point_proj;  // Point representation in projective XZ Montgomery coordinates.
typedef point_proj point_proj_t[1];
