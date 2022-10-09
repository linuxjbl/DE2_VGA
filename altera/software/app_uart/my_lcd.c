#include "sys/alt_stdio.h"
#include "system.h"
#include "altera_avalon_lcd_16207_regs.h"

void _wait(int loop_count)
{
	volatile int sum, data;
	sum	= 0;
	for (data = 0; data < loop_count; data++) {
		sum = (data << 8);
	}
  return;
}

void check_busy()
{
    alt_u8 status;
    do
    {
        status=IORD_ALTERA_AVALON_LCD_16207_STATUS(LCD_0_BASE);
    }while(status&0x80);
}

void lcd_init()
{
    IOWR_ALTERA_AVALON_LCD_16207_COMMAND(LCD_0_BASE, 0x38);
	_wait(40000);
    IOWR_ALTERA_AVALON_LCD_16207_COMMAND(LCD_0_BASE, 0x01);
	_wait(40000);
    IOWR_ALTERA_AVALON_LCD_16207_COMMAND(LCD_0_BASE, 0x06);
	_wait(40000);
    IOWR_ALTERA_AVALON_LCD_16207_COMMAND(LCD_0_BASE, 0x0c);
	_wait(40000);
}

void lcd_prints(alt_u8 *string)
{
    while(*string!='\0')
    {
    	_wait(100);
        IOWR_ALTERA_AVALON_LCD_16207_DATA(LCD_0_BASE, *string);
        string++;
    }
}

void select_xy(alt_u8 x,alt_u8 y)
{
	_wait(3000);
    if(x%2==0)
    {
        IOWR_ALTERA_AVALON_LCD_16207_COMMAND(LCD_0_BASE, 0x80+y);
    }
    else
    {
        IOWR_ALTERA_AVALON_LCD_16207_COMMAND(LCD_0_BASE, 0xc0+y);
    }
}

// (char *s1) + (unsigned long j1) + (char *s2) + (unsigned long j2) -> (char *c) to get 16 characters.
// j1 and j2 are converted to hexadecimal charactors.
// Note that (length of s1) + 4 + (length of s2) + 4 = 16
int lcd_char_hex2( char *s1, unsigned short j1, char *s2, unsigned short j2, char *c)
{
	long i ;
	unsigned long k ;

	while(*s1)
	{
		*c = *s1;
		c++;
		s1++;
	}
	for (i = 3; i >= 0 ; i--) {
		k = ((j1) >> ( i << 2 )) & 0xf;
		if (k > 9)
			*c = 0x37 + k;
		else
			*c = 0x30 + k;
		c++;
	}

	while(*s2)
	{
		*c = *s2;
		c++;
		s2++;
	}
	for (i = 3; i >= 0 ; i--) {
		k = ((j2) >> ( i << 2 )) & 0xf;
		if (k > 9)
			*c = 0x37 + k;
		else
			*c = 0x30 + k;
		c++;
	}
	return 0;
}

