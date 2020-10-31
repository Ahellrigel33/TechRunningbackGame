library ieee;
library altera_mf;
library lpm;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use altera_mf.altera_mf_components.all;
use lpm.lpm_components.all;

entity MemPeripheral is
	port(
		clock       : in    std_logic;
		s_mw        : in    std_logic;
		s_data		: out   std_logic_vector(15 downto 0);
		s_addr	   : in	  std_logic_vector(10 downto 0);
		s_ac			: in    std_logic_vector(15 downto 0);
		scomp_en    : out   std_logic;
		a_addr	   : in	  std_logic_vector(15 downto 0);
		a_data		: out   std_logic_vector(15 downto 0);
		a_rd_en     : in    std_logic;
		resetn      : in    std_logic
	);
end MemPeripheral;

architecture rtl of MemPeripheral is
	type state_t is (SCOMP, LATCH, AUDIO);
	signal state: state_t;
	signal a_state: std_logic;
	signal addr: 	 std_logic_vector(15 downto 0);
	signal data: 	 std_logic_vector(15 downto 0);
	signal ac: 		 std_logic_vector(15 downto 0);
	signal mw:      std_logic;
	signal s_addr_latch:	std_logic_vector(10 downto 0);
	signal s_ac_latch:   std_logic_vector(15 downto 0);
	signal s_mw_latch:   std_logic;
	signal a_data_latch: std_logic_vector(15 downto 0);
begin
	altsyncram_component : altsyncram
	GENERIC MAP (
		numwords_a => 65536,
		widthad_a => 16,
		width_a => 16,
	init_file => "Up.mif",
		clock_enable_input_a => "BYPASS",
		clock_enable_output_a => "BYPASS",
		intended_device_family => "MAX 10",
		lpm_hint => "ENABLE_RUNTIME_MOD=NO",
		lpm_type => "altsyncram",
		operation_mode => "SINGLE_PORT",
		outdata_aclr_a => "NONE",
		outdata_reg_a => "UNREGISTERED",
		power_up_uninitialized => "FALSE",
		read_during_write_mode_port_a => "NEW_DATA_NO_NBE_READ",
		width_byteena_a => 1
	)
	PORT MAP (
		wren_a    => mw,
		clock0    => clock,
		address_a => addr,
		data_a    => ac,
		q_a       => data
	);
--	
	process(resetn, clock)
	begin
		if(resetn = '0') then
			state <= SCOMP;
			a_state <= '0';
		elsif(rising_edge(clock)) then
			case state is
			when SCOMP =>
				if(a_rd_en = '1' and a_state = '0') then
					a_state <= '1';
					state <= LATCH;
				elsif(a_rd_en = '0') then
					a_state <= '0';
				end if;
			when LATCH =>
				s_mw_latch   <= s_mw;
				s_addr_latch <= s_addr;
				s_ac_latch   <= s_ac;
				state <= AUDIO;
			when AUDIO =>
				a_data_latch <= data;
				state <= SCOMP;
			end case;
		end if;
		if(falling_edge(clock)) then
			if(state = SCOMP) then
				scomp_en <= '1';
			else
				scomp_en <= '0';
			end if;
		end if;
	end process;
	
	addr 	 <= (15 downto 11 => '0') & s_addr when state = SCOMP else 
				 a_addr when state = LATCH else
				 (15 downto 11 => '0') & s_addr_latch when state = AUDIO;
	ac		 <= s_ac when (state = SCOMP or state = LATCH) else
				 s_ac_latch when state = AUDIO;
	mw     <= s_mw when state = SCOMP else
				 '0' when state = LATCH else
				 s_mw_latch when state = AUDIO;
	s_data <= data;
	
	a_data <= a_data_latch;

end rtl;
