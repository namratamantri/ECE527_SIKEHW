//Mult and RDC_MONT Testbench
//For use in verifying critical subcomponents of SIKE
//Tests basic 448-bit multiplier and Montgomery reduction for accuracy to what is intended

#include"fp.h"
#include <stdio.h>

//basic Montgomery reduction (modular multiply) of ultrawide number (896 bits)
//version with direct multiplies to avoid whatever algorithm is tested for mult
void rdc_mont_test(digit_d ma, digit_t* mc)
{
	digit_d one = 1;
	digit_d mask = one<<448 - 1;
	digit_t ma_trunc = (digit_t) ma;
	digit_d mult;
	mult = ma_trunc * p434p1;
	digit_t m = (digit_t)(mult & mask) ; //m=ma*P^-1 % R, R=2^448
	mult = m * p434;
	digit_d sum = (digit_d)ma + mult;
	*mc = (digit_t)(sum >> 448); // mc = (ma+m*p)/R
}

int main(void){

	//get result of mp_mul in algo tested
	digit_d HWres1;
	mp_mul(p434,p434p1,&HWres1);

	digit_d SWres1 = p434 * p434p1; //get SW equiv for testing

	if(HWres1 != SWres1){
		printf("Wide Multiply Failed!\n");
		return 0;
	}
	else printf("Wide Multiply Succeeded!\n");

	//do the same for Montgomery reduction
    digit_t HWres2;
    rdc_mont(p434,&HWres2);

    digit_t SWres2;
    rdc_mont_test(p434,&SWres2);

    if(HWres2 != SWres2){
		printf("Montgomery Reduction Failed!\n");
		return 0;
	}
	else printf("Montgomery Reduction Succeeded!\n");


	printf("tests successful :D\n");
	return 0;
}
