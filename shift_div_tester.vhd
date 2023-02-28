library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity shift_div_tester is
	port (
		SW: in std_logic_vector(7 downto 0);
		LEDR: out std_logic_vector(15 downto 0);
		LEDG: out std_logic_vector(7 downto 0)
	);
end;

architecture shift_div_tester_impl of shift_div_tester is
begin
	e1: entity work.shift_div port map(
		a => SW(7 downto 0),
		a_shl => LEDG(7 downto 0),
		a_shr => LEDR(7 downto 0),
		a_ror => LEDR(15 downto 8)
	);
end shift_div_tester_impl;