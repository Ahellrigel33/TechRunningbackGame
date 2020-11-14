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
	signal s_data_latch: std_logic_vector(15 downto 0);
	signal s_en_int: std_logic;
	signal addr_en: std_logic;
	signal rising_rd_en: std_logic;
	signal rose_rd_en: std_logic;
begin
	altsyncram_component : altsyncram
	GENERIC MAP (
		numwords_a => 65536,
		widthad_a => 16,
		width_a => 16,
		init_file => "GameLogic.mif",
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

	process(resetn, clock)
	begin
		if(resetn = '0') then
			s_en <= '1';
			s_en_int <= '1';
			s_data_latch <= x"0000";
			a_data_latch <= x"0000";
		elsif(falling_edge(clock)) then
			if (rising_rd_en = '1') then
				s_en <= '0';
				s_en_int <= '0';
			elsif (s_en_int = '0') then
				a_data_latch <= data;
				s_en_int <= '1';
			elsif (s_en = '0') then
				s_en <= '1';
				s_data_latch <= data;
			elsif (s_en = '1') then
				s_data_latch <= data;
			end if;
		end if;
	end process;
	
	process(clock, resetn)
	begin
		if(resetn = '0') then
			rising_rd_en <= '0';
		elsif(rising_edge(clock)) then
			if(a_rd_en = '1' and rose_rd_en = '0') then
				rising_rd_en <= '1';
				rose_rd_en <= '1';
			elsif(a_rd_en = '0') then
				rose_rd_en <= '0';
			else 
				rising_rd_en <= '0';
			end if;
		end if;
	end process;
	
	addr <= (15 downto 11 => '0') & s_addr when s_en_int = '1' else
			  a_addr;
	mw <= s_mw and s_en;
	ac <= s_ac;
--	a_data <= data;
	a_data <= a_data_latch;
	scomp_en <= s_en;
--	scomp_en <= '1';
	s_data <= s_data_latch;
	
end rtl;
