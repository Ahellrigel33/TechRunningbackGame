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
	signal a_read: std_logic;
	signal a_ready: std_logic;
	signal s_en: std_logic;
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
			a_read <= '1';
			a_ready <= '1';
		elsif(falling_edge(clock)) then
			if(a_rd_en = '1' and a_ready = '1') then
				a_read <= '0';
				a_ready <= '0';
				s_en <= '0';
			elsif(a_rd_en = '1' and a_read = '0') then
				a_data_latch <= data;
				a_read <= '1';
			elsif(a_read = '1') then	
				s_en <= '1';
				if (a_rd_en = '0') then
					a_ready <= '1';
				end if;
			end if;
		end if;
	end process;
	
	addr <= (15 downto 11 => '0') & s_addr when a_read = '1' else
			  a_addr;
	mw <= s_mw when a_read = '1' else
			'0';
	ac <= s_ac;
	a_data <= a_data_latch;
	scomp_en <= s_en;
	s_data <= data;
	
end rtl;
