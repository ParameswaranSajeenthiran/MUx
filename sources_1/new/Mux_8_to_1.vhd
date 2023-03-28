----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/21/2023 06:02:30 PM
-- Design Name: 
-- Module Name: Mux_8_to_1 - Behavioral
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

entity Mux_8_to_1 is
    Port ( S : in STD_LOGIC_VECTOR (2 downto 0);
           D : in STD_LOGIC_VECTOR (7 downto 0);
           E : in STD_LOGIC;
           Y : out STD_LOGIC);
end Mux_8_to_1;

architecture Behavioral of Mux_8_to_1 is


component Decoder_3_to_8
port(
I: in STD_LOGIC_VECTOR;
EN: in STD_LOGIC;
Y: out STD_LOGIC_VECTOR );
end component;
signal EN : STD_LOGIC;
signal decoder_out : STD_LOGIC_VECTOR (7 downto 0);
signal SELECT_IN : STD_LOGIC_VECTOR(2 downto 0);

begin
Decode_3_to_8 : Decoder_3_to_8
port map(
I =>SELECT_IN,
EN => EN,
Y => decoder_out );
SELECT_IN(0)<=S(0);
SELECT_IN(1)<=S(1);
SELECT_IN(2)<=S(2);
EN<=E;


Y<=(decoder_out(0) AND D(0) )OR (decoder_out(1) AND D(1) )OR (decoder_out(2) AND D(2) )OR (decoder_out(3) AND D(3) )OR (decoder_out(4) AND D(4) )OR (decoder_out(5) AND D(5) )OR (decoder_out(6) AND D(6) )OR (decoder_out(7) AND D(7) ) ;




end Behavioral;
