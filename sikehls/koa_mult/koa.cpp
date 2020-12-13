#include<ap_int.h>
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
typedef ap_uint<32> digit_32; //16bits
typedef ap_uint<34> digit_34; //16bits
typedef ap_uint<64> digit_64; //16bits

//file has 2 types of 448 bit multipliers : koa_mult_h1 and bc_mult_448.
//bc_mult_448 is purely broadcast multiplier <= 31 cycles, <40% resources
//koa_mult_h1 is a hybrid multiplier with 1st stage as koa and 2nd as broadcast. <= 25 cycles, 88% DSPs

///////////////////////////////////////////////////////////////////////////////////////////////////


#define N 7
#define P 64
//!!dont just change N and P here, need to change line 71 also)

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

//////////////////////////////////////////////////////////////////////////////////

#define n 4
#define p 64

//broadcast multiplier for 224 bits. p = 64, n = 4
void bc_mult(const digit_h ta,const digit_h tb, digit_t* c){
#pragma HLS inline off
	ap_uint<321> partial_products[n][n];
	ap_uint<n*p> a = (ap_uint<n*p>)ta;
	ap_uint<n*p> b = (ap_uint<n*p>)tb;

	ap_uint<p> ai[n];
	ap_uint<p> bi[n];
	digit_t sum[n];
#pragma HLS ARRAY_PARTITION variable=ai complete
#pragma HLS ARRAY_PARTITION variable=bi complete

#pragma HLS ARRAY_PARTITION variable=partial_products dim=0 complete
#pragma HLS ARRAY_PARTITION variable=sum complete

	loopb1: for(int i = 0; i<n; i++){
#pragma HLS unroll
		ai[i] = a.range(i*p+p-1,i*p);
		bi[i] = b.range(i*p+p-1,i*p);
		sum[i] = 0;
	}

	loopb2: for(int i = 0;i<n;i++){
#pragma HLS pipeline
		loopb3: for(int j =0; j<n;j++){
#pragma HLS unroll
			ap_uint<2*p> temp = (ai[j]*bi[i]);
			partial_products[i][j] = (ap_int<321>)temp << (p*j);
//			partial_products[j] = ai[j]*bi[i];
//			sum[j] += (digit_h)partial_products[j]<<((i+j)*16);
		}
	}

	loop3: for(int i=0;i<n;i++){
		loop3_1:for(int j=0;j<n;j++){
#pragma HLS unroll
			sum[j] += (digit_t)partial_products[j][i]<<(j*p);
		}
	}
	digit_t mult=0;
//	for(int i=0;i<7;i++){
//		mult += sum[i];
//	}
	mult = sum[0] + sum[1] + sum[2] + sum[3];// + sum[4] + sum[5] + sum[6];


	*c = mult;

}
//broadcast multiplier for 224 bits. p = 64, n = 4
void bc_mult_1(const digit_h ta,const digit_h tb, digit_t* c){
#pragma HLS inline off
	ap_uint<321> partial_products[n][n];
	ap_uint<n*p> a = (ap_uint<n*p>)ta;
	ap_uint<n*p> b = (ap_uint<n*p>)tb;

	ap_uint<p> ai[n];
	ap_uint<p> bi[n];
	digit_t sum[n];
#pragma HLS ARRAY_PARTITION variable=ai complete
#pragma HLS ARRAY_PARTITION variable=bi complete

#pragma HLS ARRAY_PARTITION variable=partial_products dim=0 complete
#pragma HLS ARRAY_PARTITION variable=sum complete

	loopb1: for(int i = 0; i<n; i++){
#pragma HLS unroll
		ai[i] = a.range(i*p+p-1,i*p);
		bi[i] = b.range(i*p+p-1,i*p);
		sum[i] = 0;
	}

	loopb2: for(int i = 0;i<n;i++){
#pragma HLS pipeline
		loopb3: for(int j =0; j<n;j++){
#pragma HLS unroll
			ap_uint<2*p> temp = (ai[j]*bi[i]);
			partial_products[i][j] = (ap_int<321>)temp << (p*j);
//			partial_products[j] = ai[j]*bi[i];
//			sum[j] += (digit_h)partial_products[j]<<((i+j)*16);
		}
	}

	loop3: for(int i=0;i<n;i++){
		loop3_1:for(int j=0;j<n;j++){
#pragma HLS unroll
			sum[j] += (digit_t)partial_products[j][i]<<(j*p);
		}
	}
	digit_t mult=0;
//	for(int i=0;i<7;i++){
//		mult += sum[i];
//	}
	mult = sum[0] + sum[1] + sum[2] + sum[3];// + sum[4] + sum[5] + sum[6];


	*c = mult;

}
//broadcast multiplier for 225 bits. p = 64, n = 4
void bc_mult_2(const digit_h1 ta,const digit_h1 tb, digit_t1* c){
#pragma HLS inline off
	ap_uint<321> partial_products[n][n];
	ap_uint<n*p> a = (ap_uint<n*p>)ta;
	ap_uint<n*p> b = (ap_uint<n*p>)tb;

	ap_uint<p> ai[n];
	ap_uint<p> bi[n];
	digit_t1 sum[n];
#pragma HLS ARRAY_PARTITION variable=ai complete
#pragma HLS ARRAY_PARTITION variable=bi complete

#pragma HLS ARRAY_PARTITION variable=partial_products dim=0 complete
#pragma HLS ARRAY_PARTITION variable=sum complete

	loopb1: for(int i = 0; i<n; i++){
#pragma HLS unroll
		ai[i] = a.range(i*p+p-1,i*p);
		bi[i] = b.range(i*p+p-1,i*p);
		sum[i] = 0;
	}

	loopb2: for(int i = 0;i<n;i++){
#pragma HLS pipeline
		loopb3: for(int j =0; j<n;j++){
#pragma HLS unroll
			ap_uint<2*p> temp = (ai[j]*bi[i]);
			partial_products[i][j] = (ap_int<321>)temp << (p*j);
//			partial_products[j] = ai[j]*bi[i];
//			sum[j] += (digit_h)partial_products[j]<<((i+j)*16);
		}
	}

	loop3: for(int i=0;i<n;i++){
		loop3_1:for(int j=0;j<n;j++){
#pragma HLS unroll
			sum[j] += (digit_t1)partial_products[j][i]<<(j*p);
		}
	}
	digit_t1 mult=0;
//	for(int i=0;i<7;i++){
//		mult += sum[i];
//	}
	mult = sum[0] + sum[1] + sum[2] + sum[3];// + sum[4] + sum[5] + sum[6];


	*c = mult;

}


//koa mult for 448 bit number
void koa_mult_h1(const digit_t a,const digit_t b, digit_d* c){
#pragma HLS inline off
	digit_h ah = a.range(447,224);
	digit_h al = a.range(223,0);
	digit_h bh = a.range(447,224);
	digit_h bl = a.range(223,0);
	digit_h1 ahl = (digit_h1) ah + al;
	digit_h1 bhl = (digit_h1) bh + bl;

	digit_t a0,a2;
	digit_t1 a1;

	//there are 3 separate functions with inline off because otherwise vivado does not schedule the 3 loops inside them in parallel
	bc_mult(ah,bh,&a0);
	bc_mult_1(al,bl,&a2);
	bc_mult_2(ahl,bhl,&a1);

	digit_d temp1 = (digit_d)a0 << 448;
	digit_d temp2 = (digit_d)(a1 - a0 - a2) << 224;
	*c = temp1 + temp2 + a2;


}
