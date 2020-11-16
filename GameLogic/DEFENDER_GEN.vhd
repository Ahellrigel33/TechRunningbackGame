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
	signal random 	  : std_logic_vector(2 downto 0);  -- overall random output
	signal A 		  : std_logic_vector(0  downto 0); -- used for difficulty encoding LSB
	signal B 		  : std_logic_vector(0  downto 0);
	
	-- States for Default, RightTwo, LeftTwo, and Sides
	type state_type is (N, L, R, M, L2, R2, S, N2);
	signal state 	  : state_type;
	signal defenders : std_logic_vector (6 downto 0);
	type difficulty_type is ( easy, medium, hard, worst );
	signal difficulty: difficulty_type;
	signal IO_OUT    : std_logic;
	begin
	
	rand0 : process(cs, resetn) -- linear feedback shift register
		begin
		if resetn = '0' then
			init_lfsr0 <= "011011111111110"; -- seed
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
	
	-- combining both shift registers for more randomness
	random <= ((lfsr0(12 downto 12) or lfsr1(1 downto 1)) & (lfsr0(7 downto 7) or lfsr1(3 downto 3)) & (lfsr0(5 downto 5) or lfsr1(9 downto 9))); 
	

	
	StateMachine : process(cs, resetn) -- 
	begin
		if resetn = '0' then
			state <= N;
		elsif (rising_edge(cs)) then
			case state is
				when N =>
					defenders <= "0000000";
					case random(2 downto 0) is
						when "000" =>
							state <= R;
						when "001" =>
							state <= L;
						when "010" =>
							state <= R;
						when "011" =>
							state <= M;
						when "100" =>
							state <= L2;
						when "101" =>
							state <= R2;
						when "110" =>
							state <= S;
						when "111" =>
							state <= S;
					end case;
				when L =>
					defenders <= (A and B) & "001000";
					case random(2 downto 0) is
						when "000" =>
							state <= L;
						when "001" =>
							if ((A(0 downto 0) = "1") and (B(0 downto 0) = "1")) then
								state <= N2;
							else
								state <= R;
							end if;
						when "010" =>
							state <= M;
						when "011" =>
							state <= L2;
						when "100" =>
							if ((A(0 downto 0) = "1") and (B(0 downto 0) = "1")) then
								state <= S;
							else 
								state <= R2;
							end if;
						when "101" =>
							state <= S;
						when "110" =>
							state <= N2;
						when "111" =>
							state <= N;
					end case;
				when R =>
					defenders <= (A and B) & "000001";
					case random(2 downto 0) is
						when "000" =>
							state <= R;
						when "001" =>
							state <= M;
						when "010" =>
							if ((A(0 downto 0) = "1") and (B(0 downto 0) = "1")) then
								state <= S;
							else
								state <= L2;
							end if;
						when "011" =>
							state <= R2;
						when "100" =>
							state <= S;
						when "101" =>
							state <= N2;
						when "110" =>
							state <= N;
						when "111" =>
							if ((A(0 downto 0) = "1") and (B(0 downto 0) = "1")) then
								state <= N;
							else
								state <= L;
							end if;
					end case;
				when M =>
					defenders <= (not(A and B)) & "00" & (A and B) & "00" & (A and B);
					case random(2 downto 0) is
						when "000" =>
							state <= S;
						when "001" =>
							state <= L2;
						when "010" =>
							state <= R2;
						when "011" =>
							state <= S;
						when "100" =>
							state <= N2;
						when "101" =>
							state <= N;
						when "110" =>
							state <= L;
						when "111" =>
							state <= R;
					end case;
				when L2 =>
					defenders <= B & "00" & (A or B) & "000";
					case random(2 downto 0) is
						when "000" =>
							state <= M;
						when "001" =>
							state <= S;
						when "010" =>
							state <= S;
						when "011" =>
							state <= N2;
						when "100" =>
							state <= N;
						when "101" =>
							state <= L;
						when "110" =>
							if ((A(0 downto 0) = "1") and (B(0 downto 0) = "1")) then
								state <= M;
							else 
								state <= R;
							end if;
						when "111" =>
							state <= M;
					end case;
				when R2 =>
					defenders <= B & "00000" & (A or B);
					case random(2 downto 0) is
						when "000" =>
							state <= S;
						when "001" =>
							state <= N2;
						when "010" =>
							state <= N;
						when "011" =>
							if ((A(0 downto 0) = "1") and (B(0 downto 0) = "1")) then
								state <= M;
							else
								state <= L;
							end if;
						when "100" =>
							state <= R;
						when "101" =>
							state <= M;
						when "110" =>
							state <= M;
						when "111" =>
							state <= S;
					end case;
				when S =>
					defenders <= ((not B) and A) & "00" & B & "00" & B;
					case random(2 downto 0) is
						when "000" =>
							state <= M;
						when "001" =>
							state <= N2;
						when "010" =>
							state <= N;
						when "011" =>
							state <= L;
						when "100" =>
							state <= R;
						when "101" =>
							state <= M;
						when "110" =>
							state <= L2;
						when "111" =>
							state <= R;
					end case;
				when N2 =>
					defenders <= "0000000";
					case random(2 downto 0) is
						when "000" =>
							state <= L;
						when "001" =>
							state <= M;
						when "010" =>
							state <= L;
						when "011" =>
							state <= R;
						when "100" =>
							state <= M;
						when "101" =>
							state <= L2;
						when "110" =>
							state <= R2;
						when "111" =>
							state <= S;
					end case;
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