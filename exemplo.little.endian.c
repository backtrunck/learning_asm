#include <stdint.h>
#include <stdio.h>
#include <string.h>

struct DWORD
   {
      uint8_t a0;
      uint8_t a1;
   } ;


int main(void)
{
	struct DWORD dw;  

	dw.a0 = 0xDF;
	dw.a1 = 0xEA;  

	printf("Endereço 0: %#X\nEndereço 1: %#X\n: %#X\n", dw.a0, dw.a1);

	uint32_t dw1;
 	memcpy(&dw1, &dw,4);
	//dw1 = 2;

	printf("   Endereços   1 0\n");
	printf("-------------------\n");
	printf("Valor Word: %#hX\n", dw1);

    return 0;
}
