//#include "sys/alt_stdio.h"
#include "system.h"
#include "alt_types.h"
//#include "altera_avalon_uart_regs.h"
#include "sys/alt_irq.h"

/*
 * get entire line, which is terminated with '\r'
 * returns 0 if just return key is hit.
 * otherwise this function blocks forever.
 */
int myscan(char *buffer, int maxchars)
{
	int line_size = 0;

	while (maxchars) {
		*buffer = alt_getchar();
		if (*buffer == '\r')
			break;
		buffer++;
		line_size++;
		maxchars--;
	}
	*buffer = '\0'; /* overwrite the last '\r', or last char in case of maxchar, with nul */

	return line_size;
}

int put_char_hex(unsigned long j)
{
	long i ;
	unsigned long k ;

//	for (i = 7; i >= 0 ; i--) {
	for (i = 3; i >= 0 ; i--) {
		k = ((j) >> ( i << 2 )) & 0xf;
		if (k > 9)
			alt_putchar(0x37 + k);
		else
			alt_putchar(0x30 + k);
	}
//	put_char('\r');
//	put_char('\n');
	alt_putchar(' ');

	return 0;
}

int Hex_2_Dec(char *Din)
{
	long acc, mul;
	int i;

	acc = 0;
	mul = 1;

	if(Din[0] == '0'||Din[0] == '1'||Din[0] == '2'||Din[0] == '3'
		||Din[0] == '4'||Din[0] == '5'||Din[0] == '6'||Din[0] == '7') {
		for ( i = 3; i >= 0; i-- ) {

			switch (Din[i]) {
			case '0': acc = acc + mul * 0; mul = mul * 16; break;
			case '1': acc = acc + mul * 1; mul = mul * 16; break;
			case '2': acc = acc + mul * 2; mul = mul * 16; break;
			case '3': acc = acc + mul * 3; mul = mul * 16; break;
			case '4': acc = acc + mul * 4; mul = mul * 16; break;
			case '5': acc = acc + mul * 5; mul = mul * 16; break;
			case '6': acc = acc + mul * 6; mul = mul * 16; break;
			case '7': acc = acc + mul * 7; mul = mul * 16; break;
			case '8': acc = acc + mul * 8; mul = mul * 16; break;
			case '9': acc = acc + mul * 9; mul = mul * 16; break;
			case 'A': acc = acc + mul * 10; mul = mul * 16; break;
			case 'B': acc = acc + mul * 11; mul = mul * 16; break;
			case 'C': acc = acc + mul * 12; mul = mul * 16; break;
			case 'D': acc = acc + mul * 13; mul = mul * 16; break;
			case 'E': acc = acc + mul * 14; mul = mul * 16; break;
			case 'F': acc = acc + mul * 15; mul = mul * 16; break;
			case 'a': acc = acc + mul * 10; mul = mul * 16; break;
			case 'b': acc = acc + mul * 11; mul = mul * 16; break;
			case 'c': acc = acc + mul * 12; mul = mul * 16; break;
			case 'd': acc = acc + mul * 13; mul = mul * 16; break;
			case 'e': acc = acc + mul * 14; mul = mul * 16; break;
			case 'f': acc = acc + mul * 15; mul = mul * 16; break;
			}
		}
	} else if(Din[0] == '8'||Din[0] == '9'||Din[0] == 'A'||Din[0] == 'B'
		||Din[0] == 'C'||Din[0] == 'D'||Din[0] == 'E'||Din[0] == 'F'
		||Din[0] == 'a'||Din[0] == 'b'||Din[0] == 'c'||Din[0] == 'd'
		||Din[0] == 'e'||Din[0] == 'f') {
		for ( i = 3; i >= 0; i-- ) {

			switch (Din[i]) {
			case '0': acc = acc + mul * 15; mul = mul * 16; break;
			case '1': acc = acc + mul * 14; mul = mul * 16; break;
			case '2': acc = acc + mul * 13; mul = mul * 16; break;
			case '3': acc = acc + mul * 12; mul = mul * 16; break;
			case '4': acc = acc + mul * 11; mul = mul * 16; break;
			case '5': acc = acc + mul * 10; mul = mul * 16; break;
			case '6': acc = acc + mul * 9; mul = mul * 16; break;
			case '7': acc = acc + mul * 8; mul = mul * 16; break;
			case '8': acc = acc + mul * 7; mul = mul * 16; break;
			case '9': acc = acc + mul * 6; mul = mul * 16; break;
			case 'A': acc = acc + mul * 5; mul = mul * 16; break;
			case 'B': acc = acc + mul * 4; mul = mul * 16; break;
			case 'C': acc = acc + mul * 3; mul = mul * 16; break;
			case 'D': acc = acc + mul * 2; mul = mul * 16; break;
			case 'E': acc = acc + mul * 1; mul = mul * 16; break;
			case 'F': acc = acc + mul * 0; mul = mul * 16; break;
			case 'a': acc = acc + mul * 5; mul = mul * 16; break;
			case 'b': acc = acc + mul * 4; mul = mul * 16; break;
			case 'c': acc = acc + mul * 3; mul = mul * 16; break;
			case 'd': acc = acc + mul * 2; mul = mul * 16; break;
			case 'e': acc = acc + mul * 1; mul = mul * 16; break;
			case 'f': acc = acc + mul * 0; mul = mul * 16; break;
			}
		}
		acc = (-1) * (acc + 1);
	}
	return (int)(acc);
}
