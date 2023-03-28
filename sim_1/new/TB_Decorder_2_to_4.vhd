----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/21/2023 05:33:01 PM
-- Design Name: 
-- Module Name: TB_Decorder_2_to_4 - Behavioral
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

entity TB_Decorder_2_to_4 is
--  Port ( );
end TB_Decorder_2_to_4;

architecture Behavioral of TB_Decorder_2_to_4 is

COMPONENT Decoder_2_to_4
PORT(
I :in STD_LOGIC_VECTOR;
EN : in STD_LOGIC;
Y: OUT STD_LOGIC_VECTOR );
end component;

signal I :STD_LOGIC_VECTOR (1 downto 0);
signal Y : STD_LOGIC_VECTOR (3  downto 0);
signal EN :STD_LOGIC ;



begin

UUT : Decoder_2_to_4 PORT MAP(
I=>I,
EN=>EN,
Y=>Y);

process
begin
I(0)<='0';
I(1)<='0';
EN<='1';

wait for 100 ns ;


I(0)<='0';
I(1)<='1';
EN<='1';

wait for 100 ns ;


I(0)<='1';
I(1)<='0';
EN<='1';

wait for 100 ns ;

I(0)<='1';
I(1)<='1';
EN<='1';

wait for 100 ns ;
I(0)<='0';
I(1)<='0';
EN<='0';

wait for 100 ns ;


I(0)<='0';
I(1)<='1';
EN<='0';

wait for 100 ns ;


I(0)<='1';
I(1)<='0';
EN<='0';

wait for 100 ns ;

I(0)<='1';
I(1)<='1';
EN<='0';

wait for 100 ns ;
--wait;



end process;





end Behavioral;
