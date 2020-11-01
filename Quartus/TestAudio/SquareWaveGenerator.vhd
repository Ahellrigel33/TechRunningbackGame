library ieee;
library altera_mf;
library lpm;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use altera_mf.altera_mf_components.all;
use lpm.lpm_components.all;


entity PWMGenerator is
	port (
		Duty:  	in  unsigned (7 downto 0),
		Clk:   	in  std_logic,
		Wave:  	out std_logic,
		resetn: 	in  std_logic
	);
end PWMGenerator;


architecture rtl of SquareWaveGenerator is
	signal counter		: unsigned (7 downto 0);
begin
	
end rtl;