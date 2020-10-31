-- HexPeripheral.vhd


LIBRARY IEEE;
LIBRARY LPM;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE LPM.LPM_COMPONENTS.ALL; 

ENTITY HexPeripheral IS
	PORT(
		CS       : in STD_LOGIC;
		IO_DATA	: in STD_LOGIC_VECTOR(15 downto 0);
		
		hex0		: out STD_LOGIC_VECTOR(6 downto 0);
		hex1		: out STD_LOGIC_VECTOR(6 downto 0);
		hex2		: out STD_LOGIC_VECTOR(6 downto 0);
		hex3		: out STD_LOGIC_VECTOR(6 downto 0);
		hex4		: out STD_LOGIC_VECTOR(6 downto 0);
		hex5		: out STD_LOGIC_VECTOR(6 downto 0)
		
	);
END HexPeripheral;


ARCHITECTURE a OF HexPeripheral IS
	type instruction is (
		clear,
		writeHex,
		writePlayer,
nothing	);

	-- patterns latched in each hex display
	signal latch_hex0 	: STD_LOGIC_VECTOR(6 downto 0);
	signal latch_hex1		: STD_LOGIC_VECTOR(6 downto 0);
	signal latch_hex2 	: STD_LOGIC_VECTOR(6 downto 0);
	signal latch_hex3		: STD_LOGIC_VECTOR(6 downto 0);
	signal latch_hex4 	: STD_LOGIC_VECTOR(6 downto 0);
	signal latch_hex5		: STD_LOGIC_VECTOR(6 downto 0);
	signal latch_player 	: STD_LOGIC_VECTOR(6 downto 0);

	signal instr 		: instruction;
	
	
begin


	
	with (IO_DATA(15 downto 12)) select -- select instruction based on opcode (top 4 bits of instruction)
	instr <=
		clear 		when "0000",
		writeHex 	when "0001",
		writePlayer when "0010",
		nothing 		when others;
	
	
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
					latch_player <= "1111111";
				
				when writeHex =>	-- turn on/off segments of 7-segment LED display
					case IO_DATA(11 downto 9) is	-- display to change is the decimal value of 9th to 11th bits of instruction
						when "000" =>
							latch_hex0 <= IO_DATA(6 downto 0);	-- segments to turn on/off are bottom 7 bits of instruction
						when "001" =>
							latch_hex1 <= IO_DATA(6 downto 0);	-- segments to turn on/off are bottom 7 bits of instruction
						when "010" =>
							latch_hex2 <= IO_DATA(6 downto 0);	-- segments to turn on/off are bottom 7 bits of instruction
						when "011" =>
							latch_hex3 <= IO_DATA(6 downto 0);	-- segments to turn on/off are bottom 7 bits of instruction
						when "100" =>
							latch_hex4 <= IO_DATA(6 downto 0);	-- segments to turn on/off are bottom 7 bits of instruction
						when "101" =>
							latch_hex5 <= IO_DATA(6 downto 0);	-- segments to turn on/off are bottom 7 bits of instruction
						when others =>
							latch_hex0 <= "1111111";
					end case;
				
				when writePlayer =>	-- turn 
					case IO_DATA(11 downto 9) is
						when "100" =>		-- player is in left position
							latch_player <= "1110111";
						when "010" =>		-- player is in middle position
							latch_player <= "0111111";
						when "001" =>		-- player is in right position
							latch_player <= "1111110";
						when others =>		-- when wrong input, light up all 7 segments
							latch_player <= "1111111";
					end case;
					
				when others =>
					latch_hex0 <= "1111111";
			end case;
		end if;
	end process;
	

	
			
--			case (IO_DATA(15 downto 12)) is -- opcode is top 4 bits of instruction
--				when "0000" =>
--					instr <= clear;
--				when "1111" =>
--					instr <= clear;
--				when "0001" =>
--					instr <= writeHex;
--				when "0010" =>
--					instr <= writePlayer;
--				when others =>
--					instr <= nothing;
--					
--			end case;
--			
	
		
	hex0 <= (latch_hex0 and latch_player);
	hex1 <= latch_hex1;
	hex2 <= latch_hex2;
	hex3 <= latch_hex3;
	hex4 <= latch_hex4;
	hex5 <= latch_hex5;
	
END a;

