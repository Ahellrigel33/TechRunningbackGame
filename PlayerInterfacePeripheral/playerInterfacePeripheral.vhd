-- playerInterfacePeripheral.vhd



LIBRARY IEEE;
LIBRARY LPM;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;
USE LPM.LPM_COMPONENTS.ALL; 

ENTITY playerInterfacePeripheral IS
	port(
		CS       : in STD_LOGIC;
		leftBut	: in STD_LOGIC;
		rightBut	: in STD_LOGIC;
		CLK		: in STD_LOGIC;
		resetn   : in std_logic;
		hexPlayer: out STD_LOGIC_VECTOR(6 downto 0);
		IO_DATA  : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0)


		
	);
END playerInterfacePeripheral;


ARCHITECTURE a OF playerInterfacePeripheral IS
	type direction is (
		left,
		right,
		stay
	);
	
	type position is (
		left,
		right,
		middle
	);

	
	signal move			: direction;
	signal currentPos : position;
	signal nextPos		: position;
	signal playerSegs	: STD_LOGIC_VECTOR(6 downto 0);
	signal IO_OUT 		: STD_LOGIC_VECTOR(15 downto 0);
	signal nextLeft_en	: STD_LOGIC;
	signal nextRight_en: STD_LOGIC;
	signal currLeft_en	: STD_LOGIC;
	signal currRight_en: STD_LOGIC;
	
	
begin
	-- Use LPM function to create bidirectional I/O data bus
   IO_BUS: lpm_bustri
	GENERIC MAP (
		lpm_width => 16
	)
	PORT MAP (
      data     => IO_OUT,
      enabledt => CS,
      tridata  => IO_DATA
    );
	 
	

	
	-- process block for the state machine
	process(CLK, resetn) 
	begin
		if resetn = '0' then
			currentPos <= middle;
		elsif rising_edge(CLK) then
			currentPos <= nextPos;
			currLeft_en <= nextLeft_en;
			currRight_en <= nextRight_en;
		end if;
	end process;
	

	
	process 
	begin
		wait until rising_edge(CS);
		IO_OUT(6 downto 0) <= not(playerSegs);
	end process;
	
	
	nextPos <=
		left when
			currentPos = middle and leftBut = '0' and currLeft_en = '1'
			else
		right when
			currentPos = middle and rightBut = '0' and currRight_en = '1'
			else
		middle when
			(currentPos = left and rightBut = '0' and currRight_en = '1')
			or (currentPos = right and leftBut = '0' and currLeft_en = '1')
			else
		currentPos;
	
	nextLeft_en <=
		'0' when
			leftBut = '0'
			else
		'1' when
			leftBut = '1';
	nextRight_en <=
		'0' when
			rightBut = '0'
			else
		'1' when
			rightBut = '1';
--			
--	nextLeftState <=
--		pressed when
--			leftBut = '0' and leftState = released
--			else
--		released when
--			leftBut = '1' and
--	
	with currentPos select
	playerSegs <= 
		"1110111" when left,
		"0111111" when middle,
		"1111110" when right,
		"1111111" when others;

	hexPlayer <= playerSegs;
	
	
	
END a;

