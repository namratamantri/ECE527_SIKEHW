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




/////////////////////////////////////////////////////////////////////////////

//broadcast multiplier for 114 bits. divides into 7 for parallel 17 bit multiplications
//void bc_mult_2(digit_q2 ta,digit_q2 tb, ap_int<228>* c){
//#pragma HLS inline
//	digit_34 partial_products[7];
//	ap_int<119> a = (ap_int<119>)ta;
//	ap_int<119> b = (ap_int<119>)tb;
//	digit_17 ai[7];
//	digit_17 bi[7];
//	ap_int<228> sum[7];
//#pragma HLS ARRAY_PARTITION variable=ai complete
//#pragma HLS ARRAY_PARTITION variable=bi complete
//#pragma HLS ARRAY_PARTITION variable=sum complete
//
//
//	loopb21: for(int i = 0; i<7; i++){
//#pragma HLS unroll
//		ai[i] = a.range(i*17+16,i*17);
//		bi[i] = b.range(i*17+16,i*17);
//		sum[i] = 0;
//	}
//
//	loopb22: for(int i = 0;i<7;i++){
//#pragma HLS pipeline
//		loopb23: for(int j =0; j<7;j++){
//#pragma HLS unroll
//			partial_products[j] = ai[j]*bi[i];
//			sum[j] += (digit_h)partial_products[j]<<((i+j)*7);
//		}
//	}
//
//	ap_int<228> mult=0;
//	mult = sum[0] + sum[1] + sum[2] + sum[3] + sum[4] + sum[5] + sum[6];
////	for(int i=0;i<7;i++){
////		mult += sum[i];
////	}
//	*c = mult;
//}
//
//
////broadcast multiplier for 113 bits. divides into 7 for parallel 17 bit multiplications
//void bc_mult_1(const digit_q1 ta,const digit_q1 tb, digit_h2* c){
//#pragma HLS inline
//	digit_34 partial_products[7];
//	ap_int<119> a = (ap_int<119>)ta;
//	ap_int<119> b = (ap_int<119>)tb;
//	digit_17 ai[7];
//	digit_17 bi[7];
//	digit_h2 sum[7];
//#pragma HLS ARRAY_PARTITION variable=ai complete
//#pragma HLS ARRAY_PARTITION variable=bi complete
//#pragma HLS ARRAY_PARTITION variable=sum complete
//
//
//	loopb11 : for(int i = 0; i<7; i++){
//#pragma HLS unroll
//		ai[i] = a.range(i*17+16,i*17);
//		bi[i] = b.range(i*17+16,i*17);
//		sum[i] = 0;
//	}
//
//	loopb12: for(int i = 0;i<7;i++){
//#pragma HLS pipeline
//		loopb13: for(int j =0; j<7;j++){
//#pragma HLS unroll
//			partial_products[j] = ai[j]*bi[i];
//			sum[j] += (digit_h)partial_products[j]<<((i+j)*7);
//		}
//	}
//
//	digit_h2 mult=0;
////	for(int i=0;i<7;i++){
////		mult += sum[i];
////	}
//	mult = sum[0] + sum[1] + sum[2] + sum[3] + sum[4] + sum[5] + sum[6];
//	*c = mult;
//}
//
////broadcast multiplier for 112 bits. divides into 7 for parallel 16 bit multiplications
//void bc_mult(const digit_q a,const digit_q b, digit_h* c){
//#pragma HLS inline
//	unsigned int partial_products[7];
//	digit_16 ai[7];
//	digit_16 bi[7];
//	digit_h sum[7];
//#pragma HLS ARRAY_PARTITION variable=ai complete
//#pragma HLS ARRAY_PARTITION variable=bi complete
//#pragma HLS ARRAY_PARTITION variable=sum complete
//
//	loopb1: for(int i = 0; i<7; i++){
//#pragma HLS unroll
//		ai[i] = a.range(i*16+15,i*16);
//		bi[i] = b.range(i*16+15,i*16);
//		sum[i] = 0;
//	}
//
//	loopb2: for(int i = 0;i<7;i++){
//#pragma HLS pipeline
//		loopb3: for(int j =0; j<7;j++){
//#pragma HLS unroll
//			partial_products[j] = ai[j]*bi[i];
//			sum[j] += (digit_h)partial_products[j]<<((i+j)*7);
//		}
//	}
//
//	digit_h mult=0;
////	for(int i=0;i<7;i++){
////		mult += sum[i];
////	}
//	mult = sum[0] + sum[1] + sum[2] + sum[3] + sum[4] + sum[5] + sum[6];
//
//
//	*c = mult;
//
//}
//
////koa mult for 225 bit number
//void koa_mult_h1(const digit_h1 a,const digit_h1 b, digit_t1* c){
//#pragma HLS inline
//	digit_q ah = a.range(224,113);
//	digit_q1 al = a.range(112,0);
//	digit_q bh = a.range(224,113);
//	digit_q1 bl = a.range(112,0);
//	digit_q2 ahl = (digit_q2) ah + al;
//	digit_q2 bhl = (digit_q2) bh + bl;
//
//
//	digit_h a0;
//	digit_h2 a2;
//	ap_int<228> a1;
//	bc_mult(ah,bh,&a0);
//	bc_mult_1(al,bl,&a2);
//	bc_mult_2(ahl,bhl,&a1);
//
//	digit_t1 temp1 = (digit_t1)a0 << 226;
//	digit_t1 temp2 = (digit_t1)(a1 - a0 - a2) << 113;
//	*c = temp1 + temp2 + a2;
//}
//
////koa mult for 224 bit number
//void koa_mult_h(digit_h a,digit_h b, digit_t* c){
//#pragma HLS inline region
//	digit_q ah = a.range(223,112);
//	digit_q al = a.range(111,0);
//	digit_q bh = a.range(223,112);
//	digit_q bl = a.range(111,0);
//	digit_q1 ahl = (digit_q1) ah + al;
//	digit_q1 bhl = (digit_q1) bh + bl;
//
//
//	digit_h a0,a2;
//	digit_h2 a1;
//	bc_mult(ah,bh,&a0);
//	bc_mult(al,bl,&a2);
//	bc_mult_1(ahl,bhl,&a1);
//
//	digit_t temp1 = (digit_t)a0 << 224;
//	digit_t temp2 = (digit_t)(a1 - a0 - a2) << 112;
//	*c = temp1 + temp2 + a2;
//}
//
////koa mult for 448 digit number
//void koa_mult(digit_t a,digit_t b, digit_d* c){
//#pragma HLS inline region recursive
//	digit_h ah = a.range(447,224);
//	digit_h al = a.range(223,0);
//	digit_h bh = a.range(447,224);
//	digit_h bl = a.range(223,0);
//	digit_h1 ahl = (digit_h1) ah + al;
//	digit_h1 bhl = (digit_h1) bh + bl;
//
//	digit_t a0,a2;
//	digit_t1 a1;
//	koa_mult_h(ah,bh,&a0);
//	koa_mult_h(al,bl,&a2);
//	koa_mult_h1(ahl,bhl,&a1);
//
//	digit_d temp1 = (digit_d)a0 << 448;
//	digit_d temp2 = (digit_d)(a1 - a0 - a2) << 224;
//	*c = temp1 + temp2 + a2;
//
//}
