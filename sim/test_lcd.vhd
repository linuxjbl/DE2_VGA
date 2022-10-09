----------------------------------------------------
--  
--      VHDL code generated by Visual HDL
--
--  Root of Design:
--  ---------------
--      Unit    Name  :  test_lcd
--      Library Name  :  de2_vhdl
--  
--      Creation Date :  Fri Oct 07 17:08:26 2022
--      Version       :  6.7.9 build 41 from Oct 11 2001
--  
--  Options Used:
--  -------------
--      Target
--         HDL        :  VHDL
--         Purpose    :  Simulation
--  
--      Style
--         Use Procedures                 :  No
--         Code Destination               :  Combined file
--         Attach Packages                :  No
--         Generate Entity                :  Yes
--         Attach Directives              :  Yes
--         Structural                     :  No
--         Configuration Specification    :  No
--         library name in
--         Configuration Specification    :  No
--         Configuration Declaration      :  None
--         Preserve spacing for free text :  Yes
--         Sort Ports by mode             :  No
--         Declaration alignment          :  No
--
----------------------------------------------------
----------------------------------------------------
--  
--  Library Name :  de2_vhdl
--  Unit    Name :  testsub_lcd
--  Unit    Type :  Text Unit
--  
------------------------------------------------------
------------------------------------------
------------------------------------------
-- Date        : Thu Oct 06 18:35:09 2022
--
-- Author      : JBLee
--
-- Company     : Onbitel
--
-- Description : 
--
------------------------------------------
------------------------------------------
library ieee; use ieee.STD_LOGIC_1164.all;
library ieee; use ieee.STD_LOGIC_UNSIGNED.all;
library ieee; use ieee.NUMERIC_STD.all;



entity  testsub_lcd  is
port (clk_50m : out std_logic ;
      rstn : out std_logic );
end;
------------------------------------------
------------------------------------------
-- Date        : Thu Oct 06 18:35:09 2022
--
-- Author      : JBLee
--
-- Company     : Onbitel
--
-- Description : 
--
------------------------------------------
------------------------------------------
architecture  testsub_lcd_a  of  testsub_lcd  is
begin


    rstn  <= '0', '1' after 25 ns;

    PROCESS -- 50 MHz, 20 ns
    begin
        clk_50m <= '1'; wait for 8 ns;
        clk_50m <= '0'; wait for 10 ns;
        clk_50m <= '1'; wait for 2  ns;
    end process;

end;

----------------------------------------------------
--  
--  Library Name :  de2_vhdl
--  Unit    Name :  lcd_user_logic
--  Unit    Type :  Text Unit
--  
------------------------------------------------------
--------------------------------------------------------------------------------
--
-- FileName: lcd_user_logic.vhd
-- Prints "123456789AB" on a HD44780 compatible 8-bit interface character LCD
-- module using the lcd_controller.vhd component.
--
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY lcd_user_logic IS
PORT(
    rstn : IN STD_LOGIC; -- by JBL
    lcd_busy : IN STD_LOGIC; --lcd controller busy/idle feedback
    clk : IN STD_LOGIC; --system clock
    lcd_clk : OUT STD_LOGIC;
    reset_n : OUT STD_LOGIC;
    lcd_enable : OUT STD_LOGIC; --lcd enable received from lcd controller
    --lcd_enable : buffer STD_LOGIC; --lcd enable received from lcd controller
    lcd_bus : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)); --data and control signals
    --The MSB is the rs signal, followed by the rw signal.
    -- The other 8 bits are the data bits.
END lcd_user_logic;


ARCHITECTURE behavior OF lcd_user_logic IS
    signal s_lcd_enable : std_logic;
