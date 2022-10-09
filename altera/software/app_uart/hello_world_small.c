#include "sys/alt_stdio.h"
#include "system.h"
#include "alt_types.h"
#include "my_lcd.h"
#include "my_uart.h"

int main()
{
    // UART
	unsigned long regval;
	char onechar;

    // LCD
	unsigned long Frequency = 2; // Hz
	unsigned long Duty = 50; // %
	unsigned long Period0;
	unsigned long Decode0;
	char msg[]={"XXXXXXXXXXXXXXXXX"};

	Period0 = 50000000/Frequency;
	Decode0 = Period0/100*Duty;

	*(volatile unsigned long *)PERIOD0_BASE = Period0;
	*(volatile unsigned long *)DECODE0_BASE = Decode0;

    lcd_init();
	_wait(200000);

    while (1) {

        // UART
	    regval = 0;
	    if((regval & 0x0080) == 0) { // check RRDY
	    	regval = *(volatile unsigned long *)(UART_0_BASE+2*4); // one word is 32bit(4 byte)

            onechar = alt_getchar();

            if(onechar == 'p') { // product name
                alt_putstr("ACKPNDE0\n\r");
            }
            else if(onechar == 'j') { // 
                alt_putstr("JBLee \n\r");
            }
	    }


        // LCD
	    select_xy(0,0);
	    lcd_prints("LCD Test by JBLee");
	    select_xy(1,0);
		lcd_char_hex2("Fr:", Frequency, "  Du:", Duty, msg);
		lcd_prints((alt_u8 *)msg);


    }

	return 0;
}



