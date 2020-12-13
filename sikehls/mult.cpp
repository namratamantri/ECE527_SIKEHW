#include "fp.h"

#define N 7
#define P 64
//broadcast multiplier for 448 bit multiplication. Uses N parallel multipliers of P bits each. N*P = 448.
void bc_mult_448(digit_t a,digit_t b, digit_d* c){
#pragma HLS inline off
	digit_t partial_products[N][N];
	ap_uint<P> ai[N];
	ap_uint<P> bi[N];
	digit_d sum[N];
#pragma HLS ARRAY_PARTITION variable=ai complete
#pragma HLS ARRAY_PARTITION variable=bi complete
#pragma HLS ARRAY_PARTITION variable=sum complete
#pragma HLS ARRAY_PARTITION variable=partial_products dim=0 complete
//#pragma HLS RESOURCE        variable=ai  core=RAM_1P_BRAM
//#pragma HLS RESOURCE        variable=bi  core=RAM_1P_BRAM
//#pragma HLS RESOURCE        variable=partial_products  core=RAM_T2P_BRAM

	//A and B are partitioned into N elements of P bits each and stored in  ai and bi.
	loopb21: for(int i = 0; i<N; i++){
#pragma HLS unroll
		ai[i] = a.range(i*P+P-1,i*P);
		bi[i] = b.range(i*P+P-1,i*P);
		sum[i] = 0;
	}

	loopb22: for(int i = 0;i<N;i++){
#pragma HLS pipeline
		loopb23: for(int j =0; j<N;j++){
#pragma HLS unroll
			digit_t temp = (ai[j]*bi[i]);
			partial_products[i][j] = (digit_t)temp << (P*j);
			//sum[j] += (digit_d)partial_products[i][j]<<((i+j)*P);
			//^above line commented out because the shift by (i+j)*P takes lot of LUTs because i+j is variable.
			//P*j is constant (since loop unrolled) hence does not take LUTs
		}
	}

	//shift by required amount and sum. overall, ai[j]*bi[i] needs to be shifted by (i+j)*P.
	loop3: for(int i=0;i<N;i++){
		loop3_1:for(int j=0;j<N;j++){
#pragma HLS unroll
			sum[j] += (digit_d)partial_products[j][i]<<(j*P);
		}
	}

	//sum remaining partial products
	//not using for loop coz it becomes sequential. writing likes this makes vivado use a faster adder tree
	digit_d mult=0;
	mult = sum[0] + sum[1] + sum[2] + sum[3] + sum[4] + sum[5] + sum[6];// + sum[7] + sum[8] + sum[9] + sum[10] + sum[11] + sum[12] + sum[13] ;
//	for(int i =0;i<N;i++)
//		mult += sum[i];
	*c = mult;
}

////////////////////////////////////////////////////////////////////////////
//broadcast multiplier for 114 bits. divides into 7 for parallel 17 bit multiplications
void bc_mult_2(digit_q2 ta,digit_q2 tb, ap_int<228>* c){
#pragma HLS inline off
	digit_34 partial_products[7];
	ap_int<119> a = (ap_int<119>)ta;
	ap_int<119> b = (ap_int<119>)tb;
	digit_17 ai[7];
	digit_17 bi[7];
	ap_int<228> sum[7];
#pragma HLS ARRAY_PARTITION variable=ai complete
#pragma HLS ARRAY_PARTITION variable=bi complete
#pragma HLS ARRAY_PARTITION variable=sum complete


	loopb21: for(int i = 0; i<7; i++){
#pragma HLS unroll
		ai[i] = a.range(i*17+16,i*17);
		bi[i] = b.range(i*17+16,i*17);
		sum[i] = 0;
	}

	loopb22: for(int i = 0;i<7;i++){
//#pragma HLS pipeline
		loopb23: for(int j =0; j<7;j++){
#pragma HLS unroll factor=4
			partial_products[j] = ai[j]*bi[i];
			sum[j] += (digit_h)partial_products[j]<<((i+j)*17);
		}
	}

	ap_int<228> mult=0;
	mult = sum[0] + sum[1] + sum[2] + sum[3] + sum[4] + sum[5] + sum[6];
//	for(int i=0;i<7;i++){
//		mult += sum[i];
//	}
	*c = mult;
}