BEGIN
    lcd_enable <= s_lcd_enable;

    PROCESS(clk, rstn)
        VARIABLE char : INTEGER RANGE 0 TO 12 := 0;
    BEGIN
        IF(rstn = '0') THEN
            s_lcd_enable <= '0';
            char := 0;
            lcd_bus <= "0000000000";
        ELSIF(clk'EVENT AND clk = '1') THEN
            IF(lcd_busy = '0' AND s_lcd_enable = '0') THEN
                s_lcd_enable <= '1';
                IF(char < 12) THEN
                    char := char + 1;
                END IF;

                CASE char IS
                    WHEN 1 => lcd_bus <= "1000110001";
                    WHEN 2 => lcd_bus <= "1000110010";
                    WHEN 3 => lcd_bus <= "1000110011";
                    WHEN 4 => lcd_bus <= "1000110100";
                    WHEN 5 => lcd_bus <= "1000110101";
                    WHEN 6 => lcd_bus <= "1000110110";
                    WHEN 7 => lcd_bus <= "1000110111";
                    WHEN 8 => lcd_bus <= "1000111000";
                    WHEN 9 => lcd_bus <= "1000111001";
                    WHEN 10 => lcd_bus<= "1001000001";
                    WHEN 11 => lcd_bus<= "1001000010";
                    WHEN OTHERS => s_lcd_enable <= '0';
                END CASE;
            ELSE
                s_lcd_enable <= '0';
            END IF;
        END IF;
    END PROCESS;

    reset_n <= '1';
    lcd_clk <= clk;

END behavior;





----------------------------------------------------
--  
--  Library Name :  de2_vhdl
--  Unit    Name :  lcd_controller
--  Unit    Type :  Text Unit
--  
------------------------------------------------------
-------------------------------------------------------------------------------
--
-- FileName: lcd_controller.vhd
-- CLOCK FREQUENCY: you may change system clock frequency,
-- LCD INITIALIZATION SETTINGS: to change, comment/uncomment lines:
--
-- Function Set
-- 2-line mode, display on Line 85 lcd_data <= "00111100";
-- 1-line mode, display on Line 86 lcd_data <= "00110100";
-- 1-line mode, display off Line 87 lcd_data <= "00110000";
-- 2-line mode, display off Line 88 lcd_data <= "00111000";
-- Display ON/OFF
-- display on, cursor off, blink off Line 96 lcd_data <= "00001100"; 
-- display on, cursor off, blink on Line 97 lcd_data <= "00001101";
-- display on, cursor on, blink off Line 98 lcd_data <= "00001110";
-- display on, cursor on, blink on Line 99 lcd_data <= "00001111";
-- display off, cursor off, blink off Line 100 lcd_data <= "00001000";
-- display off, cursor off, blink on Line 101 lcd_data <= "00001001";
-- display off, cursor on, blink off Line 102 lcd_data <= "00001010";
-- display off, cursor on, blink on Line 103 lcd_data <= "00001011";
-- Entry Mode Set
-- increment mode, entire shift off Line 119 lcd_data <= "00000110";
-- increment mode, entire shift on Line 120 lcd_data <= "00000111";
-- decrement mode, entire shift off Line 121 lcd_data <= "00000100";
-- decrement mode, entire shift on Line 122 lcd_data <= "00000101";
--
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY lcd_controller IS
PORT(
    clk : IN STD_LOGIC; --system clock
    reset_n : IN STD_LOGIC; --active low reinitializes lcd
    lcd_enable : IN STD_LOGIC; --latches data into lcd controller
    lcd_bus : IN STD_LOGIC_VECTOR(9 DOWNTO 0); --data and control signals
    busy : OUT STD_LOGIC := '1'; --lcd controller busy/idle feedback
    rw, rs, e : OUT STD_LOGIC; --read/write, setup/data, and enable for lcd
    lcd_data : OUT STD_LOGIC_VECTOR(7 DOWNTO 0); --data signals for lcd
    lcd_on : OUT std_logic; --LCD Power ON/OFF
    lcd_blon : OUT std_logic); --LCD Back Light ON/OFF
END lcd_controller;

ARCHITECTURE controller OF lcd_controller IS
    --state machine
    TYPE CONTROL IS(power_up, initialize, ready, send);
    SIGNAL state : CONTROL;
    CONSTANT freq : INTEGER := 50; --system clock frequency in MHz
BEGIN
    lcd_on   <= '1'; --LCD Power ON
    lcd_blon <= '1'; --LCD Back Light ON

    PROCESS(clk, reset_n)
        VARIABLE clk_count : INTEGER := 0; --event counter for timing
    BEGIN
        IF(reset_n = '0') THEN
            state <= power_up;
            clk_count  := 0; --event counter for timing
            busy <= '1';
            rs <= '0';   --  Register Select Signal ( 0 : instruction, 1 : Data  )
            rw <= '0';
            lcd_data <= "00110000"; -- Function Set: 1-line mode, display off lcd_data <= "00110000";
            e <= '0';
        ELSIF(clk'EVENT and clk = '1') THEN
            CASE state IS
                --wait 50 ms to ensure Vdd has risen and required LCD wait is met
                WHEN power_up =>
                    busy <= '1';
                    IF(clk_count < (50000 * freq)) THEN --wait 50 ms
                        clk_count := clk_count + 1;
                        state <= power_up;
                    ELSE --power-up complete
                        clk_count := 0;
                        rs <= '0';
                        rw <= '0';
                        lcd_data <= "00110000"; -- Function Set: 1-line mode, display off lcd_data <= "00110000";
                        state <= initialize;
                    END IF;

                --cycle through initialization sequence
                WHEN initialize =>
                    busy <= '1';
                    clk_count := clk_count + 1;
                    IF(clk_count < (10 * freq)) THEN --function set
                        -- lcd_data <= "00111100"; --2-line mode, display on
                        lcd_data <= "00110100"; --1-line mode, display on
                        --lcd_data <= "00110000"; --1-line mdoe, display off
                        --lcd_data <= "00111000"; --2-line mode, display off
                        e <= '1';
                        state <= initialize;
                    ELSIF(clk_count < (60 * freq)) THEN --wait 50 us
                        lcd_data <= "00000000";
                        e <= '0';
                        state <= initialize;
                    ELSIF(clk_count < (70 * freq)) THEN --display on/off control
                        --lcd_data <= "00001100"; --display on, cursor off, blink off
                        lcd_data <= "00001101"; --display on, cursor off, blink on
                        --lcd_data <= "00001110"; --display on, cursor on, blink off
                        --lcd_data <= "00001111"; --display on, cursor on, blink on
                        --lcd_data <= "00001000"; --display off, cursor off, blink off
                        --lcd_data <= "00001001"; --display off, cursor off, blink on
                        --lcd_data <= "00001010"; --display off, cursor on, blink off
                        --lcd_data <= "00001011"; --display off, cursor on, blink on
                        e <= '1';
                        state <= initialize;
                    ELSIF(clk_count < (120 * freq)) THEN --wait 50 us
                        lcd_data <= "00000000";
                        e <= '0';
                        state <= initialize;
                    ELSIF(clk_count < (130 * freq)) THEN --display clear
                        lcd_data <= "00000001";
                        e <= '1';
                        state <= initialize;
                    ELSIF(clk_count < (2130 * freq)) THEN --wait 2 ms
                        lcd_data <= "00000000";
                        e <= '0';
                        state <= initialize;
                    ELSIF(clk_count < (2140 * freq)) THEN --entry mode set
                        lcd_data <= "00000110"; --increment mode, entire shift off
                        --lcd_data <= "00000111"; --increment mode, entire shift on
                        --lcd_data <= "00000100"; --decrement mode, entire shift off
                        --lcd_data <= "00000101"; --decrement mode, entire shift on
                        e <= '1';
                        state <= initialize;
                    ELSIF(clk_count < (2200 * freq)) THEN --wait 60 us
                        lcd_data <= "00000000";
                        e <= '0';
                        state <= initialize;
                    ELSE --initialization complete
                        clk_count := 0;
                        busy <= '0';
                        state <= ready;
                    END IF;

                --wait for the enable signal and then latch in the instruction
                WHEN ready =>
                    IF(lcd_enable = '1') THEN
                        busy <= '1';
                        rs <= lcd_bus(9);
                        --rs<= lcd_rs;
                        rw <= lcd_bus(8);
                        --rw <= lcd_rw;
                        lcd_data <= lcd_bus(7 DOWNTO 0);
                        --lcd_data <= lcd_bus;
                        clk_count := 0;
                        state <= send;
                    ELSE
                        busy <= '0';
                        rs <= '0';
                        rw <= '0';
                        lcd_data <= "00000000";
                        clk_count := 0;
                        state <= ready;
                    END IF;

                --send instruction to lcd
                WHEN send =>
                    busy <= '1';
                    IF(clk_count < (50 * freq)) THEN --do not exit for 50us
                        busy <= '1';
                        IF(clk_count < freq) THEN --negative enable
                            e <= '0';
                        ELSIF(clk_count < (14 * freq)) THEN --positive enable half-cycle
                            e <= '1';
                        ELSIF(clk_count < (27 * freq)) THEN --negative enable half-cycle
                            e <= '0';
                        END IF;
                        clk_count := clk_count + 1;
                        state <= send;
                    ELSE
                        clk_count := 0;
                        state <= ready;
                    END IF;

            END CASE;

            ----reset
            --IF(reset_n = '0') THEN
            --    state <= power_up;
            --END IF;

        END IF;
    END PROCESS;
END controller;



----------------------------------------------------
--  
--  Library Name :  de2_vhdl
--  Unit    Name :  test_lcd
--  Unit    Type :  Block Diagram
--  
------------------------------------------------------
 
library ieee;
use ieee.STD_LOGIC_1164.all;
use ieee.STD_LOGIC_UNSIGNED.all;
use ieee.NUMERIC_STD.all;
entity test_lcd is
 
 
end test_lcd;
 
 
use work.all;
architecture test_lcd of test_lcd is
 
  signal busy : std_logic;
  signal clk_50m : std_logic;
  signal lcd_bus : std_logic_vector(9 downto 0 );
  signal lcd_enable : std_logic;
  signal rstn : std_logic;
  component lcd_controller
      port (
            clk : in std_logic;
            reset_n : in std_logic;
            lcd_enable : in std_logic;
            lcd_bus : in std_logic_vector(9 downto 0 );
            busy : out std_logic := '1';
            rw : out std_logic;
            rs : out std_logic;
            e : out std_logic;
            lcd_data : out std_logic_vector(7 downto 0 );
            lcd_on : out std_logic;
            lcd_blon : out std_logic
            );
  end component;
  component lcd_user_logic
      port (
            rstn : in std_logic;
            lcd_busy : in std_logic;
            clk : in std_logic;
            lcd_clk : out std_logic;
            reset_n : out std_logic;
            lcd_enable : out std_logic;
            lcd_bus : out std_logic_vector(9 downto 0 )
            );
  end component;
  component testsub_lcd
      port (
            clk_50m : out std_logic;
            rstn : out std_logic
            );
  end component;
 
  -- Start Configuration Specification
  -- ++ for all : lcd_controller use entity work.lcd_controller(controller);
  -- ++ for all : lcd_user_logic use entity work.lcd_user_logic(behavior);
  -- ++ for all : testsub_lcd use entity work.testsub_lcd(testsub_lcd_a);
  -- End Configuration Specification
 
begin
 
  C0: lcd_controller
    port map (
              clk => clk_50m,
              reset_n => rstn,
              lcd_enable => lcd_enable,
              lcd_bus => lcd_bus(9 downto 0),
              busy => busy,
              rw => open,
              rs => open,
              e => open,
              lcd_data => open,
              lcd_on => open,
              lcd_blon => open);
 
  C1: lcd_user_logic
    port map (
              rstn => rstn,
              lcd_busy => busy,
              clk => clk_50m,
              lcd_clk => open,
              reset_n => open,
              lcd_enable => lcd_enable,
              lcd_bus => lcd_bus(9 downto 0));
 
  C2: testsub_lcd
    port map (
              clk_50m => clk_50m,
              rstn => rstn);
end test_lcd;

