-- DEFENDER_GEN.vhd
-- Stephen Fazio, October 2020


library ieee;
LIBRARY LPM;
use ieee.std_logic_1164.all;
USE IEEE.STD_LOGIC_ARITH.ALL;
use ieee.std_logic_unsigned.all;
USE LPM.LPM_COMPONENTS.ALL;

entity defense is
    port(
        cs            : in  std_logic;  -- chip select
        resetn        : in  std_logic;  -- active-low reset
		  IO_WRITE      : in  std_logic;
		  IO_DATA 		 : inout std_logic_vector(15 downto 0)
    );
end defense;


architecture Internals of defense is   -- Define the internal architecture of the device
	
	signal lfsr0 	  : std_logic_vector(14 downto 0);  -- random number generator
	signal init_lfsr0: std_logic_vector(14 downto 0);  -- random number seed
	signal lfsr1     : std_logic_vector(14 downto 0);  -- another random number generator
	signal init_lfsr1: std_logic_vector(14 downto 0);  -- other random numer seed
	signal random 	  : std_logic_vector(14 downto 0);  -- overall random output
	
	-- States for Default, RightTwo, LeftTwo, and Sides
	type state_type is (D, R2, L2, S);
	signal state 	  : state_type;
	signal defenders : std_logic_vector (6 downto 0);
	
	signal IO_OUT    : std_logic;
	begin
	
	rand0 : process(cs, resetn) -- linear feedback shift register
		begin
		if resetn = '0' then
			init_lfsr0 <= "011011001100010"; -- seed
		elsif rising_edge(cs) then
			lfsr0 <= lfsr0(13 downto 0) & not(lfsr0(14) xor lfsr0(13)); -- randomizer
			init_lfsr0 <= init_lfsr0 + 1; -- change random seed
		end if;
	end process;
	
	rand1 : process(cs, resetn) -- linear feedback shift register opposite direction
	begin
		if resetn = '0' then
			init_lfsr1 <= "011100111101100"; -- different seed
		elsif rising_edge(cs) then
			lfsr1 <= not(lfsr1(0) xor lfsr1(1)) & (lfsr1(14 downto 1)); -- randomizer
			init_lfsr1 <= init_lfsr1 + 1; -- change random seed
		end if;
	end process;
	
	-- combining both shift registers in opposite directions for more randomness
	random <= lfsr0 and lfsr1; 
	

	
	StateMachine : process(cs, resetn) -- 
	begin
		if resetn = '0' then
			state <= D;
		elsif (rising_edge(cs)) then
			case state is
				when D =>
					if 31744 < random(14 downto 0) AND random(14 downto 0) < 32767 then
						defenders <= "0000000";
					end if;
					if 24576 < random(14 downto 0) AND random(14 downto 0) < 30720 then
						defenders <= "0000001";
					end if;
					if 20480 < random(14 downto 0) AND random(14 downto 0) < 24576 then
						defenders <= "1000000";
					end if;
					if 16384 < random(14 downto 0) AND random(14 downto 0) < 20480 then
						state <= R2;
						defenders <= "1000001";
					end if;
					if 12288 < random(14 downto 0) AND random(14 downto 0) < 16384 then
						state <= L2;
						defenders <= "1001000";
					end if;
					if 8192 < random(14 downto 0) AND random(14 downto 0) < 12288 then
						defenders <= "0001001";
						state <= S;
					end if;
					if 1024 < random(14 downto 0) AND random(14 downto 0) < 8192 then
						defenders <= "0001000";
					end if;
					if 0 < random(14 downto 0) AND random(14 downto 0) < 2048 then
						defenders <= "0000000";
					end if;
				when L2 =>
					defenders <= "0000000";
					state <= D;
				when R2 =>
					defenders <= "0000000";
					state <= D;
				when S =>
					defenders <= "0000000";
					state <= D;
				when others =>
						defenders <= "0000000";
			end case;
		end if;
	end process;
		
		
	IO_BUS: lpm_bustri  -- tri state drivers for IO bus
	generic map(
		lpm_width =>16
	)
	port map( 			  -- connecting up signals for drivers
		data     => "000000000" & defenders,
		enabledt => IO_OUT,
		tridata  => IO_DATA
	);
	-- Only drive IO bus when this peripheral is selected and writing is off
	IO_OUT <= (CS and not(IO_WRITE)); 
	
end Internals;