//broadcast multiplier for 113 bits. divides into 7 for parallel 17 bit multiplications
void bc_mult_1(const digit_q1 ta,const digit_q1 tb, digit_h2* c){
#pragma HLS inline off
	digit_34 partial_products[7];
	ap_int<119> a = (ap_int<119>)ta;
	ap_int<119> b = (ap_int<119>)tb;
	digit_17 ai[7];
	digit_17 bi[7];
	digit_h2 sum[7];
#pragma HLS ARRAY_PARTITION variable=ai complete
#pragma HLS ARRAY_PARTITION variable=bi complete
#pragma HLS ARRAY_PARTITION variable=sum complete


	loopb11 : for(int i = 0; i<7; i++){
#pragma HLS unroll
		ai[i] = a.range(i*17+16,i*17);
		bi[i] = b.range(i*17+16,i*17);
		sum[i] = 0;
	}

	loopb12: for(int i = 0;i<7;i++){
////#pragma HLS pipeline
		loopb13: for(int j =0; j<7;j++){
#pragma HLS unroll factor=4
			partial_products[j] = ai[j]*bi[i];
			sum[j] += (digit_h)partial_products[j]<<((i+j)*17);
		}
	}

	digit_h2 mult=0;
//	for(int i=0;i<7;i++){
//		mult += sum[i];
//	}
	mult = sum[0] + sum[1] + sum[2] + sum[3] + sum[4] + sum[5] + sum[6];
	*c = mult;
}
//broadcast multiplier for 113 bits. divides into 7 for parallel 17 bit multiplications
void bc2_mult_1(const digit_q1 ta,const digit_q1 tb, digit_h2* c){
#pragma HLS inline off
	digit_34 partial_products[7];
	ap_int<119> a = (ap_int<119>)ta;
	ap_int<119> b = (ap_int<119>)tb;
	digit_17 ai[7];
	digit_17 bi[7];
	digit_h2 sum[7];
#pragma HLS ARRAY_PARTITION variable=ai complete
#pragma HLS ARRAY_PARTITION variable=bi complete
#pragma HLS ARRAY_PARTITION variable=sum complete


	loopb11 : for(int i = 0; i<7; i++){
#pragma HLS unroll
		ai[i] = a.range(i*17+16,i*17);
		bi[i] = b.range(i*17+16,i*17);
		sum[i] = 0;
	}

	loopb12: for(int i = 0;i<7;i++){
//#pragma HLS pipeline
		loopb13: for(int j =0; j<7;j++){
#pragma HLS unroll factor=4
			partial_products[j] = ai[j]*bi[i];
			sum[j] += (digit_h)partial_products[j]<<((i+j)*17);
		}
	}

	digit_h2 mult=0;
//	for(int i=0;i<7;i++){
//		mult += sum[i];
//	}
	mult = sum[0] + sum[1] + sum[2] + sum[3] + sum[4] + sum[5] + sum[6];
	*c = mult;
}
//broadcast multiplier for 113 bits. divides into 7 for parallel 17 bit multiplications
void bc1_mult_1(const digit_q1 ta,const digit_q1 tb, digit_h2* c){
#pragma HLS inline off
	digit_34 partial_products[7];
	ap_int<119> a = (ap_int<119>)ta;
	ap_int<119> b = (ap_int<119>)tb;
	digit_17 ai[7];
	digit_17 bi[7];
	digit_h2 sum[7];
#pragma HLS ARRAY_PARTITION variable=ai complete
#pragma HLS ARRAY_PARTITION variable=bi complete
#pragma HLS ARRAY_PARTITION variable=sum complete


	loopb11 : for(int i = 0; i<7; i++){
#pragma HLS unroll
		ai[i] = a.range(i*17+16,i*17);
		bi[i] = b.range(i*17+16,i*17);
		sum[i] = 0;
	}

	loopb12: for(int i = 0;i<7;i++){
//#pragma HLS pipeline
		loopb13: for(int j =0; j<7;j++){
#pragma HLS unroll factor=4
			partial_products[j] = ai[j]*bi[i];
			sum[j] += (digit_h)partial_products[j]<<((i+j)*17);
		}
	}

	digit_h2 mult=0;
//	for(int i=0;i<7;i++){
//		mult += sum[i];
//	}
	mult = sum[0] + sum[1] + sum[2] + sum[3] + sum[4] + sum[5] + sum[6];
	*c = mult;
}

