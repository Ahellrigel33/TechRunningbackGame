-- DEFENDER_GEN.vhd
-- Stephen Fazio, October 2020


library ieee;
LIBRARY LPM;
use ieee.std_logic_1164.all;
USE IEEE.STD_LOGIC_ARITH.ALL;
use ieee.std_logic_unsigned.all;
USE LPM.LPM_COMPONENTS.ALL;

entity DefenderPeripheral is
    port(
        cs            : in  std_logic;  -- chip select
        resetn        : in  std_logic;  -- active-low reset
		  IO_WRITE      : in  std_logic;
		  IO_DATA 		 : inout std_logic_vector(15 downto 0)
    );
end DefenderPeripheral;


architecture Internals of DefenderPeripheral is   -- Define the internal architecture of the device
	
	signal lfsr0 	  : std_logic_vector(14 downto 0);  -- random number generator
	signal init_lfsr0: std_logic_vector(14 downto 0);  -- random number seed
	signal lfsr1     : std_logic_vector(14 downto 0);  -- another random number generator
	signal init_lfsr1: std_logic_vector(14 downto 0);  -- other random numer seed
	signal random 	  : std_logic_vector(14 downto 0);  -- overall random output
	signal A 		  : std_logic_vector(0  downto 0); -- used for difficulty encoding LSB
	signal B 		  : std_logic_vector(0  downto 0);
	
	-- States for Default, RightTwo, LeftTwo, and Sides
	type state_type is (D, R2, L2, S);
	signal state 	  : state_type;
	signal defenders : std_logic_vector (6 downto 0);
	type difficulty_type is ( easy, medium, hard, worst );
	signal difficulty: difficulty_type;
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
					--L
					if 31700 < random(14 downto 0) AND random(14 downto 0) < 32767 then
						defenders <= (A and B) & "001000";
						if ((A > 0) and (B > 0)) then
							state <= L2;
						end if;
					end if;
					--N
					if 29700 < random(14 downto 0) AND random(14 downto 0) < 31700 then
						defenders <= "0000000";
					end if;
					--S
					if 26650 < random(14 downto 0) AND random(14 downto 0) < 29700 then
						defenders <= ((not B) and A) & "00" & B & "00" & B;
						state <= S;
					end if;
					--R2
					if 24600 < random(14 downto 0) AND random(14 downto 0) < 26650 then
						state <= R2;
						defenders <= B & "00000" & (A or B);
					end if;
					--L2
					if 22550 < random(14 downto 0) AND random(14 downto 0) < 24600 then
						state <= L2;
						defenders <= B & "00" & (A or B) & "000";
					end if;
					--M
					if 20500 < random(14 downto 0) AND random(14 downto 0) < 22550 then
						defenders <= (not(A and B)) & "00" & (A and B) & "00" & (A and B);
					end if;
					--N
					if 19500 < random(14 downto 0) AND random(14 downto 0) < 20500 then
						defenders <= "0000000";
					end if;
					--R
					if 16400 < random(14 downto 0) AND random(14 downto 0) < 18450 then
						defenders <= (A and B) & "000001";
						if ((A > 0) and (B > 0)) then
							state <= R2;
						end if;
					end if;
					--L
					if 12800< random(14 downto 0) AND random(14 downto 0) < 16400 then
						defenders <= (A and B) & "001000";
						if ((A > 0) and (B > 0)) then
							state <= L2;
						end if;
					end if;
					--N
					if 12300 < random(14 downto 0) AND random(14 downto 0) < 12800 then
						defenders <= "0000000";
					end if;
					--S
					if 10250 < random(14 downto 0) AND random(14 downto 0) < 12300 then
						defenders <= ((not B) and A) & "00" & B & "00" & B;
						state <= S;
					end if;
					--R2
					if 8200 < random(14 downto 0) AND random(14 downto 0) < 10250 then
						state <= R2;
						defenders <= B & "00000" & (A or B);
					end if;
					--L2
					if 6150 < random(14 downto 0) AND random(14 downto 0) < 8200 then
						state <= L2;
						defenders <= B & "00" & (A or B) & "000";
					end if;
					--M
					if 3100 < random(14 downto 0) AND random(14 downto 0) < 6150 then
						defenders <= (not(A and B)) & "00" & (A and B) & "00" & (A and B);
					end if;
					--N
					if 1000 < random(14 downto 0) AND random(14 downto 0) < 3100 then
						defenders <= "0000000";
					end if;
					--R
					if 0 < random(14 downto 0) AND random(14 downto 0) < 1000 then
						defenders <= (A and B) & "000001";
						if ((A > 0) and (B > 0)) then
							state <= R2;
						end if;
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
	
	DifficultyLatch : process (cs, resetn, IO_DATA)
	begin 
		if resetn = '0' then
			B <= "0";
			A <= "0";
		elsif (rising_edge (cs) and (IO_WRITE = '1')) then
			B <= IO_DATA (1 downto 1);
			A <= IO_DATA (0 downto 0);
		end if;
	end process;
		
	IO_BUS: lpm_bustri  -- tri state drivers for IO bus
	generic map(
		lpm_width =>16
	)
	port map( 			  -- connecting up signals for drivers
		data     => "000000000" & defenders,
	--	data     => "00000000000000" & B & A,
		enabledt => IO_OUT,
		tridata  => IO_DATA
	);
	-- Only drive IO bus when this peripheral is selected and writing is off
	IO_OUT <= (CS and not(IO_WRITE)); 
	
end Internals;