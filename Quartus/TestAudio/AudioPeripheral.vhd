library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity AudioPeripheral is 
	port (
		cs: 			in  std_logic;
		clk: 			in  std_logic;
		resetn: 		in  std_logic;
		input: 		in  std_logic_vector(10 downto 0);
		data: 		in  std_logic_vector(15 downto 0);
		addr: 		out std_logic_vector(15 downto 0);
		rd_en:		out std_logic;
		output: 		out std_logic
	);
end AudioPeripheral;

architecture rtl of AudioPeripheral is
	signal latched_input: std_logic_vector(10 downto 0);
	signal changed_input: std_logic;
	signal zero_data: std_logic;
	signal counter: std_logic_vector(14 downto 0);
	signal counts: std_logic_vector(14 downto 0);
	signal repeat: std_logic;
	signal song: std_logic_vector(9 downto 0);
	signal trigger_song_change: std_logic;
	signal addr_int: std_logic_vector(15 downto 0);
	signal zero_state: std_logic;
begin
	process(resetn, cs, clk, zero_data)
	begin
--		if (resetn = '0') then
--			counter <= (14 downto 0 => '0');
--		elsif (cs = '1') then 
--			latched_input <= input;
--			case song is 
--				when "0000000000" => addr <= x"00F00";
--				when "0000000001"	=> addr <= x"00F11";
--				when "0000000010"	=> addr <= x"00FFF";
--				when others => addr <= x"0FFFF"; 
--			end case;
--		elsif (zero_data = '1' and repeat = '1') then
--			case song is 
--				when "0000000000" => addr <= x"00F00";
--				when "0000000001"	=> addr <= x"00F11";
--				when "0000000010"	=> addr <= x"00FFF";
--				when others => addr <= x"0FFFF"; 
--			end case;
		if (resetn = '0') then
			addr_int <= x"0800";
			zero_state <= '1';
		elsif (rising_edge(clk)) then
			if (zero_data = '1' and zero_state = '0') then
				addr_int <= x"0800";
				rd_en <= '1';
				zero_state <= '1';
			elsif (zero_state = '1') then -- Load the new data
				zero_state <= '0'; 
				rd_en <= '0';
				counter <= (14 downto 0 => '0');
			elsif (counter < counts) then
				rd_en <= '0';
				counter <= counter + 1;
			elsif (zero_data = '0') then
				addr_int <= addr_int + 1;
				rd_en <= '1';
				counter <= (14 downto 0 => '0');
			end if;
		end if;
	end process;
	
	zero_data <= '1' when data = x"0000" else '0';
	
	trigger_song_change <= '1' when (latched_input /= input or (zero_data = '0' and repeat = '1')) else '0';
	
	counts <= data(14 downto 0);
	output <= data(15);
--	output <= '1';
	repeat <= latched_input(10);
	song <= latched_input(9 downto 0);
	
	addr <= addr_int;
end rtl;