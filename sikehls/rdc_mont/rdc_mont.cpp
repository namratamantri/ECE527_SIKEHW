#include<ap_int.h>
typedef ap_uint<448> digit_t;
typedef ap_uint<450> digit_t1;
typedef ap_uint<896> digit_d; //double
const ap_uint<448> p434p1("2341F271773446CFC5FD681C520567BC65C783158AEA3FDC1767AE3000000000000000000000000000000000000000000000000000000",16);
const ap_uint<448> p434("2341F271773446CFC5FD681C520567BC65C783158AEA3FDC1767AE2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",16);

//const digit_t p434p1 = 0x12345678A;
//const digit_t p434 = 0x1534;


void bc_mult_448(digit_t a,digit_t b, digit_d* c);

void rdc_mont(digit_d ma, digit_t* mc)
{
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


//////////
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
