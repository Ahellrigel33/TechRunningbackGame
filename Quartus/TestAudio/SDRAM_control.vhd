library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity SDRAM_control is
	port (
		clock: in std_logic;
		in_addr: in std_logic_vector(24 downto 0);
		in_rden: in std_logic;
		out_data: out std_logic_vector(15 downto 0);
		BA: out std_logic_vector(1 downto 0);
		A: out std_logic_vector(12 downto 0);
		DQ: in std_logic_vector(15 downto 0);
		nCAS: out std_logic;
		nCS: out std_logic;
		nRAS: out std_logic;
		nWE: out std_logic;
		CKE: out std_logic;
		DQML: out std_logic;
		DQMH: out std_logic
	);
end SDRAM_control;

architecture rtl of SDRAM_control is
	type state_t is (S_IDLE, S_ACT, S_READ, S_PRE);
	signal state: state_t;
	signal next_state: state_t;
	signal prev_rden: std_logic;
	signal bank: std_logic_vector(1 downto 0);
	signal col: std_logic_vector(9 downto 0);
	signal row: std_logic_vector(12 downto 0);
begin
	bank <= in_addr(24 downto 23);
	col  <= in_addr(22 downto 13);
	row  <= in_addr(12 downto 0);
	
	process(clock)
	begin
		if(rising_edge(clock)) then
			state <= next_state;
			prev_rden <= in_rden;
		end if;
	end process;
	
	next_state <= S_ACT  when (state = S_IDLE and in_rden = '1' and prev_rden = '0') else
					  S_READ when state = S_ACT  else
					  S_PRE  when state = S_READ else
					  S_IDLE;
	
	nCAS <= '1' when (next_state = S_IDLE or next_state = S_ACT or next_state = S_PRE) else 
	        '0' when (next_state = S_READ);
	nRAS <= '1' when (next_state = S_IDLE or next_state = S_READ) else
	        '0' when (next_state = S_ACT  or next_state = S_PRE);
	
	A <= (12 downto 10 => '0') & col when next_state = S_ACT  else
	                             row when next_state = S_READ else
	     (12 downto 0 => '0')        when (next_state = S_PRE or next_state = S_IDLE);
	
	nCS  <= '0';
	nWE <= '1';		  
	BA <= bank;
	DQML <= '0';
	DQMH <= '0';
	out_data <= DQ;
end rtl;