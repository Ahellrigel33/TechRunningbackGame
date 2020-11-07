-- HexPeripheral.vhd



LIBRARY IEEE;
LIBRARY LPM;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;
USE LPM.LPM_COMPONENTS.ALL; 

ENTITY HexPeripheral IS
	generic(
		MIN_COUNT : natural := 0;
		MAX_COUNT : natural := 4096
	);
	
	
	port(
		CS       	: in STD_LOGIC;
		IO_DATA		: in STD_LOGIC_VECTOR(15 downto 0);
		CLK			: in STD_LOGIC;
		resetn	   : in std_logic;
		hex0			: out STD_LOGIC_VECTOR(6 downto 0);
		hex1			: out STD_LOGIC_VECTOR(6 downto 0);
		hex2			: out STD_LOGIC_VECTOR(6 downto 0);
		hex3			: out STD_LOGIC_VECTOR(6 downto 0);
		hex4			: out STD_LOGIC_VECTOR(6 downto 0);
		hex5			: out STD_LOGIC_VECTOR(6 downto 0);
		playerSegs	: in STD_LOGIC_VECTOR(6 downto 0)
		
	);
END HexPeripheral;


ARCHITECTURE a OF HexPeripheral IS
	type instruction is (
		clear,
		writeHex,
		enablePlayer,
		nothing	
		);

	-- patterns latched in each hex display
	signal latch_hex0 	: STD_LOGIC_VECTOR(6 downto 0);
	signal latch_hex1		: STD_LOGIC_VECTOR(6 downto 0);
	signal latch_hex2 	: STD_LOGIC_VECTOR(6 downto 0);
	signal latch_hex3		: STD_LOGIC_VECTOR(6 downto 0);
	signal latch_hex4 	: STD_LOGIC_VECTOR(6 downto 0);
	signal latch_hex5		: STD_LOGIC_VECTOR(6 downto 0);
	signal player_pos		: STD_LOGIC_VECTOR(6 downto 0);
	signal player_en		: STD_LOGIC;
	
	signal instr 		: instruction;
	signal count  : std_logic_vector(11 downto 0);
	
begin


	with (IO_DATA(15 downto 12)) select -- select instruction based on opcode (top 4 bits of instruction)
	instr <=
		clear 				when "0000",
		writeHex 			when "0001",
		enablePlayer		when "0010",
		nothing 	when others;
	
	
	process(cs)
	begin
		if rising_edge(cs) then		
			case instr is
				when clear =>	-- turn off all segments of all 7-segment LED displays
					latch_hex0 <= "1111111";
					latch_hex1 <= "1111111";
					latch_hex2 <= "1111111";
					latch_hex3 <= "1111111";
					latch_hex4 <= "1111111";
					latch_hex5 <= "1111111";
					player_en <= '1';
				
				when writeHex =>	-- turn on/off segments of 7-segment LED display (0 = off for IO_DATA, 1 = on for IO_DATA)
					case IO_DATA(11 downto 9) is	-- display to change is the decimal value of 9th to 11th bits of instruction
						when "000" =>
							latch_hex0 <= not IO_DATA(6 downto 0);	-- segments to turn on/off are bottom 7 bits of instruction
						when "001" =>
							latch_hex1 <= not IO_DATA(6 downto 0);	-- segments to turn on/off are bottom 7 bits of instruction
						when "010" =>
							latch_hex2 <= not IO_DATA(6 downto 0);	-- segments to turn on/off are bottom 7 bits of instruction
						when "011" =>
							latch_hex3 <= not IO_DATA(6 downto 0);	-- segments to turn on/off are bottom 7 bits of instruction
						when "100" =>
							latch_hex4 <= not IO_DATA(6 downto 0);	-- segments to turn on/off are bottom 7 bits of instruction
						when "101" =>
							latch_hex5 <= not IO_DATA(6 downto 0);	-- segments to turn on/off are bottom 7 bits of instruction
						when others =>
							latch_hex0 <= "1111111";
					end case;
				
				when enablePlayer =>	-- load in position from player interface peripheral and turn on segment in Hex0 corresponding to current position
					case IO_DATA(0) is
						when '0' =>
							player_en <= '0';
						when '1' =>
							player_en <= '1';
					end case;
						
					
				when others =>
					latch_hex0 <= "1111111";
					
			end case;
		end if;
	end process;
	
	
	process (clk)
		variable  cnt  : integer range MIN_COUNT to MAX_COUNT;
	begin
		if (rising_edge(clk)) then
			if resetn = '0' then
				-- Reset the counter to 0
				cnt := 0;
			else
				-- Increment the counter 	   
				cnt := cnt + 1;
			end if;
		end if;
	
		count <= std_logic_vector(to_unsigned(cnt, count'length));
	end process;
	
	
	-- the bits of player_pos that are 1 when others are dim
	-- all other bits are fully on
	with count(4 downto 0) select player_pos(6 downto 0) <=
		"0000000" when "00001",
		not(playerSegs) when others;
	

	
	-- output the pattern to the actual 7-segment display
	hex0 <= 
		(player_pos or playerSegs) and latch_hex0 	-- use playerSegs to turn off the on bits of player_pos, and add defender if there is overlap
			when player_en = '1' else
		latch_hex0
			when player_en = '0';
	hex1 <= latch_hex1;	
	hex2 <= latch_hex2;
	hex3 <= latch_hex3;
	hex4 <= latch_hex4;
	hex5 <= latch_hex5;
	
END a;

