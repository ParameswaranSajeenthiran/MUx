----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/21/2023 05:51:43 PM
-- Design Name: 
-- Module Name: TB_Decoder_3_to_8 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TB_Decoder_3_to_8 is
--  Port ( );
end TB_Decoder_3_to_8;

architecture Behavioral of TB_Decoder_3_to_8 is
COMPONENT Decoder_3_to_8
PORT(
I : in STD_LOGIC_VECTOR;
EN : in STD_LOGIC;
Y: OUT STD_LOGIC_VECTOR );
end component;

signal I :STD_LOGIC_VECTOR (2 downto 0);
signal Y : STD_LOGIC_VECTOR (7  downto 0);
signal EN :STD_LOGIC ;



begin

UUT : Decoder_3_to_8 PORT MAP(
I=>I,
EN=>EN,
Y=>Y);

process
begin
------------index No 210553J ---------------------

--210553J --> 0 011 011 001 111 001 

--001
I(0)<='1';
I(1)<='0';
I(2)<='0';
EN<='1';

wait for 100 ns;

--111

I(0)<='1';
I(1)<='1';
I(2)<='1';
EN<='1';

wait for 100 ns;
--000
I(0)<='0';
I(1)<='0';
I(2)<='0';
EN<='1';

wait for 100 ns;

--011
I(0)<='1';
I(1)<='1';
I(2)<='0';
EN<='1';

wait for 100 ns;





end process;





end Behavioral;
