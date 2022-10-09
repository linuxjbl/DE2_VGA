////////////////////////////////////////////
// added for user lcd controller
////////////////////////////////////////////

extern void _wait(int loop_count);
extern void check_busy();
extern void lcd_init();
extern void lcd_prints(alt_u8 *string);
extern select_xy(alt_u8 x, alt_u8 y);
extern int lcd_char_hex2( char *s1, unsigned short j1, char *s2, unsigned short j2, char *c);
