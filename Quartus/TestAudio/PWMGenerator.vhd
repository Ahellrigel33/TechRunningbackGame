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
		duty:  	in  unsigned (7 downto 0),
		clk:   	in  std_logic,
		wave:  	out std_logic,
		resetn: 	in  std_logic
	);
end PWMGenerator;


architecture rtl of SquareWaveGenerator is
	signal counter		: unsigned (7 downto 0);
	
	
begin
	internal_counter: work.counter
		 PORT MAP
		 (
			  clock => clk,
			  q => counter
		 );

	process (counter(7))
	begin 
		
	
	end
	
	process (counter(0))
	begin
		if(rising_edge(counter(0)))
		then
		
		end
	
	end
	
	
	process(resetn)
		if (resetn = '0') then 
			counter <= "00000000";
		end
	end
end rtl;