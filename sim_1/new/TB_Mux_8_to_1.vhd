----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/21/2023 06:32:32 PM
-- Design Name: 
-- Module Name: TB_Mux_8_to_1 - Behavioral
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

entity TB_Mux_8_to_1 is
--  Port ( );
end TB_Mux_8_to_1;
architecture Behavioral of TB_Mux_8_to_1 is
COMPONENT Mux_8_to_1 PORT(

D : in STD_LOGIC_VECTOR ;
E : in STD_LOGIC ;
S : in STD_LOGIC_VECTOR;
Y : out STD_LOGIC );
end component;

signal S_IN :STD_LOGIC_VECTOR (2 downto 0);
signal D_IN : STD_LOGIC_VECTOR (7  downto 0);
signal EN :STD_LOGIC ;
signal Y_OUT  :STD_LOGIC ;

begin
UUT : Mux_8_to_1 PORT MAP(
S=>S_IN,
D=>D_IN,
E=>EN,
Y=>Y_OUT);


process
begin 
D_IN(0)<='0';
D_IN(1)<='0';
D_IN(2)<='0';
D_IN(3)<='0';
D_IN(4)<='0';
D_IN(5)<='0';
D_IN(6)<='0';
D_IN(7)<='0';
S_IN(0)<='0';
S_IN(1)<='0';
S_IN(2)<='1';
EN<='1';

wait for 100 ns ;
end process;





end Behavioral;