//broadcast multiplier for 112 bits. divides into 7 for parallel 16 bit multiplications
void bc_mult(const digit_q a,const digit_q b, digit_h* c){
#pragma HLS inline off
	unsigned int partial_products[7];
	digit_16 ai[7];
	digit_16 bi[7];
	digit_h sum[7];
#pragma HLS ARRAY_PARTITION variable=ai complete
#pragma HLS ARRAY_PARTITION variable=bi complete
#pragma HLS ARRAY_PARTITION variable=sum complete

	loopb1: for(int i = 0; i<7; i++){
#pragma HLS unroll
		ai[i] = a.range(i*16+15,i*16);
		bi[i] = b.range(i*16+15,i*16);
		sum[i] = 0;
	}

	loopb2: for(int i = 0;i<7;i++){
//#pragma HLS pipeline
		loopb3: for(int j =0; j<7;j++){
#pragma HLS unroll factor=4
			partial_products[j] = ai[j]*bi[i];
			sum[j] += (digit_h)partial_products[j]<<((i+j)*16);
		}
	}

	digit_h mult=0;
//	for(int i=0;i<7;i++){
//		mult += sum[i];
//	}
	mult = sum[0] + sum[1] + sum[2] + sum[3] + sum[4] + sum[5] + sum[6];


	*c = mult;

}
//broadcast multiplier for 112 bits. divides into 7 for parallel 16 bit multiplications
void bc2_mult(const digit_q a,const digit_q b, digit_h* c){
#pragma HLS inline off
	unsigned int partial_products[7];
	digit_16 ai[7];
	digit_16 bi[7];
	digit_h sum[7];
#pragma HLS ARRAY_PARTITION variable=ai complete
#pragma HLS ARRAY_PARTITION variable=bi complete
#pragma HLS ARRAY_PARTITION variable=sum complete

	loopb1: for(int i = 0; i<7; i++){
#pragma HLS unroll
		ai[i] = a.range(i*16+15,i*16);
		bi[i] = b.range(i*16+15,i*16);
		sum[i] = 0;
	}

	loopb2: for(int i = 0;i<7;i++){
//#pragma HLS pipeline
		loopb3: for(int j =0; j<7;j++){
#pragma HLS unroll factor=4
			partial_products[j] = ai[j]*bi[i];
			sum[j] += (digit_h)partial_products[j]<<((i+j)*16);
		}
	}

	digit_h mult=0;
//	for(int i=0;i<7;i++){
//		mult += sum[i];
//	}
	mult = sum[0] + sum[1] + sum[2] + sum[3] + sum[4] + sum[5] + sum[6];


	*c = mult;

}
//broadcast multiplier for 112 bits. divides into 7 for parallel 16 bit multiplications
void bc_mult1(const digit_q a,const digit_q b, digit_h* c){
#pragma HLS inline off
	unsigned int partial_products[7];
	digit_16 ai[7];
	digit_16 bi[7];
	digit_h sum[7];
#pragma HLS ARRAY_PARTITION variable=ai complete
#pragma HLS ARRAY_PARTITION variable=bi complete
#pragma HLS ARRAY_PARTITION variable=sum complete

	loopb1: for(int i = 0; i<7; i++){
#pragma HLS unroll
		ai[i] = a.range(i*16+15,i*16);
		bi[i] = b.range(i*16+15,i*16);
		sum[i] = 0;
	}

	loopb2: for(int i = 0;i<7;i++){
//#pragma HLS pipeline
		loopb3: for(int j =0; j<7;j++){
#pragma HLS unroll factor=4
			partial_products[j] = ai[j]*bi[i];
			sum[j] += (digit_h)partial_products[j]<<((i+j)*16);
		}
	}

	digit_h mult=0;
//	for(int i=0;i<7;i++){
//		mult += sum[i];
//	}
	mult = sum[0] + sum[1] + sum[2] + sum[3] + sum[4] + sum[5] + sum[6];


	*c = mult;

}
//broadcast multiplier for 112 bits. divides into 7 for parallel 16 bit multiplications
void bc1_mult1(const digit_q a,const digit_q b, digit_h* c){
#pragma HLS inline off
	unsigned int partial_products[7];
	digit_16 ai[7];
	digit_16 bi[7];
	digit_h sum[7];
#pragma HLS ARRAY_PARTITION variable=ai complete
#pragma HLS ARRAY_PARTITION variable=bi complete
#pragma HLS ARRAY_PARTITION variable=sum complete

	loopb1: for(int i = 0; i<7; i++){
#pragma HLS unroll
		ai[i] = a.range(i*16+15,i*16);
		bi[i] = b.range(i*16+15,i*16);
		sum[i] = 0;
	}

	loopb2: for(int i = 0;i<7;i++){
//#pragma HLS pipeline
		loopb3: for(int j =0; j<7;j++){
#pragma HLS unroll factor=4
			partial_products[j] = ai[j]*bi[i];
			sum[j] += (digit_h)partial_products[j]<<((i+j)*16);
		}
	}

	digit_h mult=0;
//	for(int i=0;i<7;i++){
//		mult += sum[i];
//	}
	mult = sum[0] + sum[1] + sum[2] + sum[3] + sum[4] + sum[5] + sum[6];


	*c = mult;

}
//broadcast multiplier for 112 bits. divides into 7 for parallel 16 bit multiplications
void bc1_mult(const digit_q a,const digit_q b, digit_h* c){
#pragma HLS inline off
	unsigned int partial_products[7];
	digit_16 ai[7];
	digit_16 bi[7];
	digit_h sum[7];
#pragma HLS ARRAY_PARTITION variable=ai complete
#pragma HLS ARRAY_PARTITION variable=bi complete
#pragma HLS ARRAY_PARTITION variable=sum complete

	loopb1: for(int i = 0; i<7; i++){
#pragma HLS unroll
		ai[i] = a.range(i*16+15,i*16);
		bi[i] = b.range(i*16+15,i*16);
		sum[i] = 0;
	}

	loopb2: for(int i = 0;i<7;i++){
//#pragma HLS pipeline
		loopb3: for(int j =0; j<7;j++){
#pragma HLS unroll factor=4
			partial_products[j] = ai[j]*bi[i];
			sum[j] += (digit_h)partial_products[j]<<((i+j)*16);
		}
	}

	digit_h mult=0;
//	for(int i=0;i<7;i++){
//		mult += sum[i];
//	}
	mult = sum[0] + sum[1] + sum[2] + sum[3] + sum[4] + sum[5] + sum[6];


	*c = mult;

}

