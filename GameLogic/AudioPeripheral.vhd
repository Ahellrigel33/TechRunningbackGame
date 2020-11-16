library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity AudioPeripheral is 
	port (
		cs: 			in  std_logic;
		clk: 			in  std_logic;
		resetn: 		in  std_logic;
		input: 		in  std_logic_vector(15 downto 0);
		data: 		in  std_logic_vector(15 downto 0);
		addr: 		out std_logic_vector(15 downto 0);
		output: 		out std_logic
	);
end AudioPeripheral;

architecture rtl of AudioPeripheral is
	signal latched_input: std_logic_vector(15 downto 0);
	signal prev_latched_input: std_logic_vector(15 downto 0);
	signal changed_input: std_logic;
	signal zero_data: std_logic;
	signal counter: std_logic_vector(14 downto 0);
	signal counts: std_logic_vector(14 downto 0);
	signal repeat: std_logic;
	signal song: std_logic_vector(14 downto 0);
	signal trigger_song_change: std_logic;
	signal addr_int: std_logic_vector(15 downto 0);
	signal zero_state: std_logic;
begin
	process(resetn, cs)
	begin
		if(resetn = '0') then
			latched_input <= x"0005";
		elsif (rising_edge(cs)) then
			latched_input <= input;
		end if;
	end process;
	
	process(resetn, clk, zero_data)
	begin
		if (resetn = '0') then
			addr_int <= x"0800";
			zero_state <= '1';
			prev_latched_input <= x"FFFF";
		elsif (rising_edge(clk)) then
			if ((zero_data = '1' and zero_state = '0' and repeat = '1') or changed_input = '1') then
				case song(11 downto 0) is
					when x"001" => addr_int <= x"0800"; -- ramblinWreck
					when x"002" => addr_int <= x"96F1"; -- running
					when x"003" => addr_int <= x"A2BC"; -- hit
					when x"004" => addr_int <= x"B394"; -- whoosh
					when others => addr_int <= x"FFFF";
				end case;
				zero_state <= '1';
			elsif (zero_state = '1') then -- Load the new data
				zero_state <= '0'; 
				counter <= (14 downto 0 => '0');
			elsif (counter < counts) then
				counter <= counter + 1;
			elsif (zero_data = '0') then
				addr_int <= addr_int + 1;
				counter <= (14 downto 0 => '0');
			end if;
			prev_latched_input <= latched_input;
		end if;
	end process;
	
	zero_data <= '1' when data = x"0000" else '0';
	
	changed_input <= '1' when latched_input /= prev_latched_input else '0';
	
	trigger_song_change <= '1' when (latched_input /= input or (zero_data = '0' and repeat = '1')) else '0';
	
	counts <= data(14 downto 0);
	output <= data(15);
	repeat <= latched_input(15);
	song <= latched_input(14 downto 0);
	
	addr <= addr_int;
end rtl;