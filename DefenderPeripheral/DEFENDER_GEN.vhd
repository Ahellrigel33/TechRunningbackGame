-- DEFENDER_GEN.vhd
-- Stephen Fazio, October 2020


library ieee;
LIBRARY LPM;
use ieee.std_logic_1164.all;
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
	
	-- States for No defender, Right, Middle, Right Two, Left, Sides, Left Two
	type state_type is (N, R, M, R2, L, S, L2, row);
	signal state 	  : state_type;
	signal defenders : std_logic_vector (6 downto 0);
	
	signal IO_OUT    : std_logic;
	begin
	
	rand0 : process(cs, resetn) -- linear feedback shift register
		begin
		if resetn = '0' then
			init_lfsr0 <= "000001111100110"; -- seed
		elsif rising_edge(cs) then
			lfsr0 <= lfsr0(13 downto 0) & not(lfsr0(14) xor lfsr0(13)); -- randomizer
			init_lfsr0 <= init_lfsr0 + 1; -- change random seed
		end if;
	end process;
	
	rand1 : process(cs, resetn) -- linear feedback shift register opposite direction
	begin
		if resetn = '0' then
			init_lfsr1 <= "000011001111000"; -- different seed
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
			state <= N;
		elsif (rising_edge(cs)) then
			case state is
				when N =>
					defenders <= "0000000";
					case random (2 downto 0) is
						when "001" =>
						state <= R;
						when "010" =>
						state <= M;
						when "011" =>
						state <= R2;
						when "100" =>
						state <= L;
						when "101" =>
						state <= S;
						when "110" =>
						state <= L2;
						--when "111" =>
						--state <= row;
						when others =>
						state <= N;
					end case;
				when R =>
					defenders <= "0000001";
					case random (2 downto 0) is
						when "001" =>
						state <= R;
						when "010" =>
						state <= M;
						when "011" =>
						state <= R2;
						when "100" =>
						state <= L;
						when "101" =>
						state <= S;
						when "110" =>
						state <= L2;
						when others =>
						state <= N;
					end case;
				when M =>
					defenders <= "1000000";
					case random (2 downto 0) is
						when "001" =>
						state <= R;
						when "010" =>
						state <= M;
						when "011" =>
						state <= R2;
						when "100" =>
						state <= L;
						when "101" =>
						state <= S;
						when "110" =>
						state <= L2;
						--when "111" =>
						--state <= row;
						when others =>
						state <= N;
					end case;
				when R2 =>
					defenders <= "1000001";
					case random (2 downto 0) is
						when "001" =>
						state <= R;
						when "010" =>
						state <= M;
						when "011" =>
						state <= R2;
						when "100" =>
						state <= L;
						when "101" =>
						state <= S;
						when "110" =>
						state <= L2;
						--when "111" =>
						--state <= row;
						when others =>
						state <= N;
					end case;
				when L =>
					defenders <= "0001000";
					case random (2 downto 0) is
						when "001" =>
						state <= R;
						when "010" =>
						state <= M;
						when "011" =>
						state <= R2;
						when "100" =>
						state <= L;
						when "101" =>
						state <= S;
						when "110" =>
						state <= L2;
						--when "111" =>
						--state <= row;
						when others =>
						state <= N;
					end case;
				when S =>
					defenders <= "0001001";
					case random (2 downto 0) is
						when "001" =>
						state <= R;
						when "010" =>
						state <= M;
						when "011" =>
						state <= R2;
						when "100" =>
						state <= L;
						when "101" =>
						state <= S;
						when "110" =>
						state <= L2;
						--when "111" =>
						--state <= row;
						when others =>
						state <= N;
					end case;
				when L2 =>
					defenders <= "1001000";
					case random (2 downto 0) is
						when "001" =>
						state <= R;
						when "010" =>
						state <= M;
						when "011" =>
						state <= R2;
						when "100" =>
						state <= L;
						when "101" =>
						state <= S;
						when "110" =>
						state <= L2;
						--when "111" =>
						--state <= row;
						when others =>
						state <= N;
					end case;
				when row =>
					defenders <= "1001001";
					case random (2 downto 0) is
						when "001" =>
						state <= R;
						when "010" =>
						state <= M;
						when "011" =>
						state <= R2;
						when "100" =>
						state <= L;
						when "101" =>
						state <= S;
						when "110" =>
						state <= L2;
						--when "111" =>
						--state <= row;
						when others =>
						state <= N;
					end case;
					
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