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
		a_rd_en     : in    std_logic
	);
end MemPeripheral;

architecture rtl of MemPeripheral is
	type state_t is (SCOMP, LATCH, AUDIO);
	signal addr: std_logic_vector(15 downto 0);
	signal a_state : std_logic;
	signal data : std_logic_vector(15 downto 0);
begin
	altsyncram_component : altsyncram
	GENERIC MAP (
		numwords_a => 65536,
		widthad_a => 16,
		width_a => 16,
		init_file => "TestDone.mif",
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
		wren_a    => s_mw,
		clock0    => clock,
		address_a => addr,
		data_a    => s_ac,
		q_a       => data
	);
--	
	process(clock)
	begin
		if(rising_edge(clock)) then
			if(a_rd_en = '1' and a_state = '0') then
				a_state <= '1';
				a_data <= data;
			elsif(a_rd_en = '0') then
				a_state <= '0';
			end if;
		end if;
	end process;
	
--	addr <= (15 downto 11 => '0') & s_addr;
	addr <= a_addr;
	
	scomp_en <= '0';
--	s_data <= data;
	

end rtl;