//koa mult for 225 bit number
void koa_mult_h1(const digit_h1 a,const digit_h1 b, digit_t1* c){
#pragma HLS inline
	digit_q ah = a.range(224,113);
	digit_q1 al = a.range(112,0);
	digit_q bh = a.range(224,113);
	digit_q1 bl = a.range(112,0);
	digit_q2 ahl = (digit_q2) ah + al;
	digit_q2 bhl = (digit_q2) bh + bl;


	digit_h a0;
	digit_h2 a2;
	ap_int<228> a1;
	bc2_mult(ah,bh,&a0);
	bc2_mult_1(al,bl,&a2);
	bc_mult_2(ahl,bhl,&a1);

	digit_t1 temp1 = (digit_t1)a0 << 226;
	digit_t1 temp2 = (digit_t1)(a1 - a0 - a2) << 113;
	*c = temp1 + temp2 + a2;
}

//koa mult for 224 bit number
void koa_mult_h(digit_h a,digit_h b, digit_t* c){
#pragma HLS inline region
	digit_q ah = a.range(223,112);
	digit_q al = a.range(111,0);
	digit_q bh = a.range(223,112);
	digit_q bl = a.range(111,0);
	digit_q1 ahl = (digit_q1) ah + al;
	digit_q1 bhl = (digit_q1) bh + bl;


	digit_h a0,a2;
	digit_h2 a1;
	bc_mult(ah,bh,&a0);
	bc_mult1(al,bl,&a2);
	bc_mult_1(ahl,bhl,&a1);

	digit_t temp1 = (digit_t)a0 << 224;
	digit_t temp2 = (digit_t)(a1 - a0 - a2) << 112;
	*c = temp1 + temp2 + a2;
}

//koa mult for 224 bit number (2nd version)
void koa_mult_h_1(digit_h a,digit_h b, digit_t* c){
#pragma HLS inline off
	digit_q ah = a.range(223,112);
	digit_q al = a.range(111,0);
	digit_q bh = a.range(223,112);
	digit_q bl = a.range(111,0);
	digit_q1 ahl = (digit_q1) ah + al;
	digit_q1 bhl = (digit_q1) bh + bl;
	digit_h a0,a2;
	digit_h2 a1;
	bc1_mult(ah,bh,&a0);
	bc1_mult1(al,bl,&a2);
	bc1_mult_1(ahl,bhl,&a1);
	digit_t temp1 = (digit_t)a0 << 224;
	digit_t temp2 = (digit_t)(a1 - a0 - a2) << 112;
	*c = temp1 + temp2 + a2;
}
//koa mult for 448 digit number
void koa_mult(digit_t a,digit_t b, digit_d* c){
//#pragma HLS inline region recursive
	digit_h ah = a.range(447,224);
	digit_h al = a.range(223,0);
	digit_h bh = a.range(447,224);
	digit_h bl = a.range(223,0);
	digit_h1 ahl = (digit_h1) ah + al;
	digit_h1 bhl = (digit_h1) bh + bl;

	digit_t a0,a2;
	digit_t1 a1;
	koa_mult_h(ah,bh,&a0);
	koa_mult_h_1(al,bl,&a2);
	koa_mult_h1(ahl,bhl,&a1);

	digit_d temp1 = (digit_d)a0 << 448;
	digit_d temp2 = (digit_d)(a1 - a0 - a2) << 224;
	*c = temp1 + temp2 + a2;

}
