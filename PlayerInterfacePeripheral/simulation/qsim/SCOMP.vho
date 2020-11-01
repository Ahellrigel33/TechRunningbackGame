-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "10/13/2020 01:54:57"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SCOMP_System IS
    PORT (
	GSENSOR_CS_n : OUT std_logic;
	GSENSOR_SDO : OUT std_logic;
	GSENSOR_SDI : INOUT std_logic;
	clock_50 : IN std_logic;
	KEY0 : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	GSENSOR_SCLK : INOUT std_logic;
	DP : OUT std_logic_vector(0 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0)
	);
END SCOMP_System;

-- Design Ports Information
-- GSENSOR_CS_n	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GSENSOR_SDO	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DP[0]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[6]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[5]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[4]	=>  Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[3]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[2]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[1]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[0]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[6]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[5]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[4]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[3]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[2]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[1]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[0]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[6]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[5]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[4]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[3]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[2]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[1]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[0]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[6]	=>  Location: PIN_E17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[5]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[4]	=>  Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[3]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[2]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[1]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[0]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[6]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[5]	=>  Location: PIN_F19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[4]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[3]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[2]	=>  Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[1]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[0]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[6]	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[5]	=>  Location: PIN_N19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[4]	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[3]	=>  Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[2]	=>  Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[1]	=>  Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[0]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[9]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[8]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[7]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[6]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[5]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[4]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[3]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[2]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[1]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[0]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GSENSOR_SDI	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GSENSOR_SCLK	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SW[0]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY0	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock_50	=>  Location: PIN_N14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF SCOMP_System IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_GSENSOR_CS_n : std_logic;
SIGNAL ww_GSENSOR_SDO : std_logic;
SIGNAL ww_clock_50 : std_logic;
SIGNAL ww_KEY0 : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_DP : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst3|HEX0_EN~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|clock_10Hz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|clock_100kHz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst13|inst|data_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst13|inst13~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|HEX1_EN~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|SWITCH_EN~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|LED_EN~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst13|inst12~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst13|inst14|data_out[7]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_TDO~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \~ALTERA_TDO~~obuf_o\ : std_logic;
SIGNAL \KEY0~input_o\ : std_logic;
SIGNAL \clock_50~input_o\ : std_logic;
SIGNAL \inst1|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst5|count_100kHz[0]~6_combout\ : std_logic;
SIGNAL \inst5|count_100kHz[2]~11\ : std_logic;
SIGNAL \inst5|count_100kHz[3]~12_combout\ : std_logic;
SIGNAL \inst5|count_100kHz[3]~13\ : std_logic;
SIGNAL \inst5|count_100kHz[4]~14_combout\ : std_logic;
SIGNAL \inst5|count_100kHz[4]~15\ : std_logic;
SIGNAL \inst5|count_100kHz[5]~16_combout\ : std_logic;
SIGNAL \inst5|LessThan0~1_combout\ : std_logic;
SIGNAL \inst5|count_100kHz[0]~7\ : std_logic;
SIGNAL \inst5|count_100kHz[1]~8_combout\ : std_logic;
SIGNAL \inst5|count_100kHz[1]~9\ : std_logic;
SIGNAL \inst5|count_100kHz[2]~10_combout\ : std_logic;
SIGNAL \inst5|LessThan0~0_combout\ : std_logic;
SIGNAL \inst5|clock_100kHz_int~0_combout\ : std_logic;
SIGNAL \inst5|clock_100kHz_int~q\ : std_logic;
SIGNAL \inst5|clock_100kHz~feeder_combout\ : std_logic;
SIGNAL \inst5|clock_100kHz~q\ : std_logic;
SIGNAL \inst5|clock_100kHz~clkctrl_outclk\ : std_logic;
SIGNAL \GSENSOR_SCLK~input_o\ : std_logic;
SIGNAL \inst13|inst|count~1_combout\ : std_logic;
SIGNAL \inst1|altpll_component|auto_generated|wire_pll1_locked\ : std_logic;
SIGNAL \inst1|altpll_component|auto_generated|pll_lock_sync~feeder_combout\ : std_logic;
SIGNAL \inst1|altpll_component|auto_generated|pll_lock_sync~q\ : std_logic;
SIGNAL \inst13|inst14|data_out[7]~0_combout\ : std_logic;
SIGNAL \inst13|inst14|data_out[7]~0clkctrl_outclk\ : std_logic;
SIGNAL \inst13|inst|stretch~0_combout\ : std_logic;
SIGNAL \inst13|inst|stretch~q\ : std_logic;
SIGNAL \inst13|inst|count~0_combout\ : std_logic;
SIGNAL \inst13|inst|data_clk~0_combout\ : std_logic;
SIGNAL \inst13|inst|data_clk~q\ : std_logic;
SIGNAL \inst13|inst|data_clk~clkctrl_outclk\ : std_logic;
SIGNAL \inst|state.init~feeder_combout\ : std_logic;
SIGNAL \inst|state.init~q\ : std_logic;
SIGNAL \inst|state.decode~q\ : std_logic;
SIGNAL \inst|state~44_combout\ : std_logic;
SIGNAL \inst|state~48_combout\ : std_logic;
SIGNAL \inst|state.ex_store~q\ : std_logic;
SIGNAL \inst|state~34_combout\ : std_logic;
SIGNAL \inst|state.ex_out~q\ : std_logic;
SIGNAL \inst|state~47_combout\ : std_logic;
SIGNAL \inst|state.ex_iload~q\ : std_logic;
SIGNAL \inst|WideOr7~0_combout\ : std_logic;
SIGNAL \inst|WideOr7~combout\ : std_logic;
SIGNAL \inst|state.fetch~q\ : std_logic;
SIGNAL \inst|state~50_combout\ : std_logic;
SIGNAL \inst|state.ex_return~q\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Selector11~1_combout\ : std_logic;
SIGNAL \inst|PC_stack[9][0]~feeder_combout\ : std_logic;
SIGNAL \inst|state~55_combout\ : std_logic;
SIGNAL \inst|state.ex_call~q\ : std_logic;
SIGNAL \inst|PC_stack[9][0]~1_combout\ : std_logic;
SIGNAL \inst|PC_stack[9][0]~q\ : std_logic;
SIGNAL \inst|Selector129~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[0][0]~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[8][0]~q\ : std_logic;
SIGNAL \inst|Selector118~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[7][0]~q\ : std_logic;
SIGNAL \inst|Selector107~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[6][0]~q\ : std_logic;
SIGNAL \inst|Selector96~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[5][0]~q\ : std_logic;
SIGNAL \inst|Selector85~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[4][0]~q\ : std_logic;
SIGNAL \inst|Selector74~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[3][0]~q\ : std_logic;
SIGNAL \inst|Selector63~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[2][0]~q\ : std_logic;
SIGNAL \inst|Selector52~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[1][0]~q\ : std_logic;
SIGNAL \inst|Selector41~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[0][0]~q\ : std_logic;
SIGNAL \inst|Selector11~2_combout\ : std_logic;
SIGNAL \inst|state~35_combout\ : std_logic;
SIGNAL \inst|state.ex_and~q\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|WideNor0~combout\ : std_logic;
SIGNAL \inst|Selector9~0_combout\ : std_logic;
SIGNAL \inst|Selector9~1_combout\ : std_logic;
SIGNAL \inst|PC_stack[9][2]~feeder_combout\ : std_logic;
SIGNAL \inst|PC_stack[9][2]~q\ : std_logic;
SIGNAL \inst|Selector127~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[8][2]~q\ : std_logic;
SIGNAL \inst|Selector116~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[7][2]~q\ : std_logic;
SIGNAL \inst|Selector105~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[6][2]~q\ : std_logic;
SIGNAL \inst|Selector94~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[5][2]~q\ : std_logic;
SIGNAL \inst|Selector83~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[4][2]~q\ : std_logic;
SIGNAL \inst|Selector72~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[3][2]~q\ : std_logic;
SIGNAL \inst|Selector61~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[2][2]~q\ : std_logic;
SIGNAL \inst|Selector50~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[1][2]~q\ : std_logic;
SIGNAL \inst|Selector39~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[0][2]~q\ : std_logic;
SIGNAL \inst|Selector9~2_combout\ : std_logic;
SIGNAL \inst|next_mem_addr[2]~2_combout\ : std_logic;
SIGNAL \inst|PC_stack[9][4]~q\ : std_logic;
SIGNAL \inst|Selector125~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[8][4]~q\ : std_logic;
SIGNAL \inst|Selector114~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[7][4]~q\ : std_logic;
SIGNAL \inst|Selector103~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[6][4]~q\ : std_logic;
SIGNAL \inst|Selector92~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[5][4]~q\ : std_logic;
SIGNAL \inst|Selector81~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[4][4]~q\ : std_logic;
SIGNAL \inst|Selector70~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[3][4]~q\ : std_logic;
SIGNAL \inst|Selector59~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[2][4]~q\ : std_logic;
SIGNAL \inst|Selector48~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[1][4]~q\ : std_logic;
SIGNAL \inst|Selector37~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[0][4]~q\ : std_logic;
SIGNAL \inst|Selector7~0_combout\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Selector8~1_combout\ : std_logic;
SIGNAL \inst|PC_stack[9][3]~feeder_combout\ : std_logic;
SIGNAL \inst|PC_stack[9][3]~q\ : std_logic;
SIGNAL \inst|Selector126~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[8][3]~q\ : std_logic;
SIGNAL \inst|Selector115~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[7][3]~q\ : std_logic;
SIGNAL \inst|Selector104~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[6][3]~q\ : std_logic;
SIGNAL \inst|Selector93~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[5][3]~q\ : std_logic;
SIGNAL \inst|Selector82~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[4][3]~q\ : std_logic;
SIGNAL \inst|Selector71~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[3][3]~q\ : std_logic;
SIGNAL \inst|Selector60~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[2][3]~q\ : std_logic;
SIGNAL \inst|Selector49~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[1][3]~q\ : std_logic;
SIGNAL \inst|Selector38~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[0][3]~q\ : std_logic;
SIGNAL \inst|Selector8~2_combout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Selector7~1_combout\ : std_logic;
SIGNAL \inst|Selector7~2_combout\ : std_logic;
SIGNAL \inst|next_mem_addr[4]~4_combout\ : std_logic;
SIGNAL \inst|PC_stack[9][5]~feeder_combout\ : std_logic;
SIGNAL \inst|PC_stack[9][5]~q\ : std_logic;
SIGNAL \inst|Selector124~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[8][5]~q\ : std_logic;
SIGNAL \inst|Selector113~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[7][5]~q\ : std_logic;
SIGNAL \inst|Selector102~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[6][5]~q\ : std_logic;
SIGNAL \inst|Selector91~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[5][5]~q\ : std_logic;
SIGNAL \inst|Selector80~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[4][5]~q\ : std_logic;
SIGNAL \inst|Selector69~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[3][5]~q\ : std_logic;
SIGNAL \inst|Selector58~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[2][5]~q\ : std_logic;
SIGNAL \inst|Selector47~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[1][5]~q\ : std_logic;
SIGNAL \inst|Selector36~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[0][5]~q\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|Selector6~1_combout\ : std_logic;
SIGNAL \inst|Selector6~2_combout\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|Selector5~1_combout\ : std_logic;
SIGNAL \inst|PC_stack[9][6]~feeder_combout\ : std_logic;
SIGNAL \inst|PC_stack[9][6]~q\ : std_logic;
SIGNAL \inst|Selector123~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[8][6]~q\ : std_logic;
SIGNAL \inst|Selector112~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[7][6]~q\ : std_logic;
SIGNAL \inst|Selector101~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[6][6]~q\ : std_logic;
SIGNAL \inst|Selector90~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[5][6]~q\ : std_logic;
SIGNAL \inst|Selector79~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[4][6]~q\ : std_logic;
SIGNAL \inst|Selector68~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[3][6]~q\ : std_logic;
SIGNAL \inst|Selector57~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[2][6]~q\ : std_logic;
SIGNAL \inst|Selector46~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[1][6]~q\ : std_logic;
SIGNAL \inst|Selector35~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[0][6]~q\ : std_logic;
SIGNAL \inst|Selector5~2_combout\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|Selector4~1_combout\ : std_logic;
SIGNAL \inst|PC_stack[9][7]~feeder_combout\ : std_logic;
SIGNAL \inst|PC_stack[9][7]~q\ : std_logic;
SIGNAL \inst|Selector122~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[8][7]~q\ : std_logic;
SIGNAL \inst|Selector111~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[7][7]~q\ : std_logic;
SIGNAL \inst|Selector100~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[6][7]~q\ : std_logic;
SIGNAL \inst|Selector89~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[5][7]~q\ : std_logic;
SIGNAL \inst|Selector78~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[4][7]~q\ : std_logic;
SIGNAL \inst|Selector67~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[3][7]~q\ : std_logic;
SIGNAL \inst|Selector56~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[2][7]~q\ : std_logic;
SIGNAL \inst|Selector45~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[1][7]~q\ : std_logic;
SIGNAL \inst|Selector34~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[0][7]~q\ : std_logic;
SIGNAL \inst|Selector4~2_combout\ : std_logic;
SIGNAL \inst|Add0~15\ : std_logic;
SIGNAL \inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|Selector3~1_combout\ : std_logic;
SIGNAL \inst|PC_stack[9][8]~feeder_combout\ : std_logic;
SIGNAL \inst|PC_stack[9][8]~q\ : std_logic;
SIGNAL \inst|Selector121~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[8][8]~q\ : std_logic;
SIGNAL \inst|Selector110~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[7][8]~q\ : std_logic;
SIGNAL \inst|Selector99~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[6][8]~q\ : std_logic;
SIGNAL \inst|Selector88~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[5][8]~q\ : std_logic;
SIGNAL \inst|Selector77~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[4][8]~q\ : std_logic;
SIGNAL \inst|Selector66~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[3][8]~q\ : std_logic;
SIGNAL \inst|Selector55~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[2][8]~q\ : std_logic;
SIGNAL \inst|Selector44~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[1][8]~q\ : std_logic;
SIGNAL \inst|Selector33~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[0][8]~q\ : std_logic;
SIGNAL \inst|Selector3~2_combout\ : std_logic;
SIGNAL \inst|Add0~17\ : std_logic;
SIGNAL \inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|state~40_combout\ : std_logic;
SIGNAL \inst|state~41_combout\ : std_logic;
SIGNAL \inst|state.ex_loadi~q\ : std_logic;
SIGNAL \inst|Selector19~2_combout\ : std_logic;
SIGNAL \inst|state~39_combout\ : std_logic;
SIGNAL \inst|state.ex_sub~q\ : std_logic;
SIGNAL \inst|state~36_combout\ : std_logic;
SIGNAL \inst|state~37_combout\ : std_logic;
SIGNAL \inst|state.ex_add~q\ : std_logic;
SIGNAL \inst|WideOr3~0_combout\ : std_logic;
SIGNAL \inst|state~46_combout\ : std_logic;
SIGNAL \inst|state.ex_xor~q\ : std_logic;
SIGNAL \inst|state~42_combout\ : std_logic;
SIGNAL \inst|state.ex_addi~q\ : std_logic;
SIGNAL \inst|WideOr3~1_combout\ : std_logic;
SIGNAL \inst|state~45_combout\ : std_logic;
SIGNAL \inst|state.ex_or~q\ : std_logic;
SIGNAL \inst|WideOr3~2_combout\ : std_logic;
SIGNAL \inst|Selector27~0_combout\ : std_logic;
SIGNAL \inst|Selector19~3_combout\ : std_logic;
SIGNAL \inst|IR[6]~0_combout\ : std_logic;
SIGNAL \inst|Selector19~1_combout\ : std_logic;
SIGNAL \inst|Selector20~2_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[48]~13_combout\ : std_logic;
SIGNAL \inst|Selector23~6_combout\ : std_logic;
SIGNAL \inst|Selector23~7_combout\ : std_logic;
SIGNAL \inst|Selector23~8_combout\ : std_logic;
SIGNAL \inst|Add1~25_combout\ : std_logic;
SIGNAL \inst|Add1~23_combout\ : std_logic;
SIGNAL \inst|Add1~1_combout\ : std_logic;
SIGNAL \inst|Add1~24_combout\ : std_logic;
SIGNAL \inst|Add1~18_combout\ : std_logic;
SIGNAL \inst|Add1~19_combout\ : std_logic;
SIGNAL \inst|Add1~20_combout\ : std_logic;
SIGNAL \inst|Add1~15_combout\ : std_logic;
SIGNAL \inst|Add1~13_combout\ : std_logic;
SIGNAL \inst|Add1~14_combout\ : std_logic;
SIGNAL \inst|Add1~8_combout\ : std_logic;
SIGNAL \inst|Add1~9_combout\ : std_logic;
SIGNAL \inst|Add1~10_combout\ : std_logic;
SIGNAL \inst|Add1~0_combout\ : std_logic;
SIGNAL \inst|Add1~2_combout\ : std_logic;
SIGNAL \inst|Add1~3_combout\ : std_logic;
SIGNAL \inst|Add1~5_cout\ : std_logic;
SIGNAL \inst|Add1~7\ : std_logic;
SIGNAL \inst|Add1~12\ : std_logic;
SIGNAL \inst|Add1~17\ : std_logic;
SIGNAL \inst|Add1~22\ : std_logic;
SIGNAL \inst|Add1~26_combout\ : std_logic;
SIGNAL \inst|Selector16~1_combout\ : std_logic;
SIGNAL \inst|Selector14~4_combout\ : std_logic;
SIGNAL \inst|Add1~70_combout\ : std_logic;
SIGNAL \inst|Add1~68_combout\ : std_logic;
SIGNAL \inst|Add1~69_combout\ : std_logic;
SIGNAL \inst|Add1~63_combout\ : std_logic;
SIGNAL \inst|Add1~64_combout\ : std_logic;
SIGNAL \inst|AC[8]~0_combout\ : std_logic;
SIGNAL \inst|Selector17~3_combout\ : std_logic;
SIGNAL \inst|Selector17~2_combout\ : std_logic;
SIGNAL \inst|Selector17~4_combout\ : std_logic;
SIGNAL \inst|Add1~55_combout\ : std_logic;
SIGNAL \inst|Add1~53_combout\ : std_logic;
SIGNAL \inst|Add1~54_combout\ : std_logic;
SIGNAL \inst|Add1~50_combout\ : std_logic;
SIGNAL \inst|Add1~48_combout\ : std_logic;
SIGNAL \inst|Add1~49_combout\ : std_logic;
SIGNAL \inst|Add1~43_combout\ : std_logic;
SIGNAL \inst|Add1~44_combout\ : std_logic;
SIGNAL \inst|Add1~45_combout\ : std_logic;
SIGNAL \inst|Add1~38_combout\ : std_logic;
SIGNAL \inst|Add1~39_combout\ : std_logic;
SIGNAL \inst|Add1~40_combout\ : std_logic;
SIGNAL \inst|Add1~33_combout\ : std_logic;
SIGNAL \inst|Add1~34_combout\ : std_logic;
SIGNAL \inst|Selector21~5_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[18]~10_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[18]~11_combout\ : std_logic;
SIGNAL \inst3|I2C_RDY_EN~1_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[34]~62_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[34]~63_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[34]~64_combout\ : std_logic;
SIGNAL \inst3|TIMER_EN~0_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[28]~25_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[28]~26_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[42]~59_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[26]~20_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[26]~21_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[42]~60_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[54]~83_combout\ : std_logic;
SIGNAL \inst|Selector22~5_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[23]~40_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[23]~41_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[19]~38_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[19]~39_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[37]~42_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[21]~43_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[21]~44_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[37]~45_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[17]~52_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[53]~53_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[25]~48_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[25]~49_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[41]~47_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[41]~50_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[53]~79_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[53]~80_combout\ : std_logic;
SIGNAL \inst|Selector22~7_combout\ : std_logic;
SIGNAL \inst|Selector27~7_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[61]~77_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[61]~78_combout\ : std_logic;
SIGNAL \inst|Selector22~3_combout\ : std_logic;
SIGNAL \inst|Add1~30_combout\ : std_logic;
SIGNAL \inst|Add1~28_combout\ : std_logic;
SIGNAL \inst|Add1~29_combout\ : std_logic;
SIGNAL \inst|Add1~27\ : std_logic;
SIGNAL \inst|Add1~31_combout\ : std_logic;
SIGNAL \inst|Selector22~2_combout\ : std_logic;
SIGNAL \inst|Selector22~4_combout\ : std_logic;
SIGNAL \inst|state.ex_out2~q\ : std_logic;
SIGNAL \inst|Selector29~0_combout\ : std_logic;
SIGNAL \inst|Selector29~1_combout\ : std_logic;
SIGNAL \inst|IO_CYCLE~q\ : std_logic;
SIGNAL \inst3|DP_EN~0_combout\ : std_logic;
SIGNAL \inst3|SWITCH_EN~3_combout\ : std_logic;
SIGNAL \inst3|I2C_DATA_EN~0_combout\ : std_logic;
SIGNAL \inst13|inst7~combout\ : std_logic;
SIGNAL \inst3|SWITCH_EN~1_combout\ : std_logic;
SIGNAL \inst3|SWITCH_EN~0_combout\ : std_logic;
SIGNAL \inst3|SWITCH_EN~2_combout\ : std_logic;
SIGNAL \inst13|inst4~combout\ : std_logic;
SIGNAL \inst3|SWITCH_EN~5_combout\ : std_logic;
SIGNAL \inst3|SWITCH_EN~4_combout\ : std_logic;
SIGNAL \inst3|SWITCH_EN~combout\ : std_logic;
SIGNAL \inst3|SWITCH_EN~clkctrl_outclk\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \inst13|inst1[5]~19_combout\ : std_logic;
SIGNAL \inst4|IO_OUT~combout\ : std_logic;
SIGNAL \inst13|inst1[0]~0_combout\ : std_logic;
SIGNAL \inst3|I2C_RDY_EN~0_combout\ : std_logic;
SIGNAL \inst13|inst1[0]~1_combout\ : std_logic;
SIGNAL \inst13|inst1[0]~2_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \inst13|inst1[9]~31_combout\ : std_logic;
SIGNAL \GSENSOR_SDI~input_o\ : std_logic;
SIGNAL \inst13|inst|bit_cnt[0]~0_combout\ : std_logic;
SIGNAL \inst13|inst|Add1~0_combout\ : std_logic;
SIGNAL \inst13|inst|bit_cnt[2]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst13|inst|Selector21~0_combout\ : std_logic;
SIGNAL \inst13|inst|state.command~q\ : std_logic;
SIGNAL \inst13|inst6~combout\ : std_logic;
SIGNAL \inst13|inst14|go~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|running~0_combout\ : std_logic;
SIGNAL \inst13|inst14|running~q\ : std_logic;
SIGNAL \inst13|inst14|latch_rdy~0_combout\ : std_logic;
SIGNAL \inst13|inst14|go~q\ : std_logic;
SIGNAL \inst13|inst14|tx_addr[7]~0_combout\ : std_logic;
SIGNAL \inst13|inst|state~14_combout\ : std_logic;
SIGNAL \inst13|inst|state.mstr_ack~q\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \inst13|inst1[3]~13_combout\ : std_logic;
SIGNAL \inst13|inst|Decoder0~0_combout\ : std_logic;
SIGNAL \inst13|inst|Decoder0~4_combout\ : std_logic;
SIGNAL \inst13|inst|data_rx[3]~3_combout\ : std_logic;
SIGNAL \inst13|inst|data_rd[3]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|data_out[3]~6_combout\ : std_logic;
SIGNAL \inst13|inst14|data_out[7]~2_combout\ : std_logic;
SIGNAL \inst13|inst14|data_out[7]~3_combout\ : std_logic;
SIGNAL \inst13|inst1[3]~14_combout\ : std_logic;
SIGNAL \inst5|count_10Hz[0]~19_combout\ : std_logic;
SIGNAL \inst5|LessThan4~3_combout\ : std_logic;
SIGNAL \inst5|LessThan4~1_combout\ : std_logic;
SIGNAL \inst5|LessThan4~0_combout\ : std_logic;
SIGNAL \inst5|LessThan4~2_combout\ : std_logic;
SIGNAL \inst5|LessThan4~4_combout\ : std_logic;
SIGNAL \inst5|LessThan4~6_combout\ : std_logic;
SIGNAL \inst5|count_10Hz[0]~20\ : std_logic;
SIGNAL \inst5|count_10Hz[1]~21_combout\ : std_logic;
SIGNAL \inst5|count_10Hz[1]~22\ : std_logic;
SIGNAL \inst5|count_10Hz[2]~23_combout\ : std_logic;
SIGNAL \inst5|count_10Hz[2]~24\ : std_logic;
SIGNAL \inst5|count_10Hz[3]~25_combout\ : std_logic;
SIGNAL \inst5|count_10Hz[3]~26\ : std_logic;
SIGNAL \inst5|count_10Hz[4]~27_combout\ : std_logic;
SIGNAL \inst5|count_10Hz[4]~28\ : std_logic;
SIGNAL \inst5|count_10Hz[5]~29_combout\ : std_logic;
SIGNAL \inst5|count_10Hz[5]~30\ : std_logic;
SIGNAL \inst5|count_10Hz[6]~31_combout\ : std_logic;
SIGNAL \inst5|count_10Hz[6]~32\ : std_logic;
SIGNAL \inst5|count_10Hz[7]~33_combout\ : std_logic;
SIGNAL \inst5|count_10Hz[7]~34\ : std_logic;
SIGNAL \inst5|count_10Hz[8]~35_combout\ : std_logic;
SIGNAL \inst5|count_10Hz[8]~36\ : std_logic;
SIGNAL \inst5|count_10Hz[9]~37_combout\ : std_logic;
SIGNAL \inst5|count_10Hz[9]~38\ : std_logic;
SIGNAL \inst5|count_10Hz[10]~39_combout\ : std_logic;
SIGNAL \inst5|count_10Hz[10]~40\ : std_logic;
SIGNAL \inst5|count_10Hz[11]~41_combout\ : std_logic;
SIGNAL \inst5|count_10Hz[11]~42\ : std_logic;
SIGNAL \inst5|count_10Hz[12]~43_combout\ : std_logic;
SIGNAL \inst5|count_10Hz[12]~44\ : std_logic;
SIGNAL \inst5|count_10Hz[13]~45_combout\ : std_logic;
SIGNAL \inst5|count_10Hz[13]~46\ : std_logic;
SIGNAL \inst5|count_10Hz[14]~47_combout\ : std_logic;
SIGNAL \inst5|count_10Hz[14]~48\ : std_logic;
SIGNAL \inst5|count_10Hz[15]~49_combout\ : std_logic;
SIGNAL \inst5|count_10Hz[15]~50\ : std_logic;
SIGNAL \inst5|count_10Hz[16]~51_combout\ : std_logic;
SIGNAL \inst5|count_10Hz[16]~52\ : std_logic;
SIGNAL \inst5|count_10Hz[17]~53_combout\ : std_logic;
SIGNAL \inst5|count_10Hz[17]~54\ : std_logic;
SIGNAL \inst5|count_10Hz[18]~55_combout\ : std_logic;
SIGNAL \inst5|LessThan4~5_combout\ : std_logic;
SIGNAL \inst5|clock_10Hz_int~0_combout\ : std_logic;
SIGNAL \inst5|clock_10Hz_int~q\ : std_logic;
SIGNAL \inst5|clock_10Hz~feeder_combout\ : std_logic;
SIGNAL \inst5|clock_10Hz~q\ : std_logic;
SIGNAL \inst5|clock_10Hz~clkctrl_outclk\ : std_logic;
SIGNAL \inst4|COUNT[0]~45_combout\ : std_logic;
SIGNAL \inst3|TIMER_EN~1_combout\ : std_logic;
SIGNAL \inst4|process_0~0_combout\ : std_logic;
SIGNAL \inst4|COUNT[1]~15_combout\ : std_logic;
SIGNAL \inst4|COUNT[1]~16\ : std_logic;
SIGNAL \inst4|COUNT[2]~17_combout\ : std_logic;
SIGNAL \inst4|COUNT[2]~18\ : std_logic;
SIGNAL \inst4|COUNT[3]~19_combout\ : std_logic;
SIGNAL \inst13|inst1[3]~15_combout\ : std_logic;
SIGNAL \inst13|inst14|addr_in[3]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|tx_addr[3]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|tx_addr[7]~1_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \inst13|inst1[4]~16_combout\ : std_logic;
SIGNAL \inst13|inst|Decoder0~5_combout\ : std_logic;
SIGNAL \inst13|inst|data_rx[4]~4_combout\ : std_logic;
SIGNAL \inst13|inst|data_rd[4]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|data_out[4]~7_combout\ : std_logic;
SIGNAL \inst13|inst1[4]~17_combout\ : std_logic;
SIGNAL \inst4|COUNT[3]~20\ : std_logic;
SIGNAL \inst4|COUNT[4]~21_combout\ : std_logic;
SIGNAL \inst13|inst1[4]~18_combout\ : std_logic;
SIGNAL \inst13|inst14|addr_in[4]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|tx_addr[4]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst|addr_rw[7]~2_combout\ : std_logic;
SIGNAL \inst13|inst|state~16_combout\ : std_logic;
SIGNAL \inst13|inst|state.slv_ack2~q\ : std_logic;
SIGNAL \inst13|inst|state~15_combout\ : std_logic;
SIGNAL \inst13|inst|state.slv_ack1~q\ : std_logic;
SIGNAL \inst13|inst|Selector29~0_combout\ : std_logic;
SIGNAL \inst13|inst|Selector29~1_combout\ : std_logic;
SIGNAL \inst13|inst|ack_error~q\ : std_logic;
SIGNAL \inst13|inst|Selector25~6_combout\ : std_logic;
SIGNAL \inst13|inst|addr_rw[7]~3_combout\ : std_logic;
SIGNAL \inst13|inst|process_1~1_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \inst13|inst1[6]~22_combout\ : std_logic;
SIGNAL \inst13|inst|Decoder0~7_combout\ : std_logic;
SIGNAL \inst13|inst|data_rx[6]~6_combout\ : std_logic;
SIGNAL \inst13|inst|data_rd[6]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|data_out[6]~9_combout\ : std_logic;
SIGNAL \inst13|inst1[6]~23_combout\ : std_logic;
SIGNAL \inst4|COUNT[4]~22\ : std_logic;
SIGNAL \inst4|COUNT[5]~23_combout\ : std_logic;
SIGNAL \inst4|COUNT[5]~24\ : std_logic;
SIGNAL \inst4|COUNT[6]~25_combout\ : std_logic;
SIGNAL \inst13|inst1[6]~24_combout\ : std_logic;
SIGNAL \inst13|inst14|addr_in[6]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|tx_addr[6]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|addr_in[5]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|tx_addr[5]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst|process_1~2_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \inst13|inst1[1]~7_combout\ : std_logic;
SIGNAL \inst13|inst14|data_out[1]~4_combout\ : std_logic;
SIGNAL \inst13|inst1[1]~8_combout\ : std_logic;
SIGNAL \inst13|inst1[1]~9_combout\ : std_logic;
SIGNAL \inst13|inst14|addr_in[1]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|tx_addr[1]~feeder_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \inst13|inst1[2]~10_combout\ : std_logic;
SIGNAL \inst13|inst|Decoder0~3_combout\ : std_logic;
SIGNAL \inst13|inst|data_rx[2]~2_combout\ : std_logic;
SIGNAL \inst13|inst|data_rd[2]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|data_out[2]~5_combout\ : std_logic;
SIGNAL \inst13|inst1[2]~11_combout\ : std_logic;
SIGNAL \inst13|inst1[2]~12_combout\ : std_logic;
SIGNAL \inst13|inst14|addr_in[2]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|tx_addr[2]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst|process_1~0_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \inst13|inst1[7]~25_combout\ : std_logic;
SIGNAL \inst13|inst|Decoder0~8_combout\ : std_logic;
SIGNAL \inst13|inst|data_rx[7]~7_combout\ : std_logic;
SIGNAL \inst13|inst|data_rd[7]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|data_out[7]~10_combout\ : std_logic;
SIGNAL \inst13|inst1[7]~26_combout\ : std_logic;
SIGNAL \inst4|COUNT[6]~26\ : std_logic;
SIGNAL \inst4|COUNT[7]~27_combout\ : std_logic;
SIGNAL \inst13|inst1[7]~27_combout\ : std_logic;
SIGNAL \inst13|inst14|addr_in[7]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|tx_addr[7]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst|process_1~3_combout\ : std_logic;
SIGNAL \inst13|inst|process_1~4_combout\ : std_logic;
SIGNAL \inst13|inst|Selector23~1_combout\ : std_logic;
SIGNAL \inst13|inst|Selector23~2_combout\ : std_logic;
SIGNAL \inst13|inst|Selector23~3_combout\ : std_logic;
SIGNAL \inst13|inst|state.rd~q\ : std_logic;
SIGNAL \inst13|inst|WideOr3~0_combout\ : std_logic;
SIGNAL \inst13|inst|Selector0~0_combout\ : std_logic;
SIGNAL \inst13|inst|Selector20~0_combout\ : std_logic;
SIGNAL \inst13|inst|Selector20~1_combout\ : std_logic;
SIGNAL \inst13|inst|state.restart~q\ : std_logic;
SIGNAL \inst13|inst|Selector0~1_combout\ : std_logic;
SIGNAL \inst13|inst|Selector0~2_combout\ : std_logic;
SIGNAL \inst13|inst|Selector0~3_combout\ : std_logic;
SIGNAL \inst13|inst|busy~q\ : std_logic;
SIGNAL \inst13|inst14|prev_busy~q\ : std_logic;
SIGNAL \inst13|inst14|state_machine~0_combout\ : std_logic;
SIGNAL \inst|io_bus|dout[13]~1_combout\ : std_logic;
SIGNAL \inst13|inst1[10]~34_combout\ : std_logic;
SIGNAL \inst4|COUNT[7]~28\ : std_logic;
SIGNAL \inst4|COUNT[8]~29_combout\ : std_logic;
SIGNAL \inst4|COUNT[8]~30\ : std_logic;
SIGNAL \inst4|COUNT[9]~31_combout\ : std_logic;
SIGNAL \inst4|COUNT[9]~32\ : std_logic;
SIGNAL \inst4|COUNT[10]~33_combout\ : std_logic;
SIGNAL \inst4|COUNT[10]~34\ : std_logic;
SIGNAL \inst4|COUNT[11]~35_combout\ : std_logic;
SIGNAL \inst4|COUNT[11]~36\ : std_logic;
SIGNAL \inst4|COUNT[12]~37_combout\ : std_logic;
SIGNAL \inst4|COUNT[12]~38\ : std_logic;
SIGNAL \inst4|COUNT[13]~39_combout\ : std_logic;
SIGNAL \inst13|inst14|data_out[12]~16_combout\ : std_logic;
SIGNAL \inst13|inst14|data_out[15]~12_combout\ : std_logic;
SIGNAL \inst13|inst1[12]~39_combout\ : std_logic;
SIGNAL \inst13|inst1[12]~40_combout\ : std_logic;
SIGNAL \inst13|inst14|Selector21~1_combout\ : std_logic;
SIGNAL \inst13|inst14|Selector20~2_combout\ : std_logic;
SIGNAL \inst13|inst14|Selector20~3_combout\ : std_logic;
SIGNAL \inst13|inst14|state.Rx2~q\ : std_logic;
SIGNAL \inst13|inst|Decoder0~6_combout\ : std_logic;
SIGNAL \inst13|inst|data_rx[5]~5_combout\ : std_logic;
SIGNAL \inst13|inst|data_rd[5]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|data_out[13]~17_combout\ : std_logic;
SIGNAL \inst13|inst1[13]~41_combout\ : std_logic;
SIGNAL \inst13|inst1[13]~42_combout\ : std_logic;
SIGNAL \inst13|inst14|Equal0~0_combout\ : std_logic;
SIGNAL \inst13|inst14|Selector17~0_combout\ : std_logic;
SIGNAL \inst13|inst14|state.Tx2~q\ : std_logic;
SIGNAL \inst13|inst14|Selector18~0_combout\ : std_logic;
SIGNAL \inst13|inst14|state.Tx1p~q\ : std_logic;
SIGNAL \inst13|inst14|Selector19~0_combout\ : std_logic;
SIGNAL \inst13|inst14|state.Tx1~q\ : std_logic;
SIGNAL \inst13|inst14|Selector22~1_combout\ : std_logic;
SIGNAL \inst13|inst14|data_out[3]~20_combout\ : std_logic;
SIGNAL \inst13|inst14|state~18_combout\ : std_logic;
SIGNAL \inst13|inst14|Selector21~0_combout\ : std_logic;
SIGNAL \inst13|inst14|Selector16~0_combout\ : std_logic;
SIGNAL \inst13|inst14|Selector16~1_combout\ : std_logic;
SIGNAL \inst13|inst14|state.idle~q\ : std_logic;
SIGNAL \inst13|inst14|rnw~0_combout\ : std_logic;
SIGNAL \inst13|inst14|rnw~1_combout\ : std_logic;
SIGNAL \inst13|inst14|rnw~2_combout\ : std_logic;
SIGNAL \inst13|inst14|rnw~3_combout\ : std_logic;
SIGNAL \inst13|inst14|rnw~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|rnw~q\ : std_logic;
SIGNAL \inst13|inst|Selector22~0_combout\ : std_logic;
SIGNAL \inst13|inst|Selector22~1_combout\ : std_logic;
SIGNAL \inst13|inst|Selector22~2_combout\ : std_logic;
SIGNAL \inst13|inst|state.wr~q\ : std_logic;
SIGNAL \inst13|inst|WideOr12~0_combout\ : std_logic;
SIGNAL \inst13|inst|Selector27~0_combout\ : std_logic;
SIGNAL \inst13|inst|bit_cnt[1]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst|Decoder0~2_combout\ : std_logic;
SIGNAL \inst13|inst|data_rx[1]~1_combout\ : std_logic;
SIGNAL \inst13|inst|data_rd[1]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|data_out[9]~13_combout\ : std_logic;
SIGNAL \inst13|inst1[9]~32_combout\ : std_logic;
SIGNAL \inst13|inst1[9]~33_combout\ : std_logic;
SIGNAL \inst13|inst14|Selector21~2_combout\ : std_logic;
SIGNAL \inst13|inst14|state.Rx1p~q\ : std_logic;
SIGNAL \inst13|inst14|Selector22~0_combout\ : std_logic;
SIGNAL \inst13|inst14|Selector22~2_combout\ : std_logic;
SIGNAL \inst13|inst14|state.Rx1~q\ : std_logic;
SIGNAL \inst13|inst14|data_out[5]~8_combout\ : std_logic;
SIGNAL \inst13|inst1[5]~20_combout\ : std_logic;
SIGNAL \inst13|inst1[5]~21_combout\ : std_logic;
SIGNAL \inst|Selector22~6_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[22]~14_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[22]~15_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[38]~56_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[38]~57_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[54]~84_combout\ : std_logic;
SIGNAL \inst|Selector21~7_combout\ : std_logic;
SIGNAL \inst|Add1~32\ : std_logic;
SIGNAL \inst|Add1~36_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[30]~22_combout\ : std_logic;
SIGNAL \inst|Selector13~3_combout\ : std_logic;
SIGNAL \inst|Selector13~7_combout\ : std_logic;
SIGNAL \inst|Selector13~4_combout\ : std_logic;
SIGNAL \inst|Add1~73_combout\ : std_logic;
SIGNAL \inst|Add1~74_combout\ : std_logic;
SIGNAL \inst|Add1~75_combout\ : std_logic;
SIGNAL \inst|Add1~72\ : std_logic;
SIGNAL \inst|Add1~76_combout\ : std_logic;
SIGNAL \inst|Selector13~2_combout\ : std_logic;
SIGNAL \inst|Selector13~5_combout\ : std_logic;
SIGNAL \inst13|inst14|data_out[14]~18_combout\ : std_logic;
SIGNAL \inst4|COUNT[13]~40\ : std_logic;
SIGNAL \inst4|COUNT[14]~41_combout\ : std_logic;
SIGNAL \inst13|inst1[14]~43_combout\ : std_logic;
SIGNAL \inst|io_bus|dout[14]~2_combout\ : std_logic;
SIGNAL \inst13|inst1[14]~44_combout\ : std_logic;
SIGNAL \inst|Selector13~6_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[30]~23_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[46]~55_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[46]~89_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[62]~81_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[62]~82_combout\ : std_logic;
SIGNAL \inst|Selector21~3_combout\ : std_logic;
SIGNAL \inst|Selector21~2_combout\ : std_logic;
SIGNAL \inst|Selector21~4_combout\ : std_logic;
SIGNAL \inst|Selector21~6_combout\ : std_logic;
SIGNAL \inst|Add1~35_combout\ : std_logic;
SIGNAL \inst|Add1~37\ : std_logic;
SIGNAL \inst|Add1~42\ : std_logic;
SIGNAL \inst|Add1~47\ : std_logic;
SIGNAL \inst|Add1~52\ : std_logic;
SIGNAL \inst|Add1~56_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[58]~58_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[58]~61_combout\ : std_logic;
SIGNAL \inst|Selector17~1_combout\ : std_logic;
SIGNAL \inst|Selector17~0_combout\ : std_logic;
SIGNAL \inst|Selector17~5_combout\ : std_logic;
SIGNAL \inst|io_bus|dout[10]~0_combout\ : std_logic;
SIGNAL \inst13|inst14|data_out[10]~14_combout\ : std_logic;
SIGNAL \inst13|inst1[10]~35_combout\ : std_logic;
SIGNAL \inst13|inst1[10]~36_combout\ : std_logic;
SIGNAL \inst|Selector17~6_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[27]~36_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[27]~37_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[43]~68_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[43]~69_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[59]~67_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[59]~70_combout\ : std_logic;
SIGNAL \inst|Add1~58_combout\ : std_logic;
SIGNAL \inst|Add1~59_combout\ : std_logic;
SIGNAL \inst|Add1~57\ : std_logic;
SIGNAL \inst|Add1~61_combout\ : std_logic;
SIGNAL \inst|Selector16~2_combout\ : std_logic;
SIGNAL \inst|Selector16~4_combout\ : std_logic;
SIGNAL \inst|Selector16~3_combout\ : std_logic;
SIGNAL \inst|Selector16~5_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[35]~71_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[35]~72_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[35]~73_combout\ : std_logic;
SIGNAL \inst|Selector16~0_combout\ : std_logic;
SIGNAL \inst|Selector16~6_combout\ : std_logic;
SIGNAL \inst13|inst1[11]~37_combout\ : std_logic;
SIGNAL \inst13|inst14|data_out[11]~15_combout\ : std_logic;
SIGNAL \inst13|inst1[11]~38_combout\ : std_logic;
SIGNAL \inst|Selector16~7_combout\ : std_logic;
SIGNAL \inst|Add1~60_combout\ : std_logic;
SIGNAL \inst|Add1~62\ : std_logic;
SIGNAL \inst|Add1~66_combout\ : std_logic;
SIGNAL \inst|Selector15~1_combout\ : std_logic;
SIGNAL \inst|Selector15~2_combout\ : std_logic;
SIGNAL \inst|Selector15~3_combout\ : std_logic;
SIGNAL \inst|Selector15~4_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[32]~8_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[32]~9_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[52]~76_combout\ : std_logic;
SIGNAL \inst|Selector15~0_combout\ : std_logic;
SIGNAL \inst|Selector15~5_combout\ : std_logic;
SIGNAL \inst|Add1~65_combout\ : std_logic;
SIGNAL \inst|Add1~67\ : std_logic;
SIGNAL \inst|Add1~71_combout\ : std_logic;
SIGNAL \inst|Selector14~2_combout\ : std_logic;
SIGNAL \inst|Selector14~7_combout\ : std_logic;
SIGNAL \inst|Selector14~3_combout\ : std_logic;
SIGNAL \inst|Selector14~5_combout\ : std_logic;
SIGNAL \inst|Selector14~6_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[29]~33_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[29]~34_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[45]~35_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[45]~88_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[57]~46_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[57]~51_combout\ : std_logic;
SIGNAL \inst|Selector18~2_combout\ : std_logic;
SIGNAL \inst|Selector18~3_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[49]~54_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[49]~90_combout\ : std_logic;
SIGNAL \inst|Selector18~4_combout\ : std_logic;
SIGNAL \inst|Selector18~0_combout\ : std_logic;
SIGNAL \inst|Add1~51_combout\ : std_logic;
SIGNAL \inst|Selector18~1_combout\ : std_logic;
SIGNAL \inst|Selector18~5_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[24]~30_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[24]~31_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[40]~29_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[40]~32_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[60]~74_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[44]~24_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[44]~27_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[60]~75_combout\ : std_logic;
SIGNAL \inst|Selector23~10_combout\ : std_logic;
SIGNAL \inst|Selector23~4_combout\ : std_logic;
SIGNAL \inst|Selector23~5_combout\ : std_logic;
SIGNAL \inst|Selector23~9_combout\ : std_logic;
SIGNAL \inst|IR[1]~feeder_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[39]~65_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[39]~66_combout\ : std_logic;
SIGNAL \inst|Selector24~4_combout\ : std_logic;
SIGNAL \inst|Add1~21_combout\ : std_logic;
SIGNAL \inst|Selector24~10_combout\ : std_logic;
SIGNAL \inst|Selector24~5_combout\ : std_logic;
SIGNAL \inst|Selector24~7_combout\ : std_logic;
SIGNAL \inst|Selector24~6_combout\ : std_logic;
SIGNAL \inst|Selector24~8_combout\ : std_logic;
SIGNAL \inst|Selector24~9_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[20]~17_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[20]~18_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[36]~16_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[36]~19_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[48]~12_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[48]~87_combout\ : std_logic;
SIGNAL \inst|Selector19~4_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \inst13|inst1[8]~28_combout\ : std_logic;
SIGNAL \inst13|inst|Decoder0~1_combout\ : std_logic;
SIGNAL \inst13|inst|data_rx[0]~0_combout\ : std_logic;
SIGNAL \inst13|inst|data_rd[0]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|data_out[8]~11_combout\ : std_logic;
SIGNAL \inst13|inst1[8]~29_combout\ : std_logic;
SIGNAL \inst13|inst1[8]~30_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[56]~28_combout\ : std_logic;
SIGNAL \inst|Selector19~7_combout\ : std_logic;
SIGNAL \inst|Add1~46_combout\ : std_logic;
SIGNAL \inst|Selector19~5_combout\ : std_logic;
SIGNAL \inst|Selector19~6_combout\ : std_logic;
SIGNAL \inst|Selector19~8_combout\ : std_logic;
SIGNAL \inst|Selector19~9_combout\ : std_logic;
SIGNAL \inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst|Add0~19\ : std_logic;
SIGNAL \inst|Add0~20_combout\ : std_logic;
SIGNAL \inst|Selector1~1_combout\ : std_logic;
SIGNAL \inst|PC_stack[9][10]~q\ : std_logic;
SIGNAL \inst|Selector119~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[8][10]~q\ : std_logic;
SIGNAL \inst|Selector108~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[7][10]~q\ : std_logic;
SIGNAL \inst|Selector97~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[6][10]~q\ : std_logic;
SIGNAL \inst|Selector86~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[5][10]~q\ : std_logic;
SIGNAL \inst|Selector75~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[4][10]~q\ : std_logic;
SIGNAL \inst|Selector64~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[3][10]~q\ : std_logic;
SIGNAL \inst|Selector53~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[2][10]~q\ : std_logic;
SIGNAL \inst|Selector42~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[1][10]~q\ : std_logic;
SIGNAL \inst|Selector31~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[0][10]~q\ : std_logic;
SIGNAL \inst|Selector1~2_combout\ : std_logic;
SIGNAL \inst|next_mem_addr[10]~10_combout\ : std_logic;
SIGNAL \inst|Selector2~0_combout\ : std_logic;
SIGNAL \inst|Selector2~1_combout\ : std_logic;
SIGNAL \inst|PC_stack[9][9]~feeder_combout\ : std_logic;
SIGNAL \inst|PC_stack[9][9]~q\ : std_logic;
SIGNAL \inst|Selector120~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[8][9]~q\ : std_logic;
SIGNAL \inst|Selector109~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[7][9]~q\ : std_logic;
SIGNAL \inst|Selector98~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[6][9]~q\ : std_logic;
SIGNAL \inst|Selector87~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[5][9]~q\ : std_logic;
SIGNAL \inst|Selector76~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[4][9]~q\ : std_logic;
SIGNAL \inst|Selector65~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[3][9]~q\ : std_logic;
SIGNAL \inst|Selector54~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[2][9]~q\ : std_logic;
SIGNAL \inst|Selector43~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[1][9]~q\ : std_logic;
SIGNAL \inst|Selector32~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[0][9]~q\ : std_logic;
SIGNAL \inst|Selector2~2_combout\ : std_logic;
SIGNAL \inst|next_mem_addr[9]~9_combout\ : std_logic;
SIGNAL \inst|Selector3~0_combout\ : std_logic;
SIGNAL \inst|next_mem_addr[8]~8_combout\ : std_logic;
SIGNAL \inst|Selector4~0_combout\ : std_logic;
SIGNAL \inst|next_mem_addr[7]~7_combout\ : std_logic;
SIGNAL \inst|Selector5~0_combout\ : std_logic;
SIGNAL \inst|next_mem_addr[6]~6_combout\ : std_logic;
SIGNAL \inst|Selector6~0_combout\ : std_logic;
SIGNAL \inst|next_mem_addr[5]~5_combout\ : std_logic;
SIGNAL \inst|Selector8~0_combout\ : std_logic;
SIGNAL \inst|next_mem_addr[3]~3_combout\ : std_logic;
SIGNAL \inst|Selector12~11_combout\ : std_logic;
SIGNAL \inst|Add1~78_combout\ : std_logic;
SIGNAL \inst|Add1~79_combout\ : std_logic;
SIGNAL \inst|Add1~80_combout\ : std_logic;
SIGNAL \inst|Add1~77\ : std_logic;
SIGNAL \inst|Add1~81_combout\ : std_logic;
SIGNAL \inst|Selector12~12_combout\ : std_logic;
SIGNAL \inst|Selector12~10_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[55]~85_combout\ : std_logic;
SIGNAL \inst|Selector12~16_combout\ : std_logic;
SIGNAL \inst|Selector12~7_combout\ : std_logic;
SIGNAL \inst|Selector12~8_combout\ : std_logic;
SIGNAL \inst|Selector12~9_combout\ : std_logic;
SIGNAL \inst|Selector12~15_combout\ : std_logic;
SIGNAL \inst|Selector12~13_combout\ : std_logic;
SIGNAL \inst|Selector12~6_combout\ : std_logic;
SIGNAL \inst13|inst14|data_out[15]~19_combout\ : std_logic;
SIGNAL \inst4|COUNT[14]~42\ : std_logic;
SIGNAL \inst4|COUNT[15]~43_combout\ : std_logic;
SIGNAL \inst13|inst1[15]~45_combout\ : std_logic;
SIGNAL \inst13|inst1[15]~46_combout\ : std_logic;
SIGNAL \inst|Selector12~14_combout\ : std_logic;
SIGNAL \inst|state~51_combout\ : std_logic;
SIGNAL \inst|state.ex_jpos~q\ : std_logic;
SIGNAL \inst|state~52_combout\ : std_logic;
SIGNAL \inst|state.ex_jzero~q\ : std_logic;
SIGNAL \inst|WideOr2~0_combout\ : std_logic;
SIGNAL \inst|state~54_combout\ : std_logic;
SIGNAL \inst|state.ex_jump~q\ : std_logic;
SIGNAL \inst|state~53_combout\ : std_logic;
SIGNAL \inst|state.ex_jneg~q\ : std_logic;
SIGNAL \inst|PC[0]~0_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|Equal0~4_combout\ : std_logic;
SIGNAL \inst|PC[0]~1_combout\ : std_logic;
SIGNAL \inst|PC[0]~2_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Selector10~0_combout\ : std_logic;
SIGNAL \inst|Selector10~1_combout\ : std_logic;
SIGNAL \inst|PC_stack[9][1]~feeder_combout\ : std_logic;
SIGNAL \inst|PC_stack[9][1]~q\ : std_logic;
SIGNAL \inst|Selector128~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[8][1]~q\ : std_logic;
SIGNAL \inst|Selector117~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[7][1]~q\ : std_logic;
SIGNAL \inst|Selector106~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[6][1]~q\ : std_logic;
SIGNAL \inst|Selector95~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[5][1]~q\ : std_logic;
SIGNAL \inst|Selector84~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[4][1]~q\ : std_logic;
SIGNAL \inst|Selector73~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[3][1]~q\ : std_logic;
SIGNAL \inst|Selector62~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[2][1]~q\ : std_logic;
SIGNAL \inst|Selector51~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[1][1]~q\ : std_logic;
SIGNAL \inst|Selector40~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[0][1]~q\ : std_logic;
SIGNAL \inst|Selector10~2_combout\ : std_logic;
SIGNAL \inst|next_mem_addr[1]~1_combout\ : std_logic;
SIGNAL \inst|Selector30~0_combout\ : std_logic;
SIGNAL \inst|Selector30~1_combout\ : std_logic;
SIGNAL \inst|state.ex_load~q\ : std_logic;
SIGNAL \inst|Selector27~3_combout\ : std_logic;
SIGNAL \inst|Selector25~6_combout\ : std_logic;
SIGNAL \inst|Selector25~7_combout\ : std_logic;
SIGNAL \inst|Selector25~8_combout\ : std_logic;
SIGNAL \inst|Selector25~10_combout\ : std_logic;
SIGNAL \inst|Add1~16_combout\ : std_logic;
SIGNAL \inst|Selector25~4_combout\ : std_logic;
SIGNAL \inst|Selector25~5_combout\ : std_logic;
SIGNAL \inst|Selector25~9_combout\ : std_logic;
SIGNAL \inst|Selector27~8_combout\ : std_logic;
SIGNAL \inst|Selector27~1_combout\ : std_logic;
SIGNAL \inst|Selector27~4_combout\ : std_logic;
SIGNAL \inst|Add1~6_combout\ : std_logic;
SIGNAL \inst|Selector27~2_combout\ : std_logic;
SIGNAL \inst|Selector27~5_combout\ : std_logic;
SIGNAL \inst|Selector27~6_combout\ : std_logic;
SIGNAL \inst13|inst14|data_out[0]~1_combout\ : std_logic;
SIGNAL \inst13|inst1[0]~3_combout\ : std_logic;
SIGNAL \inst13|inst1[0]~4_combout\ : std_logic;
SIGNAL \inst13|inst1[0]~5_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst13|inst1[0]~6_combout\ : std_logic;
SIGNAL \inst|Selector27~9_combout\ : std_logic;
SIGNAL \inst|Selector11~0_combout\ : std_logic;
SIGNAL \inst|next_mem_addr[0]~0_combout\ : std_logic;
SIGNAL \inst|state~32_combout\ : std_logic;
SIGNAL \inst|state~33_combout\ : std_logic;
SIGNAL \inst|state.ex_in~q\ : std_logic;
SIGNAL \inst|state.ex_in2~q\ : std_logic;
SIGNAL \inst|Selector26~7_combout\ : std_logic;
SIGNAL \inst|Selector26~6_combout\ : std_logic;
SIGNAL \inst|Selector26~8_combout\ : std_logic;
SIGNAL \inst|Selector26~4_combout\ : std_logic;
SIGNAL \inst|Add1~11_combout\ : std_logic;
SIGNAL \inst|Selector26~10_combout\ : std_logic;
SIGNAL \inst|Selector26~5_combout\ : std_logic;
SIGNAL \inst|Selector26~9_combout\ : std_logic;
SIGNAL \inst|state~38_combout\ : std_logic;
SIGNAL \inst|state~43_combout\ : std_logic;
SIGNAL \inst|state.ex_shift~q\ : std_logic;
SIGNAL \inst|Selector19~0_combout\ : std_logic;
SIGNAL \inst|Selector20~8_combout\ : std_logic;
SIGNAL \inst|Selector20~4_combout\ : std_logic;
SIGNAL \inst|Selector20~5_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[55]~86_combout\ : std_logic;
SIGNAL \inst|Selector20~3_combout\ : std_logic;
SIGNAL \inst|Add1~41_combout\ : std_logic;
SIGNAL \inst|Selector20~6_combout\ : std_logic;
SIGNAL \inst|Selector20~7_combout\ : std_logic;
SIGNAL \inst|state~49_combout\ : std_logic;
SIGNAL \inst|state.ex_istore~q\ : std_logic;
SIGNAL \inst|state.ex_istore2~q\ : std_logic;
SIGNAL \inst|state.ex_store2~q\ : std_logic;
SIGNAL \inst|Selector0~0_combout\ : std_logic;
SIGNAL \inst|Selector0~1_combout\ : std_logic;
SIGNAL \inst|MW~q\ : std_logic;
SIGNAL \inst|Selector28~0_combout\ : std_logic;
SIGNAL \inst|Selector28~1_combout\ : std_logic;
SIGNAL \inst|IO_WRITE_int~q\ : std_logic;
SIGNAL \inst3|I2C_DATA_EN~1_combout\ : std_logic;
SIGNAL \inst13|inst12~combout\ : std_logic;
SIGNAL \inst13|inst12~clkctrl_outclk\ : std_logic;
SIGNAL \inst13|inst14|Selector32~1_combout\ : std_logic;
SIGNAL \inst13|inst14|Selector32~0_combout\ : std_logic;
SIGNAL \inst13|inst14|state_machine~1_combout\ : std_logic;
SIGNAL \inst13|inst14|Selector32~2_combout\ : std_logic;
SIGNAL \inst13|inst14|comm_en~q\ : std_logic;
SIGNAL \inst13|inst|Selector24~0_combout\ : std_logic;
SIGNAL \inst13|inst|Selector24~1_combout\ : std_logic;
SIGNAL \inst13|inst|state.stop~q\ : std_logic;
SIGNAL \inst13|inst|Selector18~0_combout\ : std_logic;
SIGNAL \inst13|inst|state.ready~q\ : std_logic;
SIGNAL \inst13|inst|Selector19~0_combout\ : std_logic;
SIGNAL \inst13|inst|state.start~q\ : std_logic;
SIGNAL \inst13|inst13~combout\ : std_logic;
SIGNAL \inst13|inst13~clkctrl_outclk\ : std_logic;
SIGNAL \inst13|inst14|data_in[11]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|data_in[3]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|Selector27~0_combout\ : std_logic;
SIGNAL \inst13|inst14|tx_byte[7]~0_combout\ : std_logic;
SIGNAL \inst13|inst14|tx_byte[7]~1_combout\ : std_logic;
SIGNAL \inst13|inst14|data_in[10]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|data_in[2]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|Selector28~0_combout\ : std_logic;
SIGNAL \inst13|inst14|data_in[1]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|data_in[9]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|Selector29~0_combout\ : std_logic;
SIGNAL \inst13|inst14|data_in[8]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|data_in[0]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|Selector30~0_combout\ : std_logic;
SIGNAL \inst13|inst|Mux4~0_combout\ : std_logic;
SIGNAL \inst13|inst|Mux4~1_combout\ : std_logic;
SIGNAL \inst13|inst14|data_in[6]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|data_in[14]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|Selector24~0_combout\ : std_logic;
SIGNAL \inst13|inst14|data_in[15]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|Selector23~0_combout\ : std_logic;
SIGNAL \inst13|inst14|data_in[13]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|Selector25~0_combout\ : std_logic;
SIGNAL \inst13|inst14|data_in[4]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|data_in[12]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|Selector26~0_combout\ : std_logic;
SIGNAL \inst13|inst|Mux4~2_combout\ : std_logic;
SIGNAL \inst13|inst|Mux4~3_combout\ : std_logic;
SIGNAL \inst13|inst|Selector25~7_combout\ : std_logic;
SIGNAL \inst13|inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst13|inst|Mux0~1_combout\ : std_logic;
SIGNAL \inst13|inst|Mux0~2_combout\ : std_logic;
SIGNAL \inst13|inst|Mux0~3_combout\ : std_logic;
SIGNAL \inst13|inst|Selector25~13_combout\ : std_logic;
SIGNAL \inst13|inst|Mux2~2_combout\ : std_logic;
SIGNAL \inst13|inst|Mux2~3_combout\ : std_logic;
SIGNAL \inst13|inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst13|inst|Mux2~1_combout\ : std_logic;
SIGNAL \inst13|inst|Selector23~0_combout\ : std_logic;
SIGNAL \inst13|inst|Selector25~11_combout\ : std_logic;
SIGNAL \inst13|inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst13|inst|Mux1~1_combout\ : std_logic;
SIGNAL \inst13|inst|Mux1~2_combout\ : std_logic;
SIGNAL \inst13|inst|Mux1~3_combout\ : std_logic;
SIGNAL \inst13|inst|Selector25~9_combout\ : std_logic;
SIGNAL \inst13|inst|Mux3~0_combout\ : std_logic;
SIGNAL \inst13|inst|Mux3~1_combout\ : std_logic;
SIGNAL \inst13|inst|Mux3~2_combout\ : std_logic;
SIGNAL \inst13|inst|Mux3~3_combout\ : std_logic;
SIGNAL \inst13|inst|Selector25~8_combout\ : std_logic;
SIGNAL \inst13|inst|Selector25~10_combout\ : std_logic;
SIGNAL \inst13|inst|Selector25~14_combout\ : std_logic;
SIGNAL \inst13|inst|Selector25~0_combout\ : std_logic;
SIGNAL \inst13|inst|Selector25~1_combout\ : std_logic;
SIGNAL \inst13|inst|Selector25~2_combout\ : std_logic;
SIGNAL \inst13|inst|Selector25~3_combout\ : std_logic;
SIGNAL \inst13|inst|Selector25~4_combout\ : std_logic;
SIGNAL \inst13|inst|Selector25~5_combout\ : std_logic;
SIGNAL \inst13|inst|Selector25~12_combout\ : std_logic;
SIGNAL \inst13|inst|sda_int~q\ : std_logic;
SIGNAL \inst13|inst|Selector30~0_combout\ : std_logic;
SIGNAL \inst13|inst|Selector17~0_combout\ : std_logic;
SIGNAL \inst13|inst|scl_req~0_combout\ : std_logic;
SIGNAL \inst13|inst|Selector17~1_combout\ : std_logic;
SIGNAL \inst13|inst|Selector17~2_combout\ : std_logic;
SIGNAL \inst13|inst|Selector17~3_combout\ : std_logic;
SIGNAL \inst13|inst|Selector17~4_combout\ : std_logic;
SIGNAL \inst13|inst|scl_req~q\ : std_logic;
SIGNAL \inst13|inst|scl_ena~q\ : std_logic;
SIGNAL \inst13|inst|scl_clk~1_combout\ : std_logic;
SIGNAL \inst13|inst|scl_clk~en_q\ : std_logic;
SIGNAL \inst13|inst|scl~1_combout\ : std_logic;
SIGNAL \inst3|DP_EN~1_combout\ : std_logic;
SIGNAL \inst3|DP_EN~2_combout\ : std_logic;
SIGNAL \inst3|DP_EN~combout\ : std_logic;
SIGNAL \inst14~q\ : std_logic;
SIGNAL \inst3|HEX0_EN~0_combout\ : std_logic;
SIGNAL \inst3|HEX0_EN~combout\ : std_logic;
SIGNAL \inst3|HEX0_EN~clkctrl_outclk\ : std_logic;
SIGNAL \inst9|inst1|latched_hex[3]~feeder_combout\ : std_logic;
SIGNAL \inst9|inst1|latched_hex[1]~feeder_combout\ : std_logic;
SIGNAL \inst9|inst1|latched_hex[2]~feeder_combout\ : std_logic;
SIGNAL \inst9|inst1|latched_hex[0]~feeder_combout\ : std_logic;
SIGNAL \inst9|inst1|Mux0~0_combout\ : std_logic;
SIGNAL \inst9|inst1|Mux1~0_combout\ : std_logic;
SIGNAL \inst9|inst1|Mux2~0_combout\ : std_logic;
SIGNAL \inst9|inst1|Mux3~0_combout\ : std_logic;
SIGNAL \inst9|inst1|Mux4~0_combout\ : std_logic;
SIGNAL \inst9|inst1|Mux5~0_combout\ : std_logic;
SIGNAL \inst9|inst1|Mux6~0_combout\ : std_logic;
SIGNAL \inst9|inst2|latched_hex[3]~feeder_combout\ : std_logic;
SIGNAL \inst9|inst2|latched_hex[2]~feeder_combout\ : std_logic;
SIGNAL \inst9|inst2|latched_hex[0]~feeder_combout\ : std_logic;
SIGNAL \inst9|inst2|Mux0~0_combout\ : std_logic;
SIGNAL \inst9|inst2|Mux1~0_combout\ : std_logic;
SIGNAL \inst9|inst2|Mux2~0_combout\ : std_logic;
SIGNAL \inst9|inst2|Mux3~0_combout\ : std_logic;
SIGNAL \inst9|inst2|Mux4~0_combout\ : std_logic;
SIGNAL \inst9|inst2|Mux5~0_combout\ : std_logic;
SIGNAL \inst9|inst2|Mux6~0_combout\ : std_logic;
SIGNAL \inst9|inst3|latched_hex[3]~feeder_combout\ : std_logic;
SIGNAL \inst9|inst3|latched_hex[1]~feeder_combout\ : std_logic;
SIGNAL \inst9|inst3|latched_hex[2]~feeder_combout\ : std_logic;
SIGNAL \inst9|inst3|Mux0~0_combout\ : std_logic;
SIGNAL \inst9|inst3|Mux1~0_combout\ : std_logic;
SIGNAL \inst9|inst3|Mux2~0_combout\ : std_logic;
SIGNAL \inst9|inst3|Mux3~0_combout\ : std_logic;
SIGNAL \inst9|inst3|Mux4~0_combout\ : std_logic;
SIGNAL \inst9|inst3|Mux5~0_combout\ : std_logic;
SIGNAL \inst9|inst3|Mux6~0_combout\ : std_logic;
SIGNAL \inst9|inst4|latched_hex[0]~feeder_combout\ : std_logic;
SIGNAL \inst9|inst4|Mux0~0_combout\ : std_logic;
SIGNAL \inst9|inst4|Mux1~0_combout\ : std_logic;
SIGNAL \inst9|inst4|Mux2~0_combout\ : std_logic;
SIGNAL \inst9|inst4|Mux3~0_combout\ : std_logic;
SIGNAL \inst9|inst4|Mux4~0_combout\ : std_logic;
SIGNAL \inst9|inst4|Mux5~0_combout\ : std_logic;
SIGNAL \inst9|inst4|Mux6~0_combout\ : std_logic;
SIGNAL \inst3|HEX1_EN~combout\ : std_logic;
SIGNAL \inst3|HEX1_EN~clkctrl_outclk\ : std_logic;
SIGNAL \inst9|inst5|latched_hex[2]~feeder_combout\ : std_logic;
SIGNAL \inst9|inst5|latched_hex[1]~feeder_combout\ : std_logic;
SIGNAL \inst9|inst5|Mux0~0_combout\ : std_logic;
SIGNAL \inst9|inst5|Mux1~0_combout\ : std_logic;
SIGNAL \inst9|inst5|Mux2~0_combout\ : std_logic;
SIGNAL \inst9|inst5|Mux3~0_combout\ : std_logic;
SIGNAL \inst9|inst5|Mux4~0_combout\ : std_logic;
SIGNAL \inst9|inst5|Mux5~0_combout\ : std_logic;
SIGNAL \inst9|inst5|Mux6~0_combout\ : std_logic;
SIGNAL \inst9|inst6|latched_hex[0]~feeder_combout\ : std_logic;
SIGNAL \inst9|inst6|latched_hex[3]~feeder_combout\ : std_logic;
SIGNAL \inst9|inst6|latched_hex[1]~feeder_combout\ : std_logic;
SIGNAL \inst9|inst6|latched_hex[2]~feeder_combout\ : std_logic;
SIGNAL \inst9|inst6|Mux0~0_combout\ : std_logic;
SIGNAL \inst9|inst6|Mux1~0_combout\ : std_logic;
SIGNAL \inst9|inst6|Mux2~0_combout\ : std_logic;
SIGNAL \inst9|inst6|Mux3~0_combout\ : std_logic;
SIGNAL \inst9|inst6|Mux4~0_combout\ : std_logic;
SIGNAL \inst9|inst6|Mux5~0_combout\ : std_logic;
SIGNAL \inst9|inst6|Mux6~0_combout\ : std_logic;
SIGNAL \inst3|LED_EN~combout\ : std_logic;
SIGNAL \inst3|LED_EN~clkctrl_outclk\ : std_logic;
SIGNAL \inst6|DATA[9]~feeder_combout\ : std_logic;
SIGNAL \inst6|DATA[8]~feeder_combout\ : std_logic;
SIGNAL \inst6|DATA[7]~feeder_combout\ : std_logic;
SIGNAL \inst6|DATA[6]~feeder_combout\ : std_logic;
SIGNAL \inst6|DATA[5]~feeder_combout\ : std_logic;
SIGNAL \inst6|DATA[4]~feeder_combout\ : std_logic;
SIGNAL \inst6|DATA[3]~feeder_combout\ : std_logic;
SIGNAL \inst6|DATA[2]~feeder_combout\ : std_logic;
SIGNAL \inst6|DATA[1]~feeder_combout\ : std_logic;
SIGNAL \inst6|DATA[0]~feeder_combout\ : std_logic;
SIGNAL \inst9|inst1|latched_hex\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst13|inst|addr_rw\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|count_10Hz\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst4|COUNT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst9|inst3|latched_hex\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst9|inst2|latched_hex\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|count_100kHz\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|AC\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst9|inst4|latched_hex\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst9|inst5|latched_hex\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst9|inst6|latched_hex\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|DATA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst7|B_DI\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|IR\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst13|inst14|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst13|inst|data_rd\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|PC\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst13|inst|data_rx\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst13|inst|bit_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst13|inst14|cmd_in\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst13|inst14|tx_addr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst13|inst14|tx_byte\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst13|inst|data_tx\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst13|inst|count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst13|inst14|addr_in\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst13|inst14|data_in\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst13|inst|ALT_INV_data_clk~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_KEY0~input_o\ : std_logic;
SIGNAL \inst13|inst14|ALT_INV_latch_rdy~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \inst9|inst6|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst9|inst5|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst9|inst4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst9|inst3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst9|inst2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst9|inst1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst14~q\ : std_logic;

BEGIN

GSENSOR_CS_n <= ww_GSENSOR_CS_n;
GSENSOR_SDO <= ww_GSENSOR_SDO;
ww_clock_50 <= clock_50;
ww_KEY0 <= KEY0;
ww_SW <= SW;
DP <= ww_DP;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst1|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clock_50~input_o\);

\inst1|altpll_component|auto_generated|wire_pll1_clk\(0) <= \inst1|altpll_component|auto_generated|pll1_CLK_bus\(0);
\inst1|altpll_component|auto_generated|wire_pll1_clk\(1) <= \inst1|altpll_component|auto_generated|pll1_CLK_bus\(1);
\inst1|altpll_component|auto_generated|wire_pll1_clk\(2) <= \inst1|altpll_component|auto_generated|pll1_CLK_bus\(2);
\inst1|altpll_component|auto_generated|wire_pll1_clk\(3) <= \inst1|altpll_component|auto_generated|pll1_CLK_bus\(3);
\inst1|altpll_component|auto_generated|wire_pll1_clk\(4) <= \inst1|altpll_component|auto_generated|pll1_CLK_bus\(4);

\inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ <= (\inst|AC\(6) & \inst|AC\(5) & \inst|AC\(3) & \inst|AC\(2));

\inst|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\inst|next_mem_addr[10]~10_combout\ & \inst|next_mem_addr[9]~9_combout\ & \inst|next_mem_addr[8]~8_combout\ & \inst|next_mem_addr[7]~7_combout\ & \inst|next_mem_addr[6]~6_combout\
& \inst|next_mem_addr[5]~5_combout\ & \inst|next_mem_addr[4]~4_combout\ & \inst|next_mem_addr[3]~3_combout\ & \inst|next_mem_addr[2]~2_combout\ & \inst|next_mem_addr[1]~1_combout\ & \inst|next_mem_addr[0]~0_combout\);

\inst|altsyncram_component|auto_generated|q_a\(2) <= \inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);
\inst|altsyncram_component|auto_generated|q_a\(3) <= \inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(1);
\inst|altsyncram_component|auto_generated|q_a\(5) <= \inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(2);
\inst|altsyncram_component|auto_generated|q_a\(6) <= \inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(3);

\inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\inst|AC\(10) & \inst|AC\(9) & \inst|AC\(8) & \inst|AC\(0));

\inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst|next_mem_addr[10]~10_combout\ & \inst|next_mem_addr[9]~9_combout\ & \inst|next_mem_addr[8]~8_combout\ & \inst|next_mem_addr[7]~7_combout\ & \inst|next_mem_addr[6]~6_combout\
& \inst|next_mem_addr[5]~5_combout\ & \inst|next_mem_addr[4]~4_combout\ & \inst|next_mem_addr[3]~3_combout\ & \inst|next_mem_addr[2]~2_combout\ & \inst|next_mem_addr[1]~1_combout\ & \inst|next_mem_addr[0]~0_combout\);

\inst|altsyncram_component|auto_generated|q_a\(0) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst|altsyncram_component|auto_generated|q_a\(8) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst|altsyncram_component|auto_generated|q_a\(9) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst|altsyncram_component|auto_generated|q_a\(10) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);

\inst|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\ <= (\inst|AC\(12) & \inst|AC\(11) & \inst|AC\(4) & \inst|AC\(1));

\inst|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\inst|next_mem_addr[10]~10_combout\ & \inst|next_mem_addr[9]~9_combout\ & \inst|next_mem_addr[8]~8_combout\ & \inst|next_mem_addr[7]~7_combout\ & \inst|next_mem_addr[6]~6_combout\
& \inst|next_mem_addr[5]~5_combout\ & \inst|next_mem_addr[4]~4_combout\ & \inst|next_mem_addr[3]~3_combout\ & \inst|next_mem_addr[2]~2_combout\ & \inst|next_mem_addr[1]~1_combout\ & \inst|next_mem_addr[0]~0_combout\);

\inst|altsyncram_component|auto_generated|q_a\(1) <= \inst|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);
\inst|altsyncram_component|auto_generated|q_a\(4) <= \inst|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(1);
\inst|altsyncram_component|auto_generated|q_a\(11) <= \inst|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(2);
\inst|altsyncram_component|auto_generated|q_a\(12) <= \inst|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(3);

\inst|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\ <= (\inst|AC\(15) & \inst|AC\(14) & \inst|AC\(13) & \inst|AC\(7));

\inst|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\inst|next_mem_addr[10]~10_combout\ & \inst|next_mem_addr[9]~9_combout\ & \inst|next_mem_addr[8]~8_combout\ & \inst|next_mem_addr[7]~7_combout\ & \inst|next_mem_addr[6]~6_combout\
& \inst|next_mem_addr[5]~5_combout\ & \inst|next_mem_addr[4]~4_combout\ & \inst|next_mem_addr[3]~3_combout\ & \inst|next_mem_addr[2]~2_combout\ & \inst|next_mem_addr[1]~1_combout\ & \inst|next_mem_addr[0]~0_combout\);

\inst|altsyncram_component|auto_generated|q_a\(7) <= \inst|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);
\inst|altsyncram_component|auto_generated|q_a\(13) <= \inst|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(1);
\inst|altsyncram_component|auto_generated|q_a\(14) <= \inst|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(2);
\inst|altsyncram_component|auto_generated|q_a\(15) <= \inst|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(3);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inst3|HEX0_EN~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3|HEX0_EN~combout\);

\inst5|clock_10Hz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst5|clock_10Hz~q\);

\inst5|clock_100kHz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst5|clock_100kHz~q\);

\inst13|inst|data_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst13|inst|data_clk~q\);

\inst13|inst13~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst13|inst13~combout\);

\inst3|HEX1_EN~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3|HEX1_EN~combout\);

\inst3|SWITCH_EN~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3|SWITCH_EN~combout\);

\inst3|LED_EN~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3|LED_EN~combout\);

\inst13|inst12~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst13|inst12~combout\);

\inst13|inst14|data_out[7]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst13|inst14|data_out[7]~0_combout\);

\inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|altpll_component|auto_generated|wire_pll1_clk\(0));
\inst13|inst|ALT_INV_data_clk~clkctrl_outclk\ <= NOT \inst13|inst|data_clk~clkctrl_outclk\;
\ALT_INV_KEY0~input_o\ <= NOT \KEY0~input_o\;
\inst13|inst14|ALT_INV_latch_rdy~0_combout\ <= NOT \inst13|inst14|latch_rdy~0_combout\;
\inst4|ALT_INV_process_0~0_combout\ <= NOT \inst4|process_0~0_combout\;
\inst9|inst6|ALT_INV_Mux0~0_combout\ <= NOT \inst9|inst6|Mux0~0_combout\;
\inst9|inst5|ALT_INV_Mux0~0_combout\ <= NOT \inst9|inst5|Mux0~0_combout\;
\inst9|inst4|ALT_INV_Mux0~0_combout\ <= NOT \inst9|inst4|Mux0~0_combout\;
\inst9|inst3|ALT_INV_Mux0~0_combout\ <= NOT \inst9|inst3|Mux0~0_combout\;
\inst9|inst2|ALT_INV_Mux0~0_combout\ <= NOT \inst9|inst2|Mux0~0_combout\;
\inst9|inst1|ALT_INV_Mux0~0_combout\ <= NOT \inst9|inst1|Mux0~0_combout\;
\ALT_INV_inst14~q\ <= NOT \inst14~q\;

-- Location: LCCOMB_X44_Y52_N4
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X54_Y0_N2
\GSENSOR_CS_n~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_GSENSOR_CS_n);

-- Location: IOOBUF_X38_Y0_N23
\GSENSOR_SDO~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_GSENSOR_SDO);

-- Location: IOOBUF_X66_Y54_N16
\DP[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst14~q\,
	devoe => ww_devoe,
	o => ww_DP(0));

-- Location: IOOBUF_X74_Y54_N23
\HEX0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X74_Y54_N16
\HEX0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X74_Y54_N2
\HEX0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X62_Y54_N30
\HEX0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X60_Y54_N2
\HEX0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X74_Y54_N9
\HEX0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X58_Y54_N16
\HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X69_Y54_N30
\HEX1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X66_Y54_N30
\HEX1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X64_Y54_N2
\HEX1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X60_Y54_N9
\HEX1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X78_Y49_N2
\HEX1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X78_Y49_N9
\HEX1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X69_Y54_N23
\HEX1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X78_Y43_N9
\HEX2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst3|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X78_Y35_N2
\HEX2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X78_Y43_N2
\HEX2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X78_Y44_N2
\HEX2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X69_Y54_N16
\HEX2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X66_Y54_N2
\HEX2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X78_Y44_N9
\HEX2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst3|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X78_Y43_N16
\HEX3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst4|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X78_Y41_N2
\HEX3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X78_Y41_N9
\HEX3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X69_Y54_N9
\HEX3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X78_Y33_N2
\HEX3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X78_Y33_N9
\HEX3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X78_Y35_N23
\HEX3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst4|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X78_Y35_N16
\HEX4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst5|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X78_Y40_N9
\HEX4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst5|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X78_Y45_N23
\HEX4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst5|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X78_Y42_N16
\HEX4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst5|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X78_Y40_N23
\HEX4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst5|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X78_Y40_N2
\HEX4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst5|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X78_Y40_N16
\HEX4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst5|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X78_Y34_N2
\HEX5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst6|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X78_Y34_N16
\HEX5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst6|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X78_Y34_N9
\HEX5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst6|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X78_Y34_N24
\HEX5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst6|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X78_Y37_N16
\HEX5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst6|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X78_Y42_N2
\HEX5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst6|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X78_Y45_N9
\HEX5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst6|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X49_Y54_N9
\LEDR[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|DATA\(9),
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X51_Y54_N9
\LEDR[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|DATA\(8),
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X56_Y54_N9
\LEDR[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|DATA\(7),
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X66_Y54_N23
\LEDR[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|DATA\(6),
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X58_Y54_N23
\LEDR[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|DATA\(5),
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X56_Y54_N30
\LEDR[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|DATA\(4),
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X46_Y54_N9
\LEDR[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|DATA\(3),
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X51_Y54_N16
\LEDR[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|DATA\(2),
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X46_Y54_N23
\LEDR[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|DATA\(1),
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X46_Y54_N2
\LEDR[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|DATA\(0),
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X38_Y0_N30
\GSENSOR_SDI~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst13|inst|Selector30~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => GSENSOR_SDI);

-- Location: IOOBUF_X51_Y0_N16
\GSENSOR_SCLK~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst13|inst|scl~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => GSENSOR_SCLK);

-- Location: IOIBUF_X46_Y54_N29
\KEY0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY0,
	o => \KEY0~input_o\);

-- Location: IOIBUF_X78_Y29_N22
\clock_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_50,
	o => \clock_50~input_o\);

-- Location: PLL_4
\inst1|altpll_component|auto_generated|pll1\ : fiftyfivenm_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 30,
	c0_initial => 1,
	c0_low => 30,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 5,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "functional",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => \ALT_INV_KEY0~input_o\,
	fbin => \inst1|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst1|altpll_component|auto_generated|pll1_INCLK_bus\,
	locked => \inst1|altpll_component|auto_generated|wire_pll1_locked\,
	fbout => \inst1|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst1|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G8
\inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X77_Y39_N6
\inst5|count_100kHz[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_100kHz[0]~6_combout\ = \inst5|count_100kHz\(0) $ (VCC)
-- \inst5|count_100kHz[0]~7\ = CARRY(\inst5|count_100kHz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count_100kHz\(0),
	datad => VCC,
	combout => \inst5|count_100kHz[0]~6_combout\,
	cout => \inst5|count_100kHz[0]~7\);

-- Location: LCCOMB_X77_Y39_N10
\inst5|count_100kHz[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_100kHz[2]~10_combout\ = (\inst5|count_100kHz\(2) & (\inst5|count_100kHz[1]~9\ $ (GND))) # (!\inst5|count_100kHz\(2) & (!\inst5|count_100kHz[1]~9\ & VCC))
-- \inst5|count_100kHz[2]~11\ = CARRY((\inst5|count_100kHz\(2) & !\inst5|count_100kHz[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count_100kHz\(2),
	datad => VCC,
	cin => \inst5|count_100kHz[1]~9\,
	combout => \inst5|count_100kHz[2]~10_combout\,
	cout => \inst5|count_100kHz[2]~11\);

-- Location: LCCOMB_X77_Y39_N12
\inst5|count_100kHz[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_100kHz[3]~12_combout\ = (\inst5|count_100kHz\(3) & (!\inst5|count_100kHz[2]~11\)) # (!\inst5|count_100kHz\(3) & ((\inst5|count_100kHz[2]~11\) # (GND)))
-- \inst5|count_100kHz[3]~13\ = CARRY((!\inst5|count_100kHz[2]~11\) # (!\inst5|count_100kHz\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count_100kHz\(3),
	datad => VCC,
	cin => \inst5|count_100kHz[2]~11\,
	combout => \inst5|count_100kHz[3]~12_combout\,
	cout => \inst5|count_100kHz[3]~13\);

-- Location: FF_X77_Y39_N13
\inst5|count_100kHz[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_100kHz[3]~12_combout\,
	sclr => \inst5|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_100kHz\(3));

-- Location: LCCOMB_X77_Y39_N14
\inst5|count_100kHz[4]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_100kHz[4]~14_combout\ = (\inst5|count_100kHz\(4) & (\inst5|count_100kHz[3]~13\ $ (GND))) # (!\inst5|count_100kHz\(4) & (!\inst5|count_100kHz[3]~13\ & VCC))
-- \inst5|count_100kHz[4]~15\ = CARRY((\inst5|count_100kHz\(4) & !\inst5|count_100kHz[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count_100kHz\(4),
	datad => VCC,
	cin => \inst5|count_100kHz[3]~13\,
	combout => \inst5|count_100kHz[4]~14_combout\,
	cout => \inst5|count_100kHz[4]~15\);

-- Location: FF_X77_Y39_N15
\inst5|count_100kHz[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_100kHz[4]~14_combout\,
	sclr => \inst5|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_100kHz\(4));

-- Location: LCCOMB_X77_Y39_N16
\inst5|count_100kHz[5]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_100kHz[5]~16_combout\ = \inst5|count_100kHz[4]~15\ $ (\inst5|count_100kHz\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst5|count_100kHz\(5),
	cin => \inst5|count_100kHz[4]~15\,
	combout => \inst5|count_100kHz[5]~16_combout\);

-- Location: FF_X77_Y39_N17
\inst5|count_100kHz[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_100kHz[5]~16_combout\,
	sclr => \inst5|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_100kHz\(5));

-- Location: LCCOMB_X77_Y39_N18
\inst5|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~1_combout\ = (!\inst5|LessThan0~0_combout\ & (\inst5|count_100kHz\(4) & \inst5|count_100kHz\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|LessThan0~0_combout\,
	datac => \inst5|count_100kHz\(4),
	datad => \inst5|count_100kHz\(5),
	combout => \inst5|LessThan0~1_combout\);

-- Location: FF_X77_Y39_N7
\inst5|count_100kHz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_100kHz[0]~6_combout\,
	sclr => \inst5|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_100kHz\(0));

-- Location: LCCOMB_X77_Y39_N8
\inst5|count_100kHz[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_100kHz[1]~8_combout\ = (\inst5|count_100kHz\(1) & (!\inst5|count_100kHz[0]~7\)) # (!\inst5|count_100kHz\(1) & ((\inst5|count_100kHz[0]~7\) # (GND)))
-- \inst5|count_100kHz[1]~9\ = CARRY((!\inst5|count_100kHz[0]~7\) # (!\inst5|count_100kHz\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count_100kHz\(1),
	datad => VCC,
	cin => \inst5|count_100kHz[0]~7\,
	combout => \inst5|count_100kHz[1]~8_combout\,
	cout => \inst5|count_100kHz[1]~9\);

-- Location: FF_X77_Y39_N9
\inst5|count_100kHz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_100kHz[1]~8_combout\,
	sclr => \inst5|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_100kHz\(1));

-- Location: FF_X77_Y39_N11
\inst5|count_100kHz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_100kHz[2]~10_combout\,
	sclr => \inst5|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_100kHz\(2));

-- Location: LCCOMB_X77_Y39_N26
\inst5|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~0_combout\ = (!\inst5|count_100kHz\(2) & (!\inst5|count_100kHz\(3) & (!\inst5|count_100kHz\(1) & !\inst5|count_100kHz\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count_100kHz\(2),
	datab => \inst5|count_100kHz\(3),
	datac => \inst5|count_100kHz\(1),
	datad => \inst5|count_100kHz\(0),
	combout => \inst5|LessThan0~0_combout\);

-- Location: LCCOMB_X77_Y39_N4
\inst5|clock_100kHz_int~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|clock_100kHz_int~0_combout\ = \inst5|clock_100kHz_int~q\ $ (((!\inst5|LessThan0~0_combout\ & (\inst5|count_100kHz\(4) & \inst5|count_100kHz\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|LessThan0~0_combout\,
	datab => \inst5|count_100kHz\(4),
	datac => \inst5|clock_100kHz_int~q\,
	datad => \inst5|count_100kHz\(5),
	combout => \inst5|clock_100kHz_int~0_combout\);

-- Location: FF_X77_Y39_N5
\inst5|clock_100kHz_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|clock_100kHz_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|clock_100kHz_int~q\);

-- Location: LCCOMB_X77_Y39_N22
\inst5|clock_100kHz~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|clock_100kHz~feeder_combout\ = \inst5|clock_100kHz_int~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|clock_100kHz_int~q\,
	combout => \inst5|clock_100kHz~feeder_combout\);

-- Location: FF_X77_Y39_N23
\inst5|clock_100kHz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|clock_100kHz~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|clock_100kHz~q\);

-- Location: CLKCTRL_G5
\inst5|clock_100kHz~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst5|clock_100kHz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst5|clock_100kHz~clkctrl_outclk\);

-- Location: IOIBUF_X51_Y0_N15
\GSENSOR_SCLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GSENSOR_SCLK,
	o => \GSENSOR_SCLK~input_o\);

-- Location: LCCOMB_X63_Y43_N26
\inst13|inst|count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|count~1_combout\ = ((\inst13|inst|stretch~q\ & \inst13|inst|count\(1))) # (!\inst13|inst|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst|stretch~q\,
	datac => \inst13|inst|count\(0),
	datad => \inst13|inst|count\(1),
	combout => \inst13|inst|count~1_combout\);

-- Location: LCCOMB_X58_Y42_N0
\inst1|altpll_component|auto_generated|pll_lock_sync~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|altpll_component|auto_generated|pll_lock_sync~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|altpll_component|auto_generated|pll_lock_sync~feeder_combout\);

-- Location: FF_X58_Y42_N1
\inst1|altpll_component|auto_generated|pll_lock_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_locked\,
	d => \inst1|altpll_component|auto_generated|pll_lock_sync~feeder_combout\,
	clrn => \KEY0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|altpll_component|auto_generated|pll_lock_sync~q\);

-- Location: LCCOMB_X63_Y43_N20
\inst13|inst14|data_out[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_out[7]~0_combout\ = (\inst1|altpll_component|auto_generated|pll_lock_sync~q\ & \inst1|altpll_component|auto_generated|wire_pll1_locked\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|altpll_component|auto_generated|pll_lock_sync~q\,
	datab => \inst1|altpll_component|auto_generated|wire_pll1_locked\,
	combout => \inst13|inst14|data_out[7]~0_combout\);

-- Location: CLKCTRL_G13
\inst13|inst14|data_out[7]~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst13|inst14|data_out[7]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst13|inst14|data_out[7]~0clkctrl_outclk\);

-- Location: FF_X63_Y43_N27
\inst13|inst|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst|count~1_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|count\(0));

-- Location: LCCOMB_X63_Y43_N22
\inst13|inst|stretch~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|stretch~0_combout\ = (\inst13|inst|count\(1) & (!\GSENSOR_SCLK~input_o\ & ((\inst13|inst|stretch~q\) # (!\inst13|inst|count\(0))))) # (!\inst13|inst|count\(1) & (((\inst13|inst|stretch~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GSENSOR_SCLK~input_o\,
	datab => \inst13|inst|count\(1),
	datac => \inst13|inst|stretch~q\,
	datad => \inst13|inst|count\(0),
	combout => \inst13|inst|stretch~0_combout\);

-- Location: FF_X63_Y43_N23
\inst13|inst|stretch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst|stretch~0_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|stretch~q\);

-- Location: LCCOMB_X63_Y43_N8
\inst13|inst|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|count~0_combout\ = (\inst13|inst|count\(0) & ((\inst13|inst|stretch~q\) # (!\inst13|inst|count\(1)))) # (!\inst13|inst|count\(0) & ((\inst13|inst|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|stretch~q\,
	datac => \inst13|inst|count\(0),
	datad => \inst13|inst|count\(1),
	combout => \inst13|inst|count~0_combout\);

-- Location: FF_X63_Y43_N21
\inst13|inst|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	asdata => \inst13|inst|count~0_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|count\(1));

-- Location: LCCOMB_X63_Y43_N16
\inst13|inst|data_clk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|data_clk~0_combout\ = !\inst13|inst|count\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst|count\(1),
	combout => \inst13|inst|data_clk~0_combout\);

-- Location: FF_X63_Y43_N17
\inst13|inst|data_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst|data_clk~0_combout\,
	ena => \inst13|inst14|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_clk~q\);

-- Location: CLKCTRL_G7
\inst13|inst|data_clk~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst13|inst|data_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst13|inst|data_clk~clkctrl_outclk\);

-- Location: LCCOMB_X59_Y43_N28
\inst|state.init~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state.init~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst|state.init~feeder_combout\);

-- Location: FF_X59_Y43_N29
\inst|state.init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|state.init~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.init~q\);

-- Location: FF_X58_Y42_N3
\inst|state.decode\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|state.fetch~q\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.decode~q\);

-- Location: LCCOMB_X58_Y43_N14
\inst|state~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state~44_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(12) & (!\inst|altsyncram_component|auto_generated|q_a\(15) & (!\inst|altsyncram_component|auto_generated|q_a\(11) & \inst|state.decode~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(12),
	datab => \inst|altsyncram_component|auto_generated|q_a\(15),
	datac => \inst|altsyncram_component|auto_generated|q_a\(11),
	datad => \inst|state.decode~q\,
	combout => \inst|state~44_combout\);

-- Location: LCCOMB_X60_Y43_N14
\inst|state~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state~48_combout\ = (\inst|state~44_combout\ & (!\inst|altsyncram_component|auto_generated|q_a\(13) & !\inst|altsyncram_component|auto_generated|q_a\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state~44_combout\,
	datac => \inst|altsyncram_component|auto_generated|q_a\(13),
	datad => \inst|altsyncram_component|auto_generated|q_a\(14),
	combout => \inst|state~48_combout\);

-- Location: FF_X60_Y43_N15
\inst|state.ex_store\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|state~48_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ex_store~q\);

-- Location: LCCOMB_X59_Y43_N18
\inst|state~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state~34_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(12) & (\inst|altsyncram_component|auto_generated|q_a\(11) & \inst|state~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(12),
	datac => \inst|altsyncram_component|auto_generated|q_a\(11),
	datad => \inst|state~32_combout\,
	combout => \inst|state~34_combout\);

-- Location: FF_X59_Y43_N19
\inst|state.ex_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|state~34_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ex_out~q\);

-- Location: LCCOMB_X59_Y43_N2
\inst|state~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state~47_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(13) & (\inst|altsyncram_component|auto_generated|q_a\(14) & \inst|state~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(13),
	datab => \inst|altsyncram_component|auto_generated|q_a\(14),
	datad => \inst|state~44_combout\,
	combout => \inst|state~47_combout\);

-- Location: FF_X59_Y43_N3
\inst|state.ex_iload\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|state~47_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ex_iload~q\);

-- Location: LCCOMB_X59_Y43_N24
\inst|WideOr7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr7~0_combout\ = (\inst|state.ex_out~q\) # ((\inst|state.ex_iload~q\) # ((\inst|state.ex_in~q\) # (\inst|state.decode~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_out~q\,
	datab => \inst|state.ex_iload~q\,
	datac => \inst|state.ex_in~q\,
	datad => \inst|state.decode~q\,
	combout => \inst|WideOr7~0_combout\);

-- Location: LCCOMB_X59_Y43_N6
\inst|WideOr7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr7~combout\ = (!\inst|state.ex_store~q\ & (!\inst|state.ex_istore~q\ & (!\inst|state.fetch~q\ & !\inst|WideOr7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_store~q\,
	datab => \inst|state.ex_istore~q\,
	datac => \inst|state.fetch~q\,
	datad => \inst|WideOr7~0_combout\,
	combout => \inst|WideOr7~combout\);

-- Location: FF_X59_Y43_N7
\inst|state.fetch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|WideOr7~combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.fetch~q\);

-- Location: LCCOMB_X59_Y43_N20
\inst|state~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state~50_combout\ = (!\inst|altsyncram_component|auto_generated|q_a\(12) & (\inst|altsyncram_component|auto_generated|q_a\(11) & \inst|state~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(12),
	datac => \inst|altsyncram_component|auto_generated|q_a\(11),
	datad => \inst|state~32_combout\,
	combout => \inst|state~50_combout\);

-- Location: FF_X59_Y43_N21
\inst|state.ex_return\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|state~50_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ex_return~q\);

-- Location: LCCOMB_X55_Y43_N8
\inst|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \inst|PC\(0) $ (VCC)
-- \inst|Add0~1\ = CARRY(\inst|PC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(0),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: LCCOMB_X54_Y44_N4
\inst|Selector11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector11~1_combout\ = (\inst|Selector11~0_combout\) # ((\inst|Add0~0_combout\ & \inst|state.fetch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~0_combout\,
	datac => \inst|state.fetch~q\,
	datad => \inst|Selector11~0_combout\,
	combout => \inst|Selector11~1_combout\);

-- Location: LCCOMB_X56_Y41_N24
\inst|PC_stack[9][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC_stack[9][0]~feeder_combout\ = \inst|PC_stack[8][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|PC_stack[8][0]~q\,
	combout => \inst|PC_stack[9][0]~feeder_combout\);

-- Location: LCCOMB_X59_Y43_N26
\inst|state~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state~55_combout\ = (!\inst|altsyncram_component|auto_generated|q_a\(12) & (!\inst|altsyncram_component|auto_generated|q_a\(11) & \inst|state~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(12),
	datac => \inst|altsyncram_component|auto_generated|q_a\(11),
	datad => \inst|state~32_combout\,
	combout => \inst|state~55_combout\);

-- Location: FF_X59_Y43_N27
\inst|state.ex_call\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|state~55_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ex_call~q\);

-- Location: LCCOMB_X56_Y41_N30
\inst|PC_stack[9][0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC_stack[9][0]~1_combout\ = (\inst1|altpll_component|auto_generated|wire_pll1_locked\ & (\inst|state.ex_call~q\ & \inst1|altpll_component|auto_generated|pll_lock_sync~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|altpll_component|auto_generated|wire_pll1_locked\,
	datab => \inst|state.ex_call~q\,
	datad => \inst1|altpll_component|auto_generated|pll_lock_sync~q\,
	combout => \inst|PC_stack[9][0]~1_combout\);

-- Location: FF_X56_Y41_N25
\inst|PC_stack[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|PC_stack[9][0]~feeder_combout\,
	ena => \inst|PC_stack[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[9][0]~q\);

-- Location: LCCOMB_X56_Y41_N2
\inst|Selector129~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector129~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[9][0]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[7][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[9][0]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[7][0]~q\,
	combout => \inst|Selector129~0_combout\);

-- Location: LCCOMB_X56_Y41_N0
\inst|PC_stack[0][0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC_stack[0][0]~0_combout\ = (\inst1|altpll_component|auto_generated|wire_pll1_locked\ & (\inst1|altpll_component|auto_generated|pll_lock_sync~q\ & ((\inst|state.ex_call~q\) # (\inst|state.ex_return~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|altpll_component|auto_generated|wire_pll1_locked\,
	datab => \inst|state.ex_call~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst1|altpll_component|auto_generated|pll_lock_sync~q\,
	combout => \inst|PC_stack[0][0]~0_combout\);

-- Location: FF_X56_Y41_N3
\inst|PC_stack[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector129~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[8][0]~q\);

-- Location: LCCOMB_X56_Y41_N18
\inst|Selector118~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector118~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[8][0]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[6][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[6][0]~q\,
	datab => \inst|PC_stack[8][0]~q\,
	datac => \inst|state.ex_return~q\,
	combout => \inst|Selector118~0_combout\);

-- Location: FF_X56_Y41_N19
\inst|PC_stack[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector118~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[7][0]~q\);

-- Location: LCCOMB_X56_Y41_N22
\inst|Selector107~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector107~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[7][0]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[5][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[5][0]~q\,
	datab => \inst|PC_stack[7][0]~q\,
	datac => \inst|state.ex_return~q\,
	combout => \inst|Selector107~0_combout\);

-- Location: FF_X56_Y41_N23
\inst|PC_stack[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector107~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[6][0]~q\);

-- Location: LCCOMB_X56_Y41_N26
\inst|Selector96~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector96~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[6][0]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[4][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[6][0]~q\,
	datab => \inst|PC_stack[4][0]~q\,
	datac => \inst|state.ex_return~q\,
	combout => \inst|Selector96~0_combout\);

-- Location: FF_X56_Y41_N27
\inst|PC_stack[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector96~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[5][0]~q\);

-- Location: LCCOMB_X55_Y41_N24
\inst|Selector85~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector85~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[5][0]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[3][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_return~q\,
	datac => \inst|PC_stack[3][0]~q\,
	datad => \inst|PC_stack[5][0]~q\,
	combout => \inst|Selector85~0_combout\);

-- Location: FF_X55_Y41_N25
\inst|PC_stack[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector85~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[4][0]~q\);

-- Location: LCCOMB_X55_Y41_N4
\inst|Selector74~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector74~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[4][0]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[2][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_return~q\,
	datab => \inst|PC_stack[2][0]~q\,
	datad => \inst|PC_stack[4][0]~q\,
	combout => \inst|Selector74~0_combout\);

-- Location: FF_X55_Y41_N5
\inst|PC_stack[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector74~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[3][0]~q\);

-- Location: LCCOMB_X55_Y41_N20
\inst|Selector63~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector63~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[3][0]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[1][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_return~q\,
	datac => \inst|PC_stack[3][0]~q\,
	datad => \inst|PC_stack[1][0]~q\,
	combout => \inst|Selector63~0_combout\);

-- Location: FF_X55_Y41_N21
\inst|PC_stack[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector63~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[2][0]~q\);

-- Location: LCCOMB_X55_Y41_N0
\inst|Selector52~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector52~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[2][0]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_return~q\,
	datab => \inst|PC_stack[2][0]~q\,
	datad => \inst|PC_stack[0][0]~q\,
	combout => \inst|Selector52~0_combout\);

-- Location: FF_X55_Y41_N1
\inst|PC_stack[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector52~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[1][0]~q\);

-- Location: LCCOMB_X55_Y41_N12
\inst|Selector41~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector41~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[1][0]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_return~q\,
	datab => \inst|PC_stack[1][0]~q\,
	datad => \inst|PC\(0),
	combout => \inst|Selector41~0_combout\);

-- Location: FF_X55_Y41_N13
\inst|PC_stack[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector41~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[0][0]~q\);

-- Location: LCCOMB_X55_Y41_N28
\inst|Selector11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector11~2_combout\ = (\inst|state.ex_return~q\ & (((\inst|PC_stack[0][0]~q\)))) # (!\inst|state.ex_return~q\ & (\inst|state.init~q\ & (\inst|Selector11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.init~q\,
	datab => \inst|state.ex_return~q\,
	datac => \inst|Selector11~1_combout\,
	datad => \inst|PC_stack[0][0]~q\,
	combout => \inst|Selector11~2_combout\);

-- Location: LCCOMB_X60_Y43_N22
\inst|state~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state~35_combout\ = (!\inst|altsyncram_component|auto_generated|q_a\(13) & (\inst|Selector30~0_combout\ & \inst|altsyncram_component|auto_generated|q_a\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(13),
	datac => \inst|Selector30~0_combout\,
	datad => \inst|altsyncram_component|auto_generated|q_a\(14),
	combout => \inst|state~35_combout\);

-- Location: FF_X60_Y43_N23
\inst|state.ex_and\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|state~35_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ex_and~q\);

-- Location: LCCOMB_X55_Y43_N10
\inst|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|PC\(1) & (!\inst|Add0~1\)) # (!\inst|PC\(1) & ((\inst|Add0~1\) # (GND)))
-- \inst|Add0~3\ = CARRY((!\inst|Add0~1\) # (!\inst|PC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: LCCOMB_X55_Y43_N12
\inst|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|PC\(2) & (\inst|Add0~3\ $ (GND))) # (!\inst|PC\(2) & (!\inst|Add0~3\ & VCC))
-- \inst|Add0~5\ = CARRY((\inst|PC\(2) & !\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(2),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: LCCOMB_X59_Y43_N0
\inst|WideNor0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideNor0~combout\ = (\inst|state.decode~q\) # ((\inst|state.ex_istore2~q\) # (\inst|state.ex_iload~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.decode~q\,
	datac => \inst|state.ex_istore2~q\,
	datad => \inst|state.ex_iload~q\,
	combout => \inst|WideNor0~combout\);

-- Location: LCCOMB_X54_Y44_N12
\inst|Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector9~0_combout\ = (!\inst|state.fetch~q\ & ((\inst|WideNor0~combout\ & (\inst|altsyncram_component|auto_generated|q_a\(2))) # (!\inst|WideNor0~combout\ & ((\inst|IR\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(2),
	datab => \inst|IR\(2),
	datac => \inst|state.fetch~q\,
	datad => \inst|WideNor0~combout\,
	combout => \inst|Selector9~0_combout\);

-- Location: LCCOMB_X54_Y44_N20
\inst|Selector9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector9~1_combout\ = (\inst|Selector9~0_combout\) # ((\inst|state.fetch~q\ & \inst|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.fetch~q\,
	datac => \inst|Add0~4_combout\,
	datad => \inst|Selector9~0_combout\,
	combout => \inst|Selector9~1_combout\);

-- Location: LCCOMB_X56_Y41_N12
\inst|PC_stack[9][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC_stack[9][2]~feeder_combout\ = \inst|PC_stack[8][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|PC_stack[8][2]~q\,
	combout => \inst|PC_stack[9][2]~feeder_combout\);

-- Location: FF_X56_Y41_N13
\inst|PC_stack[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|PC_stack[9][2]~feeder_combout\,
	ena => \inst|PC_stack[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[9][2]~q\);

-- Location: LCCOMB_X54_Y41_N6
\inst|Selector127~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector127~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[9][2]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[7][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[7][2]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[9][2]~q\,
	combout => \inst|Selector127~0_combout\);

-- Location: FF_X54_Y41_N7
\inst|PC_stack[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector127~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[8][2]~q\);

-- Location: LCCOMB_X54_Y41_N4
\inst|Selector116~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector116~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[8][2]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[6][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[6][2]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[8][2]~q\,
	combout => \inst|Selector116~0_combout\);

-- Location: FF_X54_Y41_N5
\inst|PC_stack[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector116~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[7][2]~q\);

-- Location: LCCOMB_X54_Y41_N10
\inst|Selector105~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector105~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[7][2]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[5][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[7][2]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[5][2]~q\,
	combout => \inst|Selector105~0_combout\);

-- Location: FF_X54_Y41_N11
\inst|PC_stack[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector105~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[6][2]~q\);

-- Location: LCCOMB_X54_Y41_N8
\inst|Selector94~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector94~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[6][2]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[4][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[6][2]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[4][2]~q\,
	combout => \inst|Selector94~0_combout\);

-- Location: FF_X54_Y41_N9
\inst|PC_stack[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector94~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[5][2]~q\);

-- Location: LCCOMB_X54_Y41_N16
\inst|Selector83~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector83~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[5][2]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[3][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[5][2]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[3][2]~q\,
	combout => \inst|Selector83~0_combout\);

-- Location: FF_X54_Y41_N17
\inst|PC_stack[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector83~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[4][2]~q\);

-- Location: LCCOMB_X54_Y41_N28
\inst|Selector72~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector72~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[4][2]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[2][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[2][2]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[4][2]~q\,
	combout => \inst|Selector72~0_combout\);

-- Location: FF_X54_Y41_N29
\inst|PC_stack[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector72~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[3][2]~q\);

-- Location: LCCOMB_X54_Y41_N12
\inst|Selector61~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector61~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[3][2]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[1][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[1][2]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[3][2]~q\,
	combout => \inst|Selector61~0_combout\);

-- Location: FF_X54_Y41_N13
\inst|PC_stack[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector61~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[2][2]~q\);

-- Location: LCCOMB_X54_Y41_N20
\inst|Selector50~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector50~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[2][2]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[0][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[2][2]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[0][2]~q\,
	combout => \inst|Selector50~0_combout\);

-- Location: FF_X54_Y41_N21
\inst|PC_stack[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector50~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[1][2]~q\);

-- Location: LCCOMB_X54_Y41_N0
\inst|Selector39~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector39~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[1][2]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[1][2]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC\(2),
	combout => \inst|Selector39~0_combout\);

-- Location: FF_X54_Y41_N1
\inst|PC_stack[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector39~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[0][2]~q\);

-- Location: LCCOMB_X54_Y41_N24
\inst|Selector9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector9~2_combout\ = (\inst|state.ex_return~q\ & (((\inst|PC_stack[0][2]~q\)))) # (!\inst|state.ex_return~q\ & (\inst|Selector9~1_combout\ & (\inst|state.init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector9~1_combout\,
	datab => \inst|state.init~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[0][2]~q\,
	combout => \inst|Selector9~2_combout\);

-- Location: FF_X54_Y41_N25
\inst|PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector9~2_combout\,
	ena => \inst|PC[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(2));

-- Location: LCCOMB_X54_Y44_N22
\inst|next_mem_addr[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|next_mem_addr[2]~2_combout\ = (\inst|Selector9~0_combout\) # ((\inst|PC\(2) & \inst|state.fetch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(2),
	datac => \inst|state.fetch~q\,
	datad => \inst|Selector9~0_combout\,
	combout => \inst|next_mem_addr[2]~2_combout\);

-- Location: FF_X56_Y41_N11
\inst|PC_stack[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|PC_stack[8][4]~q\,
	sload => VCC,
	ena => \inst|PC_stack[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[9][4]~q\);

-- Location: LCCOMB_X56_Y41_N14
\inst|Selector125~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector125~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[9][4]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[7][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[7][4]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[9][4]~q\,
	combout => \inst|Selector125~0_combout\);

-- Location: FF_X56_Y41_N15
\inst|PC_stack[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector125~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[8][4]~q\);

-- Location: LCCOMB_X54_Y42_N30
\inst|Selector114~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector114~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[8][4]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[6][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[6][4]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[8][4]~q\,
	combout => \inst|Selector114~0_combout\);

-- Location: FF_X54_Y42_N31
\inst|PC_stack[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector114~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[7][4]~q\);

-- Location: LCCOMB_X54_Y42_N26
\inst|Selector103~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector103~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[7][4]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[5][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[5][4]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[7][4]~q\,
	combout => \inst|Selector103~0_combout\);

-- Location: FF_X54_Y42_N27
\inst|PC_stack[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector103~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[6][4]~q\);

-- Location: LCCOMB_X54_Y42_N18
\inst|Selector92~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector92~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[6][4]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[4][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[6][4]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[4][4]~q\,
	combout => \inst|Selector92~0_combout\);

-- Location: FF_X54_Y42_N19
\inst|PC_stack[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector92~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[5][4]~q\);

-- Location: LCCOMB_X54_Y41_N14
\inst|Selector81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector81~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[5][4]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[3][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[3][4]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[5][4]~q\,
	combout => \inst|Selector81~0_combout\);

-- Location: FF_X54_Y41_N15
\inst|PC_stack[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector81~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[4][4]~q\);

-- Location: LCCOMB_X54_Y41_N22
\inst|Selector70~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector70~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[4][4]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[2][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[2][4]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[4][4]~q\,
	combout => \inst|Selector70~0_combout\);

-- Location: FF_X54_Y41_N23
\inst|PC_stack[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector70~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[3][4]~q\);

-- Location: LCCOMB_X54_Y41_N18
\inst|Selector59~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector59~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[3][4]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[1][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[3][4]~q\,
	datab => \inst|state.ex_return~q\,
	datac => \inst|PC_stack[1][4]~q\,
	combout => \inst|Selector59~0_combout\);

-- Location: FF_X54_Y41_N19
\inst|PC_stack[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector59~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[2][4]~q\);

-- Location: LCCOMB_X54_Y41_N30
\inst|Selector48~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector48~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[2][4]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[0][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[0][4]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[2][4]~q\,
	combout => \inst|Selector48~0_combout\);

-- Location: FF_X54_Y41_N31
\inst|PC_stack[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector48~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[1][4]~q\);

-- Location: LCCOMB_X54_Y41_N26
\inst|Selector37~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector37~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[1][4]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[1][4]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC\(4),
	combout => \inst|Selector37~0_combout\);

-- Location: FF_X54_Y41_N27
\inst|PC_stack[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector37~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[0][4]~q\);

-- Location: LCCOMB_X54_Y43_N16
\inst|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector7~0_combout\ = (!\inst|state.fetch~q\ & ((\inst|WideNor0~combout\ & ((\inst|altsyncram_component|auto_generated|q_a\(4)))) # (!\inst|WideNor0~combout\ & (\inst|IR\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(4),
	datab => \inst|WideNor0~combout\,
	datac => \inst|state.fetch~q\,
	datad => \inst|altsyncram_component|auto_generated|q_a\(4),
	combout => \inst|Selector7~0_combout\);

-- Location: LCCOMB_X55_Y43_N14
\inst|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|PC\(3) & (!\inst|Add0~5\)) # (!\inst|PC\(3) & ((\inst|Add0~5\) # (GND)))
-- \inst|Add0~7\ = CARRY((!\inst|Add0~5\) # (!\inst|PC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(3),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: LCCOMB_X54_Y43_N28
\inst|Selector8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector8~1_combout\ = (\inst|Selector8~0_combout\) # ((\inst|state.fetch~q\ & \inst|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.fetch~q\,
	datac => \inst|Add0~6_combout\,
	datad => \inst|Selector8~0_combout\,
	combout => \inst|Selector8~1_combout\);

-- Location: LCCOMB_X56_Y42_N30
\inst|PC_stack[9][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC_stack[9][3]~feeder_combout\ = \inst|PC_stack[8][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|PC_stack[8][3]~q\,
	combout => \inst|PC_stack[9][3]~feeder_combout\);

-- Location: FF_X56_Y42_N31
\inst|PC_stack[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|PC_stack[9][3]~feeder_combout\,
	ena => \inst|PC_stack[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[9][3]~q\);

-- Location: LCCOMB_X57_Y41_N18
\inst|Selector126~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector126~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[9][3]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[7][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_return~q\,
	datac => \inst|PC_stack[9][3]~q\,
	datad => \inst|PC_stack[7][3]~q\,
	combout => \inst|Selector126~0_combout\);

-- Location: FF_X57_Y41_N19
\inst|PC_stack[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector126~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[8][3]~q\);

-- Location: LCCOMB_X57_Y41_N20
\inst|Selector115~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector115~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[8][3]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[6][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_return~q\,
	datac => \inst|PC_stack[6][3]~q\,
	datad => \inst|PC_stack[8][3]~q\,
	combout => \inst|Selector115~0_combout\);

-- Location: FF_X57_Y41_N21
\inst|PC_stack[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector115~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[7][3]~q\);

-- Location: LCCOMB_X57_Y41_N22
\inst|Selector104~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector104~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[7][3]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[5][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_return~q\,
	datab => \inst|PC_stack[7][3]~q\,
	datad => \inst|PC_stack[5][3]~q\,
	combout => \inst|Selector104~0_combout\);

-- Location: FF_X57_Y41_N23
\inst|PC_stack[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector104~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[6][3]~q\);

-- Location: LCCOMB_X57_Y41_N12
\inst|Selector93~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector93~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[6][3]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[4][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_return~q\,
	datac => \inst|PC_stack[6][3]~q\,
	datad => \inst|PC_stack[4][3]~q\,
	combout => \inst|Selector93~0_combout\);

-- Location: FF_X57_Y41_N13
\inst|PC_stack[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector93~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[5][3]~q\);

-- Location: LCCOMB_X57_Y41_N10
\inst|Selector82~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector82~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[5][3]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[3][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_return~q\,
	datac => \inst|PC_stack[3][3]~q\,
	datad => \inst|PC_stack[5][3]~q\,
	combout => \inst|Selector82~0_combout\);

-- Location: FF_X57_Y41_N11
\inst|PC_stack[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector82~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[4][3]~q\);

-- Location: LCCOMB_X57_Y41_N30
\inst|Selector71~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector71~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[4][3]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[2][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_return~q\,
	datac => \inst|PC_stack[2][3]~q\,
	datad => \inst|PC_stack[4][3]~q\,
	combout => \inst|Selector71~0_combout\);

-- Location: FF_X57_Y41_N31
\inst|PC_stack[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector71~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[3][3]~q\);

-- Location: LCCOMB_X57_Y41_N26
\inst|Selector60~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector60~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[3][3]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[1][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[1][3]~q\,
	datac => \inst|PC_stack[3][3]~q\,
	datad => \inst|state.ex_return~q\,
	combout => \inst|Selector60~0_combout\);

-- Location: FF_X57_Y41_N27
\inst|PC_stack[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector60~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[2][3]~q\);

-- Location: LCCOMB_X57_Y41_N14
\inst|Selector49~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector49~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[2][3]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[0][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_return~q\,
	datac => \inst|PC_stack[2][3]~q\,
	datad => \inst|PC_stack[0][3]~q\,
	combout => \inst|Selector49~0_combout\);

-- Location: FF_X57_Y41_N15
\inst|PC_stack[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector49~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[1][3]~q\);

-- Location: LCCOMB_X57_Y41_N6
\inst|Selector38~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector38~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[1][3]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_return~q\,
	datac => \inst|PC_stack[1][3]~q\,
	datad => \inst|PC\(3),
	combout => \inst|Selector38~0_combout\);

-- Location: FF_X57_Y41_N7
\inst|PC_stack[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector38~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[0][3]~q\);

-- Location: LCCOMB_X57_Y41_N2
\inst|Selector8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector8~2_combout\ = (\inst|state.ex_return~q\ & (((\inst|PC_stack[0][3]~q\)))) # (!\inst|state.ex_return~q\ & (\inst|Selector8~1_combout\ & (\inst|state.init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_return~q\,
	datab => \inst|Selector8~1_combout\,
	datac => \inst|state.init~q\,
	datad => \inst|PC_stack[0][3]~q\,
	combout => \inst|Selector8~2_combout\);

-- Location: FF_X57_Y41_N3
\inst|PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector8~2_combout\,
	ena => \inst|PC[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(3));

-- Location: LCCOMB_X55_Y43_N16
\inst|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|PC\(4) & (\inst|Add0~7\ $ (GND))) # (!\inst|PC\(4) & (!\inst|Add0~7\ & VCC))
-- \inst|Add0~9\ = CARRY((\inst|PC\(4) & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(4),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: LCCOMB_X54_Y43_N14
\inst|Selector7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector7~1_combout\ = (\inst|Selector7~0_combout\) # ((\inst|state.fetch~q\ & \inst|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Selector7~0_combout\,
	datac => \inst|state.fetch~q\,
	datad => \inst|Add0~8_combout\,
	combout => \inst|Selector7~1_combout\);

-- Location: LCCOMB_X54_Y41_N2
\inst|Selector7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector7~2_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[0][4]~q\)) # (!\inst|state.ex_return~q\ & (((\inst|state.init~q\ & \inst|Selector7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[0][4]~q\,
	datab => \inst|state.init~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|Selector7~1_combout\,
	combout => \inst|Selector7~2_combout\);

-- Location: FF_X54_Y41_N3
\inst|PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector7~2_combout\,
	ena => \inst|PC[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(4));

-- Location: LCCOMB_X54_Y43_N18
\inst|next_mem_addr[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|next_mem_addr[4]~4_combout\ = (\inst|Selector7~0_combout\) # ((\inst|PC\(4) & \inst|state.fetch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(4),
	datac => \inst|state.fetch~q\,
	datad => \inst|Selector7~0_combout\,
	combout => \inst|next_mem_addr[4]~4_combout\);

-- Location: LCCOMB_X56_Y42_N12
\inst|PC_stack[9][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC_stack[9][5]~feeder_combout\ = \inst|PC_stack[8][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|PC_stack[8][5]~q\,
	combout => \inst|PC_stack[9][5]~feeder_combout\);

-- Location: FF_X56_Y42_N13
\inst|PC_stack[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|PC_stack[9][5]~feeder_combout\,
	ena => \inst|PC_stack[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[9][5]~q\);

-- Location: LCCOMB_X54_Y42_N6
\inst|Selector124~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector124~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[9][5]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[7][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[7][5]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[9][5]~q\,
	combout => \inst|Selector124~0_combout\);

-- Location: FF_X54_Y42_N7
\inst|PC_stack[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector124~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[8][5]~q\);

-- Location: LCCOMB_X54_Y42_N20
\inst|Selector113~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector113~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[8][5]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[6][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[6][5]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[8][5]~q\,
	combout => \inst|Selector113~0_combout\);

-- Location: FF_X54_Y42_N21
\inst|PC_stack[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector113~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[7][5]~q\);

-- Location: LCCOMB_X54_Y42_N4
\inst|Selector102~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector102~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[7][5]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[5][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[5][5]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[7][5]~q\,
	combout => \inst|Selector102~0_combout\);

-- Location: FF_X54_Y42_N5
\inst|PC_stack[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector102~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[6][5]~q\);

-- Location: LCCOMB_X54_Y42_N12
\inst|Selector91~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector91~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[6][5]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[4][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[6][5]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[4][5]~q\,
	combout => \inst|Selector91~0_combout\);

-- Location: FF_X54_Y42_N13
\inst|PC_stack[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector91~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[5][5]~q\);

-- Location: LCCOMB_X54_Y42_N0
\inst|Selector80~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector80~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[5][5]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[3][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[3][5]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[5][5]~q\,
	combout => \inst|Selector80~0_combout\);

-- Location: FF_X54_Y42_N1
\inst|PC_stack[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector80~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[4][5]~q\);

-- Location: LCCOMB_X54_Y42_N22
\inst|Selector69~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector69~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[4][5]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[2][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[2][5]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[4][5]~q\,
	combout => \inst|Selector69~0_combout\);

-- Location: FF_X54_Y42_N23
\inst|PC_stack[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector69~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[3][5]~q\);

-- Location: LCCOMB_X54_Y42_N24
\inst|Selector58~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector58~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[3][5]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[1][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[3][5]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[1][5]~q\,
	combout => \inst|Selector58~0_combout\);

-- Location: FF_X54_Y42_N25
\inst|PC_stack[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector58~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[2][5]~q\);

-- Location: LCCOMB_X54_Y42_N2
\inst|Selector47~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector47~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[2][5]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[0][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[0][5]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[2][5]~q\,
	combout => \inst|Selector47~0_combout\);

-- Location: FF_X54_Y42_N3
\inst|PC_stack[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector47~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[1][5]~q\);

-- Location: LCCOMB_X54_Y42_N14
\inst|Selector36~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector36~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[1][5]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[1][5]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC\(5),
	combout => \inst|Selector36~0_combout\);

-- Location: FF_X54_Y42_N15
\inst|PC_stack[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector36~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[0][5]~q\);

-- Location: LCCOMB_X55_Y43_N18
\inst|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|PC\(5) & (!\inst|Add0~9\)) # (!\inst|PC\(5) & ((\inst|Add0~9\) # (GND)))
-- \inst|Add0~11\ = CARRY((!\inst|Add0~9\) # (!\inst|PC\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(5),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: LCCOMB_X54_Y42_N16
\inst|Selector6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector6~1_combout\ = (\inst|Selector6~0_combout\) # ((\inst|state.fetch~q\ & \inst|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.fetch~q\,
	datac => \inst|Add0~10_combout\,
	datad => \inst|Selector6~0_combout\,
	combout => \inst|Selector6~1_combout\);

-- Location: LCCOMB_X54_Y42_N10
\inst|Selector6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector6~2_combout\ = (\inst|state.ex_return~q\ & (((\inst|PC_stack[0][5]~q\)))) # (!\inst|state.ex_return~q\ & (\inst|state.init~q\ & ((\inst|Selector6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.init~q\,
	datab => \inst|PC_stack[0][5]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|Selector6~1_combout\,
	combout => \inst|Selector6~2_combout\);

-- Location: FF_X54_Y42_N11
\inst|PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector6~2_combout\,
	ena => \inst|PC[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(5));

-- Location: LCCOMB_X55_Y43_N20
\inst|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = (\inst|PC\(6) & (\inst|Add0~11\ $ (GND))) # (!\inst|PC\(6) & (!\inst|Add0~11\ & VCC))
-- \inst|Add0~13\ = CARRY((\inst|PC\(6) & !\inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(6),
	datad => VCC,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: LCCOMB_X54_Y43_N4
\inst|Selector5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector5~1_combout\ = (\inst|Selector5~0_combout\) # ((\inst|state.fetch~q\ & \inst|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.fetch~q\,
	datac => \inst|Add0~12_combout\,
	datad => \inst|Selector5~0_combout\,
	combout => \inst|Selector5~1_combout\);

-- Location: LCCOMB_X56_Y42_N22
\inst|PC_stack[9][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC_stack[9][6]~feeder_combout\ = \inst|PC_stack[8][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|PC_stack[8][6]~q\,
	combout => \inst|PC_stack[9][6]~feeder_combout\);

-- Location: FF_X56_Y42_N23
\inst|PC_stack[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|PC_stack[9][6]~feeder_combout\,
	ena => \inst|PC_stack[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[9][6]~q\);

-- Location: LCCOMB_X56_Y42_N6
\inst|Selector123~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector123~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[9][6]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[7][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[9][6]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[7][6]~q\,
	combout => \inst|Selector123~0_combout\);

-- Location: FF_X56_Y42_N7
\inst|PC_stack[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector123~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[8][6]~q\);

-- Location: LCCOMB_X56_Y42_N18
\inst|Selector112~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector112~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[8][6]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[6][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[6][6]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[8][6]~q\,
	combout => \inst|Selector112~0_combout\);

-- Location: FF_X56_Y42_N19
\inst|PC_stack[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector112~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[7][6]~q\);

-- Location: LCCOMB_X56_Y42_N26
\inst|Selector101~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector101~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[7][6]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[5][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[7][6]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[5][6]~q\,
	combout => \inst|Selector101~0_combout\);

-- Location: FF_X56_Y42_N27
\inst|PC_stack[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector101~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[6][6]~q\);

-- Location: LCCOMB_X56_Y42_N10
\inst|Selector90~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector90~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[6][6]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[4][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[6][6]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[4][6]~q\,
	combout => \inst|Selector90~0_combout\);

-- Location: FF_X56_Y42_N11
\inst|PC_stack[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector90~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[5][6]~q\);

-- Location: LCCOMB_X55_Y42_N24
\inst|Selector79~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector79~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[5][6]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[3][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.ex_return~q\,
	datac => \inst|PC_stack[5][6]~q\,
	datad => \inst|PC_stack[3][6]~q\,
	combout => \inst|Selector79~0_combout\);

-- Location: FF_X55_Y42_N25
\inst|PC_stack[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector79~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[4][6]~q\);

-- Location: LCCOMB_X55_Y42_N28
\inst|Selector68~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector68~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[4][6]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[2][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.ex_return~q\,
	datac => \inst|PC_stack[2][6]~q\,
	datad => \inst|PC_stack[4][6]~q\,
	combout => \inst|Selector68~0_combout\);

-- Location: FF_X55_Y42_N29
\inst|PC_stack[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector68~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[3][6]~q\);

-- Location: LCCOMB_X55_Y42_N8
\inst|Selector57~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector57~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[3][6]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[1][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[1][6]~q\,
	datab => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[3][6]~q\,
	combout => \inst|Selector57~0_combout\);

-- Location: FF_X55_Y42_N9
\inst|PC_stack[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector57~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[2][6]~q\);

-- Location: LCCOMB_X55_Y42_N12
\inst|Selector46~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector46~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[2][6]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[0][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.ex_return~q\,
	datac => \inst|PC_stack[2][6]~q\,
	datad => \inst|PC_stack[0][6]~q\,
	combout => \inst|Selector46~0_combout\);

-- Location: FF_X55_Y42_N13
\inst|PC_stack[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector46~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[1][6]~q\);

-- Location: LCCOMB_X55_Y42_N16
\inst|Selector35~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector35~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[1][6]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[1][6]~q\,
	datab => \inst|state.ex_return~q\,
	datad => \inst|PC\(6),
	combout => \inst|Selector35~0_combout\);

-- Location: FF_X55_Y42_N17
\inst|PC_stack[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector35~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[0][6]~q\);

-- Location: LCCOMB_X55_Y42_N0
\inst|Selector5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector5~2_combout\ = (\inst|state.ex_return~q\ & (((\inst|PC_stack[0][6]~q\)))) # (!\inst|state.ex_return~q\ & (\inst|Selector5~1_combout\ & (\inst|state.init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector5~1_combout\,
	datab => \inst|state.ex_return~q\,
	datac => \inst|state.init~q\,
	datad => \inst|PC_stack[0][6]~q\,
	combout => \inst|Selector5~2_combout\);

-- Location: FF_X55_Y42_N1
\inst|PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector5~2_combout\,
	ena => \inst|PC[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(6));

-- Location: LCCOMB_X55_Y43_N22
\inst|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = (\inst|PC\(7) & (!\inst|Add0~13\)) # (!\inst|PC\(7) & ((\inst|Add0~13\) # (GND)))
-- \inst|Add0~15\ = CARRY((!\inst|Add0~13\) # (!\inst|PC\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(7),
	datad => VCC,
	cin => \inst|Add0~13\,
	combout => \inst|Add0~14_combout\,
	cout => \inst|Add0~15\);

-- Location: LCCOMB_X54_Y43_N6
\inst|Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector4~1_combout\ = (\inst|Selector4~0_combout\) # ((\inst|state.fetch~q\ & \inst|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector4~0_combout\,
	datac => \inst|state.fetch~q\,
	datad => \inst|Add0~14_combout\,
	combout => \inst|Selector4~1_combout\);

-- Location: LCCOMB_X56_Y41_N4
\inst|PC_stack[9][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC_stack[9][7]~feeder_combout\ = \inst|PC_stack[8][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|PC_stack[8][7]~q\,
	combout => \inst|PC_stack[9][7]~feeder_combout\);

-- Location: FF_X56_Y41_N5
\inst|PC_stack[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|PC_stack[9][7]~feeder_combout\,
	ena => \inst|PC_stack[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[9][7]~q\);

-- Location: LCCOMB_X55_Y41_N14
\inst|Selector122~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector122~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[9][7]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[7][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_return~q\,
	datab => \inst|PC_stack[7][7]~q\,
	datad => \inst|PC_stack[9][7]~q\,
	combout => \inst|Selector122~0_combout\);

-- Location: FF_X55_Y41_N15
\inst|PC_stack[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector122~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[8][7]~q\);

-- Location: LCCOMB_X55_Y41_N16
\inst|Selector111~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector111~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[8][7]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[6][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[8][7]~q\,
	datac => \inst|PC_stack[6][7]~q\,
	datad => \inst|state.ex_return~q\,
	combout => \inst|Selector111~0_combout\);

-- Location: FF_X55_Y41_N17
\inst|PC_stack[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector111~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[7][7]~q\);

-- Location: LCCOMB_X55_Y41_N30
\inst|Selector100~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector100~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[7][7]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[5][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_return~q\,
	datac => \inst|PC_stack[5][7]~q\,
	datad => \inst|PC_stack[7][7]~q\,
	combout => \inst|Selector100~0_combout\);

-- Location: FF_X55_Y41_N31
\inst|PC_stack[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector100~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[6][7]~q\);

-- Location: LCCOMB_X55_Y41_N8
\inst|Selector89~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector89~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[6][7]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[4][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_return~q\,
	datac => \inst|PC_stack[6][7]~q\,
	datad => \inst|PC_stack[4][7]~q\,
	combout => \inst|Selector89~0_combout\);

-- Location: FF_X55_Y41_N9
\inst|PC_stack[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector89~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[5][7]~q\);

-- Location: LCCOMB_X55_Y41_N10
\inst|Selector78~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector78~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[5][7]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[3][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_return~q\,
	datac => \inst|PC_stack[5][7]~q\,
	datad => \inst|PC_stack[3][7]~q\,
	combout => \inst|Selector78~0_combout\);

-- Location: FF_X55_Y41_N11
\inst|PC_stack[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector78~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[4][7]~q\);

-- Location: LCCOMB_X55_Y41_N2
\inst|Selector67~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector67~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[4][7]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[2][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[4][7]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[2][7]~q\,
	combout => \inst|Selector67~0_combout\);

-- Location: FF_X55_Y41_N3
\inst|PC_stack[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector67~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[3][7]~q\);

-- Location: LCCOMB_X55_Y41_N6
\inst|Selector56~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector56~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[3][7]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[1][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_return~q\,
	datac => \inst|PC_stack[1][7]~q\,
	datad => \inst|PC_stack[3][7]~q\,
	combout => \inst|Selector56~0_combout\);

-- Location: FF_X55_Y41_N7
\inst|PC_stack[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector56~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[2][7]~q\);

-- Location: LCCOMB_X55_Y41_N26
\inst|Selector45~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector45~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[2][7]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[0][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_return~q\,
	datac => \inst|PC_stack[0][7]~q\,
	datad => \inst|PC_stack[2][7]~q\,
	combout => \inst|Selector45~0_combout\);

-- Location: FF_X55_Y41_N27
\inst|PC_stack[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector45~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[1][7]~q\);

-- Location: LCCOMB_X55_Y41_N22
\inst|Selector34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector34~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[1][7]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_return~q\,
	datac => \inst|PC_stack[1][7]~q\,
	datad => \inst|PC\(7),
	combout => \inst|Selector34~0_combout\);

-- Location: FF_X55_Y41_N23
\inst|PC_stack[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector34~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[0][7]~q\);

-- Location: LCCOMB_X55_Y41_N18
\inst|Selector4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector4~2_combout\ = (\inst|state.ex_return~q\ & (((\inst|PC_stack[0][7]~q\)))) # (!\inst|state.ex_return~q\ & (\inst|state.init~q\ & (\inst|Selector4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.init~q\,
	datab => \inst|Selector4~1_combout\,
	datac => \inst|PC_stack[0][7]~q\,
	datad => \inst|state.ex_return~q\,
	combout => \inst|Selector4~2_combout\);

-- Location: FF_X55_Y41_N19
\inst|PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector4~2_combout\,
	ena => \inst|PC[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(7));

-- Location: LCCOMB_X55_Y43_N24
\inst|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~16_combout\ = (\inst|PC\(8) & (\inst|Add0~15\ $ (GND))) # (!\inst|PC\(8) & (!\inst|Add0~15\ & VCC))
-- \inst|Add0~17\ = CARRY((\inst|PC\(8) & !\inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(8),
	datad => VCC,
	cin => \inst|Add0~15\,
	combout => \inst|Add0~16_combout\,
	cout => \inst|Add0~17\);

-- Location: LCCOMB_X55_Y43_N0
\inst|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector3~1_combout\ = (\inst|Selector3~0_combout\) # ((\inst|Add0~16_combout\ & \inst|state.fetch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~16_combout\,
	datac => \inst|state.fetch~q\,
	datad => \inst|Selector3~0_combout\,
	combout => \inst|Selector3~1_combout\);

-- Location: LCCOMB_X56_Y40_N24
\inst|PC_stack[9][8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC_stack[9][8]~feeder_combout\ = \inst|PC_stack[8][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|PC_stack[8][8]~q\,
	combout => \inst|PC_stack[9][8]~feeder_combout\);

-- Location: FF_X56_Y40_N25
\inst|PC_stack[9][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|PC_stack[9][8]~feeder_combout\,
	ena => \inst|PC_stack[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[9][8]~q\);

-- Location: LCCOMB_X55_Y40_N24
\inst|Selector121~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector121~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[9][8]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[7][8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[7][8]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[9][8]~q\,
	combout => \inst|Selector121~0_combout\);

-- Location: FF_X55_Y40_N25
\inst|PC_stack[8][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector121~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[8][8]~q\);

-- Location: LCCOMB_X55_Y40_N18
\inst|Selector110~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector110~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[8][8]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[6][8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[6][8]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[8][8]~q\,
	combout => \inst|Selector110~0_combout\);

-- Location: FF_X55_Y40_N19
\inst|PC_stack[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector110~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[7][8]~q\);

-- Location: LCCOMB_X55_Y40_N4
\inst|Selector99~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector99~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[7][8]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[5][8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[5][8]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[7][8]~q\,
	combout => \inst|Selector99~0_combout\);

-- Location: FF_X55_Y40_N5
\inst|PC_stack[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector99~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[6][8]~q\);

-- Location: LCCOMB_X55_Y40_N22
\inst|Selector88~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector88~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[6][8]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[4][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[6][8]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[4][8]~q\,
	combout => \inst|Selector88~0_combout\);

-- Location: FF_X55_Y40_N23
\inst|PC_stack[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector88~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[5][8]~q\);

-- Location: LCCOMB_X55_Y40_N8
\inst|Selector77~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector77~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[5][8]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[3][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[5][8]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[3][8]~q\,
	combout => \inst|Selector77~0_combout\);

-- Location: FF_X55_Y40_N9
\inst|PC_stack[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector77~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[4][8]~q\);

-- Location: LCCOMB_X55_Y40_N20
\inst|Selector66~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector66~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[4][8]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[2][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[4][8]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[2][8]~q\,
	combout => \inst|Selector66~0_combout\);

-- Location: FF_X55_Y40_N21
\inst|PC_stack[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector66~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[3][8]~q\);

-- Location: LCCOMB_X55_Y40_N0
\inst|Selector55~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector55~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[3][8]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[1][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[3][8]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[1][8]~q\,
	combout => \inst|Selector55~0_combout\);

-- Location: FF_X55_Y40_N1
\inst|PC_stack[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector55~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[2][8]~q\);

-- Location: LCCOMB_X55_Y40_N12
\inst|Selector44~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector44~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[2][8]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[0][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[2][8]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[0][8]~q\,
	combout => \inst|Selector44~0_combout\);

-- Location: FF_X55_Y40_N13
\inst|PC_stack[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector44~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[1][8]~q\);

-- Location: LCCOMB_X55_Y40_N28
\inst|Selector33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector33~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[1][8]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[1][8]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC\(8),
	combout => \inst|Selector33~0_combout\);

-- Location: FF_X55_Y40_N29
\inst|PC_stack[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector33~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[0][8]~q\);

-- Location: LCCOMB_X55_Y40_N16
\inst|Selector3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector3~2_combout\ = (\inst|state.ex_return~q\ & (((\inst|PC_stack[0][8]~q\)))) # (!\inst|state.ex_return~q\ & (\inst|Selector3~1_combout\ & (\inst|state.init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector3~1_combout\,
	datab => \inst|state.init~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[0][8]~q\,
	combout => \inst|Selector3~2_combout\);

-- Location: FF_X55_Y40_N17
\inst|PC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector3~2_combout\,
	ena => \inst|PC[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(8));

-- Location: LCCOMB_X55_Y43_N26
\inst|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~18_combout\ = (\inst|PC\(9) & (!\inst|Add0~17\)) # (!\inst|PC\(9) & ((\inst|Add0~17\) # (GND)))
-- \inst|Add0~19\ = CARRY((!\inst|Add0~17\) # (!\inst|PC\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(9),
	datad => VCC,
	cin => \inst|Add0~17\,
	combout => \inst|Add0~18_combout\,
	cout => \inst|Add0~19\);

-- Location: LCCOMB_X58_Y43_N20
\inst|state~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state~40_combout\ = (!\inst|altsyncram_component|auto_generated|q_a\(14) & (\inst|altsyncram_component|auto_generated|q_a\(15) & (\inst|altsyncram_component|auto_generated|q_a\(13) & \inst|state.decode~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(14),
	datab => \inst|altsyncram_component|auto_generated|q_a\(15),
	datac => \inst|altsyncram_component|auto_generated|q_a\(13),
	datad => \inst|state.decode~q\,
	combout => \inst|state~40_combout\);

-- Location: LCCOMB_X59_Y43_N16
\inst|state~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state~41_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(12) & (\inst|altsyncram_component|auto_generated|q_a\(11) & \inst|state~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(12),
	datac => \inst|altsyncram_component|auto_generated|q_a\(11),
	datad => \inst|state~40_combout\,
	combout => \inst|state~41_combout\);

-- Location: FF_X59_Y43_N17
\inst|state.ex_loadi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|state~41_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ex_loadi~q\);

-- Location: LCCOMB_X60_Y45_N10
\inst|Selector19~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector19~2_combout\ = (\inst|state.ex_loadi~q\ & \inst|IR\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.ex_loadi~q\,
	datac => \inst|IR\(8),
	combout => \inst|Selector19~2_combout\);

-- Location: LCCOMB_X60_Y43_N10
\inst|state~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state~39_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(13) & (\inst|state~38_combout\ & !\inst|altsyncram_component|auto_generated|q_a\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(13),
	datac => \inst|state~38_combout\,
	datad => \inst|altsyncram_component|auto_generated|q_a\(14),
	combout => \inst|state~39_combout\);

-- Location: FF_X60_Y43_N11
\inst|state.ex_sub\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|state~39_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ex_sub~q\);

-- Location: LCCOMB_X58_Y43_N12
\inst|state~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state~36_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(12) & (!\inst|altsyncram_component|auto_generated|q_a\(15) & (\inst|altsyncram_component|auto_generated|q_a\(11) & \inst|state.decode~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(12),
	datab => \inst|altsyncram_component|auto_generated|q_a\(15),
	datac => \inst|altsyncram_component|auto_generated|q_a\(11),
	datad => \inst|state.decode~q\,
	combout => \inst|state~36_combout\);

-- Location: LCCOMB_X60_Y43_N28
\inst|state~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state~37_combout\ = (!\inst|altsyncram_component|auto_generated|q_a\(13) & (\inst|state~36_combout\ & !\inst|altsyncram_component|auto_generated|q_a\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(13),
	datac => \inst|state~36_combout\,
	datad => \inst|altsyncram_component|auto_generated|q_a\(14),
	combout => \inst|state~37_combout\);

-- Location: FF_X60_Y43_N29
\inst|state.ex_add\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|state~37_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ex_add~q\);

-- Location: LCCOMB_X59_Y43_N30
\inst|WideOr3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr3~0_combout\ = (\inst|state.ex_sub~q\) # ((\inst|state.ex_load~q\) # ((\inst|state.ex_add~q\) # (!\inst|state.init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_sub~q\,
	datab => \inst|state.ex_load~q\,
	datac => \inst|state.init~q\,
	datad => \inst|state.ex_add~q\,
	combout => \inst|WideOr3~0_combout\);

-- Location: LCCOMB_X60_Y43_N18
\inst|state~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state~46_combout\ = (!\inst|altsyncram_component|auto_generated|q_a\(13) & (\inst|state~36_combout\ & \inst|altsyncram_component|auto_generated|q_a\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(13),
	datac => \inst|state~36_combout\,
	datad => \inst|altsyncram_component|auto_generated|q_a\(14),
	combout => \inst|state~46_combout\);

-- Location: FF_X60_Y43_N19
\inst|state.ex_xor\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|state~46_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ex_xor~q\);

-- Location: LCCOMB_X60_Y43_N20
\inst|state~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state~42_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(13) & (\inst|Selector30~0_combout\ & \inst|altsyncram_component|auto_generated|q_a\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(13),
	datac => \inst|Selector30~0_combout\,
	datad => \inst|altsyncram_component|auto_generated|q_a\(14),
	combout => \inst|state~42_combout\);

-- Location: FF_X60_Y43_N21
\inst|state.ex_addi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|state~42_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ex_addi~q\);

-- Location: LCCOMB_X57_Y43_N12
\inst|WideOr3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr3~1_combout\ = (!\inst|state.ex_in2~q\ & (!\inst|state.ex_loadi~q\ & (!\inst|state.ex_addi~q\ & !\inst|state.ex_and~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_in2~q\,
	datab => \inst|state.ex_loadi~q\,
	datac => \inst|state.ex_addi~q\,
	datad => \inst|state.ex_and~q\,
	combout => \inst|WideOr3~1_combout\);

-- Location: LCCOMB_X60_Y43_N8
\inst|state~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state~45_combout\ = (\inst|state~44_combout\ & (!\inst|altsyncram_component|auto_generated|q_a\(13) & \inst|altsyncram_component|auto_generated|q_a\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state~44_combout\,
	datac => \inst|altsyncram_component|auto_generated|q_a\(13),
	datad => \inst|altsyncram_component|auto_generated|q_a\(14),
	combout => \inst|state~45_combout\);

-- Location: FF_X60_Y43_N9
\inst|state.ex_or\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|state~45_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ex_or~q\);

-- Location: LCCOMB_X59_Y43_N14
\inst|WideOr3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr3~2_combout\ = (!\inst|state.ex_xor~q\ & (\inst|WideOr3~1_combout\ & (!\inst|state.ex_or~q\ & !\inst|state.ex_shift~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_xor~q\,
	datab => \inst|WideOr3~1_combout\,
	datac => \inst|state.ex_or~q\,
	datad => \inst|state.ex_shift~q\,
	combout => \inst|WideOr3~2_combout\);

-- Location: LCCOMB_X59_Y43_N8
\inst|Selector27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector27~0_combout\ = (!\inst|state.ex_or~q\ & ((\inst|WideOr3~0_combout\) # (!\inst|WideOr3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr3~0_combout\,
	datab => \inst|WideOr3~2_combout\,
	datac => \inst|state.ex_or~q\,
	combout => \inst|Selector27~0_combout\);

-- Location: LCCOMB_X60_Y45_N4
\inst|Selector19~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector19~3_combout\ = (\inst|AC\(8) & (((\inst|state.ex_and~q\ & \inst|altsyncram_component|auto_generated|q_a\(8))) # (!\inst|Selector27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector27~0_combout\,
	datab => \inst|state.ex_and~q\,
	datac => \inst|AC\(8),
	datad => \inst|altsyncram_component|auto_generated|q_a\(8),
	combout => \inst|Selector19~3_combout\);

-- Location: LCCOMB_X58_Y43_N16
\inst|IR[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|IR[6]~0_combout\ = (\inst1|altpll_component|auto_generated|pll_lock_sync~q\ & (\inst1|altpll_component|auto_generated|wire_pll1_locked\ & \inst|state.decode~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|altpll_component|auto_generated|pll_lock_sync~q\,
	datac => \inst1|altpll_component|auto_generated|wire_pll1_locked\,
	datad => \inst|state.decode~q\,
	combout => \inst|IR[6]~0_combout\);

-- Location: FF_X57_Y44_N9
\inst|IR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|altsyncram_component|auto_generated|q_a\(3),
	sload => VCC,
	ena => \inst|IR[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR\(3));

-- Location: LCCOMB_X57_Y46_N0
\inst|Selector19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector19~1_combout\ = (!\inst|IR\(4) & (\inst|IR\(3) & \inst|state.ex_shift~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(4),
	datac => \inst|IR\(3),
	datad => \inst|state.ex_shift~q\,
	combout => \inst|Selector19~1_combout\);

-- Location: LCCOMB_X58_Y45_N28
\inst|Selector20~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector20~2_combout\ = (\inst|state.ex_shift~q\ & !\inst|IR\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|state.ex_shift~q\,
	datad => \inst|IR\(3),
	combout => \inst|Selector20~2_combout\);

-- Location: LCCOMB_X57_Y47_N24
\inst|shifter|auto_generated|sbit_w[48]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[48]~13_combout\ = (\inst|IR\(2) & \inst|IR\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|IR\(2),
	datad => \inst|IR\(4),
	combout => \inst|shifter|auto_generated|sbit_w[48]~13_combout\);

-- Location: LCCOMB_X59_Y46_N22
\inst|Selector23~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector23~6_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(4) & ((\inst|Selector27~3_combout\) # ((\inst|IR\(4) & \inst|state.ex_loadi~q\)))) # (!\inst|altsyncram_component|auto_generated|q_a\(4) & (\inst|IR\(4) & 
-- (\inst|state.ex_loadi~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(4),
	datab => \inst|IR\(4),
	datac => \inst|state.ex_loadi~q\,
	datad => \inst|Selector27~3_combout\,
	combout => \inst|Selector23~6_combout\);

-- Location: LCCOMB_X59_Y46_N20
\inst|Selector23~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector23~7_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(4) & ((\inst|AC\(4) & ((\inst|state.ex_and~q\))) # (!\inst|AC\(4) & (\inst|state.ex_xor~q\)))) # (!\inst|altsyncram_component|auto_generated|q_a\(4) & (\inst|state.ex_xor~q\ & 
-- (\inst|AC\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(4),
	datab => \inst|state.ex_xor~q\,
	datac => \inst|AC\(4),
	datad => \inst|state.ex_and~q\,
	combout => \inst|Selector23~7_combout\);

-- Location: LCCOMB_X59_Y46_N30
\inst|Selector23~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector23~8_combout\ = (\inst|Selector23~6_combout\) # ((\inst|Selector23~7_combout\) # ((\inst|AC\(4) & !\inst|Selector27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector23~6_combout\,
	datab => \inst|Selector23~7_combout\,
	datac => \inst|AC\(4),
	datad => \inst|Selector27~0_combout\,
	combout => \inst|Selector23~8_combout\);

-- Location: LCCOMB_X56_Y46_N6
\inst|Add1~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~25_combout\ = (\inst|AC\(4) & ((\inst|state.ex_addi~q\) # ((\inst|state.ex_sub~q\) # (\inst|state.ex_add~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_addi~q\,
	datab => \inst|state.ex_sub~q\,
	datac => \inst|state.ex_add~q\,
	datad => \inst|AC\(4),
	combout => \inst|Add1~25_combout\);

-- Location: LCCOMB_X56_Y43_N24
\inst|Add1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~23_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(4) & (!\inst|state.ex_sub~q\ & \inst|state.ex_add~q\)) # (!\inst|altsyncram_component|auto_generated|q_a\(4) & (\inst|state.ex_sub~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(4),
	datab => \inst|state.ex_sub~q\,
	datad => \inst|state.ex_add~q\,
	combout => \inst|Add1~23_combout\);

-- Location: LCCOMB_X57_Y43_N8
\inst|Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~1_combout\ = (!\inst|state.ex_in2~q\ & (\inst|state.ex_addi~q\ & !\inst|state.ex_loadi~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_in2~q\,
	datac => \inst|state.ex_addi~q\,
	datad => \inst|state.ex_loadi~q\,
	combout => \inst|Add1~1_combout\);

-- Location: LCCOMB_X56_Y43_N22
\inst|Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~24_combout\ = (\inst|WideOr3~2_combout\ & ((\inst|Add1~23_combout\) # ((\inst|Add1~1_combout\ & \inst|IR\(4))))) # (!\inst|WideOr3~2_combout\ & (((\inst|Add1~1_combout\ & \inst|IR\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr3~2_combout\,
	datab => \inst|Add1~23_combout\,
	datac => \inst|Add1~1_combout\,
	datad => \inst|IR\(4),
	combout => \inst|Add1~24_combout\);

-- Location: LCCOMB_X55_Y45_N12
\inst|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~18_combout\ = (\inst|state.ex_sub~q\ & (!\inst|altsyncram_component|auto_generated|q_a\(3))) # (!\inst|state.ex_sub~q\ & (\inst|altsyncram_component|auto_generated|q_a\(3) & \inst|state.ex_add~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.ex_sub~q\,
	datac => \inst|altsyncram_component|auto_generated|q_a\(3),
	datad => \inst|state.ex_add~q\,
	combout => \inst|Add1~18_combout\);

-- Location: LCCOMB_X55_Y45_N10
\inst|Add1~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~19_combout\ = (\inst|IR\(3) & ((\inst|Add1~1_combout\) # ((\inst|WideOr3~2_combout\ & \inst|Add1~18_combout\)))) # (!\inst|IR\(3) & (((\inst|WideOr3~2_combout\ & \inst|Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(3),
	datab => \inst|Add1~1_combout\,
	datac => \inst|WideOr3~2_combout\,
	datad => \inst|Add1~18_combout\,
	combout => \inst|Add1~19_combout\);

-- Location: LCCOMB_X56_Y46_N4
\inst|Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~20_combout\ = (\inst|AC\(3) & ((\inst|state.ex_addi~q\) # ((\inst|state.ex_sub~q\) # (\inst|state.ex_add~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_addi~q\,
	datab => \inst|state.ex_sub~q\,
	datac => \inst|state.ex_add~q\,
	datad => \inst|AC\(3),
	combout => \inst|Add1~20_combout\);

-- Location: LCCOMB_X56_Y46_N10
\inst|Add1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~15_combout\ = (\inst|AC\(2) & ((\inst|state.ex_add~q\) # ((\inst|state.ex_sub~q\) # (\inst|state.ex_addi~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_add~q\,
	datab => \inst|state.ex_sub~q\,
	datac => \inst|state.ex_addi~q\,
	datad => \inst|AC\(2),
	combout => \inst|Add1~15_combout\);

-- Location: LCCOMB_X56_Y43_N20
\inst|Add1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~13_combout\ = (\inst|state.ex_sub~q\ & ((!\inst|altsyncram_component|auto_generated|q_a\(2)))) # (!\inst|state.ex_sub~q\ & (\inst|state.ex_add~q\ & \inst|altsyncram_component|auto_generated|q_a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_add~q\,
	datab => \inst|state.ex_sub~q\,
	datad => \inst|altsyncram_component|auto_generated|q_a\(2),
	combout => \inst|Add1~13_combout\);

-- Location: LCCOMB_X56_Y43_N14
\inst|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~14_combout\ = (\inst|WideOr3~2_combout\ & ((\inst|Add1~13_combout\) # ((\inst|Add1~1_combout\ & \inst|IR\(2))))) # (!\inst|WideOr3~2_combout\ & (((\inst|Add1~1_combout\ & \inst|IR\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr3~2_combout\,
	datab => \inst|Add1~13_combout\,
	datac => \inst|Add1~1_combout\,
	datad => \inst|IR\(2),
	combout => \inst|Add1~14_combout\);

-- Location: LCCOMB_X57_Y43_N2
\inst|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~8_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(1) & (\inst|state.ex_add~q\ & !\inst|state.ex_sub~q\)) # (!\inst|altsyncram_component|auto_generated|q_a\(1) & ((\inst|state.ex_sub~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_add~q\,
	datac => \inst|altsyncram_component|auto_generated|q_a\(1),
	datad => \inst|state.ex_sub~q\,
	combout => \inst|Add1~8_combout\);

-- Location: LCCOMB_X56_Y43_N30
\inst|Add1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~9_combout\ = (\inst|WideOr3~2_combout\ & ((\inst|Add1~8_combout\) # ((\inst|Add1~1_combout\ & \inst|IR\(1))))) # (!\inst|WideOr3~2_combout\ & (\inst|Add1~1_combout\ & (\inst|IR\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr3~2_combout\,
	datab => \inst|Add1~1_combout\,
	datac => \inst|IR\(1),
	datad => \inst|Add1~8_combout\,
	combout => \inst|Add1~9_combout\);

-- Location: LCCOMB_X57_Y43_N16
\inst|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~10_combout\ = (\inst|AC\(1) & ((\inst|state.ex_add~q\) # ((\inst|state.ex_addi~q\) # (\inst|state.ex_sub~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_add~q\,
	datab => \inst|AC\(1),
	datac => \inst|state.ex_addi~q\,
	datad => \inst|state.ex_sub~q\,
	combout => \inst|Add1~10_combout\);

-- Location: FF_X57_Y44_N7
\inst|IR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|altsyncram_component|auto_generated|q_a\(0),
	sload => VCC,
	ena => \inst|IR[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR\(0));

-- Location: LCCOMB_X60_Y43_N24
\inst|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~0_combout\ = (\inst|state.ex_sub~q\ & (!\inst|altsyncram_component|auto_generated|q_a\(0))) # (!\inst|state.ex_sub~q\ & (\inst|altsyncram_component|auto_generated|q_a\(0) & \inst|state.ex_add~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_sub~q\,
	datab => \inst|altsyncram_component|auto_generated|q_a\(0),
	datad => \inst|state.ex_add~q\,
	combout => \inst|Add1~0_combout\);

-- Location: LCCOMB_X56_Y43_N16
\inst|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~2_combout\ = (\inst|WideOr3~2_combout\ & ((\inst|Add1~0_combout\) # ((\inst|IR\(0) & \inst|Add1~1_combout\)))) # (!\inst|WideOr3~2_combout\ & (\inst|IR\(0) & (\inst|Add1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr3~2_combout\,
	datab => \inst|IR\(0),
	datac => \inst|Add1~1_combout\,
	datad => \inst|Add1~0_combout\,
	combout => \inst|Add1~2_combout\);

-- Location: LCCOMB_X56_Y46_N0
\inst|Add1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~3_combout\ = (\inst|AC\(0) & ((\inst|state.ex_addi~q\) # ((\inst|state.ex_sub~q\) # (\inst|state.ex_add~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_addi~q\,
	datab => \inst|state.ex_sub~q\,
	datac => \inst|state.ex_add~q\,
	datad => \inst|AC\(0),
	combout => \inst|Add1~3_combout\);

-- Location: LCCOMB_X56_Y46_N16
\inst|Add1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~5_cout\ = CARRY(\inst|state.ex_sub~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.ex_sub~q\,
	datad => VCC,
	cout => \inst|Add1~5_cout\);

-- Location: LCCOMB_X56_Y46_N18
\inst|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~6_combout\ = (\inst|Add1~2_combout\ & ((\inst|Add1~3_combout\ & (\inst|Add1~5_cout\ & VCC)) # (!\inst|Add1~3_combout\ & (!\inst|Add1~5_cout\)))) # (!\inst|Add1~2_combout\ & ((\inst|Add1~3_combout\ & (!\inst|Add1~5_cout\)) # 
-- (!\inst|Add1~3_combout\ & ((\inst|Add1~5_cout\) # (GND)))))
-- \inst|Add1~7\ = CARRY((\inst|Add1~2_combout\ & (!\inst|Add1~3_combout\ & !\inst|Add1~5_cout\)) # (!\inst|Add1~2_combout\ & ((!\inst|Add1~5_cout\) # (!\inst|Add1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~2_combout\,
	datab => \inst|Add1~3_combout\,
	datad => VCC,
	cin => \inst|Add1~5_cout\,
	combout => \inst|Add1~6_combout\,
	cout => \inst|Add1~7\);

-- Location: LCCOMB_X56_Y46_N20
\inst|Add1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~11_combout\ = ((\inst|Add1~9_combout\ $ (\inst|Add1~10_combout\ $ (!\inst|Add1~7\)))) # (GND)
-- \inst|Add1~12\ = CARRY((\inst|Add1~9_combout\ & ((\inst|Add1~10_combout\) # (!\inst|Add1~7\))) # (!\inst|Add1~9_combout\ & (\inst|Add1~10_combout\ & !\inst|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~9_combout\,
	datab => \inst|Add1~10_combout\,
	datad => VCC,
	cin => \inst|Add1~7\,
	combout => \inst|Add1~11_combout\,
	cout => \inst|Add1~12\);

-- Location: LCCOMB_X56_Y46_N22
\inst|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~16_combout\ = (\inst|Add1~15_combout\ & ((\inst|Add1~14_combout\ & (\inst|Add1~12\ & VCC)) # (!\inst|Add1~14_combout\ & (!\inst|Add1~12\)))) # (!\inst|Add1~15_combout\ & ((\inst|Add1~14_combout\ & (!\inst|Add1~12\)) # (!\inst|Add1~14_combout\ & 
-- ((\inst|Add1~12\) # (GND)))))
-- \inst|Add1~17\ = CARRY((\inst|Add1~15_combout\ & (!\inst|Add1~14_combout\ & !\inst|Add1~12\)) # (!\inst|Add1~15_combout\ & ((!\inst|Add1~12\) # (!\inst|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~15_combout\,
	datab => \inst|Add1~14_combout\,
	datad => VCC,
	cin => \inst|Add1~12\,
	combout => \inst|Add1~16_combout\,
	cout => \inst|Add1~17\);

-- Location: LCCOMB_X56_Y46_N24
\inst|Add1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~21_combout\ = ((\inst|Add1~19_combout\ $ (\inst|Add1~20_combout\ $ (!\inst|Add1~17\)))) # (GND)
-- \inst|Add1~22\ = CARRY((\inst|Add1~19_combout\ & ((\inst|Add1~20_combout\) # (!\inst|Add1~17\))) # (!\inst|Add1~19_combout\ & (\inst|Add1~20_combout\ & !\inst|Add1~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~19_combout\,
	datab => \inst|Add1~20_combout\,
	datad => VCC,
	cin => \inst|Add1~17\,
	combout => \inst|Add1~21_combout\,
	cout => \inst|Add1~22\);

-- Location: LCCOMB_X56_Y46_N26
\inst|Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~26_combout\ = (\inst|Add1~25_combout\ & ((\inst|Add1~24_combout\ & (\inst|Add1~22\ & VCC)) # (!\inst|Add1~24_combout\ & (!\inst|Add1~22\)))) # (!\inst|Add1~25_combout\ & ((\inst|Add1~24_combout\ & (!\inst|Add1~22\)) # (!\inst|Add1~24_combout\ & 
-- ((\inst|Add1~22\) # (GND)))))
-- \inst|Add1~27\ = CARRY((\inst|Add1~25_combout\ & (!\inst|Add1~24_combout\ & !\inst|Add1~22\)) # (!\inst|Add1~25_combout\ & ((!\inst|Add1~22\) # (!\inst|Add1~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~25_combout\,
	datab => \inst|Add1~24_combout\,
	datad => VCC,
	cin => \inst|Add1~22\,
	combout => \inst|Add1~26_combout\,
	cout => \inst|Add1~27\);

-- Location: FF_X57_Y44_N21
\inst|IR[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|altsyncram_component|auto_generated|q_a\(10),
	sload => VCC,
	ena => \inst|IR[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR\(10));

-- Location: LCCOMB_X60_Y45_N8
\inst|Selector16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector16~1_combout\ = (!\inst|Selector19~0_combout\ & ((!\inst|IR\(10)) # (!\inst|state.ex_loadi~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.ex_loadi~q\,
	datac => \inst|IR\(10),
	datad => \inst|Selector19~0_combout\,
	combout => \inst|Selector16~1_combout\);

-- Location: LCCOMB_X57_Y46_N6
\inst|Selector14~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector14~4_combout\ = (\inst|Selector27~3_combout\ & ((\inst|altsyncram_component|auto_generated|q_a\(13)) # ((!\inst|Selector27~0_combout\ & \inst|AC\(13))))) # (!\inst|Selector27~3_combout\ & (!\inst|Selector27~0_combout\ & ((\inst|AC\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector27~3_combout\,
	datab => \inst|Selector27~0_combout\,
	datac => \inst|altsyncram_component|auto_generated|q_a\(13),
	datad => \inst|AC\(13),
	combout => \inst|Selector14~4_combout\);

-- Location: LCCOMB_X56_Y45_N22
\inst|Add1~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~70_combout\ = (\inst|AC\(13) & ((\inst|state.ex_sub~q\) # ((\inst|state.ex_add~q\) # (\inst|state.ex_addi~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(13),
	datab => \inst|state.ex_sub~q\,
	datac => \inst|state.ex_add~q\,
	datad => \inst|state.ex_addi~q\,
	combout => \inst|Add1~70_combout\);

-- Location: LCCOMB_X55_Y45_N20
\inst|Add1~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~68_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(13) & (!\inst|state.ex_sub~q\ & \inst|state.ex_add~q\)) # (!\inst|altsyncram_component|auto_generated|q_a\(13) & (\inst|state.ex_sub~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(13),
	datac => \inst|state.ex_sub~q\,
	datad => \inst|state.ex_add~q\,
	combout => \inst|Add1~68_combout\);

-- Location: LCCOMB_X55_Y45_N18
\inst|Add1~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~69_combout\ = (\inst|IR\(10) & ((\inst|Add1~1_combout\) # ((\inst|Add1~68_combout\ & \inst|WideOr3~2_combout\)))) # (!\inst|IR\(10) & (\inst|Add1~68_combout\ & (\inst|WideOr3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(10),
	datab => \inst|Add1~68_combout\,
	datac => \inst|WideOr3~2_combout\,
	datad => \inst|Add1~1_combout\,
	combout => \inst|Add1~69_combout\);

-- Location: LCCOMB_X55_Y45_N8
\inst|Add1~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~63_combout\ = (\inst|state.ex_sub~q\ & (!\inst|altsyncram_component|auto_generated|q_a\(12))) # (!\inst|state.ex_sub~q\ & (\inst|altsyncram_component|auto_generated|q_a\(12) & \inst|state.ex_add~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.ex_sub~q\,
	datac => \inst|altsyncram_component|auto_generated|q_a\(12),
	datad => \inst|state.ex_add~q\,
	combout => \inst|Add1~63_combout\);

-- Location: LCCOMB_X55_Y45_N6
\inst|Add1~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~64_combout\ = (\inst|Add1~63_combout\ & ((\inst|WideOr3~2_combout\) # ((\inst|IR\(10) & \inst|Add1~1_combout\)))) # (!\inst|Add1~63_combout\ & (((\inst|IR\(10) & \inst|Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~63_combout\,
	datab => \inst|WideOr3~2_combout\,
	datac => \inst|IR\(10),
	datad => \inst|Add1~1_combout\,
	combout => \inst|Add1~64_combout\);

-- Location: LCCOMB_X57_Y43_N14
\inst|AC[8]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|AC[8]~0_combout\ = (\inst|state.ex_add~q\) # ((\inst|state.ex_addi~q\) # (\inst|state.ex_sub~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_add~q\,
	datac => \inst|state.ex_addi~q\,
	datad => \inst|state.ex_sub~q\,
	combout => \inst|AC[8]~0_combout\);

-- Location: LCCOMB_X57_Y45_N6
\inst|Selector17~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector17~3_combout\ = (\inst|AC\(10) & ((\inst|state.ex_xor~q\) # (!\inst|Selector27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector27~0_combout\,
	datab => \inst|AC\(10),
	datac => \inst|state.ex_xor~q\,
	combout => \inst|Selector17~3_combout\);

-- Location: LCCOMB_X57_Y45_N20
\inst|Selector17~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector17~2_combout\ = (\inst|AC\(10) & (((\inst|state.ex_and~q\)) # (!\inst|Selector27~0_combout\))) # (!\inst|AC\(10) & (((\inst|state.ex_xor~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector27~0_combout\,
	datab => \inst|state.ex_xor~q\,
	datac => \inst|AC\(10),
	datad => \inst|state.ex_and~q\,
	combout => \inst|Selector17~2_combout\);

-- Location: LCCOMB_X58_Y42_N16
\inst|Selector17~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector17~4_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(10) & (((\inst|Selector27~3_combout\) # (\inst|Selector17~2_combout\)))) # (!\inst|altsyncram_component|auto_generated|q_a\(10) & (\inst|Selector17~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector17~3_combout\,
	datab => \inst|Selector27~3_combout\,
	datac => \inst|altsyncram_component|auto_generated|q_a\(10),
	datad => \inst|Selector17~2_combout\,
	combout => \inst|Selector17~4_combout\);

-- Location: LCCOMB_X56_Y45_N26
\inst|Add1~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~55_combout\ = (\inst|AC\(10) & ((\inst|state.ex_add~q\) # ((\inst|state.ex_sub~q\) # (\inst|state.ex_addi~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_add~q\,
	datab => \inst|AC\(10),
	datac => \inst|state.ex_sub~q\,
	datad => \inst|state.ex_addi~q\,
	combout => \inst|Add1~55_combout\);

-- Location: LCCOMB_X56_Y43_N26
\inst|Add1~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~53_combout\ = (\inst|state.ex_sub~q\ & ((!\inst|altsyncram_component|auto_generated|q_a\(10)))) # (!\inst|state.ex_sub~q\ & (\inst|state.ex_add~q\ & \inst|altsyncram_component|auto_generated|q_a\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.ex_add~q\,
	datac => \inst|state.ex_sub~q\,
	datad => \inst|altsyncram_component|auto_generated|q_a\(10),
	combout => \inst|Add1~53_combout\);

-- Location: LCCOMB_X56_Y43_N0
\inst|Add1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~54_combout\ = (\inst|Add1~53_combout\ & ((\inst|WideOr3~2_combout\) # ((\inst|IR\(10) & \inst|Add1~1_combout\)))) # (!\inst|Add1~53_combout\ & (\inst|IR\(10) & (\inst|Add1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~53_combout\,
	datab => \inst|IR\(10),
	datac => \inst|Add1~1_combout\,
	datad => \inst|WideOr3~2_combout\,
	combout => \inst|Add1~54_combout\);

-- Location: LCCOMB_X56_Y46_N2
\inst|Add1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~50_combout\ = (\inst|AC\(9) & ((\inst|state.ex_addi~q\) # ((\inst|state.ex_sub~q\) # (\inst|state.ex_add~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_addi~q\,
	datab => \inst|state.ex_sub~q\,
	datac => \inst|state.ex_add~q\,
	datad => \inst|AC\(9),
	combout => \inst|Add1~50_combout\);

-- Location: LCCOMB_X56_Y43_N18
\inst|Add1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~48_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(9) & (!\inst|state.ex_sub~q\ & \inst|state.ex_add~q\)) # (!\inst|altsyncram_component|auto_generated|q_a\(9) & (\inst|state.ex_sub~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|altsyncram_component|auto_generated|q_a\(9),
	datac => \inst|state.ex_sub~q\,
	datad => \inst|state.ex_add~q\,
	combout => \inst|Add1~48_combout\);

-- Location: LCCOMB_X56_Y43_N12
\inst|Add1~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~49_combout\ = (\inst|Add1~48_combout\ & ((\inst|WideOr3~2_combout\) # ((\inst|IR\(9) & \inst|Add1~1_combout\)))) # (!\inst|Add1~48_combout\ & (\inst|IR\(9) & (\inst|Add1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~48_combout\,
	datab => \inst|IR\(9),
	datac => \inst|Add1~1_combout\,
	datad => \inst|WideOr3~2_combout\,
	combout => \inst|Add1~49_combout\);

-- Location: LCCOMB_X56_Y43_N4
\inst|Add1~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~43_combout\ = (\inst|state.ex_sub~q\ & ((!\inst|altsyncram_component|auto_generated|q_a\(8)))) # (!\inst|state.ex_sub~q\ & (\inst|state.ex_add~q\ & \inst|altsyncram_component|auto_generated|q_a\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.ex_sub~q\,
	datac => \inst|state.ex_add~q\,
	datad => \inst|altsyncram_component|auto_generated|q_a\(8),
	combout => \inst|Add1~43_combout\);

-- Location: LCCOMB_X55_Y44_N16
\inst|Add1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~44_combout\ = (\inst|Add1~43_combout\ & ((\inst|WideOr3~2_combout\) # ((\inst|IR\(8) & \inst|Add1~1_combout\)))) # (!\inst|Add1~43_combout\ & (\inst|IR\(8) & ((\inst|Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~43_combout\,
	datab => \inst|IR\(8),
	datac => \inst|WideOr3~2_combout\,
	datad => \inst|Add1~1_combout\,
	combout => \inst|Add1~44_combout\);

-- Location: LCCOMB_X56_Y46_N8
\inst|Add1~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~45_combout\ = (\inst|AC\(8) & ((\inst|state.ex_addi~q\) # ((\inst|state.ex_sub~q\) # (\inst|state.ex_add~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_addi~q\,
	datab => \inst|state.ex_sub~q\,
	datac => \inst|state.ex_add~q\,
	datad => \inst|AC\(8),
	combout => \inst|Add1~45_combout\);

-- Location: FF_X59_Y44_N19
\inst|IR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|altsyncram_component|auto_generated|q_a\(7),
	sload => VCC,
	ena => \inst|IR[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR\(7));

-- Location: LCCOMB_X56_Y43_N8
\inst|Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~38_combout\ = (\inst|state.ex_sub~q\ & ((!\inst|altsyncram_component|auto_generated|q_a\(7)))) # (!\inst|state.ex_sub~q\ & (\inst|state.ex_add~q\ & \inst|altsyncram_component|auto_generated|q_a\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.ex_add~q\,
	datac => \inst|state.ex_sub~q\,
	datad => \inst|altsyncram_component|auto_generated|q_a\(7),
	combout => \inst|Add1~38_combout\);

-- Location: LCCOMB_X56_Y43_N2
\inst|Add1~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~39_combout\ = (\inst|IR\(7) & ((\inst|Add1~1_combout\) # ((\inst|Add1~38_combout\ & \inst|WideOr3~2_combout\)))) # (!\inst|IR\(7) & (\inst|Add1~38_combout\ & ((\inst|WideOr3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(7),
	datab => \inst|Add1~38_combout\,
	datac => \inst|Add1~1_combout\,
	datad => \inst|WideOr3~2_combout\,
	combout => \inst|Add1~39_combout\);

-- Location: LCCOMB_X56_Y45_N24
\inst|Add1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~40_combout\ = (\inst|AC\(7) & ((\inst|state.ex_add~q\) # ((\inst|state.ex_sub~q\) # (\inst|state.ex_addi~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_add~q\,
	datab => \inst|state.ex_sub~q\,
	datac => \inst|AC\(7),
	datad => \inst|state.ex_addi~q\,
	combout => \inst|Add1~40_combout\);

-- Location: LCCOMB_X55_Y45_N30
\inst|Add1~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~33_combout\ = (\inst|state.ex_sub~q\ & (!\inst|altsyncram_component|auto_generated|q_a\(6))) # (!\inst|state.ex_sub~q\ & (\inst|altsyncram_component|auto_generated|q_a\(6) & \inst|state.ex_add~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.ex_sub~q\,
	datac => \inst|altsyncram_component|auto_generated|q_a\(6),
	datad => \inst|state.ex_add~q\,
	combout => \inst|Add1~33_combout\);

-- Location: FF_X57_Y44_N27
\inst|IR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|altsyncram_component|auto_generated|q_a\(6),
	sload => VCC,
	ena => \inst|IR[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR\(6));

-- Location: LCCOMB_X55_Y45_N0
\inst|Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~34_combout\ = (\inst|Add1~33_combout\ & ((\inst|WideOr3~2_combout\) # ((\inst|IR\(6) & \inst|Add1~1_combout\)))) # (!\inst|Add1~33_combout\ & (((\inst|IR\(6) & \inst|Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~33_combout\,
	datab => \inst|WideOr3~2_combout\,
	datac => \inst|IR\(6),
	datad => \inst|Add1~1_combout\,
	combout => \inst|Add1~34_combout\);

-- Location: LCCOMB_X57_Y43_N18
\inst|Selector21~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector21~5_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(6) & ((\inst|Selector27~3_combout\) # ((\inst|state.ex_loadi~q\ & \inst|IR\(6))))) # (!\inst|altsyncram_component|auto_generated|q_a\(6) & (\inst|state.ex_loadi~q\ & 
-- ((\inst|IR\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(6),
	datab => \inst|state.ex_loadi~q\,
	datac => \inst|Selector27~3_combout\,
	datad => \inst|IR\(6),
	combout => \inst|Selector21~5_combout\);

-- Location: LCCOMB_X59_Y44_N22
\inst|shifter|auto_generated|sbit_w[18]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[18]~10_combout\ = (\inst|IR\(0) & ((\inst|IR\(4) & (\inst|AC\(3))) # (!\inst|IR\(4) & ((\inst|AC\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(4),
	datab => \inst|AC\(3),
	datac => \inst|IR\(0),
	datad => \inst|AC\(1),
	combout => \inst|shifter|auto_generated|sbit_w[18]~10_combout\);

-- Location: LCCOMB_X55_Y44_N4
\inst|shifter|auto_generated|sbit_w[18]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[18]~11_combout\ = (\inst|shifter|auto_generated|sbit_w[18]~10_combout\) # ((\inst|AC\(2) & !\inst|IR\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(2),
	datab => \inst|IR\(0),
	datad => \inst|shifter|auto_generated|sbit_w[18]~10_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[18]~11_combout\);

-- Location: LCCOMB_X58_Y47_N4
\inst3|I2C_RDY_EN~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|I2C_RDY_EN~1_combout\ = (\inst|IR\(1) & \inst|IR\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|IR\(1),
	datad => \inst|IR\(4),
	combout => \inst3|I2C_RDY_EN~1_combout\);

-- Location: LCCOMB_X58_Y46_N4
\inst|shifter|auto_generated|sbit_w[34]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[34]~62_combout\ = (\inst3|I2C_RDY_EN~1_combout\ & ((\inst|shifter|auto_generated|sbit_w[20]~17_combout\) # ((!\inst|IR\(0) & \inst|AC\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[20]~17_combout\,
	datab => \inst|IR\(0),
	datac => \inst3|I2C_RDY_EN~1_combout\,
	datad => \inst|AC\(4),
	combout => \inst|shifter|auto_generated|sbit_w[34]~62_combout\);

-- Location: LCCOMB_X59_Y44_N6
\inst|shifter|auto_generated|sbit_w[34]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[34]~63_combout\ = (!\inst|IR\(4) & (\inst|IR\(1) & (!\inst|IR\(0) & \inst|AC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(4),
	datab => \inst|IR\(1),
	datac => \inst|IR\(0),
	datad => \inst|AC\(0),
	combout => \inst|shifter|auto_generated|sbit_w[34]~63_combout\);

-- Location: LCCOMB_X59_Y44_N12
\inst|shifter|auto_generated|sbit_w[34]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[34]~64_combout\ = (\inst|shifter|auto_generated|sbit_w[34]~62_combout\) # ((\inst|shifter|auto_generated|sbit_w[34]~63_combout\) # ((\inst|shifter|auto_generated|sbit_w[18]~11_combout\ & !\inst|IR\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[18]~11_combout\,
	datab => \inst|IR\(1),
	datac => \inst|shifter|auto_generated|sbit_w[34]~62_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[34]~63_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[34]~64_combout\);

-- Location: LCCOMB_X59_Y44_N20
\inst3|TIMER_EN~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|TIMER_EN~0_combout\ = (\inst|IR\(1) & !\inst|IR\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(1),
	datab => \inst|IR\(4),
	combout => \inst3|TIMER_EN~0_combout\);

-- Location: LCCOMB_X60_Y46_N18
\inst|shifter|auto_generated|sbit_w[28]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[28]~25_combout\ = (\inst|IR\(0) & ((\inst|IR\(4) & ((\inst|AC\(13)))) # (!\inst|IR\(4) & (\inst|AC\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(11),
	datab => \inst|IR\(4),
	datac => \inst|AC\(13),
	datad => \inst|IR\(0),
	combout => \inst|shifter|auto_generated|sbit_w[28]~25_combout\);

-- Location: LCCOMB_X60_Y46_N28
\inst|shifter|auto_generated|sbit_w[28]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[28]~26_combout\ = (\inst|shifter|auto_generated|sbit_w[28]~25_combout\) # ((\inst|AC\(12) & !\inst|IR\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|shifter|auto_generated|sbit_w[28]~25_combout\,
	datac => \inst|AC\(12),
	datad => \inst|IR\(0),
	combout => \inst|shifter|auto_generated|sbit_w[28]~26_combout\);

-- Location: LCCOMB_X60_Y47_N22
\inst|shifter|auto_generated|sbit_w[42]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[42]~59_combout\ = (\inst3|I2C_RDY_EN~1_combout\ & ((\inst|shifter|auto_generated|sbit_w[28]~26_combout\) # ((\inst|shifter|auto_generated|sbit_w[24]~31_combout\ & \inst3|TIMER_EN~0_combout\)))) # 
-- (!\inst3|I2C_RDY_EN~1_combout\ & (\inst|shifter|auto_generated|sbit_w[24]~31_combout\ & (\inst3|TIMER_EN~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|I2C_RDY_EN~1_combout\,
	datab => \inst|shifter|auto_generated|sbit_w[24]~31_combout\,
	datac => \inst3|TIMER_EN~0_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[28]~26_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[42]~59_combout\);

-- Location: LCCOMB_X59_Y47_N30
\inst|shifter|auto_generated|sbit_w[26]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[26]~20_combout\ = (\inst|IR\(0) & ((\inst|IR\(4) & (\inst|AC\(11))) # (!\inst|IR\(4) & ((\inst|AC\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(0),
	datab => \inst|AC\(11),
	datac => \inst|IR\(4),
	datad => \inst|AC\(9),
	combout => \inst|shifter|auto_generated|sbit_w[26]~20_combout\);

-- Location: LCCOMB_X59_Y47_N4
\inst|shifter|auto_generated|sbit_w[26]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[26]~21_combout\ = (\inst|shifter|auto_generated|sbit_w[26]~20_combout\) # ((!\inst|IR\(0) & \inst|AC\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(0),
	datac => \inst|shifter|auto_generated|sbit_w[26]~20_combout\,
	datad => \inst|AC\(10),
	combout => \inst|shifter|auto_generated|sbit_w[26]~21_combout\);

-- Location: LCCOMB_X60_Y47_N20
\inst|shifter|auto_generated|sbit_w[42]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[42]~60_combout\ = (\inst|shifter|auto_generated|sbit_w[42]~59_combout\) # ((\inst|shifter|auto_generated|sbit_w[26]~21_combout\ & !\inst|IR\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[42]~59_combout\,
	datac => \inst|shifter|auto_generated|sbit_w[26]~21_combout\,
	datad => \inst|IR\(1),
	combout => \inst|shifter|auto_generated|sbit_w[42]~60_combout\);

-- Location: LCCOMB_X55_Y44_N12
\inst|shifter|auto_generated|sbit_w[54]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[54]~83_combout\ = (\inst|IR\(2) & ((\inst|IR\(4) & ((\inst|shifter|auto_generated|sbit_w[42]~60_combout\))) # (!\inst|IR\(4) & (\inst|shifter|auto_generated|sbit_w[34]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[34]~64_combout\,
	datab => \inst|IR\(2),
	datac => \inst|shifter|auto_generated|sbit_w[42]~60_combout\,
	datad => \inst|IR\(4),
	combout => \inst|shifter|auto_generated|sbit_w[54]~83_combout\);

-- Location: LCCOMB_X57_Y46_N10
\inst|Selector22~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector22~5_combout\ = (\inst|Selector27~3_combout\ & ((\inst|altsyncram_component|auto_generated|q_a\(5)) # ((\inst|state.ex_loadi~q\ & \inst|IR\(5))))) # (!\inst|Selector27~3_combout\ & (\inst|state.ex_loadi~q\ & (\inst|IR\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector27~3_combout\,
	datab => \inst|state.ex_loadi~q\,
	datac => \inst|IR\(5),
	datad => \inst|altsyncram_component|auto_generated|q_a\(5),
	combout => \inst|Selector22~5_combout\);

-- Location: LCCOMB_X59_Y47_N6
\inst|shifter|auto_generated|sbit_w[23]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[23]~40_combout\ = (\inst|IR\(0) & ((\inst|IR\(4) & ((\inst|AC\(8)))) # (!\inst|IR\(4) & (\inst|AC\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(6),
	datab => \inst|IR\(4),
	datac => \inst|IR\(0),
	datad => \inst|AC\(8),
	combout => \inst|shifter|auto_generated|sbit_w[23]~40_combout\);

-- Location: LCCOMB_X59_Y47_N16
\inst|shifter|auto_generated|sbit_w[23]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[23]~41_combout\ = (\inst|shifter|auto_generated|sbit_w[23]~40_combout\) # ((!\inst|IR\(0) & \inst|AC\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(0),
	datab => \inst|AC\(7),
	datad => \inst|shifter|auto_generated|sbit_w[23]~40_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[23]~41_combout\);

-- Location: LCCOMB_X58_Y47_N14
\inst|shifter|auto_generated|sbit_w[19]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[19]~38_combout\ = (\inst|IR\(0) & ((\inst|IR\(4) & (\inst|AC\(4))) # (!\inst|IR\(4) & ((\inst|AC\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(0),
	datab => \inst|AC\(4),
	datac => \inst|IR\(4),
	datad => \inst|AC\(2),
	combout => \inst|shifter|auto_generated|sbit_w[19]~38_combout\);

-- Location: LCCOMB_X58_Y47_N12
\inst|shifter|auto_generated|sbit_w[19]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[19]~39_combout\ = (\inst|shifter|auto_generated|sbit_w[19]~38_combout\) # ((\inst|AC\(3) & !\inst|IR\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(3),
	datab => \inst|shifter|auto_generated|sbit_w[19]~38_combout\,
	datad => \inst|IR\(0),
	combout => \inst|shifter|auto_generated|sbit_w[19]~39_combout\);

-- Location: LCCOMB_X58_Y47_N22
\inst|shifter|auto_generated|sbit_w[37]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[37]~42_combout\ = (\inst|shifter|auto_generated|sbit_w[23]~41_combout\ & ((\inst3|I2C_RDY_EN~1_combout\) # ((\inst3|TIMER_EN~0_combout\ & \inst|shifter|auto_generated|sbit_w[19]~39_combout\)))) # 
-- (!\inst|shifter|auto_generated|sbit_w[23]~41_combout\ & (((\inst3|TIMER_EN~0_combout\ & \inst|shifter|auto_generated|sbit_w[19]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[23]~41_combout\,
	datab => \inst3|I2C_RDY_EN~1_combout\,
	datac => \inst3|TIMER_EN~0_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[19]~39_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[37]~42_combout\);

-- Location: LCCOMB_X58_Y46_N30
\inst|shifter|auto_generated|sbit_w[21]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[21]~43_combout\ = (\inst|IR\(0) & ((\inst|IR\(4) & (\inst|AC\(6))) # (!\inst|IR\(4) & ((\inst|AC\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(4),
	datab => \inst|IR\(0),
	datac => \inst|AC\(6),
	datad => \inst|AC\(4),
	combout => \inst|shifter|auto_generated|sbit_w[21]~43_combout\);

-- Location: LCCOMB_X58_Y46_N0
\inst|shifter|auto_generated|sbit_w[21]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[21]~44_combout\ = (\inst|shifter|auto_generated|sbit_w[21]~43_combout\) # ((!\inst|IR\(0) & \inst|AC\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(0),
	datac => \inst|shifter|auto_generated|sbit_w[21]~43_combout\,
	datad => \inst|AC\(5),
	combout => \inst|shifter|auto_generated|sbit_w[21]~44_combout\);

-- Location: LCCOMB_X58_Y47_N28
\inst|shifter|auto_generated|sbit_w[37]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[37]~45_combout\ = (\inst|shifter|auto_generated|sbit_w[37]~42_combout\) # ((\inst|shifter|auto_generated|sbit_w[21]~44_combout\ & !\inst|IR\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[37]~42_combout\,
	datab => \inst|shifter|auto_generated|sbit_w[21]~44_combout\,
	datac => \inst|IR\(1),
	combout => \inst|shifter|auto_generated|sbit_w[37]~45_combout\);

-- Location: LCCOMB_X58_Y46_N22
\inst|shifter|auto_generated|sbit_w[17]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[17]~52_combout\ = (\inst|IR\(0) & ((\inst|IR\(4) & ((\inst|AC\(2)))) # (!\inst|IR\(4) & (\inst|AC\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(4),
	datab => \inst|IR\(0),
	datac => \inst|AC\(0),
	datad => \inst|AC\(2),
	combout => \inst|shifter|auto_generated|sbit_w[17]~52_combout\);

-- Location: LCCOMB_X58_Y47_N2
\inst|shifter|auto_generated|sbit_w[53]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[53]~53_combout\ = (!\inst|IR\(1) & ((\inst|shifter|auto_generated|sbit_w[17]~52_combout\) # ((!\inst|IR\(0) & \inst|AC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(0),
	datab => \inst|AC\(1),
	datac => \inst|IR\(1),
	datad => \inst|shifter|auto_generated|sbit_w[17]~52_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[53]~53_combout\);

-- Location: LCCOMB_X59_Y47_N22
\inst|shifter|auto_generated|sbit_w[25]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[25]~48_combout\ = (\inst|IR\(0) & ((\inst|IR\(4) & ((\inst|AC\(10)))) # (!\inst|IR\(4) & (\inst|AC\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(8),
	datab => \inst|AC\(10),
	datac => \inst|IR\(0),
	datad => \inst|IR\(4),
	combout => \inst|shifter|auto_generated|sbit_w[25]~48_combout\);

-- Location: LCCOMB_X59_Y47_N28
\inst|shifter|auto_generated|sbit_w[25]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[25]~49_combout\ = (\inst|shifter|auto_generated|sbit_w[25]~48_combout\) # ((!\inst|IR\(0) & \inst|AC\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[25]~48_combout\,
	datab => \inst|IR\(0),
	datad => \inst|AC\(9),
	combout => \inst|shifter|auto_generated|sbit_w[25]~49_combout\);

-- Location: LCCOMB_X58_Y47_N26
\inst|shifter|auto_generated|sbit_w[41]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[41]~47_combout\ = (\inst3|TIMER_EN~0_combout\ & ((\inst|shifter|auto_generated|sbit_w[23]~41_combout\) # ((\inst3|I2C_RDY_EN~1_combout\ & \inst|shifter|auto_generated|sbit_w[27]~37_combout\)))) # 
-- (!\inst3|TIMER_EN~0_combout\ & (\inst3|I2C_RDY_EN~1_combout\ & (\inst|shifter|auto_generated|sbit_w[27]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|TIMER_EN~0_combout\,
	datab => \inst3|I2C_RDY_EN~1_combout\,
	datac => \inst|shifter|auto_generated|sbit_w[27]~37_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[23]~41_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[41]~47_combout\);

-- Location: LCCOMB_X58_Y47_N24
\inst|shifter|auto_generated|sbit_w[41]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[41]~50_combout\ = (\inst|shifter|auto_generated|sbit_w[41]~47_combout\) # ((!\inst|IR\(1) & \inst|shifter|auto_generated|sbit_w[25]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(1),
	datab => \inst|shifter|auto_generated|sbit_w[25]~49_combout\,
	datac => \inst|shifter|auto_generated|sbit_w[41]~47_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[41]~50_combout\);

-- Location: LCCOMB_X58_Y47_N8
\inst|shifter|auto_generated|sbit_w[53]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[53]~79_combout\ = (\inst|IR\(2) & ((\inst|IR\(4) & ((\inst|shifter|auto_generated|sbit_w[41]~50_combout\))) # (!\inst|IR\(4) & (\inst|shifter|auto_generated|sbit_w[53]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(4),
	datab => \inst|shifter|auto_generated|sbit_w[53]~53_combout\,
	datac => \inst|IR\(2),
	datad => \inst|shifter|auto_generated|sbit_w[41]~50_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[53]~79_combout\);

-- Location: LCCOMB_X58_Y50_N6
\inst|shifter|auto_generated|sbit_w[53]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[53]~80_combout\ = (\inst|shifter|auto_generated|sbit_w[53]~79_combout\) # ((!\inst|IR\(2) & \inst|shifter|auto_generated|sbit_w[37]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|IR\(2),
	datac => \inst|shifter|auto_generated|sbit_w[37]~45_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[53]~79_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[53]~80_combout\);

-- Location: LCCOMB_X57_Y46_N24
\inst|Selector22~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector22~7_combout\ = (\inst|Selector22~5_combout\) # ((\inst|state.ex_shift~q\ & (!\inst|IR\(3) & \inst|shifter|auto_generated|sbit_w[53]~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector22~5_combout\,
	datab => \inst|state.ex_shift~q\,
	datac => \inst|IR\(3),
	datad => \inst|shifter|auto_generated|sbit_w[53]~80_combout\,
	combout => \inst|Selector22~7_combout\);

-- Location: LCCOMB_X57_Y46_N30
\inst|Selector27~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector27~7_combout\ = (\inst|IR\(4) & (\inst|IR\(3) & \inst|state.ex_shift~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(4),
	datac => \inst|IR\(3),
	datad => \inst|state.ex_shift~q\,
	combout => \inst|Selector27~7_combout\);

-- Location: LCCOMB_X57_Y47_N22
\inst|shifter|auto_generated|sbit_w[61]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[61]~77_combout\ = (\inst|IR\(2) & (\inst|IR\(4) & (\inst|AC\(15)))) # (!\inst|IR\(2) & (((\inst|shifter|auto_generated|sbit_w[45]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(4),
	datab => \inst|IR\(2),
	datac => \inst|AC\(15),
	datad => \inst|shifter|auto_generated|sbit_w[45]~88_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[61]~77_combout\);

-- Location: LCCOMB_X57_Y47_N4
\inst|shifter|auto_generated|sbit_w[61]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[61]~78_combout\ = (\inst|shifter|auto_generated|sbit_w[61]~77_combout\) # ((\inst|shifter|auto_generated|sbit_w[41]~50_combout\ & (\inst|IR\(2) & !\inst|IR\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[61]~77_combout\,
	datab => \inst|shifter|auto_generated|sbit_w[41]~50_combout\,
	datac => \inst|IR\(2),
	datad => \inst|IR\(4),
	combout => \inst|shifter|auto_generated|sbit_w[61]~78_combout\);

-- Location: LCCOMB_X57_Y46_N26
\inst|Selector22~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector22~3_combout\ = (\inst|Selector27~7_combout\ & ((\inst|shifter|auto_generated|sbit_w[61]~78_combout\) # ((!\inst|Selector27~0_combout\ & \inst|AC\(5))))) # (!\inst|Selector27~7_combout\ & (!\inst|Selector27~0_combout\ & ((\inst|AC\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector27~7_combout\,
	datab => \inst|Selector27~0_combout\,
	datac => \inst|shifter|auto_generated|sbit_w[61]~78_combout\,
	datad => \inst|AC\(5),
	combout => \inst|Selector22~3_combout\);

-- Location: LCCOMB_X56_Y46_N12
\inst|Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~30_combout\ = (\inst|AC\(5) & ((\inst|state.ex_addi~q\) # ((\inst|state.ex_sub~q\) # (\inst|state.ex_add~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_addi~q\,
	datab => \inst|state.ex_sub~q\,
	datac => \inst|state.ex_add~q\,
	datad => \inst|AC\(5),
	combout => \inst|Add1~30_combout\);

-- Location: LCCOMB_X55_Y45_N4
\inst|Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~28_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(5) & (!\inst|state.ex_sub~q\ & \inst|state.ex_add~q\)) # (!\inst|altsyncram_component|auto_generated|q_a\(5) & (\inst|state.ex_sub~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(5),
	datac => \inst|state.ex_sub~q\,
	datad => \inst|state.ex_add~q\,
	combout => \inst|Add1~28_combout\);

-- Location: LCCOMB_X56_Y45_N30
\inst|Add1~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~29_combout\ = (\inst|WideOr3~2_combout\ & ((\inst|Add1~28_combout\) # ((\inst|IR\(5) & \inst|Add1~1_combout\)))) # (!\inst|WideOr3~2_combout\ & (((\inst|IR\(5) & \inst|Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr3~2_combout\,
	datab => \inst|Add1~28_combout\,
	datac => \inst|IR\(5),
	datad => \inst|Add1~1_combout\,
	combout => \inst|Add1~29_combout\);

-- Location: LCCOMB_X56_Y46_N28
\inst|Add1~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~31_combout\ = ((\inst|Add1~30_combout\ $ (\inst|Add1~29_combout\ $ (!\inst|Add1~27\)))) # (GND)
-- \inst|Add1~32\ = CARRY((\inst|Add1~30_combout\ & ((\inst|Add1~29_combout\) # (!\inst|Add1~27\))) # (!\inst|Add1~30_combout\ & (\inst|Add1~29_combout\ & !\inst|Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~30_combout\,
	datab => \inst|Add1~29_combout\,
	datad => VCC,
	cin => \inst|Add1~27\,
	combout => \inst|Add1~31_combout\,
	cout => \inst|Add1~32\);

-- Location: LCCOMB_X57_Y46_N28
\inst|Selector22~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector22~2_combout\ = (\inst|AC\(5) & ((\inst|altsyncram_component|auto_generated|q_a\(5) & (\inst|state.ex_and~q\)) # (!\inst|altsyncram_component|auto_generated|q_a\(5) & ((\inst|state.ex_xor~q\))))) # (!\inst|AC\(5) & (((\inst|state.ex_xor~q\ & 
-- \inst|altsyncram_component|auto_generated|q_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_and~q\,
	datab => \inst|state.ex_xor~q\,
	datac => \inst|AC\(5),
	datad => \inst|altsyncram_component|auto_generated|q_a\(5),
	combout => \inst|Selector22~2_combout\);

-- Location: LCCOMB_X57_Y46_N16
\inst|Selector22~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector22~4_combout\ = (\inst|Selector22~3_combout\) # ((\inst|Selector22~2_combout\) # ((\inst|AC[8]~0_combout\ & \inst|Add1~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector22~3_combout\,
	datab => \inst|AC[8]~0_combout\,
	datac => \inst|Add1~31_combout\,
	datad => \inst|Selector22~2_combout\,
	combout => \inst|Selector22~4_combout\);

-- Location: FF_X57_Y42_N3
\inst|state.ex_out2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|state.ex_out~q\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ex_out2~q\);

-- Location: LCCOMB_X57_Y42_N2
\inst|Selector29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector29~0_combout\ = (!\inst|state.fetch~q\ & (\inst|state.init~q\ & (!\inst|state.ex_out2~q\ & \inst|IO_CYCLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.fetch~q\,
	datab => \inst|state.init~q\,
	datac => \inst|state.ex_out2~q\,
	datad => \inst|IO_CYCLE~q\,
	combout => \inst|Selector29~0_combout\);

-- Location: LCCOMB_X57_Y44_N18
\inst|Selector29~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector29~1_combout\ = (\inst|state.ex_out~q\) # ((\inst|Selector29~0_combout\) # (\inst|state.ex_in~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_out~q\,
	datab => \inst|Selector29~0_combout\,
	datac => \inst|state.ex_in~q\,
	combout => \inst|Selector29~1_combout\);

-- Location: FF_X57_Y44_N19
\inst|IO_CYCLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector29~1_combout\,
	ena => \inst13|inst14|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IO_CYCLE~q\);

-- Location: LCCOMB_X57_Y44_N10
\inst3|DP_EN~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DP_EN~0_combout\ = (!\inst|IR\(9) & (\inst|IO_CYCLE~q\ & (!\inst|IR\(8) & !\inst|IR\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(9),
	datab => \inst|IO_CYCLE~q\,
	datac => \inst|IR\(8),
	datad => \inst|IR\(10),
	combout => \inst3|DP_EN~0_combout\);

-- Location: LCCOMB_X57_Y44_N14
\inst3|SWITCH_EN~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|SWITCH_EN~3_combout\ = (!\inst|IR\(6) & (!\inst|IR\(5) & (!\inst|IR\(3) & \inst3|DP_EN~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(6),
	datab => \inst|IR\(5),
	datac => \inst|IR\(3),
	datad => \inst3|DP_EN~0_combout\,
	combout => \inst3|SWITCH_EN~3_combout\);

-- Location: LCCOMB_X58_Y44_N6
\inst3|I2C_DATA_EN~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|I2C_DATA_EN~0_combout\ = (!\inst|IR\(1) & (!\inst|IR\(2) & (\inst|IR\(0) & \inst3|SWITCH_EN~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(1),
	datab => \inst|IR\(2),
	datac => \inst|IR\(0),
	datad => \inst3|SWITCH_EN~3_combout\,
	combout => \inst3|I2C_DATA_EN~0_combout\);

-- Location: LCCOMB_X58_Y44_N26
\inst13|inst7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst7~combout\ = (\inst3|I2C_DATA_EN~0_combout\ & (\inst|IR\(7) & (!\inst|IO_WRITE_int~q\ & \inst|IR\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|I2C_DATA_EN~0_combout\,
	datab => \inst|IR\(7),
	datac => \inst|IO_WRITE_int~q\,
	datad => \inst|IR\(4),
	combout => \inst13|inst7~combout\);

-- Location: LCCOMB_X57_Y44_N26
\inst3|SWITCH_EN~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|SWITCH_EN~1_combout\ = (!\inst|IR\(9) & (!\inst|IR\(8) & !\inst|IR\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(9),
	datab => \inst|IR\(8),
	datad => \inst|IR\(10),
	combout => \inst3|SWITCH_EN~1_combout\);

-- Location: LCCOMB_X57_Y44_N12
\inst3|SWITCH_EN~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|SWITCH_EN~0_combout\ = (!\inst|IR\(2) & (!\inst|IR\(6) & (!\inst|IR\(0) & !\inst|IR\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(2),
	datab => \inst|IR\(6),
	datac => \inst|IR\(0),
	datad => \inst|IR\(5),
	combout => \inst3|SWITCH_EN~0_combout\);

-- Location: LCCOMB_X57_Y44_N0
\inst3|SWITCH_EN~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|SWITCH_EN~2_combout\ = (\inst3|SWITCH_EN~1_combout\ & (\inst|IO_CYCLE~q\ & (!\inst|IR\(3) & \inst3|SWITCH_EN~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|SWITCH_EN~1_combout\,
	datab => \inst|IO_CYCLE~q\,
	datac => \inst|IR\(3),
	datad => \inst3|SWITCH_EN~0_combout\,
	combout => \inst3|SWITCH_EN~2_combout\);

-- Location: LCCOMB_X58_Y44_N20
\inst13|inst4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst4~combout\ = (\inst3|I2C_RDY_EN~1_combout\ & (\inst|IR\(7) & (!\inst|IO_WRITE_int~q\ & \inst3|SWITCH_EN~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|I2C_RDY_EN~1_combout\,
	datab => \inst|IR\(7),
	datac => \inst|IO_WRITE_int~q\,
	datad => \inst3|SWITCH_EN~2_combout\,
	combout => \inst13|inst4~combout\);

-- Location: LCCOMB_X57_Y44_N4
\inst3|SWITCH_EN~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|SWITCH_EN~5_combout\ = (\inst|IR\(2)) # ((\inst|IR\(0)) # (\inst|IR\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(2),
	datab => \inst|IR\(0),
	datad => \inst|IR\(5),
	combout => \inst3|SWITCH_EN~5_combout\);

-- Location: LCCOMB_X57_Y44_N2
\inst3|SWITCH_EN~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|SWITCH_EN~4_combout\ = (!\inst|IR\(1) & (!\inst|IR\(4) & (!\inst|IR\(3) & !\inst|IR\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(1),
	datab => \inst|IR\(4),
	datac => \inst|IR\(3),
	datad => \inst|IR\(7),
	combout => \inst3|SWITCH_EN~4_combout\);

-- Location: LCCOMB_X57_Y44_N28
\inst3|SWITCH_EN\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|SWITCH_EN~combout\ = LCELL((!\inst3|SWITCH_EN~5_combout\ & (\inst3|SWITCH_EN~4_combout\ & (!\inst|IR\(6) & \inst3|DP_EN~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|SWITCH_EN~5_combout\,
	datab => \inst3|SWITCH_EN~4_combout\,
	datac => \inst|IR\(6),
	datad => \inst3|DP_EN~0_combout\,
	combout => \inst3|SWITCH_EN~combout\);

-- Location: CLKCTRL_G11
\inst3|SWITCH_EN~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|SWITCH_EN~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|SWITCH_EN~clkctrl_outclk\);

-- Location: IOIBUF_X49_Y54_N1
\SW[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: FF_X58_Y46_N25
\inst7|B_DI[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SWITCH_EN~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|B_DI\(5));

-- Location: LCCOMB_X58_Y46_N24
\inst13|inst1[5]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[5]~19_combout\ = (\inst|IO_WRITE_int~q\ & (\inst|AC\(5) & ((\inst7|B_DI\(5)) # (!\inst3|SWITCH_EN~combout\)))) # (!\inst|IO_WRITE_int~q\ & (((\inst7|B_DI\(5))) # (!\inst3|SWITCH_EN~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IO_WRITE_int~q\,
	datab => \inst3|SWITCH_EN~combout\,
	datac => \inst7|B_DI\(5),
	datad => \inst|AC\(5),
	combout => \inst13|inst1[5]~19_combout\);

-- Location: LCCOMB_X58_Y44_N4
\inst4|IO_OUT\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|IO_OUT~combout\ = (\inst3|TIMER_EN~0_combout\ & (!\inst|IR\(7) & (!\inst|IO_WRITE_int~q\ & \inst3|SWITCH_EN~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|TIMER_EN~0_combout\,
	datab => \inst|IR\(7),
	datac => \inst|IO_WRITE_int~q\,
	datad => \inst3|SWITCH_EN~2_combout\,
	combout => \inst4|IO_OUT~combout\);

-- Location: LCCOMB_X58_Y44_N28
\inst13|inst1[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[0]~0_combout\ = (\inst3|I2C_DATA_EN~0_combout\ & (\inst|IR\(4) & \inst|IR\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|I2C_DATA_EN~0_combout\,
	datab => \inst|IR\(4),
	datad => \inst|IR\(7),
	combout => \inst13|inst1[0]~0_combout\);

-- Location: LCCOMB_X59_Y44_N28
\inst3|I2C_RDY_EN~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|I2C_RDY_EN~0_combout\ = (\inst|IR\(4) & (\inst|IR\(1) & \inst|IR\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|IR\(4),
	datac => \inst|IR\(1),
	datad => \inst|IR\(7),
	combout => \inst3|I2C_RDY_EN~0_combout\);

-- Location: LCCOMB_X58_Y44_N10
\inst13|inst1[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[0]~1_combout\ = (\inst|IO_WRITE_int~q\) # ((\inst3|I2C_RDY_EN~0_combout\ & \inst3|SWITCH_EN~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|I2C_RDY_EN~0_combout\,
	datac => \inst|IO_WRITE_int~q\,
	datad => \inst3|SWITCH_EN~2_combout\,
	combout => \inst13|inst1[0]~1_combout\);

-- Location: LCCOMB_X58_Y44_N14
\inst13|inst1[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[0]~2_combout\ = (\inst3|SWITCH_EN~combout\) # ((\inst4|IO_OUT~combout\) # ((\inst13|inst1[0]~0_combout\) # (\inst13|inst1[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|SWITCH_EN~combout\,
	datab => \inst4|IO_OUT~combout\,
	datac => \inst13|inst1[0]~0_combout\,
	datad => \inst13|inst1[0]~1_combout\,
	combout => \inst13|inst1[0]~2_combout\);

-- Location: IOIBUF_X69_Y54_N1
\SW[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: FF_X59_Y44_N11
\inst7|B_DI[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SWITCH_EN~clkctrl_outclk\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|B_DI\(9));

-- Location: LCCOMB_X59_Y44_N10
\inst13|inst1[9]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[9]~31_combout\ = (\inst3|SWITCH_EN~combout\ & (\inst7|B_DI\(9) & ((\inst|AC\(9)) # (!\inst|IO_WRITE_int~q\)))) # (!\inst3|SWITCH_EN~combout\ & (((\inst|AC\(9))) # (!\inst|IO_WRITE_int~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|SWITCH_EN~combout\,
	datab => \inst|IO_WRITE_int~q\,
	datac => \inst7|B_DI\(9),
	datad => \inst|AC\(9),
	combout => \inst13|inst1[9]~31_combout\);

-- Location: IOIBUF_X38_Y0_N29
\GSENSOR_SDI~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GSENSOR_SDI,
	o => \GSENSOR_SDI~input_o\);

-- Location: LCCOMB_X62_Y42_N10
\inst13|inst|bit_cnt[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|bit_cnt[0]~0_combout\ = !\inst13|inst|bit_cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst|bit_cnt\(0),
	combout => \inst13|inst|bit_cnt[0]~0_combout\);

-- Location: LCCOMB_X62_Y42_N20
\inst13|inst|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Add1~0_combout\ = \inst13|inst|bit_cnt\(2) $ (((\inst13|inst|bit_cnt\(0) & \inst13|inst|bit_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|bit_cnt\(0),
	datac => \inst13|inst|bit_cnt\(1),
	datad => \inst13|inst|bit_cnt\(2),
	combout => \inst13|inst|Add1~0_combout\);

-- Location: LCCOMB_X62_Y42_N0
\inst13|inst|bit_cnt[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|bit_cnt[2]~feeder_combout\ = \inst13|inst|Add1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst|Add1~0_combout\,
	combout => \inst13|inst|bit_cnt[2]~feeder_combout\);

-- Location: FF_X62_Y42_N1
\inst13|inst|bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	d => \inst13|inst|bit_cnt[2]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	ena => \inst13|inst|WideOr12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|bit_cnt\(2));

-- Location: LCCOMB_X63_Y42_N16
\inst13|inst|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Equal1~0_combout\ = (\inst13|inst|bit_cnt\(1) & (\inst13|inst|bit_cnt\(2) & \inst13|inst|bit_cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|bit_cnt\(1),
	datac => \inst13|inst|bit_cnt\(2),
	datad => \inst13|inst|bit_cnt\(0),
	combout => \inst13|inst|Equal1~0_combout\);

-- Location: LCCOMB_X64_Y42_N24
\inst13|inst|Selector21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector21~0_combout\ = (\inst13|inst|state.start~q\) # ((!\inst13|inst|Equal1~0_combout\ & \inst13|inst|state.command~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|Equal1~0_combout\,
	datac => \inst13|inst|state.command~q\,
	datad => \inst13|inst|state.start~q\,
	combout => \inst13|inst|Selector21~0_combout\);

-- Location: FF_X64_Y42_N25
\inst13|inst|state.command\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	d => \inst13|inst|Selector21~0_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|state.command~q\);

-- Location: LCCOMB_X58_Y43_N8
\inst13|inst6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst6~combout\ = LCELL((\inst3|SWITCH_EN~2_combout\ & (\inst3|I2C_RDY_EN~0_combout\ & \inst|IO_WRITE_int~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|SWITCH_EN~2_combout\,
	datac => \inst3|I2C_RDY_EN~0_combout\,
	datad => \inst|IO_WRITE_int~q\,
	combout => \inst13|inst6~combout\);

-- Location: LCCOMB_X58_Y43_N0
\inst13|inst14|go~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|go~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst13|inst14|go~feeder_combout\);

-- Location: LCCOMB_X62_Y43_N6
\inst13|inst14|running~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|running~0_combout\ = (\inst13|inst14|state.idle~q\ & (\inst13|inst14|running~q\)) # (!\inst13|inst14|state.idle~q\ & ((\inst13|inst14|go~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|running~q\,
	datab => \inst13|inst14|state.idle~q\,
	datad => \inst13|inst14|go~q\,
	combout => \inst13|inst14|running~0_combout\);

-- Location: FF_X62_Y43_N1
\inst13|inst14|running\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	asdata => \inst13|inst14|running~0_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|running~q\);

-- Location: LCCOMB_X62_Y43_N4
\inst13|inst14|latch_rdy~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|latch_rdy~0_combout\ = ((\inst13|inst14|running~q\) # (!\inst1|altpll_component|auto_generated|pll_lock_sync~q\)) # (!\inst1|altpll_component|auto_generated|wire_pll1_locked\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|altpll_component|auto_generated|wire_pll1_locked\,
	datac => \inst1|altpll_component|auto_generated|pll_lock_sync~q\,
	datad => \inst13|inst14|running~q\,
	combout => \inst13|inst14|latch_rdy~0_combout\);

-- Location: FF_X58_Y43_N1
\inst13|inst14|go\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst6~combout\,
	d => \inst13|inst14|go~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_latch_rdy~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|go~q\);

-- Location: LCCOMB_X63_Y43_N4
\inst13|inst14|tx_addr[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|tx_addr[7]~0_combout\ = (\inst13|inst14|go~q\ & !\inst13|inst14|state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst14|go~q\,
	datad => \inst13|inst14|state.idle~q\,
	combout => \inst13|inst14|tx_addr[7]~0_combout\);

-- Location: LCCOMB_X64_Y42_N2
\inst13|inst|state~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|state~14_combout\ = (\inst13|inst|bit_cnt\(1) & (\inst13|inst|bit_cnt\(2) & (\inst13|inst|state.rd~q\ & \inst13|inst|bit_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|bit_cnt\(1),
	datab => \inst13|inst|bit_cnt\(2),
	datac => \inst13|inst|state.rd~q\,
	datad => \inst13|inst|bit_cnt\(0),
	combout => \inst13|inst|state~14_combout\);

-- Location: FF_X64_Y42_N13
\inst13|inst|state.mstr_ack\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	asdata => \inst13|inst|state~14_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|state.mstr_ack~q\);

-- Location: IOIBUF_X54_Y54_N29
\SW[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: FF_X57_Y45_N31
\inst7|B_DI[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SWITCH_EN~clkctrl_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|B_DI\(3));

-- Location: LCCOMB_X57_Y45_N30
\inst13|inst1[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[3]~13_combout\ = (\inst3|SWITCH_EN~combout\ & (\inst7|B_DI\(3) & ((\inst|AC\(3)) # (!\inst|IO_WRITE_int~q\)))) # (!\inst3|SWITCH_EN~combout\ & (((\inst|AC\(3))) # (!\inst|IO_WRITE_int~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|SWITCH_EN~combout\,
	datab => \inst|IO_WRITE_int~q\,
	datac => \inst7|B_DI\(3),
	datad => \inst|AC\(3),
	combout => \inst13|inst1[3]~13_combout\);

-- Location: LCCOMB_X63_Y43_N14
\inst13|inst|Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Decoder0~0_combout\ = (\inst1|altpll_component|auto_generated|pll_lock_sync~q\ & (\inst1|altpll_component|auto_generated|wire_pll1_locked\ & \inst13|inst|state.rd~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|altpll_component|auto_generated|pll_lock_sync~q\,
	datac => \inst1|altpll_component|auto_generated|wire_pll1_locked\,
	datad => \inst13|inst|state.rd~q\,
	combout => \inst13|inst|Decoder0~0_combout\);

-- Location: LCCOMB_X64_Y43_N6
\inst13|inst|Decoder0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Decoder0~4_combout\ = (!\inst13|inst|bit_cnt\(1) & (\inst13|inst|bit_cnt\(2) & (!\inst13|inst|bit_cnt\(0) & \inst13|inst|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|bit_cnt\(1),
	datab => \inst13|inst|bit_cnt\(2),
	datac => \inst13|inst|bit_cnt\(0),
	datad => \inst13|inst|Decoder0~0_combout\,
	combout => \inst13|inst|Decoder0~4_combout\);

-- Location: LCCOMB_X64_Y43_N14
\inst13|inst|data_rx[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|data_rx[3]~3_combout\ = (\inst13|inst|Decoder0~4_combout\ & (\GSENSOR_SDI~input_o\)) # (!\inst13|inst|Decoder0~4_combout\ & ((\inst13|inst|data_rx\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GSENSOR_SDI~input_o\,
	datac => \inst13|inst|data_rx\(3),
	datad => \inst13|inst|Decoder0~4_combout\,
	combout => \inst13|inst|data_rx[3]~3_combout\);

-- Location: FF_X64_Y43_N15
\inst13|inst|data_rx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|ALT_INV_data_clk~clkctrl_outclk\,
	d => \inst13|inst|data_rx[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_rx\(3));

-- Location: LCCOMB_X62_Y45_N26
\inst13|inst|data_rd[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|data_rd[3]~feeder_combout\ = \inst13|inst|data_rx\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst|data_rx\(3),
	combout => \inst13|inst|data_rd[3]~feeder_combout\);

-- Location: FF_X62_Y45_N27
\inst13|inst|data_rd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	d => \inst13|inst|data_rd[3]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	ena => \inst13|inst|state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_rd\(3));

-- Location: LCCOMB_X61_Y45_N24
\inst13|inst14|data_out[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_out[3]~6_combout\ = (\inst13|inst|data_rd\(3) & (\inst13|inst14|prev_busy~q\ & (!\inst13|inst|busy~q\ & \inst13|inst14|state.Rx1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|data_rd\(3),
	datab => \inst13|inst14|prev_busy~q\,
	datac => \inst13|inst|busy~q\,
	datad => \inst13|inst14|state.Rx1~q\,
	combout => \inst13|inst14|data_out[3]~6_combout\);

-- Location: LCCOMB_X61_Y43_N28
\inst13|inst14|data_out[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_out[7]~2_combout\ = (\inst13|inst14|state.Rx1~q\ & (!\inst13|inst|busy~q\ & \inst13|inst14|prev_busy~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|state.Rx1~q\,
	datac => \inst13|inst|busy~q\,
	datad => \inst13|inst14|prev_busy~q\,
	combout => \inst13|inst14|data_out[7]~2_combout\);

-- Location: LCCOMB_X61_Y43_N2
\inst13|inst14|data_out[7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_out[7]~3_combout\ = (\inst13|inst14|data_out[7]~0_combout\ & ((\inst13|inst14|data_out[7]~2_combout\) # ((\inst13|inst14|go~q\ & !\inst13|inst14|state.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|data_out[7]~0_combout\,
	datab => \inst13|inst14|go~q\,
	datac => \inst13|inst14|state.idle~q\,
	datad => \inst13|inst14|data_out[7]~2_combout\,
	combout => \inst13|inst14|data_out[7]~3_combout\);

-- Location: FF_X61_Y45_N25
\inst13|inst14|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|data_out[3]~6_combout\,
	ena => \inst13|inst14|data_out[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_out\(3));

-- Location: LCCOMB_X58_Y45_N16
\inst13|inst1[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[3]~14_combout\ = (\inst13|inst1[3]~13_combout\ & (!\inst13|inst4~combout\ & ((\inst13|inst14|data_out\(3)) # (!\inst13|inst7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[3]~13_combout\,
	datab => \inst13|inst7~combout\,
	datac => \inst13|inst4~combout\,
	datad => \inst13|inst14|data_out\(3),
	combout => \inst13|inst1[3]~14_combout\);

-- Location: LCCOMB_X76_Y40_N14
\inst5|count_10Hz[0]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_10Hz[0]~19_combout\ = \inst5|count_10Hz\(0) $ (VCC)
-- \inst5|count_10Hz[0]~20\ = CARRY(\inst5|count_10Hz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count_10Hz\(0),
	datad => VCC,
	combout => \inst5|count_10Hz[0]~19_combout\,
	cout => \inst5|count_10Hz[0]~20\);

-- Location: LCCOMB_X76_Y39_N26
\inst5|LessThan4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan4~3_combout\ = (!\inst5|count_10Hz\(12) & (!\inst5|count_10Hz\(10) & (!\inst5|count_10Hz\(11) & !\inst5|count_10Hz\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count_10Hz\(12),
	datab => \inst5|count_10Hz\(10),
	datac => \inst5|count_10Hz\(11),
	datad => \inst5|count_10Hz\(9),
	combout => \inst5|LessThan4~3_combout\);

-- Location: LCCOMB_X76_Y40_N2
\inst5|LessThan4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan4~1_combout\ = (((!\inst5|count_10Hz\(1)) # (!\inst5|count_10Hz\(0))) # (!\inst5|count_10Hz\(2))) # (!\inst5|count_10Hz\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count_10Hz\(3),
	datab => \inst5|count_10Hz\(2),
	datac => \inst5|count_10Hz\(0),
	datad => \inst5|count_10Hz\(1),
	combout => \inst5|LessThan4~1_combout\);

-- Location: LCCOMB_X76_Y40_N12
\inst5|LessThan4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan4~0_combout\ = (!\inst5|count_10Hz\(7) & (!\inst5|count_10Hz\(6) & !\inst5|count_10Hz\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count_10Hz\(7),
	datac => \inst5|count_10Hz\(6),
	datad => \inst5|count_10Hz\(5),
	combout => \inst5|LessThan4~0_combout\);

-- Location: LCCOMB_X76_Y40_N8
\inst5|LessThan4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan4~2_combout\ = ((\inst5|LessThan4~0_combout\ & ((\inst5|LessThan4~1_combout\) # (!\inst5|count_10Hz\(4))))) # (!\inst5|count_10Hz\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count_10Hz\(8),
	datab => \inst5|LessThan4~1_combout\,
	datac => \inst5|count_10Hz\(4),
	datad => \inst5|LessThan4~0_combout\,
	combout => \inst5|LessThan4~2_combout\);

-- Location: LCCOMB_X76_Y39_N28
\inst5|LessThan4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan4~4_combout\ = (!\inst5|count_10Hz\(14) & (((\inst5|LessThan4~3_combout\ & \inst5|LessThan4~2_combout\)) # (!\inst5|count_10Hz\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|LessThan4~3_combout\,
	datab => \inst5|LessThan4~2_combout\,
	datac => \inst5|count_10Hz\(13),
	datad => \inst5|count_10Hz\(14),
	combout => \inst5|LessThan4~4_combout\);

-- Location: LCCOMB_X76_Y39_N20
\inst5|LessThan4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan4~6_combout\ = (!\inst5|LessThan4~5_combout\ & !\inst5|LessThan4~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|LessThan4~5_combout\,
	datad => \inst5|LessThan4~4_combout\,
	combout => \inst5|LessThan4~6_combout\);

-- Location: FF_X76_Y40_N15
\inst5|count_10Hz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_10Hz[0]~19_combout\,
	sclr => \inst5|LessThan4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_10Hz\(0));

-- Location: LCCOMB_X76_Y40_N16
\inst5|count_10Hz[1]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_10Hz[1]~21_combout\ = (\inst5|count_10Hz\(1) & (!\inst5|count_10Hz[0]~20\)) # (!\inst5|count_10Hz\(1) & ((\inst5|count_10Hz[0]~20\) # (GND)))
-- \inst5|count_10Hz[1]~22\ = CARRY((!\inst5|count_10Hz[0]~20\) # (!\inst5|count_10Hz\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count_10Hz\(1),
	datad => VCC,
	cin => \inst5|count_10Hz[0]~20\,
	combout => \inst5|count_10Hz[1]~21_combout\,
	cout => \inst5|count_10Hz[1]~22\);

-- Location: FF_X76_Y40_N17
\inst5|count_10Hz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_10Hz[1]~21_combout\,
	sclr => \inst5|LessThan4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_10Hz\(1));

-- Location: LCCOMB_X76_Y40_N18
\inst5|count_10Hz[2]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_10Hz[2]~23_combout\ = (\inst5|count_10Hz\(2) & (\inst5|count_10Hz[1]~22\ $ (GND))) # (!\inst5|count_10Hz\(2) & (!\inst5|count_10Hz[1]~22\ & VCC))
-- \inst5|count_10Hz[2]~24\ = CARRY((\inst5|count_10Hz\(2) & !\inst5|count_10Hz[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count_10Hz\(2),
	datad => VCC,
	cin => \inst5|count_10Hz[1]~22\,
	combout => \inst5|count_10Hz[2]~23_combout\,
	cout => \inst5|count_10Hz[2]~24\);

-- Location: FF_X76_Y40_N19
\inst5|count_10Hz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_10Hz[2]~23_combout\,
	sclr => \inst5|LessThan4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_10Hz\(2));

-- Location: LCCOMB_X76_Y40_N20
\inst5|count_10Hz[3]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_10Hz[3]~25_combout\ = (\inst5|count_10Hz\(3) & (!\inst5|count_10Hz[2]~24\)) # (!\inst5|count_10Hz\(3) & ((\inst5|count_10Hz[2]~24\) # (GND)))
-- \inst5|count_10Hz[3]~26\ = CARRY((!\inst5|count_10Hz[2]~24\) # (!\inst5|count_10Hz\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count_10Hz\(3),
	datad => VCC,
	cin => \inst5|count_10Hz[2]~24\,
	combout => \inst5|count_10Hz[3]~25_combout\,
	cout => \inst5|count_10Hz[3]~26\);

-- Location: FF_X76_Y40_N21
\inst5|count_10Hz[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_10Hz[3]~25_combout\,
	sclr => \inst5|LessThan4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_10Hz\(3));

-- Location: LCCOMB_X76_Y40_N22
\inst5|count_10Hz[4]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_10Hz[4]~27_combout\ = (\inst5|count_10Hz\(4) & (\inst5|count_10Hz[3]~26\ $ (GND))) # (!\inst5|count_10Hz\(4) & (!\inst5|count_10Hz[3]~26\ & VCC))
-- \inst5|count_10Hz[4]~28\ = CARRY((\inst5|count_10Hz\(4) & !\inst5|count_10Hz[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count_10Hz\(4),
	datad => VCC,
	cin => \inst5|count_10Hz[3]~26\,
	combout => \inst5|count_10Hz[4]~27_combout\,
	cout => \inst5|count_10Hz[4]~28\);

-- Location: FF_X76_Y40_N23
\inst5|count_10Hz[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_10Hz[4]~27_combout\,
	sclr => \inst5|LessThan4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_10Hz\(4));

-- Location: LCCOMB_X76_Y40_N24
\inst5|count_10Hz[5]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_10Hz[5]~29_combout\ = (\inst5|count_10Hz\(5) & (!\inst5|count_10Hz[4]~28\)) # (!\inst5|count_10Hz\(5) & ((\inst5|count_10Hz[4]~28\) # (GND)))
-- \inst5|count_10Hz[5]~30\ = CARRY((!\inst5|count_10Hz[4]~28\) # (!\inst5|count_10Hz\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count_10Hz\(5),
	datad => VCC,
	cin => \inst5|count_10Hz[4]~28\,
	combout => \inst5|count_10Hz[5]~29_combout\,
	cout => \inst5|count_10Hz[5]~30\);

-- Location: FF_X76_Y40_N25
\inst5|count_10Hz[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_10Hz[5]~29_combout\,
	sclr => \inst5|LessThan4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_10Hz\(5));

-- Location: LCCOMB_X76_Y40_N26
\inst5|count_10Hz[6]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_10Hz[6]~31_combout\ = (\inst5|count_10Hz\(6) & (\inst5|count_10Hz[5]~30\ $ (GND))) # (!\inst5|count_10Hz\(6) & (!\inst5|count_10Hz[5]~30\ & VCC))
-- \inst5|count_10Hz[6]~32\ = CARRY((\inst5|count_10Hz\(6) & !\inst5|count_10Hz[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count_10Hz\(6),
	datad => VCC,
	cin => \inst5|count_10Hz[5]~30\,
	combout => \inst5|count_10Hz[6]~31_combout\,
	cout => \inst5|count_10Hz[6]~32\);

-- Location: FF_X76_Y40_N27
\inst5|count_10Hz[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_10Hz[6]~31_combout\,
	sclr => \inst5|LessThan4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_10Hz\(6));

-- Location: LCCOMB_X76_Y40_N28
\inst5|count_10Hz[7]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_10Hz[7]~33_combout\ = (\inst5|count_10Hz\(7) & (!\inst5|count_10Hz[6]~32\)) # (!\inst5|count_10Hz\(7) & ((\inst5|count_10Hz[6]~32\) # (GND)))
-- \inst5|count_10Hz[7]~34\ = CARRY((!\inst5|count_10Hz[6]~32\) # (!\inst5|count_10Hz\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count_10Hz\(7),
	datad => VCC,
	cin => \inst5|count_10Hz[6]~32\,
	combout => \inst5|count_10Hz[7]~33_combout\,
	cout => \inst5|count_10Hz[7]~34\);

-- Location: FF_X76_Y40_N29
\inst5|count_10Hz[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_10Hz[7]~33_combout\,
	sclr => \inst5|LessThan4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_10Hz\(7));

-- Location: LCCOMB_X76_Y40_N30
\inst5|count_10Hz[8]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_10Hz[8]~35_combout\ = (\inst5|count_10Hz\(8) & (\inst5|count_10Hz[7]~34\ $ (GND))) # (!\inst5|count_10Hz\(8) & (!\inst5|count_10Hz[7]~34\ & VCC))
-- \inst5|count_10Hz[8]~36\ = CARRY((\inst5|count_10Hz\(8) & !\inst5|count_10Hz[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count_10Hz\(8),
	datad => VCC,
	cin => \inst5|count_10Hz[7]~34\,
	combout => \inst5|count_10Hz[8]~35_combout\,
	cout => \inst5|count_10Hz[8]~36\);

-- Location: FF_X76_Y40_N31
\inst5|count_10Hz[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_10Hz[8]~35_combout\,
	sclr => \inst5|LessThan4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_10Hz\(8));

-- Location: LCCOMB_X76_Y39_N0
\inst5|count_10Hz[9]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_10Hz[9]~37_combout\ = (\inst5|count_10Hz\(9) & (!\inst5|count_10Hz[8]~36\)) # (!\inst5|count_10Hz\(9) & ((\inst5|count_10Hz[8]~36\) # (GND)))
-- \inst5|count_10Hz[9]~38\ = CARRY((!\inst5|count_10Hz[8]~36\) # (!\inst5|count_10Hz\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count_10Hz\(9),
	datad => VCC,
	cin => \inst5|count_10Hz[8]~36\,
	combout => \inst5|count_10Hz[9]~37_combout\,
	cout => \inst5|count_10Hz[9]~38\);

-- Location: FF_X76_Y39_N1
\inst5|count_10Hz[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_10Hz[9]~37_combout\,
	sclr => \inst5|LessThan4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_10Hz\(9));

-- Location: LCCOMB_X76_Y39_N2
\inst5|count_10Hz[10]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_10Hz[10]~39_combout\ = (\inst5|count_10Hz\(10) & (\inst5|count_10Hz[9]~38\ $ (GND))) # (!\inst5|count_10Hz\(10) & (!\inst5|count_10Hz[9]~38\ & VCC))
-- \inst5|count_10Hz[10]~40\ = CARRY((\inst5|count_10Hz\(10) & !\inst5|count_10Hz[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count_10Hz\(10),
	datad => VCC,
	cin => \inst5|count_10Hz[9]~38\,
	combout => \inst5|count_10Hz[10]~39_combout\,
	cout => \inst5|count_10Hz[10]~40\);

-- Location: FF_X76_Y39_N3
\inst5|count_10Hz[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_10Hz[10]~39_combout\,
	sclr => \inst5|LessThan4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_10Hz\(10));

-- Location: LCCOMB_X76_Y39_N4
\inst5|count_10Hz[11]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_10Hz[11]~41_combout\ = (\inst5|count_10Hz\(11) & (!\inst5|count_10Hz[10]~40\)) # (!\inst5|count_10Hz\(11) & ((\inst5|count_10Hz[10]~40\) # (GND)))
-- \inst5|count_10Hz[11]~42\ = CARRY((!\inst5|count_10Hz[10]~40\) # (!\inst5|count_10Hz\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count_10Hz\(11),
	datad => VCC,
	cin => \inst5|count_10Hz[10]~40\,
	combout => \inst5|count_10Hz[11]~41_combout\,
	cout => \inst5|count_10Hz[11]~42\);

-- Location: FF_X76_Y39_N5
\inst5|count_10Hz[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_10Hz[11]~41_combout\,
	sclr => \inst5|LessThan4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_10Hz\(11));

-- Location: LCCOMB_X76_Y39_N6
\inst5|count_10Hz[12]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_10Hz[12]~43_combout\ = (\inst5|count_10Hz\(12) & (\inst5|count_10Hz[11]~42\ $ (GND))) # (!\inst5|count_10Hz\(12) & (!\inst5|count_10Hz[11]~42\ & VCC))
-- \inst5|count_10Hz[12]~44\ = CARRY((\inst5|count_10Hz\(12) & !\inst5|count_10Hz[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count_10Hz\(12),
	datad => VCC,
	cin => \inst5|count_10Hz[11]~42\,
	combout => \inst5|count_10Hz[12]~43_combout\,
	cout => \inst5|count_10Hz[12]~44\);

-- Location: FF_X76_Y39_N7
\inst5|count_10Hz[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_10Hz[12]~43_combout\,
	sclr => \inst5|LessThan4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_10Hz\(12));

-- Location: LCCOMB_X76_Y39_N8
\inst5|count_10Hz[13]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_10Hz[13]~45_combout\ = (\inst5|count_10Hz\(13) & (!\inst5|count_10Hz[12]~44\)) # (!\inst5|count_10Hz\(13) & ((\inst5|count_10Hz[12]~44\) # (GND)))
-- \inst5|count_10Hz[13]~46\ = CARRY((!\inst5|count_10Hz[12]~44\) # (!\inst5|count_10Hz\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count_10Hz\(13),
	datad => VCC,
	cin => \inst5|count_10Hz[12]~44\,
	combout => \inst5|count_10Hz[13]~45_combout\,
	cout => \inst5|count_10Hz[13]~46\);

-- Location: FF_X76_Y39_N9
\inst5|count_10Hz[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_10Hz[13]~45_combout\,
	sclr => \inst5|LessThan4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_10Hz\(13));

-- Location: LCCOMB_X76_Y39_N10
\inst5|count_10Hz[14]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_10Hz[14]~47_combout\ = (\inst5|count_10Hz\(14) & (\inst5|count_10Hz[13]~46\ $ (GND))) # (!\inst5|count_10Hz\(14) & (!\inst5|count_10Hz[13]~46\ & VCC))
-- \inst5|count_10Hz[14]~48\ = CARRY((\inst5|count_10Hz\(14) & !\inst5|count_10Hz[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count_10Hz\(14),
	datad => VCC,
	cin => \inst5|count_10Hz[13]~46\,
	combout => \inst5|count_10Hz[14]~47_combout\,
	cout => \inst5|count_10Hz[14]~48\);

-- Location: FF_X76_Y39_N11
\inst5|count_10Hz[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_10Hz[14]~47_combout\,
	sclr => \inst5|LessThan4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_10Hz\(14));

-- Location: LCCOMB_X76_Y39_N12
\inst5|count_10Hz[15]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_10Hz[15]~49_combout\ = (\inst5|count_10Hz\(15) & (!\inst5|count_10Hz[14]~48\)) # (!\inst5|count_10Hz\(15) & ((\inst5|count_10Hz[14]~48\) # (GND)))
-- \inst5|count_10Hz[15]~50\ = CARRY((!\inst5|count_10Hz[14]~48\) # (!\inst5|count_10Hz\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count_10Hz\(15),
	datad => VCC,
	cin => \inst5|count_10Hz[14]~48\,
	combout => \inst5|count_10Hz[15]~49_combout\,
	cout => \inst5|count_10Hz[15]~50\);

-- Location: FF_X76_Y39_N13
\inst5|count_10Hz[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_10Hz[15]~49_combout\,
	sclr => \inst5|LessThan4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_10Hz\(15));

-- Location: LCCOMB_X76_Y39_N14
\inst5|count_10Hz[16]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_10Hz[16]~51_combout\ = (\inst5|count_10Hz\(16) & (\inst5|count_10Hz[15]~50\ $ (GND))) # (!\inst5|count_10Hz\(16) & (!\inst5|count_10Hz[15]~50\ & VCC))
-- \inst5|count_10Hz[16]~52\ = CARRY((\inst5|count_10Hz\(16) & !\inst5|count_10Hz[15]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count_10Hz\(16),
	datad => VCC,
	cin => \inst5|count_10Hz[15]~50\,
	combout => \inst5|count_10Hz[16]~51_combout\,
	cout => \inst5|count_10Hz[16]~52\);

-- Location: FF_X76_Y39_N15
\inst5|count_10Hz[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_10Hz[16]~51_combout\,
	sclr => \inst5|LessThan4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_10Hz\(16));

-- Location: LCCOMB_X76_Y39_N16
\inst5|count_10Hz[17]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_10Hz[17]~53_combout\ = (\inst5|count_10Hz\(17) & (!\inst5|count_10Hz[16]~52\)) # (!\inst5|count_10Hz\(17) & ((\inst5|count_10Hz[16]~52\) # (GND)))
-- \inst5|count_10Hz[17]~54\ = CARRY((!\inst5|count_10Hz[16]~52\) # (!\inst5|count_10Hz\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count_10Hz\(17),
	datad => VCC,
	cin => \inst5|count_10Hz[16]~52\,
	combout => \inst5|count_10Hz[17]~53_combout\,
	cout => \inst5|count_10Hz[17]~54\);

-- Location: FF_X76_Y39_N17
\inst5|count_10Hz[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_10Hz[17]~53_combout\,
	sclr => \inst5|LessThan4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_10Hz\(17));

-- Location: LCCOMB_X76_Y39_N18
\inst5|count_10Hz[18]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_10Hz[18]~55_combout\ = \inst5|count_10Hz[17]~54\ $ (!\inst5|count_10Hz\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst5|count_10Hz\(18),
	cin => \inst5|count_10Hz[17]~54\,
	combout => \inst5|count_10Hz[18]~55_combout\);

-- Location: FF_X76_Y39_N19
\inst5|count_10Hz[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_10Hz[18]~55_combout\,
	sclr => \inst5|LessThan4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_10Hz\(18));

-- Location: LCCOMB_X76_Y39_N22
\inst5|LessThan4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan4~5_combout\ = (((!\inst5|count_10Hz\(17)) # (!\inst5|count_10Hz\(16))) # (!\inst5|count_10Hz\(18))) # (!\inst5|count_10Hz\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count_10Hz\(15),
	datab => \inst5|count_10Hz\(18),
	datac => \inst5|count_10Hz\(16),
	datad => \inst5|count_10Hz\(17),
	combout => \inst5|LessThan4~5_combout\);

-- Location: LCCOMB_X76_Y39_N24
\inst5|clock_10Hz_int~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|clock_10Hz_int~0_combout\ = \inst5|clock_10Hz_int~q\ $ (((!\inst5|LessThan4~5_combout\ & !\inst5|LessThan4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|LessThan4~5_combout\,
	datac => \inst5|clock_10Hz_int~q\,
	datad => \inst5|LessThan4~4_combout\,
	combout => \inst5|clock_10Hz_int~0_combout\);

-- Location: FF_X76_Y39_N25
\inst5|clock_10Hz_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|clock_10Hz_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|clock_10Hz_int~q\);

-- Location: LCCOMB_X77_Y39_N24
\inst5|clock_10Hz~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|clock_10Hz~feeder_combout\ = \inst5|clock_10Hz_int~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|clock_10Hz_int~q\,
	combout => \inst5|clock_10Hz~feeder_combout\);

-- Location: FF_X77_Y39_N25
\inst5|clock_10Hz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|clock_10Hz~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|clock_10Hz~q\);

-- Location: CLKCTRL_G9
\inst5|clock_10Hz~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst5|clock_10Hz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst5|clock_10Hz~clkctrl_outclk\);

-- Location: LCCOMB_X56_Y44_N30
\inst4|COUNT[0]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|COUNT[0]~45_combout\ = !\inst4|COUNT\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|COUNT\(0),
	combout => \inst4|COUNT[0]~45_combout\);

-- Location: LCCOMB_X58_Y44_N22
\inst3|TIMER_EN~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|TIMER_EN~1_combout\ = (\inst|IR\(1) & (!\inst|IR\(4) & !\inst|IR\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(1),
	datac => \inst|IR\(4),
	datad => \inst|IR\(7),
	combout => \inst3|TIMER_EN~1_combout\);

-- Location: LCCOMB_X57_Y44_N16
\inst4|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|process_0~0_combout\ = ((\inst|IO_WRITE_int~q\ & (\inst3|TIMER_EN~1_combout\ & \inst3|SWITCH_EN~2_combout\))) # (!\inst13|inst14|data_out[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IO_WRITE_int~q\,
	datab => \inst3|TIMER_EN~1_combout\,
	datac => \inst3|SWITCH_EN~2_combout\,
	datad => \inst13|inst14|data_out[7]~0_combout\,
	combout => \inst4|process_0~0_combout\);

-- Location: FF_X56_Y44_N31
\inst4|COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_10Hz~clkctrl_outclk\,
	d => \inst4|COUNT[0]~45_combout\,
	clrn => \inst4|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|COUNT\(0));

-- Location: LCCOMB_X56_Y44_N0
\inst4|COUNT[1]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|COUNT[1]~15_combout\ = (\inst4|COUNT\(0) & (\inst4|COUNT\(1) $ (VCC))) # (!\inst4|COUNT\(0) & (\inst4|COUNT\(1) & VCC))
-- \inst4|COUNT[1]~16\ = CARRY((\inst4|COUNT\(0) & \inst4|COUNT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|COUNT\(0),
	datab => \inst4|COUNT\(1),
	datad => VCC,
	combout => \inst4|COUNT[1]~15_combout\,
	cout => \inst4|COUNT[1]~16\);

-- Location: FF_X56_Y44_N1
\inst4|COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_10Hz~clkctrl_outclk\,
	d => \inst4|COUNT[1]~15_combout\,
	clrn => \inst4|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|COUNT\(1));

-- Location: LCCOMB_X56_Y44_N2
\inst4|COUNT[2]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|COUNT[2]~17_combout\ = (\inst4|COUNT\(2) & (!\inst4|COUNT[1]~16\)) # (!\inst4|COUNT\(2) & ((\inst4|COUNT[1]~16\) # (GND)))
-- \inst4|COUNT[2]~18\ = CARRY((!\inst4|COUNT[1]~16\) # (!\inst4|COUNT\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|COUNT\(2),
	datad => VCC,
	cin => \inst4|COUNT[1]~16\,
	combout => \inst4|COUNT[2]~17_combout\,
	cout => \inst4|COUNT[2]~18\);

-- Location: FF_X56_Y44_N3
\inst4|COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_10Hz~clkctrl_outclk\,
	d => \inst4|COUNT[2]~17_combout\,
	clrn => \inst4|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|COUNT\(2));

-- Location: LCCOMB_X56_Y44_N4
\inst4|COUNT[3]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|COUNT[3]~19_combout\ = (\inst4|COUNT\(3) & (\inst4|COUNT[2]~18\ $ (GND))) # (!\inst4|COUNT\(3) & (!\inst4|COUNT[2]~18\ & VCC))
-- \inst4|COUNT[3]~20\ = CARRY((\inst4|COUNT\(3) & !\inst4|COUNT[2]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|COUNT\(3),
	datad => VCC,
	cin => \inst4|COUNT[2]~18\,
	combout => \inst4|COUNT[3]~19_combout\,
	cout => \inst4|COUNT[3]~20\);

-- Location: FF_X56_Y44_N5
\inst4|COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_10Hz~clkctrl_outclk\,
	d => \inst4|COUNT[3]~19_combout\,
	clrn => \inst4|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|COUNT\(3));

-- Location: LCCOMB_X58_Y45_N2
\inst13|inst1[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[3]~15_combout\ = ((\inst13|inst1[3]~14_combout\ & ((\inst4|COUNT\(3)) # (!\inst4|IO_OUT~combout\)))) # (!\inst13|inst1[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[3]~14_combout\,
	datab => \inst13|inst1[0]~2_combout\,
	datac => \inst4|IO_OUT~combout\,
	datad => \inst4|COUNT\(3),
	combout => \inst13|inst1[3]~15_combout\);

-- Location: LCCOMB_X58_Y45_N10
\inst13|inst14|addr_in[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|addr_in[3]~feeder_combout\ = \inst13|inst1[3]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[3]~15_combout\,
	combout => \inst13|inst14|addr_in[3]~feeder_combout\);

-- Location: FF_X58_Y45_N11
\inst13|inst14|addr_in[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst12~clkctrl_outclk\,
	d => \inst13|inst14|addr_in[3]~feeder_combout\,
	ena => \inst13|inst14|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|addr_in\(3));

-- Location: LCCOMB_X60_Y42_N26
\inst13|inst14|tx_addr[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|tx_addr[3]~feeder_combout\ = \inst13|inst14|addr_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst14|addr_in\(3),
	combout => \inst13|inst14|tx_addr[3]~feeder_combout\);

-- Location: LCCOMB_X60_Y42_N30
\inst13|inst14|tx_addr[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|tx_addr[7]~1_combout\ = (\inst1|altpll_component|auto_generated|pll_lock_sync~q\ & (\inst1|altpll_component|auto_generated|wire_pll1_locked\ & (!\inst13|inst14|state.idle~q\ & \inst13|inst14|go~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|altpll_component|auto_generated|pll_lock_sync~q\,
	datab => \inst1|altpll_component|auto_generated|wire_pll1_locked\,
	datac => \inst13|inst14|state.idle~q\,
	datad => \inst13|inst14|go~q\,
	combout => \inst13|inst14|tx_addr[7]~1_combout\);

-- Location: FF_X60_Y42_N27
\inst13|inst14|tx_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|tx_addr[3]~feeder_combout\,
	ena => \inst13|inst14|tx_addr[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|tx_addr\(3));

-- Location: IOIBUF_X54_Y54_N22
\SW[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: FF_X58_Y46_N15
\inst7|B_DI[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SWITCH_EN~clkctrl_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|B_DI\(4));

-- Location: LCCOMB_X58_Y46_N14
\inst13|inst1[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[4]~16_combout\ = (\inst|IO_WRITE_int~q\ & (\inst|AC\(4) & ((\inst7|B_DI\(4)) # (!\inst3|SWITCH_EN~combout\)))) # (!\inst|IO_WRITE_int~q\ & (((\inst7|B_DI\(4)) # (!\inst3|SWITCH_EN~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IO_WRITE_int~q\,
	datab => \inst|AC\(4),
	datac => \inst7|B_DI\(4),
	datad => \inst3|SWITCH_EN~combout\,
	combout => \inst13|inst1[4]~16_combout\);

-- Location: LCCOMB_X64_Y43_N24
\inst13|inst|Decoder0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Decoder0~5_combout\ = (\inst13|inst|bit_cnt\(1) & (!\inst13|inst|bit_cnt\(2) & (\inst13|inst|bit_cnt\(0) & \inst13|inst|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|bit_cnt\(1),
	datab => \inst13|inst|bit_cnt\(2),
	datac => \inst13|inst|bit_cnt\(0),
	datad => \inst13|inst|Decoder0~0_combout\,
	combout => \inst13|inst|Decoder0~5_combout\);

-- Location: LCCOMB_X64_Y43_N4
\inst13|inst|data_rx[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|data_rx[4]~4_combout\ = (\inst13|inst|Decoder0~5_combout\ & (\GSENSOR_SDI~input_o\)) # (!\inst13|inst|Decoder0~5_combout\ & ((\inst13|inst|data_rx\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GSENSOR_SDI~input_o\,
	datac => \inst13|inst|data_rx\(4),
	datad => \inst13|inst|Decoder0~5_combout\,
	combout => \inst13|inst|data_rx[4]~4_combout\);

-- Location: FF_X64_Y43_N5
\inst13|inst|data_rx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|ALT_INV_data_clk~clkctrl_outclk\,
	d => \inst13|inst|data_rx[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_rx\(4));

-- Location: LCCOMB_X62_Y45_N8
\inst13|inst|data_rd[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|data_rd[4]~feeder_combout\ = \inst13|inst|data_rx\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst|data_rx\(4),
	combout => \inst13|inst|data_rd[4]~feeder_combout\);

-- Location: FF_X62_Y45_N9
\inst13|inst|data_rd[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	d => \inst13|inst|data_rd[4]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	ena => \inst13|inst|state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_rd\(4));

-- Location: LCCOMB_X61_Y45_N26
\inst13|inst14|data_out[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_out[4]~7_combout\ = (\inst13|inst14|state.Rx1~q\ & (\inst13|inst|data_rd\(4) & (!\inst13|inst|busy~q\ & \inst13|inst14|prev_busy~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|state.Rx1~q\,
	datab => \inst13|inst|data_rd\(4),
	datac => \inst13|inst|busy~q\,
	datad => \inst13|inst14|prev_busy~q\,
	combout => \inst13|inst14|data_out[4]~7_combout\);

-- Location: FF_X60_Y46_N3
\inst13|inst14|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	asdata => \inst13|inst14|data_out[4]~7_combout\,
	sload => VCC,
	ena => \inst13|inst14|data_out[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_out\(4));

-- Location: LCCOMB_X59_Y46_N10
\inst13|inst1[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[4]~17_combout\ = (\inst13|inst1[4]~16_combout\ & (!\inst13|inst4~combout\ & ((\inst13|inst14|data_out\(4)) # (!\inst13|inst7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7~combout\,
	datab => \inst13|inst1[4]~16_combout\,
	datac => \inst13|inst4~combout\,
	datad => \inst13|inst14|data_out\(4),
	combout => \inst13|inst1[4]~17_combout\);

-- Location: LCCOMB_X56_Y44_N6
\inst4|COUNT[4]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|COUNT[4]~21_combout\ = (\inst4|COUNT\(4) & (!\inst4|COUNT[3]~20\)) # (!\inst4|COUNT\(4) & ((\inst4|COUNT[3]~20\) # (GND)))
-- \inst4|COUNT[4]~22\ = CARRY((!\inst4|COUNT[3]~20\) # (!\inst4|COUNT\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|COUNT\(4),
	datad => VCC,
	cin => \inst4|COUNT[3]~20\,
	combout => \inst4|COUNT[4]~21_combout\,
	cout => \inst4|COUNT[4]~22\);

-- Location: FF_X56_Y44_N7
\inst4|COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_10Hz~clkctrl_outclk\,
	d => \inst4|COUNT[4]~21_combout\,
	clrn => \inst4|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|COUNT\(4));

-- Location: LCCOMB_X59_Y46_N16
\inst13|inst1[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[4]~18_combout\ = ((\inst13|inst1[4]~17_combout\ & ((\inst4|COUNT\(4)) # (!\inst4|IO_OUT~combout\)))) # (!\inst13|inst1[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|IO_OUT~combout\,
	datab => \inst13|inst1[4]~17_combout\,
	datac => \inst13|inst1[0]~2_combout\,
	datad => \inst4|COUNT\(4),
	combout => \inst13|inst1[4]~18_combout\);

-- Location: LCCOMB_X59_Y46_N26
\inst13|inst14|addr_in[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|addr_in[4]~feeder_combout\ = \inst13|inst1[4]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[4]~18_combout\,
	combout => \inst13|inst14|addr_in[4]~feeder_combout\);

-- Location: FF_X59_Y46_N27
\inst13|inst14|addr_in[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst12~clkctrl_outclk\,
	d => \inst13|inst14|addr_in[4]~feeder_combout\,
	ena => \inst13|inst14|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|addr_in\(4));

-- Location: LCCOMB_X60_Y42_N20
\inst13|inst14|tx_addr[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|tx_addr[4]~feeder_combout\ = \inst13|inst14|addr_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst14|addr_in\(4),
	combout => \inst13|inst14|tx_addr[4]~feeder_combout\);

-- Location: FF_X60_Y42_N21
\inst13|inst14|tx_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|tx_addr[4]~feeder_combout\,
	ena => \inst13|inst14|tx_addr[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|tx_addr\(4));

-- Location: LCCOMB_X62_Y42_N14
\inst13|inst|addr_rw[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|addr_rw[7]~2_combout\ = ((!\inst13|inst|state.mstr_ack~q\ & \inst13|inst|state.ready~q\)) # (!\inst13|inst14|comm_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|state.mstr_ack~q\,
	datab => \inst13|inst|state.ready~q\,
	datac => \inst13|inst14|comm_en~q\,
	combout => \inst13|inst|addr_rw[7]~2_combout\);

-- Location: LCCOMB_X63_Y42_N24
\inst13|inst|state~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|state~16_combout\ = (\inst13|inst|state.wr~q\ & (\inst13|inst|bit_cnt\(1) & (\inst13|inst|bit_cnt\(2) & \inst13|inst|bit_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|state.wr~q\,
	datab => \inst13|inst|bit_cnt\(1),
	datac => \inst13|inst|bit_cnt\(2),
	datad => \inst13|inst|bit_cnt\(0),
	combout => \inst13|inst|state~16_combout\);

-- Location: FF_X63_Y42_N25
\inst13|inst|state.slv_ack2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	d => \inst13|inst|state~16_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|state.slv_ack2~q\);

-- Location: LCCOMB_X64_Y42_N14
\inst13|inst|state~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|state~15_combout\ = (\inst13|inst|bit_cnt\(1) & (\inst13|inst|state.command~q\ & (\inst13|inst|bit_cnt\(2) & \inst13|inst|bit_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|bit_cnt\(1),
	datab => \inst13|inst|state.command~q\,
	datac => \inst13|inst|bit_cnt\(2),
	datad => \inst13|inst|bit_cnt\(0),
	combout => \inst13|inst|state~15_combout\);

-- Location: FF_X64_Y42_N15
\inst13|inst|state.slv_ack1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	d => \inst13|inst|state~15_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|state.slv_ack1~q\);

-- Location: LCCOMB_X64_Y42_N18
\inst13|inst|Selector29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector29~0_combout\ = (\inst13|inst|state.slv_ack2~q\ & ((\GSENSOR_SDI~input_o\) # ((\inst13|inst|ack_error~q\)))) # (!\inst13|inst|state.slv_ack2~q\ & (\inst13|inst|state.slv_ack1~q\ & ((\GSENSOR_SDI~input_o\) # 
-- (\inst13|inst|ack_error~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|state.slv_ack2~q\,
	datab => \GSENSOR_SDI~input_o\,
	datac => \inst13|inst|state.slv_ack1~q\,
	datad => \inst13|inst|ack_error~q\,
	combout => \inst13|inst|Selector29~0_combout\);

-- Location: LCCOMB_X64_Y42_N6
\inst13|inst|Selector29~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector29~1_combout\ = (\inst13|inst|Selector29~0_combout\) # ((\inst13|inst|ack_error~q\ & ((\inst13|inst|state.rd~q\) # (!\inst13|inst|state.start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|state.start~q\,
	datab => \inst13|inst|state.rd~q\,
	datac => \inst13|inst|ack_error~q\,
	datad => \inst13|inst|Selector29~0_combout\,
	combout => \inst13|inst|Selector29~1_combout\);

-- Location: FF_X64_Y42_N7
\inst13|inst|ack_error\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|ALT_INV_data_clk~clkctrl_outclk\,
	d => \inst13|inst|Selector29~1_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|ack_error~q\);

-- Location: LCCOMB_X61_Y42_N10
\inst13|inst|Selector25~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector25~6_combout\ = (\inst13|inst|state.slv_ack2~q\ & (\inst13|inst|process_1~4_combout\ & !\inst13|inst|ack_error~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|state.slv_ack2~q\,
	datab => \inst13|inst|process_1~4_combout\,
	datad => \inst13|inst|ack_error~q\,
	combout => \inst13|inst|Selector25~6_combout\);

-- Location: LCCOMB_X61_Y42_N6
\inst13|inst|addr_rw[7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|addr_rw[7]~3_combout\ = (\inst1|altpll_component|auto_generated|wire_pll1_locked\ & (\inst1|altpll_component|auto_generated|pll_lock_sync~q\ & ((\inst13|inst|Selector25~6_combout\) # (!\inst13|inst|addr_rw[7]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|addr_rw[7]~2_combout\,
	datab => \inst1|altpll_component|auto_generated|wire_pll1_locked\,
	datac => \inst1|altpll_component|auto_generated|pll_lock_sync~q\,
	datad => \inst13|inst|Selector25~6_combout\,
	combout => \inst13|inst|addr_rw[7]~3_combout\);

-- Location: FF_X61_Y42_N15
\inst13|inst|addr_rw[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	asdata => \inst13|inst14|tx_addr\(4),
	sload => VCC,
	ena => \inst13|inst|addr_rw[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|addr_rw\(4));

-- Location: FF_X61_Y42_N5
\inst13|inst|addr_rw[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	asdata => \inst13|inst14|tx_addr\(3),
	sload => VCC,
	ena => \inst13|inst|addr_rw[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|addr_rw\(3));

-- Location: LCCOMB_X61_Y42_N4
\inst13|inst|process_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|process_1~1_combout\ = (\inst13|inst14|tx_addr\(3) & (\inst13|inst|addr_rw\(3) & (\inst13|inst|addr_rw\(4) $ (!\inst13|inst14|tx_addr\(4))))) # (!\inst13|inst14|tx_addr\(3) & (!\inst13|inst|addr_rw\(3) & (\inst13|inst|addr_rw\(4) $ 
-- (!\inst13|inst14|tx_addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|tx_addr\(3),
	datab => \inst13|inst|addr_rw\(4),
	datac => \inst13|inst|addr_rw\(3),
	datad => \inst13|inst14|tx_addr\(4),
	combout => \inst13|inst|process_1~1_combout\);

-- Location: IOIBUF_X54_Y54_N15
\SW[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: FF_X58_Y46_N19
\inst7|B_DI[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SWITCH_EN~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|B_DI\(6));

-- Location: LCCOMB_X58_Y46_N18
\inst13|inst1[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[6]~22_combout\ = (\inst|IO_WRITE_int~q\ & (\inst|AC\(6) & ((\inst7|B_DI\(6)) # (!\inst3|SWITCH_EN~combout\)))) # (!\inst|IO_WRITE_int~q\ & (((\inst7|B_DI\(6))) # (!\inst3|SWITCH_EN~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IO_WRITE_int~q\,
	datab => \inst3|SWITCH_EN~combout\,
	datac => \inst7|B_DI\(6),
	datad => \inst|AC\(6),
	combout => \inst13|inst1[6]~22_combout\);

-- Location: LCCOMB_X64_Y43_N28
\inst13|inst|Decoder0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Decoder0~7_combout\ = (!\inst13|inst|bit_cnt\(1) & (!\inst13|inst|bit_cnt\(2) & (\inst13|inst|bit_cnt\(0) & \inst13|inst|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|bit_cnt\(1),
	datab => \inst13|inst|bit_cnt\(2),
	datac => \inst13|inst|bit_cnt\(0),
	datad => \inst13|inst|Decoder0~0_combout\,
	combout => \inst13|inst|Decoder0~7_combout\);

-- Location: LCCOMB_X64_Y43_N8
\inst13|inst|data_rx[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|data_rx[6]~6_combout\ = (\inst13|inst|Decoder0~7_combout\ & (\GSENSOR_SDI~input_o\)) # (!\inst13|inst|Decoder0~7_combout\ & ((\inst13|inst|data_rx\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GSENSOR_SDI~input_o\,
	datac => \inst13|inst|data_rx\(6),
	datad => \inst13|inst|Decoder0~7_combout\,
	combout => \inst13|inst|data_rx[6]~6_combout\);

-- Location: FF_X64_Y43_N9
\inst13|inst|data_rx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|ALT_INV_data_clk~clkctrl_outclk\,
	d => \inst13|inst|data_rx[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_rx\(6));

-- Location: LCCOMB_X62_Y45_N24
\inst13|inst|data_rd[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|data_rd[6]~feeder_combout\ = \inst13|inst|data_rx\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst|data_rx\(6),
	combout => \inst13|inst|data_rd[6]~feeder_combout\);

-- Location: FF_X62_Y45_N25
\inst13|inst|data_rd[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	d => \inst13|inst|data_rd[6]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	ena => \inst13|inst|state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_rd\(6));

-- Location: LCCOMB_X61_Y43_N10
\inst13|inst14|data_out[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_out[6]~9_combout\ = (\inst13|inst14|state.Rx1~q\ & (\inst13|inst14|prev_busy~q\ & (!\inst13|inst|busy~q\ & \inst13|inst|data_rd\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|state.Rx1~q\,
	datab => \inst13|inst14|prev_busy~q\,
	datac => \inst13|inst|busy~q\,
	datad => \inst13|inst|data_rd\(6),
	combout => \inst13|inst14|data_out[6]~9_combout\);

-- Location: FF_X60_Y46_N17
\inst13|inst14|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	asdata => \inst13|inst14|data_out[6]~9_combout\,
	sload => VCC,
	ena => \inst13|inst14|data_out[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_out\(6));

-- Location: LCCOMB_X59_Y46_N12
\inst13|inst1[6]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[6]~23_combout\ = (\inst13|inst1[6]~22_combout\ & (!\inst13|inst4~combout\ & ((\inst13|inst14|data_out\(6)) # (!\inst13|inst7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7~combout\,
	datab => \inst13|inst1[6]~22_combout\,
	datac => \inst13|inst4~combout\,
	datad => \inst13|inst14|data_out\(6),
	combout => \inst13|inst1[6]~23_combout\);

-- Location: LCCOMB_X56_Y44_N8
\inst4|COUNT[5]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|COUNT[5]~23_combout\ = (\inst4|COUNT\(5) & (\inst4|COUNT[4]~22\ $ (GND))) # (!\inst4|COUNT\(5) & (!\inst4|COUNT[4]~22\ & VCC))
-- \inst4|COUNT[5]~24\ = CARRY((\inst4|COUNT\(5) & !\inst4|COUNT[4]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|COUNT\(5),
	datad => VCC,
	cin => \inst4|COUNT[4]~22\,
	combout => \inst4|COUNT[5]~23_combout\,
	cout => \inst4|COUNT[5]~24\);

-- Location: FF_X56_Y44_N9
\inst4|COUNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_10Hz~clkctrl_outclk\,
	d => \inst4|COUNT[5]~23_combout\,
	clrn => \inst4|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|COUNT\(5));

-- Location: LCCOMB_X56_Y44_N10
\inst4|COUNT[6]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|COUNT[6]~25_combout\ = (\inst4|COUNT\(6) & (!\inst4|COUNT[5]~24\)) # (!\inst4|COUNT\(6) & ((\inst4|COUNT[5]~24\) # (GND)))
-- \inst4|COUNT[6]~26\ = CARRY((!\inst4|COUNT[5]~24\) # (!\inst4|COUNT\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|COUNT\(6),
	datad => VCC,
	cin => \inst4|COUNT[5]~24\,
	combout => \inst4|COUNT[6]~25_combout\,
	cout => \inst4|COUNT[6]~26\);

-- Location: FF_X56_Y44_N11
\inst4|COUNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_10Hz~clkctrl_outclk\,
	d => \inst4|COUNT[6]~25_combout\,
	clrn => \inst4|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|COUNT\(6));

-- Location: LCCOMB_X59_Y46_N18
\inst13|inst1[6]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[6]~24_combout\ = ((\inst13|inst1[6]~23_combout\ & ((\inst4|COUNT\(6)) # (!\inst4|IO_OUT~combout\)))) # (!\inst13|inst1[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|IO_OUT~combout\,
	datab => \inst13|inst1[6]~23_combout\,
	datac => \inst13|inst1[0]~2_combout\,
	datad => \inst4|COUNT\(6),
	combout => \inst13|inst1[6]~24_combout\);

-- Location: LCCOMB_X59_Y46_N0
\inst13|inst14|addr_in[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|addr_in[6]~feeder_combout\ = \inst13|inst1[6]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst1[6]~24_combout\,
	combout => \inst13|inst14|addr_in[6]~feeder_combout\);

-- Location: FF_X59_Y46_N1
\inst13|inst14|addr_in[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst12~clkctrl_outclk\,
	d => \inst13|inst14|addr_in[6]~feeder_combout\,
	ena => \inst13|inst14|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|addr_in\(6));

-- Location: LCCOMB_X60_Y42_N12
\inst13|inst14|tx_addr[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|tx_addr[6]~feeder_combout\ = \inst13|inst14|addr_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst14|addr_in\(6),
	combout => \inst13|inst14|tx_addr[6]~feeder_combout\);

-- Location: FF_X60_Y42_N13
\inst13|inst14|tx_addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|tx_addr[6]~feeder_combout\,
	ena => \inst13|inst14|tx_addr[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|tx_addr\(6));

-- Location: LCCOMB_X57_Y46_N18
\inst13|inst14|addr_in[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|addr_in[5]~feeder_combout\ = \inst13|inst1[5]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst1[5]~21_combout\,
	combout => \inst13|inst14|addr_in[5]~feeder_combout\);

-- Location: FF_X57_Y46_N19
\inst13|inst14|addr_in[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst12~clkctrl_outclk\,
	d => \inst13|inst14|addr_in[5]~feeder_combout\,
	ena => \inst13|inst14|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|addr_in\(5));

-- Location: LCCOMB_X60_Y42_N6
\inst13|inst14|tx_addr[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|tx_addr[5]~feeder_combout\ = \inst13|inst14|addr_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst14|addr_in\(5),
	combout => \inst13|inst14|tx_addr[5]~feeder_combout\);

-- Location: FF_X60_Y42_N7
\inst13|inst14|tx_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|tx_addr[5]~feeder_combout\,
	ena => \inst13|inst14|tx_addr[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|tx_addr\(5));

-- Location: FF_X61_Y42_N17
\inst13|inst|addr_rw[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	asdata => \inst13|inst14|tx_addr\(5),
	sload => VCC,
	ena => \inst13|inst|addr_rw[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|addr_rw\(5));

-- Location: FF_X62_Y42_N3
\inst13|inst|addr_rw[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	asdata => \inst13|inst14|tx_addr\(6),
	sload => VCC,
	ena => \inst13|inst|addr_rw[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|addr_rw\(6));

-- Location: LCCOMB_X61_Y42_N16
\inst13|inst|process_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|process_1~2_combout\ = (\inst13|inst14|tx_addr\(6) & (\inst13|inst|addr_rw\(6) & (\inst13|inst14|tx_addr\(5) $ (!\inst13|inst|addr_rw\(5))))) # (!\inst13|inst14|tx_addr\(6) & (!\inst13|inst|addr_rw\(6) & (\inst13|inst14|tx_addr\(5) $ 
-- (!\inst13|inst|addr_rw\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|tx_addr\(6),
	datab => \inst13|inst14|tx_addr\(5),
	datac => \inst13|inst|addr_rw\(5),
	datad => \inst13|inst|addr_rw\(6),
	combout => \inst13|inst|process_1~2_combout\);

-- Location: IOIBUF_X51_Y54_N22
\SW[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: FF_X59_Y44_N25
\inst7|B_DI[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SWITCH_EN~clkctrl_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|B_DI\(1));

-- Location: LCCOMB_X59_Y44_N24
\inst13|inst1[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[1]~7_combout\ = (\inst3|SWITCH_EN~combout\ & (\inst7|B_DI\(1) & ((\inst|AC\(1)) # (!\inst|IO_WRITE_int~q\)))) # (!\inst3|SWITCH_EN~combout\ & (((\inst|AC\(1))) # (!\inst|IO_WRITE_int~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|SWITCH_EN~combout\,
	datab => \inst|IO_WRITE_int~q\,
	datac => \inst7|B_DI\(1),
	datad => \inst|AC\(1),
	combout => \inst13|inst1[1]~7_combout\);

-- Location: LCCOMB_X61_Y43_N26
\inst13|inst14|data_out[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_out[1]~4_combout\ = (\inst13|inst|data_rd\(1) & (\inst13|inst14|prev_busy~q\ & (\inst13|inst14|state.Rx1~q\ & !\inst13|inst|busy~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|data_rd\(1),
	datab => \inst13|inst14|prev_busy~q\,
	datac => \inst13|inst14|state.Rx1~q\,
	datad => \inst13|inst|busy~q\,
	combout => \inst13|inst14|data_out[1]~4_combout\);

-- Location: FF_X61_Y43_N27
\inst13|inst14|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|data_out[1]~4_combout\,
	ena => \inst13|inst14|data_out[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_out\(1));

-- Location: LCCOMB_X58_Y44_N12
\inst13|inst1[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[1]~8_combout\ = (!\inst13|inst4~combout\ & (\inst13|inst1[1]~7_combout\ & ((\inst13|inst14|data_out\(1)) # (!\inst13|inst7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7~combout\,
	datab => \inst13|inst4~combout\,
	datac => \inst13|inst1[1]~7_combout\,
	datad => \inst13|inst14|data_out\(1),
	combout => \inst13|inst1[1]~8_combout\);

-- Location: LCCOMB_X58_Y44_N30
\inst13|inst1[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[1]~9_combout\ = ((\inst13|inst1[1]~8_combout\ & ((\inst4|COUNT\(1)) # (!\inst4|IO_OUT~combout\)))) # (!\inst13|inst1[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[1]~8_combout\,
	datab => \inst13|inst1[0]~2_combout\,
	datac => \inst4|IO_OUT~combout\,
	datad => \inst4|COUNT\(1),
	combout => \inst13|inst1[1]~9_combout\);

-- Location: LCCOMB_X59_Y42_N24
\inst13|inst14|addr_in[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|addr_in[1]~feeder_combout\ = \inst13|inst1[1]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst1[1]~9_combout\,
	combout => \inst13|inst14|addr_in[1]~feeder_combout\);

-- Location: FF_X59_Y42_N25
\inst13|inst14|addr_in[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst12~clkctrl_outclk\,
	d => \inst13|inst14|addr_in[1]~feeder_combout\,
	ena => \inst13|inst14|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|addr_in\(1));

-- Location: LCCOMB_X60_Y42_N18
\inst13|inst14|tx_addr[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|tx_addr[1]~feeder_combout\ = \inst13|inst14|addr_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst14|addr_in\(1),
	combout => \inst13|inst14|tx_addr[1]~feeder_combout\);

-- Location: FF_X60_Y42_N19
\inst13|inst14|tx_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|tx_addr[1]~feeder_combout\,
	ena => \inst13|inst14|tx_addr[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|tx_addr\(1));

-- Location: IOIBUF_X51_Y54_N1
\SW[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: FF_X57_Y45_N29
\inst7|B_DI[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SWITCH_EN~clkctrl_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|B_DI\(2));

-- Location: LCCOMB_X57_Y45_N28
\inst13|inst1[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[2]~10_combout\ = (\inst3|SWITCH_EN~combout\ & (\inst7|B_DI\(2) & ((\inst|AC\(2)) # (!\inst|IO_WRITE_int~q\)))) # (!\inst3|SWITCH_EN~combout\ & (((\inst|AC\(2))) # (!\inst|IO_WRITE_int~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|SWITCH_EN~combout\,
	datab => \inst|IO_WRITE_int~q\,
	datac => \inst7|B_DI\(2),
	datad => \inst|AC\(2),
	combout => \inst13|inst1[2]~10_combout\);

-- Location: LCCOMB_X64_Y43_N0
\inst13|inst|Decoder0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Decoder0~3_combout\ = (!\inst13|inst|bit_cnt\(1) & (\inst13|inst|bit_cnt\(2) & (\inst13|inst|bit_cnt\(0) & \inst13|inst|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|bit_cnt\(1),
	datab => \inst13|inst|bit_cnt\(2),
	datac => \inst13|inst|bit_cnt\(0),
	datad => \inst13|inst|Decoder0~0_combout\,
	combout => \inst13|inst|Decoder0~3_combout\);

-- Location: LCCOMB_X64_Y43_N16
\inst13|inst|data_rx[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|data_rx[2]~2_combout\ = (\inst13|inst|Decoder0~3_combout\ & (\GSENSOR_SDI~input_o\)) # (!\inst13|inst|Decoder0~3_combout\ & ((\inst13|inst|data_rx\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GSENSOR_SDI~input_o\,
	datac => \inst13|inst|data_rx\(2),
	datad => \inst13|inst|Decoder0~3_combout\,
	combout => \inst13|inst|data_rx[2]~2_combout\);

-- Location: FF_X64_Y43_N17
\inst13|inst|data_rx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|ALT_INV_data_clk~clkctrl_outclk\,
	d => \inst13|inst|data_rx[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_rx\(2));

-- Location: LCCOMB_X62_Y45_N16
\inst13|inst|data_rd[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|data_rd[2]~feeder_combout\ = \inst13|inst|data_rx\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst|data_rx\(2),
	combout => \inst13|inst|data_rd[2]~feeder_combout\);

-- Location: FF_X62_Y45_N17
\inst13|inst|data_rd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	d => \inst13|inst|data_rd[2]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	ena => \inst13|inst|state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_rd\(2));

-- Location: LCCOMB_X61_Y45_N22
\inst13|inst14|data_out[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_out[2]~5_combout\ = (\inst13|inst14|state.Rx1~q\ & (\inst13|inst|data_rd\(2) & (!\inst13|inst|busy~q\ & \inst13|inst14|prev_busy~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|state.Rx1~q\,
	datab => \inst13|inst|data_rd\(2),
	datac => \inst13|inst|busy~q\,
	datad => \inst13|inst14|prev_busy~q\,
	combout => \inst13|inst14|data_out[2]~5_combout\);

-- Location: FF_X61_Y45_N23
\inst13|inst14|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|data_out[2]~5_combout\,
	ena => \inst13|inst14|data_out[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_out\(2));

-- Location: LCCOMB_X58_Y45_N18
\inst13|inst1[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[2]~11_combout\ = (\inst13|inst1[2]~10_combout\ & (!\inst13|inst4~combout\ & ((\inst13|inst14|data_out\(2)) # (!\inst13|inst7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7~combout\,
	datab => \inst13|inst1[2]~10_combout\,
	datac => \inst13|inst4~combout\,
	datad => \inst13|inst14|data_out\(2),
	combout => \inst13|inst1[2]~11_combout\);

-- Location: LCCOMB_X58_Y45_N24
\inst13|inst1[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[2]~12_combout\ = ((\inst13|inst1[2]~11_combout\ & ((\inst4|COUNT\(2)) # (!\inst4|IO_OUT~combout\)))) # (!\inst13|inst1[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[2]~11_combout\,
	datab => \inst13|inst1[0]~2_combout\,
	datac => \inst4|IO_OUT~combout\,
	datad => \inst4|COUNT\(2),
	combout => \inst13|inst1[2]~12_combout\);

-- Location: LCCOMB_X58_Y45_N8
\inst13|inst14|addr_in[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|addr_in[2]~feeder_combout\ = \inst13|inst1[2]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst1[2]~12_combout\,
	combout => \inst13|inst14|addr_in[2]~feeder_combout\);

-- Location: FF_X58_Y45_N9
\inst13|inst14|addr_in[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst12~clkctrl_outclk\,
	d => \inst13|inst14|addr_in[2]~feeder_combout\,
	ena => \inst13|inst14|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|addr_in\(2));

-- Location: LCCOMB_X60_Y42_N28
\inst13|inst14|tx_addr[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|tx_addr[2]~feeder_combout\ = \inst13|inst14|addr_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst14|addr_in\(2),
	combout => \inst13|inst14|tx_addr[2]~feeder_combout\);

-- Location: FF_X60_Y42_N29
\inst13|inst14|tx_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|tx_addr[2]~feeder_combout\,
	ena => \inst13|inst14|tx_addr[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|tx_addr\(2));

-- Location: FF_X61_Y42_N9
\inst13|inst|addr_rw[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	asdata => \inst13|inst14|tx_addr\(1),
	sload => VCC,
	ena => \inst13|inst|addr_rw[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|addr_rw\(1));

-- Location: FF_X61_Y42_N11
\inst13|inst|addr_rw[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	asdata => \inst13|inst14|tx_addr\(2),
	sload => VCC,
	ena => \inst13|inst|addr_rw[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|addr_rw\(2));

-- Location: LCCOMB_X61_Y42_N8
\inst13|inst|process_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|process_1~0_combout\ = (\inst13|inst14|tx_addr\(1) & (\inst13|inst|addr_rw\(1) & (\inst13|inst14|tx_addr\(2) $ (!\inst13|inst|addr_rw\(2))))) # (!\inst13|inst14|tx_addr\(1) & (!\inst13|inst|addr_rw\(1) & (\inst13|inst14|tx_addr\(2) $ 
-- (!\inst13|inst|addr_rw\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|tx_addr\(1),
	datab => \inst13|inst14|tx_addr\(2),
	datac => \inst13|inst|addr_rw\(1),
	datad => \inst13|inst|addr_rw\(2),
	combout => \inst13|inst|process_1~0_combout\);

-- Location: IOIBUF_X58_Y54_N29
\SW[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: FF_X58_Y46_N29
\inst7|B_DI[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SWITCH_EN~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|B_DI\(7));

-- Location: LCCOMB_X58_Y46_N28
\inst13|inst1[7]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[7]~25_combout\ = (\inst|IO_WRITE_int~q\ & (\inst|AC\(7) & ((\inst7|B_DI\(7)) # (!\inst3|SWITCH_EN~combout\)))) # (!\inst|IO_WRITE_int~q\ & (((\inst7|B_DI\(7))) # (!\inst3|SWITCH_EN~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IO_WRITE_int~q\,
	datab => \inst3|SWITCH_EN~combout\,
	datac => \inst7|B_DI\(7),
	datad => \inst|AC\(7),
	combout => \inst13|inst1[7]~25_combout\);

-- Location: LCCOMB_X64_Y43_N10
\inst13|inst|Decoder0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Decoder0~8_combout\ = (!\inst13|inst|bit_cnt\(1) & (!\inst13|inst|bit_cnt\(2) & (!\inst13|inst|bit_cnt\(0) & \inst13|inst|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|bit_cnt\(1),
	datab => \inst13|inst|bit_cnt\(2),
	datac => \inst13|inst|bit_cnt\(0),
	datad => \inst13|inst|Decoder0~0_combout\,
	combout => \inst13|inst|Decoder0~8_combout\);

-- Location: LCCOMB_X64_Y43_N26
\inst13|inst|data_rx[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|data_rx[7]~7_combout\ = (\inst13|inst|Decoder0~8_combout\ & (\GSENSOR_SDI~input_o\)) # (!\inst13|inst|Decoder0~8_combout\ & ((\inst13|inst|data_rx\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GSENSOR_SDI~input_o\,
	datac => \inst13|inst|data_rx\(7),
	datad => \inst13|inst|Decoder0~8_combout\,
	combout => \inst13|inst|data_rx[7]~7_combout\);

-- Location: FF_X64_Y43_N27
\inst13|inst|data_rx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|ALT_INV_data_clk~clkctrl_outclk\,
	d => \inst13|inst|data_rx[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_rx\(7));

-- Location: LCCOMB_X62_Y45_N6
\inst13|inst|data_rd[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|data_rd[7]~feeder_combout\ = \inst13|inst|data_rx\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst|data_rx\(7),
	combout => \inst13|inst|data_rd[7]~feeder_combout\);

-- Location: FF_X62_Y45_N7
\inst13|inst|data_rd[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	d => \inst13|inst|data_rd[7]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	ena => \inst13|inst|state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_rd\(7));

-- Location: LCCOMB_X61_Y43_N24
\inst13|inst14|data_out[7]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_out[7]~10_combout\ = (\inst13|inst14|state.Rx1~q\ & (\inst13|inst14|prev_busy~q\ & (!\inst13|inst|busy~q\ & \inst13|inst|data_rd\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|state.Rx1~q\,
	datab => \inst13|inst14|prev_busy~q\,
	datac => \inst13|inst|busy~q\,
	datad => \inst13|inst|data_rd\(7),
	combout => \inst13|inst14|data_out[7]~10_combout\);

-- Location: FF_X61_Y43_N25
\inst13|inst14|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|data_out[7]~10_combout\,
	ena => \inst13|inst14|data_out[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_out\(7));

-- Location: LCCOMB_X58_Y46_N8
\inst13|inst1[7]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[7]~26_combout\ = (!\inst13|inst4~combout\ & (\inst13|inst1[7]~25_combout\ & ((\inst13|inst14|data_out\(7)) # (!\inst13|inst7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst4~combout\,
	datab => \inst13|inst1[7]~25_combout\,
	datac => \inst13|inst7~combout\,
	datad => \inst13|inst14|data_out\(7),
	combout => \inst13|inst1[7]~26_combout\);

-- Location: LCCOMB_X56_Y44_N12
\inst4|COUNT[7]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|COUNT[7]~27_combout\ = (\inst4|COUNT\(7) & (\inst4|COUNT[6]~26\ $ (GND))) # (!\inst4|COUNT\(7) & (!\inst4|COUNT[6]~26\ & VCC))
-- \inst4|COUNT[7]~28\ = CARRY((\inst4|COUNT\(7) & !\inst4|COUNT[6]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|COUNT\(7),
	datad => VCC,
	cin => \inst4|COUNT[6]~26\,
	combout => \inst4|COUNT[7]~27_combout\,
	cout => \inst4|COUNT[7]~28\);

-- Location: FF_X56_Y44_N13
\inst4|COUNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_10Hz~clkctrl_outclk\,
	d => \inst4|COUNT[7]~27_combout\,
	clrn => \inst4|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|COUNT\(7));

-- Location: LCCOMB_X58_Y46_N6
\inst13|inst1[7]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[7]~27_combout\ = ((\inst13|inst1[7]~26_combout\ & ((\inst4|COUNT\(7)) # (!\inst4|IO_OUT~combout\)))) # (!\inst13|inst1[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[7]~26_combout\,
	datab => \inst13|inst1[0]~2_combout\,
	datac => \inst4|IO_OUT~combout\,
	datad => \inst4|COUNT\(7),
	combout => \inst13|inst1[7]~27_combout\);

-- Location: LCCOMB_X59_Y42_N14
\inst13|inst14|addr_in[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|addr_in[7]~feeder_combout\ = \inst13|inst1[7]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst1[7]~27_combout\,
	combout => \inst13|inst14|addr_in[7]~feeder_combout\);

-- Location: FF_X59_Y42_N15
\inst13|inst14|addr_in[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst12~clkctrl_outclk\,
	d => \inst13|inst14|addr_in[7]~feeder_combout\,
	ena => \inst13|inst14|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|addr_in\(7));

-- Location: LCCOMB_X60_Y42_N0
\inst13|inst14|tx_addr[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|tx_addr[7]~feeder_combout\ = \inst13|inst14|addr_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst14|addr_in\(7),
	combout => \inst13|inst14|tx_addr[7]~feeder_combout\);

-- Location: FF_X60_Y42_N1
\inst13|inst14|tx_addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|tx_addr[7]~feeder_combout\,
	ena => \inst13|inst14|tx_addr[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|tx_addr\(7));

-- Location: FF_X61_Y42_N19
\inst13|inst|addr_rw[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	asdata => \inst13|inst14|tx_addr\(7),
	sload => VCC,
	ena => \inst13|inst|addr_rw[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|addr_rw\(7));

-- Location: LCCOMB_X61_Y42_N18
\inst13|inst|process_1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|process_1~3_combout\ = (\inst13|inst14|comm_en~q\ & (\inst13|inst14|tx_addr\(7) $ (!\inst13|inst|addr_rw\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|tx_addr\(7),
	datac => \inst13|inst|addr_rw\(7),
	datad => \inst13|inst14|comm_en~q\,
	combout => \inst13|inst|process_1~3_combout\);

-- Location: LCCOMB_X61_Y42_N20
\inst13|inst|process_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|process_1~4_combout\ = (\inst13|inst|process_1~1_combout\ & (\inst13|inst|process_1~2_combout\ & (\inst13|inst|process_1~0_combout\ & \inst13|inst|process_1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|process_1~1_combout\,
	datab => \inst13|inst|process_1~2_combout\,
	datac => \inst13|inst|process_1~0_combout\,
	datad => \inst13|inst|process_1~3_combout\,
	combout => \inst13|inst|process_1~4_combout\);

-- Location: LCCOMB_X64_Y42_N20
\inst13|inst|Selector23~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector23~1_combout\ = (\inst13|inst|state.slv_ack1~q\ & (\inst13|inst|addr_rw\(0) & !\inst13|inst|ack_error~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst|state.slv_ack1~q\,
	datac => \inst13|inst|addr_rw\(0),
	datad => \inst13|inst|ack_error~q\,
	combout => \inst13|inst|Selector23~1_combout\);

-- Location: LCCOMB_X64_Y42_N10
\inst13|inst|Selector23~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector23~2_combout\ = (\inst13|inst|Selector23~1_combout\) # ((\inst13|inst|state.rd~q\ & !\inst13|inst|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|state.rd~q\,
	datac => \inst13|inst|Equal1~0_combout\,
	datad => \inst13|inst|Selector23~1_combout\,
	combout => \inst13|inst|Selector23~2_combout\);

-- Location: LCCOMB_X64_Y42_N0
\inst13|inst|Selector23~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector23~3_combout\ = (\inst13|inst|Selector23~2_combout\) # ((\inst13|inst14|rnw~q\ & (\inst13|inst|state.mstr_ack~q\ & \inst13|inst|process_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|rnw~q\,
	datab => \inst13|inst|state.mstr_ack~q\,
	datac => \inst13|inst|process_1~4_combout\,
	datad => \inst13|inst|Selector23~2_combout\,
	combout => \inst13|inst|Selector23~3_combout\);

-- Location: FF_X62_Y43_N23
\inst13|inst|state.rd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	asdata => \inst13|inst|Selector23~3_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|state.rd~q\);

-- Location: LCCOMB_X63_Y42_N0
\inst13|inst|WideOr3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|WideOr3~0_combout\ = (!\inst13|inst|state.wr~q\ & (!\inst13|inst|state.start~q\ & !\inst13|inst|state.rd~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|state.wr~q\,
	datac => \inst13|inst|state.start~q\,
	datad => \inst13|inst|state.rd~q\,
	combout => \inst13|inst|WideOr3~0_combout\);

-- Location: LCCOMB_X62_Y42_N4
\inst13|inst|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector0~0_combout\ = (\inst13|inst|state.slv_ack1~q\) # ((\inst13|inst|state.command~q\) # ((!\inst13|inst14|comm_en~q\ & \inst13|inst|state.mstr_ack~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|state.slv_ack1~q\,
	datab => \inst13|inst|state.command~q\,
	datac => \inst13|inst14|comm_en~q\,
	datad => \inst13|inst|state.mstr_ack~q\,
	combout => \inst13|inst|Selector0~0_combout\);

-- Location: LCCOMB_X65_Y42_N22
\inst13|inst|Selector20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector20~0_combout\ = (\inst13|inst14|rnw~q\ & (((\inst13|inst|state.slv_ack2~q\ & !\inst13|inst|ack_error~q\)))) # (!\inst13|inst14|rnw~q\ & (\inst13|inst|state.mstr_ack~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|state.mstr_ack~q\,
	datab => \inst13|inst14|rnw~q\,
	datac => \inst13|inst|state.slv_ack2~q\,
	datad => \inst13|inst|ack_error~q\,
	combout => \inst13|inst|Selector20~0_combout\);

-- Location: LCCOMB_X65_Y42_N12
\inst13|inst|Selector20~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector20~1_combout\ = (\inst13|inst|process_1~4_combout\ & \inst13|inst|Selector20~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|process_1~4_combout\,
	datac => \inst13|inst|Selector20~0_combout\,
	combout => \inst13|inst|Selector20~1_combout\);

-- Location: FF_X65_Y42_N13
\inst13|inst|state.restart\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	d => \inst13|inst|Selector20~1_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|state.restart~q\);

-- Location: LCCOMB_X63_Y42_N18
\inst13|inst|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector0~1_combout\ = (!\inst13|inst|state.restart~q\ & (((!\inst13|inst|ack_error~q\ & \inst13|inst|process_1~4_combout\)) # (!\inst13|inst|state.slv_ack2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|ack_error~q\,
	datab => \inst13|inst|state.slv_ack2~q\,
	datac => \inst13|inst|state.restart~q\,
	datad => \inst13|inst|process_1~4_combout\,
	combout => \inst13|inst|Selector0~1_combout\);

-- Location: LCCOMB_X62_Y43_N12
\inst13|inst|Selector0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector0~2_combout\ = (\inst13|inst|busy~q\ & ((\inst13|inst|Selector0~0_combout\) # (!\inst13|inst|Selector0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst|Selector0~0_combout\,
	datac => \inst13|inst|busy~q\,
	datad => \inst13|inst|Selector0~1_combout\,
	combout => \inst13|inst|Selector0~2_combout\);

-- Location: LCCOMB_X62_Y43_N14
\inst13|inst|Selector0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector0~3_combout\ = ((\inst13|inst|Selector0~2_combout\) # ((!\inst13|inst|state.ready~q\ & \inst13|inst14|comm_en~q\))) # (!\inst13|inst|WideOr3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|WideOr3~0_combout\,
	datab => \inst13|inst|state.ready~q\,
	datac => \inst13|inst14|comm_en~q\,
	datad => \inst13|inst|Selector0~2_combout\,
	combout => \inst13|inst|Selector0~3_combout\);

-- Location: FF_X62_Y43_N15
\inst13|inst|busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	d => \inst13|inst|Selector0~3_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|busy~q\);

-- Location: FF_X62_Y43_N7
\inst13|inst14|prev_busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	asdata => \inst13|inst|busy~q\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|prev_busy~q\);

-- Location: LCCOMB_X63_Y43_N18
\inst13|inst14|state_machine~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|state_machine~0_combout\ = (\inst13|inst14|prev_busy~q\ & !\inst13|inst|busy~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst14|prev_busy~q\,
	datad => \inst13|inst|busy~q\,
	combout => \inst13|inst14|state_machine~0_combout\);

-- Location: LCCOMB_X61_Y44_N18
\inst|io_bus|dout[13]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|io_bus|dout[13]~1_combout\ = (\inst|AC\(13)) # (!\inst|IO_WRITE_int~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|AC\(13),
	datad => \inst|IO_WRITE_int~q\,
	combout => \inst|io_bus|dout[13]~1_combout\);

-- Location: LCCOMB_X59_Y44_N26
\inst13|inst1[10]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[10]~34_combout\ = (!\inst3|SWITCH_EN~combout\ & (((\inst|IO_WRITE_int~q\) # (!\inst3|SWITCH_EN~2_combout\)) # (!\inst3|I2C_RDY_EN~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|I2C_RDY_EN~0_combout\,
	datab => \inst3|SWITCH_EN~combout\,
	datac => \inst|IO_WRITE_int~q\,
	datad => \inst3|SWITCH_EN~2_combout\,
	combout => \inst13|inst1[10]~34_combout\);

-- Location: LCCOMB_X56_Y44_N14
\inst4|COUNT[8]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|COUNT[8]~29_combout\ = (\inst4|COUNT\(8) & (!\inst4|COUNT[7]~28\)) # (!\inst4|COUNT\(8) & ((\inst4|COUNT[7]~28\) # (GND)))
-- \inst4|COUNT[8]~30\ = CARRY((!\inst4|COUNT[7]~28\) # (!\inst4|COUNT\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|COUNT\(8),
	datad => VCC,
	cin => \inst4|COUNT[7]~28\,
	combout => \inst4|COUNT[8]~29_combout\,
	cout => \inst4|COUNT[8]~30\);

-- Location: FF_X56_Y44_N15
\inst4|COUNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_10Hz~clkctrl_outclk\,
	d => \inst4|COUNT[8]~29_combout\,
	clrn => \inst4|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|COUNT\(8));

-- Location: LCCOMB_X56_Y44_N16
\inst4|COUNT[9]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|COUNT[9]~31_combout\ = (\inst4|COUNT\(9) & (\inst4|COUNT[8]~30\ $ (GND))) # (!\inst4|COUNT\(9) & (!\inst4|COUNT[8]~30\ & VCC))
-- \inst4|COUNT[9]~32\ = CARRY((\inst4|COUNT\(9) & !\inst4|COUNT[8]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|COUNT\(9),
	datad => VCC,
	cin => \inst4|COUNT[8]~30\,
	combout => \inst4|COUNT[9]~31_combout\,
	cout => \inst4|COUNT[9]~32\);

-- Location: FF_X56_Y44_N17
\inst4|COUNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_10Hz~clkctrl_outclk\,
	d => \inst4|COUNT[9]~31_combout\,
	clrn => \inst4|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|COUNT\(9));

-- Location: LCCOMB_X56_Y44_N18
\inst4|COUNT[10]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|COUNT[10]~33_combout\ = (\inst4|COUNT\(10) & (!\inst4|COUNT[9]~32\)) # (!\inst4|COUNT\(10) & ((\inst4|COUNT[9]~32\) # (GND)))
-- \inst4|COUNT[10]~34\ = CARRY((!\inst4|COUNT[9]~32\) # (!\inst4|COUNT\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|COUNT\(10),
	datad => VCC,
	cin => \inst4|COUNT[9]~32\,
	combout => \inst4|COUNT[10]~33_combout\,
	cout => \inst4|COUNT[10]~34\);

-- Location: FF_X56_Y44_N19
\inst4|COUNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_10Hz~clkctrl_outclk\,
	d => \inst4|COUNT[10]~33_combout\,
	clrn => \inst4|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|COUNT\(10));

-- Location: LCCOMB_X56_Y44_N20
\inst4|COUNT[11]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|COUNT[11]~35_combout\ = (\inst4|COUNT\(11) & (\inst4|COUNT[10]~34\ $ (GND))) # (!\inst4|COUNT\(11) & (!\inst4|COUNT[10]~34\ & VCC))
-- \inst4|COUNT[11]~36\ = CARRY((\inst4|COUNT\(11) & !\inst4|COUNT[10]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|COUNT\(11),
	datad => VCC,
	cin => \inst4|COUNT[10]~34\,
	combout => \inst4|COUNT[11]~35_combout\,
	cout => \inst4|COUNT[11]~36\);

-- Location: FF_X56_Y44_N21
\inst4|COUNT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_10Hz~clkctrl_outclk\,
	d => \inst4|COUNT[11]~35_combout\,
	clrn => \inst4|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|COUNT\(11));

-- Location: LCCOMB_X56_Y44_N22
\inst4|COUNT[12]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|COUNT[12]~37_combout\ = (\inst4|COUNT\(12) & (!\inst4|COUNT[11]~36\)) # (!\inst4|COUNT\(12) & ((\inst4|COUNT[11]~36\) # (GND)))
-- \inst4|COUNT[12]~38\ = CARRY((!\inst4|COUNT[11]~36\) # (!\inst4|COUNT\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|COUNT\(12),
	datad => VCC,
	cin => \inst4|COUNT[11]~36\,
	combout => \inst4|COUNT[12]~37_combout\,
	cout => \inst4|COUNT[12]~38\);

-- Location: FF_X56_Y44_N23
\inst4|COUNT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_10Hz~clkctrl_outclk\,
	d => \inst4|COUNT[12]~37_combout\,
	clrn => \inst4|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|COUNT\(12));

-- Location: LCCOMB_X56_Y44_N24
\inst4|COUNT[13]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|COUNT[13]~39_combout\ = (\inst4|COUNT\(13) & (\inst4|COUNT[12]~38\ $ (GND))) # (!\inst4|COUNT\(13) & (!\inst4|COUNT[12]~38\ & VCC))
-- \inst4|COUNT[13]~40\ = CARRY((\inst4|COUNT\(13) & !\inst4|COUNT[12]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|COUNT\(13),
	datad => VCC,
	cin => \inst4|COUNT[12]~38\,
	combout => \inst4|COUNT[13]~39_combout\,
	cout => \inst4|COUNT[13]~40\);

-- Location: FF_X56_Y44_N25
\inst4|COUNT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_10Hz~clkctrl_outclk\,
	d => \inst4|COUNT[13]~39_combout\,
	clrn => \inst4|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|COUNT\(13));

-- Location: LCCOMB_X62_Y45_N30
\inst13|inst14|data_out[12]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_out[12]~16_combout\ = (!\inst13|inst|busy~q\ & (\inst13|inst14|prev_busy~q\ & (\inst13|inst14|state.Rx2~q\ & \inst13|inst|data_rd\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|busy~q\,
	datab => \inst13|inst14|prev_busy~q\,
	datac => \inst13|inst14|state.Rx2~q\,
	datad => \inst13|inst|data_rd\(4),
	combout => \inst13|inst14|data_out[12]~16_combout\);

-- Location: LCCOMB_X63_Y43_N12
\inst13|inst14|data_out[15]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_out[15]~12_combout\ = (\inst13|inst14|data_out[7]~0_combout\ & ((\inst13|inst14|tx_addr[7]~0_combout\) # ((\inst13|inst14|state.Rx2~q\ & \inst13|inst14|state_machine~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|state.Rx2~q\,
	datab => \inst13|inst14|data_out[7]~0_combout\,
	datac => \inst13|inst14|tx_addr[7]~0_combout\,
	datad => \inst13|inst14|state_machine~0_combout\,
	combout => \inst13|inst14|data_out[15]~12_combout\);

-- Location: FF_X62_Y45_N31
\inst13|inst14|data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|data_out[12]~16_combout\,
	ena => \inst13|inst14|data_out[15]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_out\(12));

-- Location: LCCOMB_X61_Y44_N0
\inst13|inst1[12]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[12]~39_combout\ = (\inst|IO_WRITE_int~q\ & (\inst|AC\(12) & ((\inst4|COUNT\(12)) # (!\inst4|IO_OUT~combout\)))) # (!\inst|IO_WRITE_int~q\ & (((\inst4|COUNT\(12)) # (!\inst4|IO_OUT~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IO_WRITE_int~q\,
	datab => \inst|AC\(12),
	datac => \inst4|IO_OUT~combout\,
	datad => \inst4|COUNT\(12),
	combout => \inst13|inst1[12]~39_combout\);

-- Location: LCCOMB_X62_Y44_N2
\inst13|inst1[12]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[12]~40_combout\ = (\inst13|inst1[12]~39_combout\ & (\inst13|inst1[10]~34_combout\ & ((\inst13|inst14|data_out\(12)) # (!\inst13|inst7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|data_out\(12),
	datab => \inst13|inst7~combout\,
	datac => \inst13|inst1[12]~39_combout\,
	datad => \inst13|inst1[10]~34_combout\,
	combout => \inst13|inst1[12]~40_combout\);

-- Location: FF_X62_Y44_N11
\inst13|inst14|cmd_in[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst12~clkctrl_outclk\,
	asdata => \inst13|inst1[12]~40_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|cmd_in\(4));

-- Location: LCCOMB_X62_Y43_N20
\inst13|inst14|Selector21~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Selector21~1_combout\ = (\inst13|inst14|go~q\ & (!\inst13|inst14|state.idle~q\ & (\inst13|inst14|cmd_in\(4) $ (!\inst13|inst14|cmd_in\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|go~q\,
	datab => \inst13|inst14|state.idle~q\,
	datac => \inst13|inst14|cmd_in\(4),
	datad => \inst13|inst14|cmd_in\(5),
	combout => \inst13|inst14|Selector21~1_combout\);

-- Location: LCCOMB_X62_Y43_N2
\inst13|inst14|Selector20~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Selector20~2_combout\ = (!\inst13|inst14|cmd_in\(0) & (\inst13|inst14|cmd_in\(1) & ((\inst13|inst14|Selector22~1_combout\) # (\inst13|inst14|Selector21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|cmd_in\(0),
	datab => \inst13|inst14|cmd_in\(1),
	datac => \inst13|inst14|Selector22~1_combout\,
	datad => \inst13|inst14|Selector21~1_combout\,
	combout => \inst13|inst14|Selector20~2_combout\);

-- Location: LCCOMB_X62_Y43_N18
\inst13|inst14|Selector20~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Selector20~3_combout\ = (\inst13|inst14|Selector20~2_combout\) # ((\inst13|inst14|state.Rx2~q\ & ((\inst13|inst|busy~q\) # (!\inst13|inst14|prev_busy~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|busy~q\,
	datab => \inst13|inst14|prev_busy~q\,
	datac => \inst13|inst14|state.Rx2~q\,
	datad => \inst13|inst14|Selector20~2_combout\,
	combout => \inst13|inst14|Selector20~3_combout\);

-- Location: FF_X62_Y43_N19
\inst13|inst14|state.Rx2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|Selector20~3_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|state.Rx2~q\);

-- Location: LCCOMB_X64_Y43_N2
\inst13|inst|Decoder0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Decoder0~6_combout\ = (\inst13|inst|bit_cnt\(1) & (!\inst13|inst|bit_cnt\(2) & (!\inst13|inst|bit_cnt\(0) & \inst13|inst|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|bit_cnt\(1),
	datab => \inst13|inst|bit_cnt\(2),
	datac => \inst13|inst|bit_cnt\(0),
	datad => \inst13|inst|Decoder0~0_combout\,
	combout => \inst13|inst|Decoder0~6_combout\);

-- Location: LCCOMB_X64_Y43_N30
\inst13|inst|data_rx[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|data_rx[5]~5_combout\ = (\inst13|inst|Decoder0~6_combout\ & (\GSENSOR_SDI~input_o\)) # (!\inst13|inst|Decoder0~6_combout\ & ((\inst13|inst|data_rx\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GSENSOR_SDI~input_o\,
	datac => \inst13|inst|data_rx\(5),
	datad => \inst13|inst|Decoder0~6_combout\,
	combout => \inst13|inst|data_rx[5]~5_combout\);

-- Location: FF_X64_Y43_N31
\inst13|inst|data_rx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|ALT_INV_data_clk~clkctrl_outclk\,
	d => \inst13|inst|data_rx[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_rx\(5));

-- Location: LCCOMB_X62_Y45_N18
\inst13|inst|data_rd[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|data_rd[5]~feeder_combout\ = \inst13|inst|data_rx\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst|data_rx\(5),
	combout => \inst13|inst|data_rd[5]~feeder_combout\);

-- Location: FF_X62_Y45_N19
\inst13|inst|data_rd[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	d => \inst13|inst|data_rd[5]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	ena => \inst13|inst|state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_rd\(5));

-- Location: LCCOMB_X62_Y45_N12
\inst13|inst14|data_out[13]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_out[13]~17_combout\ = (!\inst13|inst|busy~q\ & (\inst13|inst14|state.Rx2~q\ & (\inst13|inst|data_rd\(5) & \inst13|inst14|prev_busy~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|busy~q\,
	datab => \inst13|inst14|state.Rx2~q\,
	datac => \inst13|inst|data_rd\(5),
	datad => \inst13|inst14|prev_busy~q\,
	combout => \inst13|inst14|data_out[13]~17_combout\);

-- Location: FF_X62_Y45_N13
\inst13|inst14|data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|data_out[13]~17_combout\,
	ena => \inst13|inst14|data_out[15]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_out\(13));

-- Location: LCCOMB_X61_Y44_N6
\inst13|inst1[13]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[13]~41_combout\ = (\inst13|inst7~combout\ & (\inst13|inst14|data_out\(13) & ((\inst4|COUNT\(13)) # (!\inst4|IO_OUT~combout\)))) # (!\inst13|inst7~combout\ & (((\inst4|COUNT\(13))) # (!\inst4|IO_OUT~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7~combout\,
	datab => \inst4|IO_OUT~combout\,
	datac => \inst4|COUNT\(13),
	datad => \inst13|inst14|data_out\(13),
	combout => \inst13|inst1[13]~41_combout\);

-- Location: LCCOMB_X61_Y44_N20
\inst13|inst1[13]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[13]~42_combout\ = ((\inst|io_bus|dout[13]~1_combout\ & (\inst13|inst1[10]~34_combout\ & \inst13|inst1[13]~41_combout\))) # (!\inst13|inst1[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|io_bus|dout[13]~1_combout\,
	datab => \inst13|inst1[10]~34_combout\,
	datac => \inst13|inst1[13]~41_combout\,
	datad => \inst13|inst1[0]~2_combout\,
	combout => \inst13|inst1[13]~42_combout\);

-- Location: FF_X62_Y44_N9
\inst13|inst14|cmd_in[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst12~clkctrl_outclk\,
	asdata => \inst13|inst1[13]~42_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|cmd_in\(5));

-- Location: LCCOMB_X62_Y44_N22
\inst13|inst14|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Equal0~0_combout\ = (\inst13|inst14|cmd_in\(5) & !\inst13|inst14|cmd_in\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst14|cmd_in\(5),
	datad => \inst13|inst14|cmd_in\(4),
	combout => \inst13|inst14|Equal0~0_combout\);

-- Location: LCCOMB_X62_Y43_N24
\inst13|inst14|Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Selector17~0_combout\ = (\inst13|inst14|tx_addr[7]~0_combout\ & ((\inst13|inst14|Equal0~0_combout\) # ((!\inst13|inst14|state_machine~0_combout\ & \inst13|inst14|state.Tx2~q\)))) # (!\inst13|inst14|tx_addr[7]~0_combout\ & 
-- (!\inst13|inst14|state_machine~0_combout\ & (\inst13|inst14|state.Tx2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|tx_addr[7]~0_combout\,
	datab => \inst13|inst14|state_machine~0_combout\,
	datac => \inst13|inst14|state.Tx2~q\,
	datad => \inst13|inst14|Equal0~0_combout\,
	combout => \inst13|inst14|Selector17~0_combout\);

-- Location: FF_X62_Y43_N25
\inst13|inst14|state.Tx2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|Selector17~0_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|state.Tx2~q\);

-- Location: LCCOMB_X62_Y43_N16
\inst13|inst14|Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Selector18~0_combout\ = (\inst13|inst14|go~q\ & (!\inst13|inst14|state.idle~q\ & (\inst13|inst14|cmd_in\(4) & !\inst13|inst14|cmd_in\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|go~q\,
	datab => \inst13|inst14|state.idle~q\,
	datac => \inst13|inst14|cmd_in\(4),
	datad => \inst13|inst14|cmd_in\(5),
	combout => \inst13|inst14|Selector18~0_combout\);

-- Location: FF_X62_Y43_N17
\inst13|inst14|state.Tx1p\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|Selector18~0_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|state.Tx1p~q\);

-- Location: LCCOMB_X62_Y43_N26
\inst13|inst14|Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Selector19~0_combout\ = (\inst13|inst14|state.Tx1p~q\) # ((\inst13|inst14|state_machine~0_combout\ & (\inst13|inst14|state.Tx2~q\)) # (!\inst13|inst14|state_machine~0_combout\ & ((\inst13|inst14|state.Tx1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|state.Tx2~q\,
	datab => \inst13|inst14|state_machine~0_combout\,
	datac => \inst13|inst14|state.Tx1~q\,
	datad => \inst13|inst14|state.Tx1p~q\,
	combout => \inst13|inst14|Selector19~0_combout\);

-- Location: FF_X62_Y43_N27
\inst13|inst14|state.Tx1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|Selector19~0_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|state.Tx1~q\);

-- Location: LCCOMB_X61_Y43_N16
\inst13|inst14|Selector22~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Selector22~1_combout\ = (\inst13|inst14|state.Tx1~q\ & (!\inst13|inst|busy~q\ & \inst13|inst14|prev_busy~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst14|state.Tx1~q\,
	datac => \inst13|inst|busy~q\,
	datad => \inst13|inst14|prev_busy~q\,
	combout => \inst13|inst14|Selector22~1_combout\);

-- Location: LCCOMB_X63_Y43_N30
\inst13|inst14|data_out[3]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_out[3]~20_combout\ = (\inst13|inst14|state.Rx1~q\ & (\inst13|inst14|prev_busy~q\ & !\inst13|inst|busy~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|state.Rx1~q\,
	datac => \inst13|inst14|prev_busy~q\,
	datad => \inst13|inst|busy~q\,
	combout => \inst13|inst14|data_out[3]~20_combout\);

-- Location: LCCOMB_X62_Y44_N8
\inst13|inst14|state~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|state~18_combout\ = \inst13|inst14|cmd_in\(1) $ (\inst13|inst14|cmd_in\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|cmd_in\(1),
	datad => \inst13|inst14|cmd_in\(0),
	combout => \inst13|inst14|state~18_combout\);

-- Location: LCCOMB_X62_Y44_N24
\inst13|inst14|Selector21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Selector21~0_combout\ = \inst13|inst14|cmd_in\(5) $ (!\inst13|inst14|cmd_in\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst14|cmd_in\(5),
	datad => \inst13|inst14|cmd_in\(4),
	combout => \inst13|inst14|Selector21~0_combout\);

-- Location: LCCOMB_X62_Y44_N28
\inst13|inst14|Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Selector16~0_combout\ = (!\inst13|inst14|state.idle~q\ & (((\inst13|inst14|Selector21~0_combout\ & !\inst13|inst14|state~18_combout\)) # (!\inst13|inst14|go~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|Selector21~0_combout\,
	datab => \inst13|inst14|go~q\,
	datac => \inst13|inst14|state.idle~q\,
	datad => \inst13|inst14|state~18_combout\,
	combout => \inst13|inst14|Selector16~0_combout\);

-- Location: LCCOMB_X63_Y43_N24
\inst13|inst14|Selector16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Selector16~1_combout\ = (!\inst13|inst14|data_out[3]~20_combout\ & (!\inst13|inst14|Selector16~0_combout\ & ((\inst13|inst14|state~18_combout\) # (!\inst13|inst14|Selector22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|Selector22~1_combout\,
	datab => \inst13|inst14|data_out[3]~20_combout\,
	datac => \inst13|inst14|state~18_combout\,
	datad => \inst13|inst14|Selector16~0_combout\,
	combout => \inst13|inst14|Selector16~1_combout\);

-- Location: FF_X63_Y43_N25
\inst13|inst14|state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|Selector16~1_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|state.idle~q\);

-- Location: LCCOMB_X62_Y43_N8
\inst13|inst14|rnw~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|rnw~0_combout\ = (\inst13|inst|busy~q\ & (\inst13|inst14|state.Tx1~q\ & !\inst13|inst14|prev_busy~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst|busy~q\,
	datac => \inst13|inst14|state.Tx1~q\,
	datad => \inst13|inst14|prev_busy~q\,
	combout => \inst13|inst14|rnw~0_combout\);

-- Location: LCCOMB_X62_Y44_N18
\inst13|inst14|rnw~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|rnw~1_combout\ = (\inst13|inst14|go~q\ & ((\inst13|inst14|rnw~q\) # (\inst13|inst14|cmd_in\(1) $ (\inst13|inst14|cmd_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|go~q\,
	datab => \inst13|inst14|rnw~q\,
	datac => \inst13|inst14|cmd_in\(1),
	datad => \inst13|inst14|cmd_in\(0),
	combout => \inst13|inst14|rnw~1_combout\);

-- Location: LCCOMB_X62_Y44_N20
\inst13|inst14|rnw~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|rnw~2_combout\ = (\inst13|inst14|data_out[7]~0_combout\ & ((\inst13|inst14|state.idle~q\ & (\inst13|inst14|rnw~0_combout\)) # (!\inst13|inst14|state.idle~q\ & ((\inst13|inst14|rnw~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|state.idle~q\,
	datab => \inst13|inst14|data_out[7]~0_combout\,
	datac => \inst13|inst14|rnw~0_combout\,
	datad => \inst13|inst14|rnw~1_combout\,
	combout => \inst13|inst14|rnw~2_combout\);

-- Location: LCCOMB_X62_Y44_N14
\inst13|inst14|rnw~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|rnw~3_combout\ = (\inst13|inst14|rnw~2_combout\ & ((\inst13|inst14|state.idle~q\) # ((\inst13|inst14|Selector21~0_combout\)))) # (!\inst13|inst14|rnw~2_combout\ & (((\inst13|inst14|rnw~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|state.idle~q\,
	datab => \inst13|inst14|rnw~q\,
	datac => \inst13|inst14|Selector21~0_combout\,
	datad => \inst13|inst14|rnw~2_combout\,
	combout => \inst13|inst14|rnw~3_combout\);

-- Location: LCCOMB_X65_Y44_N4
\inst13|inst14|rnw~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|rnw~feeder_combout\ = \inst13|inst14|rnw~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst14|rnw~3_combout\,
	combout => \inst13|inst14|rnw~feeder_combout\);

-- Location: FF_X65_Y44_N5
\inst13|inst14|rnw\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|rnw~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|rnw~q\);

-- Location: FF_X61_Y42_N3
\inst13|inst|addr_rw[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	asdata => \inst13|inst14|rnw~q\,
	sload => VCC,
	ena => \inst13|inst|addr_rw[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|addr_rw\(0));

-- Location: LCCOMB_X64_Y42_N4
\inst13|inst|Selector22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector22~0_combout\ = (\inst13|inst|state.slv_ack2~q\ & (\inst13|inst|process_1~4_combout\ & !\inst13|inst14|rnw~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|state.slv_ack2~q\,
	datac => \inst13|inst|process_1~4_combout\,
	datad => \inst13|inst14|rnw~q\,
	combout => \inst13|inst|Selector22~0_combout\);

-- Location: LCCOMB_X64_Y42_N26
\inst13|inst|Selector22~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector22~1_combout\ = (!\inst13|inst|ack_error~q\ & ((\inst13|inst|Selector22~0_combout\) # ((!\inst13|inst|addr_rw\(0) & \inst13|inst|state.slv_ack1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|addr_rw\(0),
	datab => \inst13|inst|state.slv_ack1~q\,
	datac => \inst13|inst|Selector22~0_combout\,
	datad => \inst13|inst|ack_error~q\,
	combout => \inst13|inst|Selector22~1_combout\);

-- Location: LCCOMB_X64_Y42_N8
\inst13|inst|Selector22~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector22~2_combout\ = (\inst13|inst|Selector22~1_combout\) # ((!\inst13|inst|Equal1~0_combout\ & \inst13|inst|state.wr~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|Equal1~0_combout\,
	datac => \inst13|inst|state.wr~q\,
	datad => \inst13|inst|Selector22~1_combout\,
	combout => \inst13|inst|Selector22~2_combout\);

-- Location: FF_X64_Y42_N9
\inst13|inst|state.wr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	d => \inst13|inst|Selector22~2_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|state.wr~q\);

-- Location: LCCOMB_X63_Y42_N6
\inst13|inst|WideOr12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|WideOr12~0_combout\ = (\inst13|inst|state.command~q\) # ((\inst13|inst|state.wr~q\) # (\inst13|inst|state.rd~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst|state.command~q\,
	datac => \inst13|inst|state.wr~q\,
	datad => \inst13|inst|state.rd~q\,
	combout => \inst13|inst|WideOr12~0_combout\);

-- Location: FF_X62_Y42_N11
\inst13|inst|bit_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	d => \inst13|inst|bit_cnt[0]~0_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	ena => \inst13|inst|WideOr12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|bit_cnt\(0));

-- Location: LCCOMB_X61_Y42_N2
\inst13|inst|Selector27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector27~0_combout\ = \inst13|inst|bit_cnt\(0) $ (\inst13|inst|bit_cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst|bit_cnt\(0),
	datad => \inst13|inst|bit_cnt\(1),
	combout => \inst13|inst|Selector27~0_combout\);

-- Location: LCCOMB_X63_Y42_N14
\inst13|inst|bit_cnt[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|bit_cnt[1]~feeder_combout\ = \inst13|inst|Selector27~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst|Selector27~0_combout\,
	combout => \inst13|inst|bit_cnt[1]~feeder_combout\);

-- Location: FF_X63_Y42_N15
\inst13|inst|bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	d => \inst13|inst|bit_cnt[1]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	ena => \inst13|inst|WideOr12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|bit_cnt\(1));

-- Location: LCCOMB_X64_Y43_N18
\inst13|inst|Decoder0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Decoder0~2_combout\ = (\inst13|inst|bit_cnt\(1) & (\inst13|inst|bit_cnt\(2) & (!\inst13|inst|bit_cnt\(0) & \inst13|inst|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|bit_cnt\(1),
	datab => \inst13|inst|bit_cnt\(2),
	datac => \inst13|inst|bit_cnt\(0),
	datad => \inst13|inst|Decoder0~0_combout\,
	combout => \inst13|inst|Decoder0~2_combout\);

-- Location: LCCOMB_X64_Y43_N22
\inst13|inst|data_rx[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|data_rx[1]~1_combout\ = (\inst13|inst|Decoder0~2_combout\ & (\GSENSOR_SDI~input_o\)) # (!\inst13|inst|Decoder0~2_combout\ & ((\inst13|inst|data_rx\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GSENSOR_SDI~input_o\,
	datac => \inst13|inst|data_rx\(1),
	datad => \inst13|inst|Decoder0~2_combout\,
	combout => \inst13|inst|data_rx[1]~1_combout\);

-- Location: FF_X64_Y43_N23
\inst13|inst|data_rx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|ALT_INV_data_clk~clkctrl_outclk\,
	d => \inst13|inst|data_rx[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_rx\(1));

-- Location: LCCOMB_X62_Y45_N22
\inst13|inst|data_rd[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|data_rd[1]~feeder_combout\ = \inst13|inst|data_rx\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst|data_rx\(1),
	combout => \inst13|inst|data_rd[1]~feeder_combout\);

-- Location: FF_X62_Y45_N23
\inst13|inst|data_rd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	d => \inst13|inst|data_rd[1]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	ena => \inst13|inst|state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_rd\(1));

-- Location: LCCOMB_X61_Y44_N14
\inst13|inst14|data_out[9]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_out[9]~13_combout\ = (\inst13|inst|data_rd\(1) & (!\inst13|inst|busy~q\ & (\inst13|inst14|prev_busy~q\ & \inst13|inst14|state.Rx2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|data_rd\(1),
	datab => \inst13|inst|busy~q\,
	datac => \inst13|inst14|prev_busy~q\,
	datad => \inst13|inst14|state.Rx2~q\,
	combout => \inst13|inst14|data_out[9]~13_combout\);

-- Location: FF_X61_Y44_N15
\inst13|inst14|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|data_out[9]~13_combout\,
	ena => \inst13|inst14|data_out[15]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_out\(9));

-- Location: LCCOMB_X62_Y44_N16
\inst13|inst1[9]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[9]~32_combout\ = (\inst13|inst1[9]~31_combout\ & (!\inst13|inst4~combout\ & ((\inst13|inst14|data_out\(9)) # (!\inst13|inst7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[9]~31_combout\,
	datab => \inst13|inst4~combout\,
	datac => \inst13|inst7~combout\,
	datad => \inst13|inst14|data_out\(9),
	combout => \inst13|inst1[9]~32_combout\);

-- Location: LCCOMB_X62_Y44_N6
\inst13|inst1[9]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[9]~33_combout\ = ((\inst13|inst1[9]~32_combout\ & ((\inst4|COUNT\(9)) # (!\inst4|IO_OUT~combout\)))) # (!\inst13|inst1[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[0]~2_combout\,
	datab => \inst13|inst1[9]~32_combout\,
	datac => \inst4|IO_OUT~combout\,
	datad => \inst4|COUNT\(9),
	combout => \inst13|inst1[9]~33_combout\);

-- Location: FF_X62_Y44_N23
\inst13|inst14|cmd_in[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst12~clkctrl_outclk\,
	asdata => \inst13|inst1[9]~33_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|cmd_in\(1));

-- Location: LCCOMB_X62_Y43_N30
\inst13|inst14|Selector21~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Selector21~2_combout\ = (!\inst13|inst14|cmd_in\(1) & (\inst13|inst14|cmd_in\(0) & \inst13|inst14|Selector21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst14|cmd_in\(1),
	datac => \inst13|inst14|cmd_in\(0),
	datad => \inst13|inst14|Selector21~1_combout\,
	combout => \inst13|inst14|Selector21~2_combout\);

-- Location: FF_X62_Y43_N31
\inst13|inst14|state.Rx1p\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|Selector21~2_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|state.Rx1p~q\);

-- Location: LCCOMB_X62_Y43_N28
\inst13|inst14|Selector22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Selector22~0_combout\ = (\inst13|inst14|state.Rx1p~q\) # ((\inst13|inst14|state_machine~0_combout\ & (\inst13|inst14|state.Rx2~q\)) # (!\inst13|inst14|state_machine~0_combout\ & ((\inst13|inst14|state.Rx1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|state.Rx2~q\,
	datab => \inst13|inst14|state.Rx1~q\,
	datac => \inst13|inst14|state.Rx1p~q\,
	datad => \inst13|inst14|state_machine~0_combout\,
	combout => \inst13|inst14|Selector22~0_combout\);

-- Location: LCCOMB_X61_Y43_N30
\inst13|inst14|Selector22~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Selector22~2_combout\ = (\inst13|inst14|Selector22~0_combout\) # ((!\inst13|inst14|cmd_in\(1) & (\inst13|inst14|Selector22~1_combout\ & \inst13|inst14|cmd_in\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|cmd_in\(1),
	datab => \inst13|inst14|Selector22~1_combout\,
	datac => \inst13|inst14|cmd_in\(0),
	datad => \inst13|inst14|Selector22~0_combout\,
	combout => \inst13|inst14|Selector22~2_combout\);

-- Location: FF_X61_Y43_N31
\inst13|inst14|state.Rx1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|Selector22~2_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|state.Rx1~q\);

-- Location: LCCOMB_X61_Y43_N8
\inst13|inst14|data_out[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_out[5]~8_combout\ = (\inst13|inst14|state.Rx1~q\ & (!\inst13|inst|busy~q\ & (\inst13|inst|data_rd\(5) & \inst13|inst14|prev_busy~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|state.Rx1~q\,
	datab => \inst13|inst|busy~q\,
	datac => \inst13|inst|data_rd\(5),
	datad => \inst13|inst14|prev_busy~q\,
	combout => \inst13|inst14|data_out[5]~8_combout\);

-- Location: FF_X60_Y47_N25
\inst13|inst14|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	asdata => \inst13|inst14|data_out[5]~8_combout\,
	sload => VCC,
	ena => \inst13|inst14|data_out[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_out\(5));

-- Location: LCCOMB_X57_Y46_N22
\inst13|inst1[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[5]~20_combout\ = (!\inst13|inst4~combout\ & (\inst13|inst1[5]~19_combout\ & ((\inst13|inst14|data_out\(5)) # (!\inst13|inst7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7~combout\,
	datab => \inst13|inst4~combout\,
	datac => \inst13|inst1[5]~19_combout\,
	datad => \inst13|inst14|data_out\(5),
	combout => \inst13|inst1[5]~20_combout\);

-- Location: LCCOMB_X57_Y46_N20
\inst13|inst1[5]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[5]~21_combout\ = ((\inst13|inst1[5]~20_combout\ & ((\inst4|COUNT\(5)) # (!\inst4|IO_OUT~combout\)))) # (!\inst13|inst1[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[5]~20_combout\,
	datab => \inst13|inst1[0]~2_combout\,
	datac => \inst4|COUNT\(5),
	datad => \inst4|IO_OUT~combout\,
	combout => \inst13|inst1[5]~21_combout\);

-- Location: LCCOMB_X57_Y46_N4
\inst|Selector22~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector22~6_combout\ = (\inst|Selector22~7_combout\) # ((\inst|Selector22~4_combout\) # ((\inst|state.ex_in2~q\ & \inst13|inst1[5]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_in2~q\,
	datab => \inst|Selector22~7_combout\,
	datac => \inst|Selector22~4_combout\,
	datad => \inst13|inst1[5]~21_combout\,
	combout => \inst|Selector22~6_combout\);

-- Location: FF_X57_Y46_N5
\inst|AC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector22~6_combout\,
	ena => \inst13|inst14|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|AC\(5));

-- Location: LCCOMB_X58_Y46_N20
\inst|shifter|auto_generated|sbit_w[22]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[22]~14_combout\ = (\inst|IR\(0) & ((\inst|IR\(4) & (\inst|AC\(7))) # (!\inst|IR\(4) & ((\inst|AC\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(0),
	datab => \inst|AC\(7),
	datac => \inst|IR\(4),
	datad => \inst|AC\(5),
	combout => \inst|shifter|auto_generated|sbit_w[22]~14_combout\);

-- Location: LCCOMB_X58_Y46_N16
\inst|shifter|auto_generated|sbit_w[22]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[22]~15_combout\ = (\inst|shifter|auto_generated|sbit_w[22]~14_combout\) # ((!\inst|IR\(0) & \inst|AC\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(0),
	datab => \inst|shifter|auto_generated|sbit_w[22]~14_combout\,
	datad => \inst|AC\(6),
	combout => \inst|shifter|auto_generated|sbit_w[22]~15_combout\);

-- Location: LCCOMB_X60_Y47_N26
\inst|shifter|auto_generated|sbit_w[38]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[38]~56_combout\ = (\inst3|I2C_RDY_EN~1_combout\ & ((\inst|shifter|auto_generated|sbit_w[24]~31_combout\) # ((\inst|shifter|auto_generated|sbit_w[20]~18_combout\ & \inst3|TIMER_EN~0_combout\)))) # 
-- (!\inst3|I2C_RDY_EN~1_combout\ & (\inst|shifter|auto_generated|sbit_w[20]~18_combout\ & (\inst3|TIMER_EN~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|I2C_RDY_EN~1_combout\,
	datab => \inst|shifter|auto_generated|sbit_w[20]~18_combout\,
	datac => \inst3|TIMER_EN~0_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[24]~31_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[38]~56_combout\);

-- Location: LCCOMB_X60_Y47_N0
\inst|shifter|auto_generated|sbit_w[38]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[38]~57_combout\ = (\inst|shifter|auto_generated|sbit_w[38]~56_combout\) # ((\inst|shifter|auto_generated|sbit_w[22]~15_combout\ & !\inst|IR\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[22]~15_combout\,
	datac => \inst|shifter|auto_generated|sbit_w[38]~56_combout\,
	datad => \inst|IR\(1),
	combout => \inst|shifter|auto_generated|sbit_w[38]~57_combout\);

-- Location: LCCOMB_X55_Y44_N30
\inst|shifter|auto_generated|sbit_w[54]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[54]~84_combout\ = (\inst|shifter|auto_generated|sbit_w[54]~83_combout\) # ((!\inst|IR\(2) & \inst|shifter|auto_generated|sbit_w[38]~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[54]~83_combout\,
	datab => \inst|IR\(2),
	datad => \inst|shifter|auto_generated|sbit_w[38]~57_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[54]~84_combout\);

-- Location: LCCOMB_X56_Y43_N10
\inst|Selector21~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector21~7_combout\ = (\inst|Selector21~5_combout\) # ((!\inst|IR\(3) & (\inst|state.ex_shift~q\ & \inst|shifter|auto_generated|sbit_w[54]~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(3),
	datab => \inst|Selector21~5_combout\,
	datac => \inst|state.ex_shift~q\,
	datad => \inst|shifter|auto_generated|sbit_w[54]~84_combout\,
	combout => \inst|Selector21~7_combout\);

-- Location: LCCOMB_X56_Y46_N30
\inst|Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~36_combout\ = (\inst|Add1~34_combout\ & ((\inst|Add1~35_combout\ & (\inst|Add1~32\ & VCC)) # (!\inst|Add1~35_combout\ & (!\inst|Add1~32\)))) # (!\inst|Add1~34_combout\ & ((\inst|Add1~35_combout\ & (!\inst|Add1~32\)) # (!\inst|Add1~35_combout\ & 
-- ((\inst|Add1~32\) # (GND)))))
-- \inst|Add1~37\ = CARRY((\inst|Add1~34_combout\ & (!\inst|Add1~35_combout\ & !\inst|Add1~32\)) # (!\inst|Add1~34_combout\ & ((!\inst|Add1~32\) # (!\inst|Add1~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~34_combout\,
	datab => \inst|Add1~35_combout\,
	datad => VCC,
	cin => \inst|Add1~32\,
	combout => \inst|Add1~36_combout\,
	cout => \inst|Add1~37\);

-- Location: LCCOMB_X60_Y46_N10
\inst|shifter|auto_generated|sbit_w[30]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[30]~22_combout\ = (\inst|IR\(0) & ((\inst|IR\(4) & (\inst|AC\(15))) # (!\inst|IR\(4) & ((\inst|AC\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(15),
	datab => \inst|IR\(4),
	datac => \inst|AC\(13),
	datad => \inst|IR\(0),
	combout => \inst|shifter|auto_generated|sbit_w[30]~22_combout\);

-- Location: LCCOMB_X57_Y43_N6
\inst|Selector13~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector13~3_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(14) & ((\inst|AC\(14) & (\inst|state.ex_and~q\)) # (!\inst|AC\(14) & ((\inst|state.ex_xor~q\))))) # (!\inst|altsyncram_component|auto_generated|q_a\(14) & 
-- (((\inst|state.ex_xor~q\ & \inst|AC\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(14),
	datab => \inst|state.ex_and~q\,
	datac => \inst|state.ex_xor~q\,
	datad => \inst|AC\(14),
	combout => \inst|Selector13~3_combout\);

-- Location: LCCOMB_X55_Y44_N26
\inst|Selector13~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector13~7_combout\ = (\inst|state.ex_shift~q\ & (!\inst|IR\(3) & \inst|shifter|auto_generated|sbit_w[62]~82_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.ex_shift~q\,
	datac => \inst|IR\(3),
	datad => \inst|shifter|auto_generated|sbit_w[62]~82_combout\,
	combout => \inst|Selector13~7_combout\);

-- Location: LCCOMB_X57_Y43_N4
\inst|Selector13~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector13~4_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(14) & ((\inst|Selector27~3_combout\) # ((!\inst|Selector27~0_combout\ & \inst|AC\(14))))) # (!\inst|altsyncram_component|auto_generated|q_a\(14) & (!\inst|Selector27~0_combout\ 
-- & ((\inst|AC\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(14),
	datab => \inst|Selector27~0_combout\,
	datac => \inst|Selector27~3_combout\,
	datad => \inst|AC\(14),
	combout => \inst|Selector13~4_combout\);

-- Location: LCCOMB_X55_Y45_N16
\inst|Add1~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~73_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(14) & (!\inst|state.ex_sub~q\ & \inst|state.ex_add~q\)) # (!\inst|altsyncram_component|auto_generated|q_a\(14) & (\inst|state.ex_sub~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(14),
	datac => \inst|state.ex_sub~q\,
	datad => \inst|state.ex_add~q\,
	combout => \inst|Add1~73_combout\);

-- Location: LCCOMB_X55_Y45_N26
\inst|Add1~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~74_combout\ = (\inst|IR\(10) & ((\inst|Add1~1_combout\) # ((\inst|Add1~73_combout\ & \inst|WideOr3~2_combout\)))) # (!\inst|IR\(10) & (\inst|Add1~73_combout\ & (\inst|WideOr3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(10),
	datab => \inst|Add1~73_combout\,
	datac => \inst|WideOr3~2_combout\,
	datad => \inst|Add1~1_combout\,
	combout => \inst|Add1~74_combout\);

-- Location: LCCOMB_X56_Y45_N28
\inst|Add1~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~75_combout\ = (\inst|AC\(14) & ((\inst|state.ex_add~q\) # ((\inst|state.ex_sub~q\) # (\inst|state.ex_addi~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_add~q\,
	datab => \inst|state.ex_sub~q\,
	datac => \inst|state.ex_addi~q\,
	datad => \inst|AC\(14),
	combout => \inst|Add1~75_combout\);

-- Location: LCCOMB_X56_Y45_N12
\inst|Add1~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~71_combout\ = ((\inst|Add1~70_combout\ $ (\inst|Add1~69_combout\ $ (!\inst|Add1~67\)))) # (GND)
-- \inst|Add1~72\ = CARRY((\inst|Add1~70_combout\ & ((\inst|Add1~69_combout\) # (!\inst|Add1~67\))) # (!\inst|Add1~70_combout\ & (\inst|Add1~69_combout\ & !\inst|Add1~67\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~70_combout\,
	datab => \inst|Add1~69_combout\,
	datad => VCC,
	cin => \inst|Add1~67\,
	combout => \inst|Add1~71_combout\,
	cout => \inst|Add1~72\);

-- Location: LCCOMB_X56_Y45_N14
\inst|Add1~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~76_combout\ = (\inst|Add1~74_combout\ & ((\inst|Add1~75_combout\ & (\inst|Add1~72\ & VCC)) # (!\inst|Add1~75_combout\ & (!\inst|Add1~72\)))) # (!\inst|Add1~74_combout\ & ((\inst|Add1~75_combout\ & (!\inst|Add1~72\)) # (!\inst|Add1~75_combout\ & 
-- ((\inst|Add1~72\) # (GND)))))
-- \inst|Add1~77\ = CARRY((\inst|Add1~74_combout\ & (!\inst|Add1~75_combout\ & !\inst|Add1~72\)) # (!\inst|Add1~74_combout\ & ((!\inst|Add1~72\) # (!\inst|Add1~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~74_combout\,
	datab => \inst|Add1~75_combout\,
	datad => VCC,
	cin => \inst|Add1~72\,
	combout => \inst|Add1~76_combout\,
	cout => \inst|Add1~77\);

-- Location: LCCOMB_X57_Y43_N28
\inst|Selector13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector13~2_combout\ = (\inst|shifter|auto_generated|sbit_w[54]~84_combout\ & ((\inst|Selector19~1_combout\) # ((\inst|Add1~76_combout\ & \inst|AC[8]~0_combout\)))) # (!\inst|shifter|auto_generated|sbit_w[54]~84_combout\ & (\inst|Add1~76_combout\ & 
-- (\inst|AC[8]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[54]~84_combout\,
	datab => \inst|Add1~76_combout\,
	datac => \inst|AC[8]~0_combout\,
	datad => \inst|Selector19~1_combout\,
	combout => \inst|Selector13~2_combout\);

-- Location: LCCOMB_X57_Y43_N26
\inst|Selector13~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector13~5_combout\ = (\inst|Selector13~3_combout\) # ((\inst|Selector13~7_combout\) # ((\inst|Selector13~4_combout\) # (\inst|Selector13~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector13~3_combout\,
	datab => \inst|Selector13~7_combout\,
	datac => \inst|Selector13~4_combout\,
	datad => \inst|Selector13~2_combout\,
	combout => \inst|Selector13~5_combout\);

-- Location: LCCOMB_X62_Y45_N2
\inst13|inst14|data_out[14]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_out[14]~18_combout\ = (!\inst13|inst|busy~q\ & (\inst13|inst14|prev_busy~q\ & (\inst13|inst14|state.Rx2~q\ & \inst13|inst|data_rd\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|busy~q\,
	datab => \inst13|inst14|prev_busy~q\,
	datac => \inst13|inst14|state.Rx2~q\,
	datad => \inst13|inst|data_rd\(6),
	combout => \inst13|inst14|data_out[14]~18_combout\);

-- Location: FF_X62_Y45_N3
\inst13|inst14|data_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|data_out[14]~18_combout\,
	ena => \inst13|inst14|data_out[15]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_out\(14));

-- Location: LCCOMB_X56_Y44_N26
\inst4|COUNT[14]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|COUNT[14]~41_combout\ = (\inst4|COUNT\(14) & (!\inst4|COUNT[13]~40\)) # (!\inst4|COUNT\(14) & ((\inst4|COUNT[13]~40\) # (GND)))
-- \inst4|COUNT[14]~42\ = CARRY((!\inst4|COUNT[13]~40\) # (!\inst4|COUNT\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|COUNT\(14),
	datad => VCC,
	cin => \inst4|COUNT[13]~40\,
	combout => \inst4|COUNT[14]~41_combout\,
	cout => \inst4|COUNT[14]~42\);

-- Location: FF_X56_Y44_N27
\inst4|COUNT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_10Hz~clkctrl_outclk\,
	d => \inst4|COUNT[14]~41_combout\,
	clrn => \inst4|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|COUNT\(14));

-- Location: LCCOMB_X61_Y44_N22
\inst13|inst1[14]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[14]~43_combout\ = (\inst13|inst7~combout\ & (\inst13|inst14|data_out\(14) & ((\inst4|COUNT\(14)) # (!\inst4|IO_OUT~combout\)))) # (!\inst13|inst7~combout\ & (((\inst4|COUNT\(14))) # (!\inst4|IO_OUT~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7~combout\,
	datab => \inst4|IO_OUT~combout\,
	datac => \inst13|inst14|data_out\(14),
	datad => \inst4|COUNT\(14),
	combout => \inst13|inst1[14]~43_combout\);

-- Location: LCCOMB_X61_Y44_N30
\inst|io_bus|dout[14]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|io_bus|dout[14]~2_combout\ = (\inst|AC\(14)) # (!\inst|IO_WRITE_int~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|AC\(14),
	datad => \inst|IO_WRITE_int~q\,
	combout => \inst|io_bus|dout[14]~2_combout\);

-- Location: LCCOMB_X61_Y44_N16
\inst13|inst1[14]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[14]~44_combout\ = ((\inst13|inst1[10]~34_combout\ & (\inst13|inst1[14]~43_combout\ & \inst|io_bus|dout[14]~2_combout\))) # (!\inst13|inst1[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[10]~34_combout\,
	datab => \inst13|inst1[14]~43_combout\,
	datac => \inst13|inst1[0]~2_combout\,
	datad => \inst|io_bus|dout[14]~2_combout\,
	combout => \inst13|inst1[14]~44_combout\);

-- Location: LCCOMB_X61_Y44_N4
\inst|Selector13~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector13~6_combout\ = ((\inst|Selector13~5_combout\) # ((\inst|state.ex_in2~q\ & \inst13|inst1[14]~44_combout\))) # (!\inst|Selector16~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector16~1_combout\,
	datab => \inst|state.ex_in2~q\,
	datac => \inst|Selector13~5_combout\,
	datad => \inst13|inst1[14]~44_combout\,
	combout => \inst|Selector13~6_combout\);

-- Location: FF_X61_Y44_N5
\inst|AC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector13~6_combout\,
	ena => \inst13|inst14|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|AC\(14));

-- Location: LCCOMB_X60_Y46_N24
\inst|shifter|auto_generated|sbit_w[30]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[30]~23_combout\ = (\inst|shifter|auto_generated|sbit_w[30]~22_combout\) # ((\inst|AC\(14) & !\inst|IR\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[30]~22_combout\,
	datab => \inst|AC\(14),
	datad => \inst|IR\(0),
	combout => \inst|shifter|auto_generated|sbit_w[30]~23_combout\);

-- Location: LCCOMB_X55_Y44_N22
\inst|shifter|auto_generated|sbit_w[46]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[46]~55_combout\ = (\inst|IR\(1) & (\inst|AC\(15) & (\inst|IR\(4)))) # (!\inst|IR\(1) & (((\inst|shifter|auto_generated|sbit_w[30]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(15),
	datab => \inst|IR\(4),
	datac => \inst|IR\(1),
	datad => \inst|shifter|auto_generated|sbit_w[30]~23_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[46]~55_combout\);

-- Location: LCCOMB_X55_Y44_N6
\inst|shifter|auto_generated|sbit_w[46]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[46]~89_combout\ = (\inst|shifter|auto_generated|sbit_w[46]~55_combout\) # ((\inst|IR\(1) & (!\inst|IR\(4) & \inst|shifter|auto_generated|sbit_w[28]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(1),
	datab => \inst|IR\(4),
	datac => \inst|shifter|auto_generated|sbit_w[46]~55_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[28]~26_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[46]~89_combout\);

-- Location: LCCOMB_X55_Y44_N8
\inst|shifter|auto_generated|sbit_w[62]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[62]~81_combout\ = (\inst|IR\(2) & (\inst|AC\(15) & (\inst|IR\(4)))) # (!\inst|IR\(2) & (((\inst|shifter|auto_generated|sbit_w[46]~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(15),
	datab => \inst|IR\(4),
	datac => \inst|IR\(2),
	datad => \inst|shifter|auto_generated|sbit_w[46]~89_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[62]~81_combout\);

-- Location: LCCOMB_X55_Y44_N18
\inst|shifter|auto_generated|sbit_w[62]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[62]~82_combout\ = (\inst|shifter|auto_generated|sbit_w[62]~81_combout\) # ((\inst|shifter|auto_generated|sbit_w[42]~60_combout\ & (\inst|IR\(2) & !\inst|IR\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[62]~81_combout\,
	datab => \inst|shifter|auto_generated|sbit_w[42]~60_combout\,
	datac => \inst|IR\(2),
	datad => \inst|IR\(4),
	combout => \inst|shifter|auto_generated|sbit_w[62]~82_combout\);

-- Location: LCCOMB_X59_Y46_N14
\inst|Selector21~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector21~3_combout\ = (\inst|Selector27~0_combout\ & (\inst|Selector27~7_combout\ & (\inst|shifter|auto_generated|sbit_w[62]~82_combout\))) # (!\inst|Selector27~0_combout\ & ((\inst|AC\(6)) # ((\inst|Selector27~7_combout\ & 
-- \inst|shifter|auto_generated|sbit_w[62]~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector27~0_combout\,
	datab => \inst|Selector27~7_combout\,
	datac => \inst|shifter|auto_generated|sbit_w[62]~82_combout\,
	datad => \inst|AC\(6),
	combout => \inst|Selector21~3_combout\);

-- Location: LCCOMB_X59_Y46_N24
\inst|Selector21~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector21~2_combout\ = (\inst|AC\(6) & ((\inst|altsyncram_component|auto_generated|q_a\(6) & (\inst|state.ex_and~q\)) # (!\inst|altsyncram_component|auto_generated|q_a\(6) & ((\inst|state.ex_xor~q\))))) # (!\inst|AC\(6) & 
-- (((\inst|altsyncram_component|auto_generated|q_a\(6) & \inst|state.ex_xor~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(6),
	datab => \inst|state.ex_and~q\,
	datac => \inst|altsyncram_component|auto_generated|q_a\(6),
	datad => \inst|state.ex_xor~q\,
	combout => \inst|Selector21~2_combout\);

-- Location: LCCOMB_X59_Y46_N8
\inst|Selector21~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector21~4_combout\ = (\inst|Selector21~3_combout\) # ((\inst|Selector21~2_combout\) # ((\inst|Add1~36_combout\ & \inst|AC[8]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~36_combout\,
	datab => \inst|AC[8]~0_combout\,
	datac => \inst|Selector21~3_combout\,
	datad => \inst|Selector21~2_combout\,
	combout => \inst|Selector21~4_combout\);

-- Location: LCCOMB_X59_Y46_N6
\inst|Selector21~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector21~6_combout\ = (\inst|Selector21~7_combout\) # ((\inst|Selector21~4_combout\) # ((\inst|state.ex_in2~q\ & \inst13|inst1[6]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector21~7_combout\,
	datab => \inst|Selector21~4_combout\,
	datac => \inst|state.ex_in2~q\,
	datad => \inst13|inst1[6]~24_combout\,
	combout => \inst|Selector21~6_combout\);

-- Location: FF_X59_Y46_N7
\inst|AC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector21~6_combout\,
	ena => \inst13|inst14|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|AC\(6));

-- Location: LCCOMB_X56_Y46_N14
\inst|Add1~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~35_combout\ = (\inst|AC\(6) & ((\inst|state.ex_addi~q\) # ((\inst|state.ex_sub~q\) # (\inst|state.ex_add~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_addi~q\,
	datab => \inst|state.ex_sub~q\,
	datac => \inst|state.ex_add~q\,
	datad => \inst|AC\(6),
	combout => \inst|Add1~35_combout\);

-- Location: LCCOMB_X56_Y45_N0
\inst|Add1~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~41_combout\ = ((\inst|Add1~39_combout\ $ (\inst|Add1~40_combout\ $ (!\inst|Add1~37\)))) # (GND)
-- \inst|Add1~42\ = CARRY((\inst|Add1~39_combout\ & ((\inst|Add1~40_combout\) # (!\inst|Add1~37\))) # (!\inst|Add1~39_combout\ & (\inst|Add1~40_combout\ & !\inst|Add1~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~39_combout\,
	datab => \inst|Add1~40_combout\,
	datad => VCC,
	cin => \inst|Add1~37\,
	combout => \inst|Add1~41_combout\,
	cout => \inst|Add1~42\);

-- Location: LCCOMB_X56_Y45_N2
\inst|Add1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~46_combout\ = (\inst|Add1~44_combout\ & ((\inst|Add1~45_combout\ & (\inst|Add1~42\ & VCC)) # (!\inst|Add1~45_combout\ & (!\inst|Add1~42\)))) # (!\inst|Add1~44_combout\ & ((\inst|Add1~45_combout\ & (!\inst|Add1~42\)) # (!\inst|Add1~45_combout\ & 
-- ((\inst|Add1~42\) # (GND)))))
-- \inst|Add1~47\ = CARRY((\inst|Add1~44_combout\ & (!\inst|Add1~45_combout\ & !\inst|Add1~42\)) # (!\inst|Add1~44_combout\ & ((!\inst|Add1~42\) # (!\inst|Add1~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~44_combout\,
	datab => \inst|Add1~45_combout\,
	datad => VCC,
	cin => \inst|Add1~42\,
	combout => \inst|Add1~46_combout\,
	cout => \inst|Add1~47\);

-- Location: LCCOMB_X56_Y45_N4
\inst|Add1~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~51_combout\ = ((\inst|Add1~50_combout\ $ (\inst|Add1~49_combout\ $ (!\inst|Add1~47\)))) # (GND)
-- \inst|Add1~52\ = CARRY((\inst|Add1~50_combout\ & ((\inst|Add1~49_combout\) # (!\inst|Add1~47\))) # (!\inst|Add1~50_combout\ & (\inst|Add1~49_combout\ & !\inst|Add1~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~50_combout\,
	datab => \inst|Add1~49_combout\,
	datad => VCC,
	cin => \inst|Add1~47\,
	combout => \inst|Add1~51_combout\,
	cout => \inst|Add1~52\);

-- Location: LCCOMB_X56_Y45_N6
\inst|Add1~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~56_combout\ = (\inst|Add1~55_combout\ & ((\inst|Add1~54_combout\ & (\inst|Add1~52\ & VCC)) # (!\inst|Add1~54_combout\ & (!\inst|Add1~52\)))) # (!\inst|Add1~55_combout\ & ((\inst|Add1~54_combout\ & (!\inst|Add1~52\)) # (!\inst|Add1~54_combout\ & 
-- ((\inst|Add1~52\) # (GND)))))
-- \inst|Add1~57\ = CARRY((\inst|Add1~55_combout\ & (!\inst|Add1~54_combout\ & !\inst|Add1~52\)) # (!\inst|Add1~55_combout\ & ((!\inst|Add1~52\) # (!\inst|Add1~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~55_combout\,
	datab => \inst|Add1~54_combout\,
	datad => VCC,
	cin => \inst|Add1~52\,
	combout => \inst|Add1~56_combout\,
	cout => \inst|Add1~57\);

-- Location: LCCOMB_X55_Y44_N28
\inst|shifter|auto_generated|sbit_w[58]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[58]~58_combout\ = (\inst|IR\(2) & ((\inst|IR\(4) & ((\inst|shifter|auto_generated|sbit_w[46]~89_combout\))) # (!\inst|IR\(4) & (\inst|shifter|auto_generated|sbit_w[38]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[38]~57_combout\,
	datab => \inst|IR\(4),
	datac => \inst|IR\(2),
	datad => \inst|shifter|auto_generated|sbit_w[46]~89_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[58]~58_combout\);

-- Location: LCCOMB_X55_Y44_N10
\inst|shifter|auto_generated|sbit_w[58]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[58]~61_combout\ = (\inst|shifter|auto_generated|sbit_w[58]~58_combout\) # ((!\inst|IR\(2) & \inst|shifter|auto_generated|sbit_w[42]~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|IR\(2),
	datac => \inst|shifter|auto_generated|sbit_w[42]~60_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[58]~58_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[58]~61_combout\);

-- Location: LCCOMB_X55_Y44_N2
\inst|Selector17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector17~1_combout\ = (\inst|Selector20~2_combout\ & ((\inst|shifter|auto_generated|sbit_w[58]~61_combout\) # ((\inst|AC[8]~0_combout\ & \inst|Add1~56_combout\)))) # (!\inst|Selector20~2_combout\ & (\inst|AC[8]~0_combout\ & 
-- (\inst|Add1~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector20~2_combout\,
	datab => \inst|AC[8]~0_combout\,
	datac => \inst|Add1~56_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[58]~61_combout\,
	combout => \inst|Selector17~1_combout\);

-- Location: LCCOMB_X55_Y44_N20
\inst|Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector17~0_combout\ = (\inst|shifter|auto_generated|sbit_w[34]~64_combout\ & !\inst|IR\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|shifter|auto_generated|sbit_w[34]~64_combout\,
	datad => \inst|IR\(2),
	combout => \inst|Selector17~0_combout\);

-- Location: LCCOMB_X59_Y45_N4
\inst|Selector17~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector17~5_combout\ = (\inst|Selector17~4_combout\) # ((\inst|Selector17~1_combout\) # ((\inst|Selector19~1_combout\ & \inst|Selector17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector19~1_combout\,
	datab => \inst|Selector17~4_combout\,
	datac => \inst|Selector17~1_combout\,
	datad => \inst|Selector17~0_combout\,
	combout => \inst|Selector17~5_combout\);

-- Location: LCCOMB_X59_Y45_N26
\inst|io_bus|dout[10]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|io_bus|dout[10]~0_combout\ = (\inst|AC\(10)) # (!\inst|IO_WRITE_int~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IO_WRITE_int~q\,
	datad => \inst|AC\(10),
	combout => \inst|io_bus|dout[10]~0_combout\);

-- Location: LCCOMB_X61_Y45_N20
\inst13|inst14|data_out[10]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_out[10]~14_combout\ = (\inst13|inst|data_rd\(2) & (\inst13|inst14|state.Rx2~q\ & (!\inst13|inst|busy~q\ & \inst13|inst14|prev_busy~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|data_rd\(2),
	datab => \inst13|inst14|state.Rx2~q\,
	datac => \inst13|inst|busy~q\,
	datad => \inst13|inst14|prev_busy~q\,
	combout => \inst13|inst14|data_out[10]~14_combout\);

-- Location: FF_X60_Y45_N17
\inst13|inst14|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	asdata => \inst13|inst14|data_out[10]~14_combout\,
	sload => VCC,
	ena => \inst13|inst14|data_out[15]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_out\(10));

-- Location: LCCOMB_X59_Y45_N10
\inst13|inst1[10]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[10]~35_combout\ = (\inst13|inst7~combout\ & (\inst13|inst14|data_out\(10) & ((\inst4|COUNT\(10)) # (!\inst4|IO_OUT~combout\)))) # (!\inst13|inst7~combout\ & (((\inst4|COUNT\(10))) # (!\inst4|IO_OUT~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7~combout\,
	datab => \inst4|IO_OUT~combout\,
	datac => \inst4|COUNT\(10),
	datad => \inst13|inst14|data_out\(10),
	combout => \inst13|inst1[10]~35_combout\);

-- Location: LCCOMB_X59_Y45_N20
\inst13|inst1[10]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[10]~36_combout\ = ((\inst|io_bus|dout[10]~0_combout\ & (\inst13|inst1[10]~35_combout\ & \inst13|inst1[10]~34_combout\))) # (!\inst13|inst1[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|io_bus|dout[10]~0_combout\,
	datab => \inst13|inst1[0]~2_combout\,
	datac => \inst13|inst1[10]~35_combout\,
	datad => \inst13|inst1[10]~34_combout\,
	combout => \inst13|inst1[10]~36_combout\);

-- Location: LCCOMB_X59_Y45_N16
\inst|Selector17~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector17~6_combout\ = ((\inst|Selector17~5_combout\) # ((\inst|state.ex_in2~q\ & \inst13|inst1[10]~36_combout\))) # (!\inst|Selector16~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector16~1_combout\,
	datab => \inst|Selector17~5_combout\,
	datac => \inst|state.ex_in2~q\,
	datad => \inst13|inst1[10]~36_combout\,
	combout => \inst|Selector17~6_combout\);

-- Location: FF_X59_Y45_N17
\inst|AC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector17~6_combout\,
	ena => \inst13|inst14|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|AC\(10));

-- Location: LCCOMB_X59_Y47_N14
\inst|shifter|auto_generated|sbit_w[27]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[27]~36_combout\ = (\inst|IR\(0) & ((\inst|IR\(4) & (\inst|AC\(12))) # (!\inst|IR\(4) & ((\inst|AC\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(0),
	datab => \inst|IR\(4),
	datac => \inst|AC\(12),
	datad => \inst|AC\(10),
	combout => \inst|shifter|auto_generated|sbit_w[27]~36_combout\);

-- Location: LCCOMB_X59_Y47_N8
\inst|shifter|auto_generated|sbit_w[27]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[27]~37_combout\ = (\inst|shifter|auto_generated|sbit_w[27]~36_combout\) # ((\inst|AC\(11) & !\inst|IR\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|shifter|auto_generated|sbit_w[27]~36_combout\,
	datac => \inst|AC\(11),
	datad => \inst|IR\(0),
	combout => \inst|shifter|auto_generated|sbit_w[27]~37_combout\);

-- Location: LCCOMB_X60_Y46_N0
\inst|shifter|auto_generated|sbit_w[43]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[43]~68_combout\ = (\inst3|I2C_RDY_EN~1_combout\ & ((\inst|shifter|auto_generated|sbit_w[29]~34_combout\) # ((\inst|shifter|auto_generated|sbit_w[25]~49_combout\ & \inst3|TIMER_EN~0_combout\)))) # 
-- (!\inst3|I2C_RDY_EN~1_combout\ & (\inst|shifter|auto_generated|sbit_w[25]~49_combout\ & ((\inst3|TIMER_EN~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|I2C_RDY_EN~1_combout\,
	datab => \inst|shifter|auto_generated|sbit_w[25]~49_combout\,
	datac => \inst|shifter|auto_generated|sbit_w[29]~34_combout\,
	datad => \inst3|TIMER_EN~0_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[43]~68_combout\);

-- Location: LCCOMB_X60_Y46_N30
\inst|shifter|auto_generated|sbit_w[43]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[43]~69_combout\ = (\inst|shifter|auto_generated|sbit_w[43]~68_combout\) # ((\inst|shifter|auto_generated|sbit_w[27]~37_combout\ & !\inst|IR\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[27]~37_combout\,
	datab => \inst|shifter|auto_generated|sbit_w[43]~68_combout\,
	datad => \inst|IR\(1),
	combout => \inst|shifter|auto_generated|sbit_w[43]~69_combout\);

-- Location: LCCOMB_X57_Y47_N12
\inst|shifter|auto_generated|sbit_w[59]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[59]~67_combout\ = (\inst|IR\(2) & ((\inst|IR\(4) & (\inst|AC\(15))) # (!\inst|IR\(4) & ((\inst|shifter|auto_generated|sbit_w[39]~66_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(15),
	datab => \inst|IR\(2),
	datac => \inst|shifter|auto_generated|sbit_w[39]~66_combout\,
	datad => \inst|IR\(4),
	combout => \inst|shifter|auto_generated|sbit_w[59]~67_combout\);

-- Location: LCCOMB_X57_Y47_N2
\inst|shifter|auto_generated|sbit_w[59]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[59]~70_combout\ = (\inst|shifter|auto_generated|sbit_w[59]~67_combout\) # ((\inst|shifter|auto_generated|sbit_w[43]~69_combout\ & !\inst|IR\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[43]~69_combout\,
	datac => \inst|IR\(2),
	datad => \inst|shifter|auto_generated|sbit_w[59]~67_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[59]~70_combout\);

-- Location: LCCOMB_X55_Y45_N22
\inst|Add1~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~58_combout\ = (\inst|state.ex_sub~q\ & (!\inst|altsyncram_component|auto_generated|q_a\(11))) # (!\inst|state.ex_sub~q\ & (\inst|altsyncram_component|auto_generated|q_a\(11) & \inst|state.ex_add~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.ex_sub~q\,
	datac => \inst|altsyncram_component|auto_generated|q_a\(11),
	datad => \inst|state.ex_add~q\,
	combout => \inst|Add1~58_combout\);

-- Location: LCCOMB_X55_Y45_N28
\inst|Add1~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~59_combout\ = (\inst|Add1~58_combout\ & ((\inst|WideOr3~2_combout\) # ((\inst|IR\(10) & \inst|Add1~1_combout\)))) # (!\inst|Add1~58_combout\ & (((\inst|IR\(10) & \inst|Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~58_combout\,
	datab => \inst|WideOr3~2_combout\,
	datac => \inst|IR\(10),
	datad => \inst|Add1~1_combout\,
	combout => \inst|Add1~59_combout\);

-- Location: LCCOMB_X56_Y45_N8
\inst|Add1~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~61_combout\ = ((\inst|Add1~60_combout\ $ (\inst|Add1~59_combout\ $ (!\inst|Add1~57\)))) # (GND)
-- \inst|Add1~62\ = CARRY((\inst|Add1~60_combout\ & ((\inst|Add1~59_combout\) # (!\inst|Add1~57\))) # (!\inst|Add1~60_combout\ & (\inst|Add1~59_combout\ & !\inst|Add1~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~60_combout\,
	datab => \inst|Add1~59_combout\,
	datad => VCC,
	cin => \inst|Add1~57\,
	combout => \inst|Add1~61_combout\,
	cout => \inst|Add1~62\);

-- Location: LCCOMB_X57_Y45_N16
\inst|Selector16~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector16~2_combout\ = (\inst|AC[8]~0_combout\ & ((\inst|Add1~61_combout\) # ((\inst|shifter|auto_generated|sbit_w[59]~70_combout\ & \inst|Selector20~2_combout\)))) # (!\inst|AC[8]~0_combout\ & (\inst|shifter|auto_generated|sbit_w[59]~70_combout\ & 
-- (\inst|Selector20~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC[8]~0_combout\,
	datab => \inst|shifter|auto_generated|sbit_w[59]~70_combout\,
	datac => \inst|Selector20~2_combout\,
	datad => \inst|Add1~61_combout\,
	combout => \inst|Selector16~2_combout\);

-- Location: LCCOMB_X57_Y45_N8
\inst|Selector16~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector16~4_combout\ = (\inst|AC\(11) & ((\inst|state.ex_xor~q\) # (!\inst|Selector27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector27~0_combout\,
	datab => \inst|state.ex_xor~q\,
	datac => \inst|AC\(11),
	combout => \inst|Selector16~4_combout\);

-- Location: LCCOMB_X57_Y45_N10
\inst|Selector16~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector16~3_combout\ = (\inst|AC\(11) & (((\inst|state.ex_and~q\)) # (!\inst|Selector27~0_combout\))) # (!\inst|AC\(11) & (((\inst|state.ex_xor~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector27~0_combout\,
	datab => \inst|state.ex_xor~q\,
	datac => \inst|AC\(11),
	datad => \inst|state.ex_and~q\,
	combout => \inst|Selector16~3_combout\);

-- Location: LCCOMB_X57_Y45_N14
\inst|Selector16~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector16~5_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(11) & (((\inst|Selector27~3_combout\) # (\inst|Selector16~3_combout\)))) # (!\inst|altsyncram_component|auto_generated|q_a\(11) & (\inst|Selector16~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(11),
	datab => \inst|Selector16~4_combout\,
	datac => \inst|Selector27~3_combout\,
	datad => \inst|Selector16~3_combout\,
	combout => \inst|Selector16~5_combout\);

-- Location: LCCOMB_X58_Y47_N10
\inst|shifter|auto_generated|sbit_w[35]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[35]~71_combout\ = (!\inst|IR\(1) & ((\inst|shifter|auto_generated|sbit_w[19]~38_combout\) # ((!\inst|IR\(0) & \inst|AC\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(0),
	datab => \inst|shifter|auto_generated|sbit_w[19]~38_combout\,
	datac => \inst|IR\(1),
	datad => \inst|AC\(3),
	combout => \inst|shifter|auto_generated|sbit_w[35]~71_combout\);

-- Location: LCCOMB_X58_Y47_N20
\inst|shifter|auto_generated|sbit_w[35]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[35]~72_combout\ = (\inst3|TIMER_EN~0_combout\ & ((\inst|shifter|auto_generated|sbit_w[17]~52_combout\) # ((!\inst|IR\(0) & \inst|AC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(0),
	datab => \inst|AC\(1),
	datac => \inst3|TIMER_EN~0_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[17]~52_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[35]~72_combout\);

-- Location: LCCOMB_X58_Y47_N30
\inst|shifter|auto_generated|sbit_w[35]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[35]~73_combout\ = (\inst|shifter|auto_generated|sbit_w[35]~71_combout\) # ((\inst|shifter|auto_generated|sbit_w[35]~72_combout\) # ((\inst|shifter|auto_generated|sbit_w[21]~44_combout\ & \inst3|I2C_RDY_EN~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[35]~71_combout\,
	datab => \inst|shifter|auto_generated|sbit_w[21]~44_combout\,
	datac => \inst3|I2C_RDY_EN~1_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[35]~72_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[35]~73_combout\);

-- Location: LCCOMB_X57_Y47_N20
\inst|Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector16~0_combout\ = (\inst|shifter|auto_generated|sbit_w[35]~73_combout\ & !\inst|IR\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[35]~73_combout\,
	datac => \inst|IR\(2),
	combout => \inst|Selector16~0_combout\);

-- Location: LCCOMB_X59_Y45_N30
\inst|Selector16~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector16~6_combout\ = (\inst|Selector16~2_combout\) # ((\inst|Selector16~5_combout\) # ((\inst|Selector16~0_combout\ & \inst|Selector19~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector16~2_combout\,
	datab => \inst|Selector16~5_combout\,
	datac => \inst|Selector16~0_combout\,
	datad => \inst|Selector19~1_combout\,
	combout => \inst|Selector16~6_combout\);

-- Location: LCCOMB_X59_Y45_N28
\inst13|inst1[11]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[11]~37_combout\ = (\inst4|IO_OUT~combout\ & (\inst4|COUNT\(11) & ((\inst|AC\(11)) # (!\inst|IO_WRITE_int~q\)))) # (!\inst4|IO_OUT~combout\ & (((\inst|AC\(11))) # (!\inst|IO_WRITE_int~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|IO_OUT~combout\,
	datab => \inst|IO_WRITE_int~q\,
	datac => \inst|AC\(11),
	datad => \inst4|COUNT\(11),
	combout => \inst13|inst1[11]~37_combout\);

-- Location: LCCOMB_X62_Y45_N28
\inst13|inst14|data_out[11]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_out[11]~15_combout\ = (\inst13|inst14|state.Rx2~q\ & (\inst13|inst|data_rd\(3) & (!\inst13|inst|busy~q\ & \inst13|inst14|prev_busy~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|state.Rx2~q\,
	datab => \inst13|inst|data_rd\(3),
	datac => \inst13|inst|busy~q\,
	datad => \inst13|inst14|prev_busy~q\,
	combout => \inst13|inst14|data_out[11]~15_combout\);

-- Location: FF_X62_Y45_N29
\inst13|inst14|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|data_out[11]~15_combout\,
	ena => \inst13|inst14|data_out[15]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_out\(11));

-- Location: LCCOMB_X59_Y45_N6
\inst13|inst1[11]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[11]~38_combout\ = (\inst13|inst1[11]~37_combout\ & (\inst13|inst1[10]~34_combout\ & ((\inst13|inst14|data_out\(11)) # (!\inst13|inst7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7~combout\,
	datab => \inst13|inst1[11]~37_combout\,
	datac => \inst13|inst14|data_out\(11),
	datad => \inst13|inst1[10]~34_combout\,
	combout => \inst13|inst1[11]~38_combout\);

-- Location: LCCOMB_X59_Y45_N14
\inst|Selector16~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector16~7_combout\ = ((\inst|Selector16~6_combout\) # ((\inst|state.ex_in2~q\ & \inst13|inst1[11]~38_combout\))) # (!\inst|Selector16~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector16~1_combout\,
	datab => \inst|state.ex_in2~q\,
	datac => \inst|Selector16~6_combout\,
	datad => \inst13|inst1[11]~38_combout\,
	combout => \inst|Selector16~7_combout\);

-- Location: FF_X59_Y45_N15
\inst|AC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector16~7_combout\,
	ena => \inst13|inst14|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|AC\(11));

-- Location: LCCOMB_X55_Y45_N2
\inst|Add1~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~60_combout\ = (\inst|AC\(11) & ((\inst|state.ex_addi~q\) # ((\inst|state.ex_add~q\) # (\inst|state.ex_sub~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_addi~q\,
	datab => \inst|state.ex_add~q\,
	datac => \inst|state.ex_sub~q\,
	datad => \inst|AC\(11),
	combout => \inst|Add1~60_combout\);

-- Location: LCCOMB_X56_Y45_N10
\inst|Add1~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~66_combout\ = (\inst|Add1~64_combout\ & ((\inst|Add1~65_combout\ & (\inst|Add1~62\ & VCC)) # (!\inst|Add1~65_combout\ & (!\inst|Add1~62\)))) # (!\inst|Add1~64_combout\ & ((\inst|Add1~65_combout\ & (!\inst|Add1~62\)) # (!\inst|Add1~65_combout\ & 
-- ((\inst|Add1~62\) # (GND)))))
-- \inst|Add1~67\ = CARRY((\inst|Add1~64_combout\ & (!\inst|Add1~65_combout\ & !\inst|Add1~62\)) # (!\inst|Add1~64_combout\ & ((!\inst|Add1~62\) # (!\inst|Add1~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~64_combout\,
	datab => \inst|Add1~65_combout\,
	datad => VCC,
	cin => \inst|Add1~62\,
	combout => \inst|Add1~66_combout\,
	cout => \inst|Add1~67\);

-- Location: LCCOMB_X57_Y45_N24
\inst|Selector15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector15~1_combout\ = (\inst|Selector27~0_combout\ & (((\inst|Selector20~2_combout\ & \inst|shifter|auto_generated|sbit_w[60]~75_combout\)))) # (!\inst|Selector27~0_combout\ & ((\inst|AC\(12)) # ((\inst|Selector20~2_combout\ & 
-- \inst|shifter|auto_generated|sbit_w[60]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector27~0_combout\,
	datab => \inst|AC\(12),
	datac => \inst|Selector20~2_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[60]~75_combout\,
	combout => \inst|Selector15~1_combout\);

-- Location: LCCOMB_X57_Y45_N22
\inst|Selector15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector15~2_combout\ = (!\inst|Selector15~1_combout\ & (\inst|Selector16~1_combout\ & ((!\inst|AC[8]~0_combout\) # (!\inst|Add1~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~66_combout\,
	datab => \inst|Selector15~1_combout\,
	datac => \inst|Selector16~1_combout\,
	datad => \inst|AC[8]~0_combout\,
	combout => \inst|Selector15~2_combout\);

-- Location: LCCOMB_X57_Y45_N12
\inst|Selector15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector15~3_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(12) & ((\inst|AC\(12) & (\inst|state.ex_and~q\)) # (!\inst|AC\(12) & ((\inst|state.ex_xor~q\))))) # (!\inst|altsyncram_component|auto_generated|q_a\(12) & 
-- (((\inst|state.ex_xor~q\ & \inst|AC\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(12),
	datab => \inst|state.ex_and~q\,
	datac => \inst|state.ex_xor~q\,
	datad => \inst|AC\(12),
	combout => \inst|Selector15~3_combout\);

-- Location: LCCOMB_X57_Y45_N2
\inst|Selector15~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector15~4_combout\ = ((\inst|Selector15~3_combout\) # ((\inst|altsyncram_component|auto_generated|q_a\(12) & \inst|Selector27~3_combout\))) # (!\inst|Selector15~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(12),
	datab => \inst|Selector27~3_combout\,
	datac => \inst|Selector15~2_combout\,
	datad => \inst|Selector15~3_combout\,
	combout => \inst|Selector15~4_combout\);

-- Location: LCCOMB_X59_Y44_N14
\inst|shifter|auto_generated|sbit_w[32]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[32]~8_combout\ = (\inst|IR\(0) & (!\inst|IR\(1) & (\inst|IR\(4) & \inst|AC\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(0),
	datab => \inst|IR\(1),
	datac => \inst|IR\(4),
	datad => \inst|AC\(1),
	combout => \inst|shifter|auto_generated|sbit_w[32]~8_combout\);

-- Location: LCCOMB_X59_Y44_N2
\inst|shifter|auto_generated|sbit_w[32]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[32]~9_combout\ = (\inst|shifter|auto_generated|sbit_w[32]~8_combout\) # ((!\inst|IR\(0) & (\inst|AC\(0) & !\inst|IR\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(0),
	datab => \inst|AC\(0),
	datac => \inst|shifter|auto_generated|sbit_w[32]~8_combout\,
	datad => \inst|IR\(1),
	combout => \inst|shifter|auto_generated|sbit_w[32]~9_combout\);

-- Location: LCCOMB_X60_Y47_N30
\inst|shifter|auto_generated|sbit_w[52]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[52]~76_combout\ = (\inst|IR\(2) & ((\inst|IR\(4) & ((\inst|shifter|auto_generated|sbit_w[40]~32_combout\))) # (!\inst|IR\(4) & (\inst|shifter|auto_generated|sbit_w[32]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[32]~9_combout\,
	datab => \inst|IR\(4),
	datac => \inst|IR\(2),
	datad => \inst|shifter|auto_generated|sbit_w[40]~32_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[52]~76_combout\);

-- Location: LCCOMB_X60_Y47_N14
\inst|Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector15~0_combout\ = (\inst|Selector19~1_combout\ & ((\inst|shifter|auto_generated|sbit_w[52]~76_combout\) # ((!\inst|IR\(2) & \inst|shifter|auto_generated|sbit_w[36]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector19~1_combout\,
	datab => \inst|shifter|auto_generated|sbit_w[52]~76_combout\,
	datac => \inst|IR\(2),
	datad => \inst|shifter|auto_generated|sbit_w[36]~19_combout\,
	combout => \inst|Selector15~0_combout\);

-- Location: LCCOMB_X62_Y44_N0
\inst|Selector15~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector15~5_combout\ = (\inst|Selector15~4_combout\) # ((\inst|Selector15~0_combout\) # ((\inst|state.ex_in2~q\ & \inst13|inst1[12]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector15~4_combout\,
	datab => \inst|state.ex_in2~q\,
	datac => \inst|Selector15~0_combout\,
	datad => \inst13|inst1[12]~40_combout\,
	combout => \inst|Selector15~5_combout\);

-- Location: FF_X62_Y44_N1
\inst|AC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector15~5_combout\,
	ena => \inst13|inst14|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|AC\(12));

-- Location: LCCOMB_X56_Y45_N20
\inst|Add1~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~65_combout\ = (\inst|AC\(12) & ((\inst|state.ex_sub~q\) # ((\inst|state.ex_add~q\) # (\inst|state.ex_addi~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_sub~q\,
	datab => \inst|AC\(12),
	datac => \inst|state.ex_add~q\,
	datad => \inst|state.ex_addi~q\,
	combout => \inst|Add1~65_combout\);

-- Location: LCCOMB_X57_Y46_N2
\inst|Selector14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector14~2_combout\ = (\inst|Add1~71_combout\ & ((\inst|AC[8]~0_combout\) # ((\inst|Selector19~1_combout\ & \inst|shifter|auto_generated|sbit_w[53]~80_combout\)))) # (!\inst|Add1~71_combout\ & (((\inst|Selector19~1_combout\ & 
-- \inst|shifter|auto_generated|sbit_w[53]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~71_combout\,
	datab => \inst|AC[8]~0_combout\,
	datac => \inst|Selector19~1_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[53]~80_combout\,
	combout => \inst|Selector14~2_combout\);

-- Location: LCCOMB_X57_Y46_N14
\inst|Selector14~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector14~7_combout\ = (\inst|shifter|auto_generated|sbit_w[61]~78_combout\ & (!\inst|IR\(3) & \inst|state.ex_shift~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|shifter|auto_generated|sbit_w[61]~78_combout\,
	datac => \inst|IR\(3),
	datad => \inst|state.ex_shift~q\,
	combout => \inst|Selector14~7_combout\);

-- Location: LCCOMB_X57_Y46_N12
\inst|Selector14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector14~3_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(13) & ((\inst|AC\(13) & (\inst|state.ex_and~q\)) # (!\inst|AC\(13) & ((\inst|state.ex_xor~q\))))) # (!\inst|altsyncram_component|auto_generated|q_a\(13) & 
-- (((\inst|state.ex_xor~q\ & \inst|AC\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_and~q\,
	datab => \inst|state.ex_xor~q\,
	datac => \inst|altsyncram_component|auto_generated|q_a\(13),
	datad => \inst|AC\(13),
	combout => \inst|Selector14~3_combout\);

-- Location: LCCOMB_X57_Y46_N8
\inst|Selector14~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector14~5_combout\ = (\inst|Selector14~4_combout\) # ((\inst|Selector14~2_combout\) # ((\inst|Selector14~7_combout\) # (\inst|Selector14~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector14~4_combout\,
	datab => \inst|Selector14~2_combout\,
	datac => \inst|Selector14~7_combout\,
	datad => \inst|Selector14~3_combout\,
	combout => \inst|Selector14~5_combout\);

-- Location: LCCOMB_X61_Y44_N28
\inst|Selector14~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector14~6_combout\ = ((\inst|Selector14~5_combout\) # ((\inst|state.ex_in2~q\ & \inst13|inst1[13]~42_combout\))) # (!\inst|Selector16~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector16~1_combout\,
	datab => \inst|state.ex_in2~q\,
	datac => \inst|Selector14~5_combout\,
	datad => \inst13|inst1[13]~42_combout\,
	combout => \inst|Selector14~6_combout\);

-- Location: FF_X61_Y44_N29
\inst|AC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector14~6_combout\,
	ena => \inst13|inst14|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|AC\(13));

-- Location: LCCOMB_X60_Y46_N6
\inst|shifter|auto_generated|sbit_w[29]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[29]~33_combout\ = (\inst|IR\(0) & ((\inst|IR\(4) & ((\inst|AC\(14)))) # (!\inst|IR\(4) & (\inst|AC\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(12),
	datab => \inst|IR\(4),
	datac => \inst|IR\(0),
	datad => \inst|AC\(14),
	combout => \inst|shifter|auto_generated|sbit_w[29]~33_combout\);

-- Location: LCCOMB_X60_Y46_N4
\inst|shifter|auto_generated|sbit_w[29]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[29]~34_combout\ = (\inst|shifter|auto_generated|sbit_w[29]~33_combout\) # ((!\inst|IR\(0) & \inst|AC\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|IR\(0),
	datac => \inst|AC\(13),
	datad => \inst|shifter|auto_generated|sbit_w[29]~33_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[29]~34_combout\);

-- Location: LCCOMB_X60_Y46_N14
\inst|shifter|auto_generated|sbit_w[45]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[45]~35_combout\ = (\inst|IR\(1) & (\inst|IR\(4) & ((\inst|AC\(15))))) # (!\inst|IR\(1) & (((\inst|shifter|auto_generated|sbit_w[29]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(1),
	datab => \inst|IR\(4),
	datac => \inst|shifter|auto_generated|sbit_w[29]~34_combout\,
	datad => \inst|AC\(15),
	combout => \inst|shifter|auto_generated|sbit_w[45]~35_combout\);

-- Location: LCCOMB_X60_Y46_N12
\inst|shifter|auto_generated|sbit_w[45]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[45]~88_combout\ = (\inst|shifter|auto_generated|sbit_w[45]~35_combout\) # ((\inst|IR\(1) & (!\inst|IR\(4) & \inst|shifter|auto_generated|sbit_w[27]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(1),
	datab => \inst|IR\(4),
	datac => \inst|shifter|auto_generated|sbit_w[45]~35_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[27]~37_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[45]~88_combout\);

-- Location: LCCOMB_X57_Y47_N18
\inst|shifter|auto_generated|sbit_w[57]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[57]~46_combout\ = (\inst|IR\(2) & ((\inst|IR\(4) & (\inst|shifter|auto_generated|sbit_w[45]~88_combout\)) # (!\inst|IR\(4) & ((\inst|shifter|auto_generated|sbit_w[37]~45_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(4),
	datab => \inst|shifter|auto_generated|sbit_w[45]~88_combout\,
	datac => \inst|IR\(2),
	datad => \inst|shifter|auto_generated|sbit_w[37]~45_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[57]~46_combout\);

-- Location: LCCOMB_X57_Y47_N28
\inst|shifter|auto_generated|sbit_w[57]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[57]~51_combout\ = (\inst|shifter|auto_generated|sbit_w[57]~46_combout\) # ((!\inst|IR\(2) & \inst|shifter|auto_generated|sbit_w[41]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|IR\(2),
	datac => \inst|shifter|auto_generated|sbit_w[57]~46_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[41]~50_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[57]~51_combout\);

-- Location: LCCOMB_X59_Y44_N0
\inst|Selector18~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector18~2_combout\ = (\inst|shifter|auto_generated|sbit_w[57]~51_combout\ & ((\inst|Selector20~2_combout\) # ((\inst|IR\(9) & \inst|state.ex_loadi~q\)))) # (!\inst|shifter|auto_generated|sbit_w[57]~51_combout\ & (\inst|IR\(9) & 
-- (\inst|state.ex_loadi~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[57]~51_combout\,
	datab => \inst|IR\(9),
	datac => \inst|state.ex_loadi~q\,
	datad => \inst|Selector20~2_combout\,
	combout => \inst|Selector18~2_combout\);

-- Location: LCCOMB_X57_Y45_N4
\inst|Selector18~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector18~3_combout\ = (\inst|AC\(9) & (((\inst|altsyncram_component|auto_generated|q_a\(9) & \inst|state.ex_and~q\)) # (!\inst|Selector27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(9),
	datab => \inst|state.ex_and~q\,
	datac => \inst|AC\(9),
	datad => \inst|Selector27~0_combout\,
	combout => \inst|Selector18~3_combout\);

-- Location: LCCOMB_X58_Y47_N16
\inst|shifter|auto_generated|sbit_w[49]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[49]~54_combout\ = (!\inst|IR\(2) & ((\inst|shifter|auto_generated|sbit_w[53]~53_combout\) # ((\inst|shifter|auto_generated|sbit_w[19]~39_combout\ & \inst3|I2C_RDY_EN~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[19]~39_combout\,
	datab => \inst3|I2C_RDY_EN~1_combout\,
	datac => \inst|IR\(2),
	datad => \inst|shifter|auto_generated|sbit_w[53]~53_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[49]~54_combout\);

-- Location: LCCOMB_X58_Y47_N18
\inst|shifter|auto_generated|sbit_w[49]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[49]~90_combout\ = (\inst|shifter|auto_generated|sbit_w[49]~54_combout\) # ((\inst|IR\(2) & (\inst|shifter|auto_generated|sbit_w[37]~45_combout\ & \inst|IR\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(2),
	datab => \inst|shifter|auto_generated|sbit_w[49]~54_combout\,
	datac => \inst|shifter|auto_generated|sbit_w[37]~45_combout\,
	datad => \inst|IR\(4),
	combout => \inst|shifter|auto_generated|sbit_w[49]~90_combout\);

-- Location: LCCOMB_X57_Y45_N18
\inst|Selector18~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector18~4_combout\ = (\inst|Selector18~2_combout\) # ((\inst|Selector18~3_combout\) # ((\inst|Selector19~1_combout\ & \inst|shifter|auto_generated|sbit_w[49]~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector18~2_combout\,
	datab => \inst|Selector19~1_combout\,
	datac => \inst|Selector18~3_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[49]~90_combout\,
	combout => \inst|Selector18~4_combout\);

-- Location: LCCOMB_X58_Y45_N6
\inst|Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector18~0_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(9) & ((\inst|Selector27~3_combout\) # ((\inst|state.ex_xor~q\ & !\inst|AC\(9))))) # (!\inst|altsyncram_component|auto_generated|q_a\(9) & (\inst|state.ex_xor~q\ & 
-- ((\inst|AC\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_xor~q\,
	datab => \inst|altsyncram_component|auto_generated|q_a\(9),
	datac => \inst|Selector27~3_combout\,
	datad => \inst|AC\(9),
	combout => \inst|Selector18~0_combout\);

-- Location: LCCOMB_X57_Y45_N26
\inst|Selector18~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector18~1_combout\ = (\inst|Selector18~0_combout\) # ((\inst|Selector19~0_combout\) # ((\inst|Add1~51_combout\ & \inst|AC[8]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector18~0_combout\,
	datab => \inst|Selector19~0_combout\,
	datac => \inst|Add1~51_combout\,
	datad => \inst|AC[8]~0_combout\,
	combout => \inst|Selector18~1_combout\);

-- Location: LCCOMB_X62_Y44_N26
\inst|Selector18~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector18~5_combout\ = (\inst|Selector18~4_combout\) # ((\inst|Selector18~1_combout\) # ((\inst|state.ex_in2~q\ & \inst13|inst1[9]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector18~4_combout\,
	datab => \inst|Selector18~1_combout\,
	datac => \inst|state.ex_in2~q\,
	datad => \inst13|inst1[9]~33_combout\,
	combout => \inst|Selector18~5_combout\);

-- Location: FF_X62_Y44_N27
\inst|AC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector18~5_combout\,
	ena => \inst13|inst14|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|AC\(9));

-- Location: LCCOMB_X59_Y47_N2
\inst|shifter|auto_generated|sbit_w[24]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[24]~30_combout\ = (\inst|IR\(0) & ((\inst|IR\(4) & ((\inst|AC\(9)))) # (!\inst|IR\(4) & (\inst|AC\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(0),
	datab => \inst|AC\(7),
	datac => \inst|IR\(4),
	datad => \inst|AC\(9),
	combout => \inst|shifter|auto_generated|sbit_w[24]~30_combout\);

-- Location: LCCOMB_X59_Y47_N20
\inst|shifter|auto_generated|sbit_w[24]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[24]~31_combout\ = (\inst|shifter|auto_generated|sbit_w[24]~30_combout\) # ((!\inst|IR\(0) & \inst|AC\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(0),
	datab => \inst|AC\(8),
	datad => \inst|shifter|auto_generated|sbit_w[24]~30_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[24]~31_combout\);

-- Location: LCCOMB_X60_Y47_N16
\inst|shifter|auto_generated|sbit_w[40]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[40]~29_combout\ = (\inst|shifter|auto_generated|sbit_w[22]~15_combout\ & ((\inst3|TIMER_EN~0_combout\) # ((\inst|shifter|auto_generated|sbit_w[26]~21_combout\ & \inst3|I2C_RDY_EN~1_combout\)))) # 
-- (!\inst|shifter|auto_generated|sbit_w[22]~15_combout\ & (((\inst|shifter|auto_generated|sbit_w[26]~21_combout\ & \inst3|I2C_RDY_EN~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[22]~15_combout\,
	datab => \inst3|TIMER_EN~0_combout\,
	datac => \inst|shifter|auto_generated|sbit_w[26]~21_combout\,
	datad => \inst3|I2C_RDY_EN~1_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[40]~29_combout\);

-- Location: LCCOMB_X60_Y47_N24
\inst|shifter|auto_generated|sbit_w[40]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[40]~32_combout\ = (\inst|shifter|auto_generated|sbit_w[40]~29_combout\) # ((!\inst|IR\(1) & \inst|shifter|auto_generated|sbit_w[24]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(1),
	datab => \inst|shifter|auto_generated|sbit_w[24]~31_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[40]~29_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[40]~32_combout\);

-- Location: LCCOMB_X60_Y47_N6
\inst|shifter|auto_generated|sbit_w[60]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[60]~74_combout\ = (\inst|IR\(2) & ((\inst|IR\(4) & (\inst|AC\(15))) # (!\inst|IR\(4) & ((\inst|shifter|auto_generated|sbit_w[40]~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(15),
	datab => \inst|IR\(4),
	datac => \inst|IR\(2),
	datad => \inst|shifter|auto_generated|sbit_w[40]~32_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[60]~74_combout\);

-- Location: LCCOMB_X60_Y47_N12
\inst|shifter|auto_generated|sbit_w[44]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[44]~24_combout\ = (\inst|shifter|auto_generated|sbit_w[30]~23_combout\ & ((\inst3|I2C_RDY_EN~1_combout\) # ((\inst3|TIMER_EN~0_combout\ & \inst|shifter|auto_generated|sbit_w[26]~21_combout\)))) # 
-- (!\inst|shifter|auto_generated|sbit_w[30]~23_combout\ & (\inst3|TIMER_EN~0_combout\ & (\inst|shifter|auto_generated|sbit_w[26]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[30]~23_combout\,
	datab => \inst3|TIMER_EN~0_combout\,
	datac => \inst|shifter|auto_generated|sbit_w[26]~21_combout\,
	datad => \inst3|I2C_RDY_EN~1_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[44]~24_combout\);

-- Location: LCCOMB_X60_Y47_N18
\inst|shifter|auto_generated|sbit_w[44]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[44]~27_combout\ = (\inst|shifter|auto_generated|sbit_w[44]~24_combout\) # ((\inst|shifter|auto_generated|sbit_w[28]~26_combout\ & !\inst|IR\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[28]~26_combout\,
	datac => \inst|shifter|auto_generated|sbit_w[44]~24_combout\,
	datad => \inst|IR\(1),
	combout => \inst|shifter|auto_generated|sbit_w[44]~27_combout\);

-- Location: LCCOMB_X60_Y47_N28
\inst|shifter|auto_generated|sbit_w[60]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[60]~75_combout\ = (\inst|shifter|auto_generated|sbit_w[60]~74_combout\) # ((!\inst|IR\(2) & \inst|shifter|auto_generated|sbit_w[44]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[60]~74_combout\,
	datac => \inst|IR\(2),
	datad => \inst|shifter|auto_generated|sbit_w[44]~27_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[60]~75_combout\);

-- Location: LCCOMB_X56_Y43_N28
\inst|Selector23~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector23~10_combout\ = (\inst|state.ex_shift~q\ & (\inst|IR\(4) & (\inst|IR\(3) & \inst|shifter|auto_generated|sbit_w[60]~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_shift~q\,
	datab => \inst|IR\(4),
	datac => \inst|IR\(3),
	datad => \inst|shifter|auto_generated|sbit_w[60]~75_combout\,
	combout => \inst|Selector23~10_combout\);

-- Location: LCCOMB_X60_Y47_N8
\inst|Selector23~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector23~4_combout\ = (\inst|Selector20~2_combout\ & ((\inst|shifter|auto_generated|sbit_w[52]~76_combout\) # ((!\inst|IR\(2) & \inst|shifter|auto_generated|sbit_w[36]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(2),
	datab => \inst|Selector20~2_combout\,
	datac => \inst|shifter|auto_generated|sbit_w[52]~76_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[36]~19_combout\,
	combout => \inst|Selector23~4_combout\);

-- Location: LCCOMB_X59_Y46_N28
\inst|Selector23~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector23~5_combout\ = (\inst|Selector23~10_combout\) # ((\inst|Selector23~4_combout\) # ((\inst|Add1~26_combout\ & \inst|AC[8]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~26_combout\,
	datab => \inst|Selector23~10_combout\,
	datac => \inst|Selector23~4_combout\,
	datad => \inst|AC[8]~0_combout\,
	combout => \inst|Selector23~5_combout\);

-- Location: LCCOMB_X59_Y46_N4
\inst|Selector23~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector23~9_combout\ = (\inst|Selector23~8_combout\) # ((\inst|Selector23~5_combout\) # ((\inst|state.ex_in2~q\ & \inst13|inst1[4]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector23~8_combout\,
	datab => \inst|Selector23~5_combout\,
	datac => \inst|state.ex_in2~q\,
	datad => \inst13|inst1[4]~18_combout\,
	combout => \inst|Selector23~9_combout\);

-- Location: FF_X59_Y46_N5
\inst|AC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector23~9_combout\,
	ena => \inst13|inst14|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|AC\(4));

-- Location: M9K_X53_Y45_N0
\inst|altsyncram_component|auto_generated|ram_block1a1\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000045C88813B3C30000020010F00000000074B787BF4CB627B062ACB78B627B062AFBFA316B16000000004A06494A559CAD59CAA19068074990595359159158E8D59AC000000F4B6E77A26AA16A726A360A56AF636BEAACC00000692569D9D05842F748C4A627A062424442415381A5B6394941A5B1AB863959547014501D949585461444B1A5A01581544CD04919D96C444EB284484004B626B0A40A3FE6E73004DB77A463FEAE73A4EB640CCC0CCD",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "AccelerometerDemo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "SCOMP:inst|altsyncram:altsyncram_component|altsyncram_ujs3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 11,
	port_b_data_width => 4,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst|MW~q\,
	portare => VCC,
	clk0 => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \inst|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \inst|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: LCCOMB_X59_Y44_N8
\inst|IR[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|IR[1]~feeder_combout\ = \inst|altsyncram_component|auto_generated|q_a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|altsyncram_component|auto_generated|q_a\(1),
	combout => \inst|IR[1]~feeder_combout\);

-- Location: FF_X59_Y44_N9
\inst|IR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|IR[1]~feeder_combout\,
	ena => \inst|IR[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR\(1));

-- Location: LCCOMB_X58_Y47_N0
\inst|shifter|auto_generated|sbit_w[39]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[39]~65_combout\ = (\inst3|TIMER_EN~0_combout\ & ((\inst|shifter|auto_generated|sbit_w[21]~44_combout\) # ((\inst3|I2C_RDY_EN~1_combout\ & \inst|shifter|auto_generated|sbit_w[25]~49_combout\)))) # 
-- (!\inst3|TIMER_EN~0_combout\ & (((\inst3|I2C_RDY_EN~1_combout\ & \inst|shifter|auto_generated|sbit_w[25]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|TIMER_EN~0_combout\,
	datab => \inst|shifter|auto_generated|sbit_w[21]~44_combout\,
	datac => \inst3|I2C_RDY_EN~1_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[25]~49_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[39]~65_combout\);

-- Location: LCCOMB_X57_Y47_N30
\inst|shifter|auto_generated|sbit_w[39]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[39]~66_combout\ = (\inst|shifter|auto_generated|sbit_w[39]~65_combout\) # ((!\inst|IR\(1) & \inst|shifter|auto_generated|sbit_w[23]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(1),
	datac => \inst|shifter|auto_generated|sbit_w[39]~65_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[23]~41_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[39]~66_combout\);

-- Location: LCCOMB_X57_Y47_N6
\inst|Selector24~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector24~4_combout\ = (\inst|Selector20~2_combout\ & ((\inst|Selector16~0_combout\) # ((\inst|shifter|auto_generated|sbit_w[48]~13_combout\ & \inst|shifter|auto_generated|sbit_w[39]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector20~2_combout\,
	datab => \inst|shifter|auto_generated|sbit_w[48]~13_combout\,
	datac => \inst|shifter|auto_generated|sbit_w[39]~66_combout\,
	datad => \inst|Selector16~0_combout\,
	combout => \inst|Selector24~4_combout\);

-- Location: LCCOMB_X57_Y47_N0
\inst|Selector24~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector24~10_combout\ = (\inst|IR\(3) & (\inst|state.ex_shift~q\ & (\inst|IR\(4) & \inst|shifter|auto_generated|sbit_w[59]~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(3),
	datab => \inst|state.ex_shift~q\,
	datac => \inst|IR\(4),
	datad => \inst|shifter|auto_generated|sbit_w[59]~70_combout\,
	combout => \inst|Selector24~10_combout\);

-- Location: LCCOMB_X57_Y47_N16
\inst|Selector24~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector24~5_combout\ = (\inst|Selector24~4_combout\) # ((\inst|Selector24~10_combout\) # ((\inst|AC[8]~0_combout\ & \inst|Add1~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector24~4_combout\,
	datab => \inst|AC[8]~0_combout\,
	datac => \inst|Add1~21_combout\,
	datad => \inst|Selector24~10_combout\,
	combout => \inst|Selector24~5_combout\);

-- Location: LCCOMB_X58_Y45_N14
\inst|Selector24~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector24~7_combout\ = (\inst|AC\(3) & ((\inst|altsyncram_component|auto_generated|q_a\(3) & (\inst|state.ex_and~q\)) # (!\inst|altsyncram_component|auto_generated|q_a\(3) & ((\inst|state.ex_xor~q\))))) # (!\inst|AC\(3) & 
-- (((\inst|altsyncram_component|auto_generated|q_a\(3) & \inst|state.ex_xor~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(3),
	datab => \inst|state.ex_and~q\,
	datac => \inst|altsyncram_component|auto_generated|q_a\(3),
	datad => \inst|state.ex_xor~q\,
	combout => \inst|Selector24~7_combout\);

-- Location: LCCOMB_X58_Y45_N20
\inst|Selector24~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector24~6_combout\ = (\inst|IR\(3) & ((\inst|state.ex_loadi~q\) # ((\inst|altsyncram_component|auto_generated|q_a\(3) & \inst|Selector27~3_combout\)))) # (!\inst|IR\(3) & (((\inst|altsyncram_component|auto_generated|q_a\(3) & 
-- \inst|Selector27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(3),
	datab => \inst|state.ex_loadi~q\,
	datac => \inst|altsyncram_component|auto_generated|q_a\(3),
	datad => \inst|Selector27~3_combout\,
	combout => \inst|Selector24~6_combout\);

-- Location: LCCOMB_X58_Y45_N4
\inst|Selector24~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector24~8_combout\ = (\inst|Selector24~7_combout\) # ((\inst|Selector24~6_combout\) # ((\inst|AC\(3) & !\inst|Selector27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(3),
	datab => \inst|Selector24~7_combout\,
	datac => \inst|Selector27~0_combout\,
	datad => \inst|Selector24~6_combout\,
	combout => \inst|Selector24~8_combout\);

-- Location: LCCOMB_X58_Y45_N26
\inst|Selector24~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector24~9_combout\ = (\inst|Selector24~5_combout\) # ((\inst|Selector24~8_combout\) # ((\inst|state.ex_in2~q\ & \inst13|inst1[3]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector24~5_combout\,
	datab => \inst|state.ex_in2~q\,
	datac => \inst|Selector24~8_combout\,
	datad => \inst13|inst1[3]~15_combout\,
	combout => \inst|Selector24~9_combout\);

-- Location: FF_X58_Y45_N27
\inst|AC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector24~9_combout\,
	ena => \inst13|inst14|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|AC\(3));

-- Location: LCCOMB_X58_Y46_N10
\inst|shifter|auto_generated|sbit_w[20]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[20]~17_combout\ = (\inst|IR\(0) & ((\inst|IR\(4) & ((\inst|AC\(5)))) # (!\inst|IR\(4) & (\inst|AC\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(3),
	datab => \inst|IR\(0),
	datac => \inst|IR\(4),
	datad => \inst|AC\(5),
	combout => \inst|shifter|auto_generated|sbit_w[20]~17_combout\);

-- Location: LCCOMB_X58_Y46_N12
\inst|shifter|auto_generated|sbit_w[20]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[20]~18_combout\ = (\inst|shifter|auto_generated|sbit_w[20]~17_combout\) # ((!\inst|IR\(0) & \inst|AC\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[20]~17_combout\,
	datac => \inst|IR\(0),
	datad => \inst|AC\(4),
	combout => \inst|shifter|auto_generated|sbit_w[20]~18_combout\);

-- Location: LCCOMB_X60_Y47_N4
\inst|shifter|auto_generated|sbit_w[36]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[36]~16_combout\ = (\inst|shifter|auto_generated|sbit_w[22]~15_combout\ & ((\inst3|I2C_RDY_EN~1_combout\) # ((\inst|shifter|auto_generated|sbit_w[18]~11_combout\ & \inst3|TIMER_EN~0_combout\)))) # 
-- (!\inst|shifter|auto_generated|sbit_w[22]~15_combout\ & (\inst|shifter|auto_generated|sbit_w[18]~11_combout\ & (\inst3|TIMER_EN~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[22]~15_combout\,
	datab => \inst|shifter|auto_generated|sbit_w[18]~11_combout\,
	datac => \inst3|TIMER_EN~0_combout\,
	datad => \inst3|I2C_RDY_EN~1_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[36]~16_combout\);

-- Location: LCCOMB_X60_Y47_N2
\inst|shifter|auto_generated|sbit_w[36]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[36]~19_combout\ = (\inst|shifter|auto_generated|sbit_w[36]~16_combout\) # ((\inst|shifter|auto_generated|sbit_w[20]~18_combout\ & !\inst|IR\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|shifter|auto_generated|sbit_w[20]~18_combout\,
	datac => \inst|shifter|auto_generated|sbit_w[36]~16_combout\,
	datad => \inst|IR\(1),
	combout => \inst|shifter|auto_generated|sbit_w[36]~19_combout\);

-- Location: LCCOMB_X60_Y47_N10
\inst|shifter|auto_generated|sbit_w[48]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[48]~12_combout\ = (!\inst|IR\(2) & ((\inst|shifter|auto_generated|sbit_w[32]~9_combout\) # ((\inst3|I2C_RDY_EN~1_combout\ & \inst|shifter|auto_generated|sbit_w[18]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|I2C_RDY_EN~1_combout\,
	datab => \inst|shifter|auto_generated|sbit_w[18]~11_combout\,
	datac => \inst|shifter|auto_generated|sbit_w[32]~9_combout\,
	datad => \inst|IR\(2),
	combout => \inst|shifter|auto_generated|sbit_w[48]~12_combout\);

-- Location: LCCOMB_X60_Y45_N6
\inst|shifter|auto_generated|sbit_w[48]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[48]~87_combout\ = (\inst|shifter|auto_generated|sbit_w[48]~12_combout\) # ((\inst|IR\(2) & (\inst|IR\(4) & \inst|shifter|auto_generated|sbit_w[36]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(2),
	datab => \inst|IR\(4),
	datac => \inst|shifter|auto_generated|sbit_w[36]~19_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[48]~12_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[48]~87_combout\);

-- Location: LCCOMB_X60_Y45_N30
\inst|Selector19~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector19~4_combout\ = (\inst|Selector19~2_combout\) # ((\inst|Selector19~3_combout\) # ((\inst|Selector19~1_combout\ & \inst|shifter|auto_generated|sbit_w[48]~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector19~2_combout\,
	datab => \inst|Selector19~3_combout\,
	datac => \inst|Selector19~1_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[48]~87_combout\,
	combout => \inst|Selector19~4_combout\);

-- Location: IOIBUF_X56_Y54_N1
\SW[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: FF_X59_Y44_N5
\inst7|B_DI[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SWITCH_EN~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|B_DI\(8));

-- Location: LCCOMB_X59_Y44_N4
\inst13|inst1[8]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[8]~28_combout\ = (\inst3|SWITCH_EN~combout\ & (\inst7|B_DI\(8) & ((\inst|AC\(8)) # (!\inst|IO_WRITE_int~q\)))) # (!\inst3|SWITCH_EN~combout\ & (((\inst|AC\(8))) # (!\inst|IO_WRITE_int~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|SWITCH_EN~combout\,
	datab => \inst|IO_WRITE_int~q\,
	datac => \inst7|B_DI\(8),
	datad => \inst|AC\(8),
	combout => \inst13|inst1[8]~28_combout\);

-- Location: LCCOMB_X64_Y43_N12
\inst13|inst|Decoder0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Decoder0~1_combout\ = (\inst13|inst|bit_cnt\(1) & (\inst13|inst|bit_cnt\(2) & (\inst13|inst|bit_cnt\(0) & \inst13|inst|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|bit_cnt\(1),
	datab => \inst13|inst|bit_cnt\(2),
	datac => \inst13|inst|bit_cnt\(0),
	datad => \inst13|inst|Decoder0~0_combout\,
	combout => \inst13|inst|Decoder0~1_combout\);

-- Location: LCCOMB_X64_Y43_N20
\inst13|inst|data_rx[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|data_rx[0]~0_combout\ = (\inst13|inst|Decoder0~1_combout\ & (\GSENSOR_SDI~input_o\)) # (!\inst13|inst|Decoder0~1_combout\ & ((\inst13|inst|data_rx\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GSENSOR_SDI~input_o\,
	datac => \inst13|inst|data_rx\(0),
	datad => \inst13|inst|Decoder0~1_combout\,
	combout => \inst13|inst|data_rx[0]~0_combout\);

-- Location: FF_X64_Y43_N21
\inst13|inst|data_rx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|ALT_INV_data_clk~clkctrl_outclk\,
	d => \inst13|inst|data_rx[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_rx\(0));

-- Location: LCCOMB_X62_Y45_N20
\inst13|inst|data_rd[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|data_rd[0]~feeder_combout\ = \inst13|inst|data_rx\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst|data_rx\(0),
	combout => \inst13|inst|data_rd[0]~feeder_combout\);

-- Location: FF_X62_Y45_N21
\inst13|inst|data_rd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	d => \inst13|inst|data_rd[0]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	ena => \inst13|inst|state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_rd\(0));

-- Location: LCCOMB_X61_Y44_N8
\inst13|inst14|data_out[8]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_out[8]~11_combout\ = (\inst13|inst|data_rd\(0) & (!\inst13|inst|busy~q\ & (\inst13|inst14|prev_busy~q\ & \inst13|inst14|state.Rx2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|data_rd\(0),
	datab => \inst13|inst|busy~q\,
	datac => \inst13|inst14|prev_busy~q\,
	datad => \inst13|inst14|state.Rx2~q\,
	combout => \inst13|inst14|data_out[8]~11_combout\);

-- Location: FF_X61_Y44_N9
\inst13|inst14|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|data_out[8]~11_combout\,
	ena => \inst13|inst14|data_out[15]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_out\(8));

-- Location: LCCOMB_X62_Y44_N30
\inst13|inst1[8]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[8]~29_combout\ = (\inst13|inst1[8]~28_combout\ & (!\inst13|inst4~combout\ & ((\inst13|inst14|data_out\(8)) # (!\inst13|inst7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[8]~28_combout\,
	datab => \inst13|inst4~combout\,
	datac => \inst13|inst7~combout\,
	datad => \inst13|inst14|data_out\(8),
	combout => \inst13|inst1[8]~29_combout\);

-- Location: LCCOMB_X62_Y44_N4
\inst13|inst1[8]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[8]~30_combout\ = ((\inst13|inst1[8]~29_combout\ & ((\inst4|COUNT\(8)) # (!\inst4|IO_OUT~combout\)))) # (!\inst13|inst1[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[0]~2_combout\,
	datab => \inst13|inst1[8]~29_combout\,
	datac => \inst4|IO_OUT~combout\,
	datad => \inst4|COUNT\(8),
	combout => \inst13|inst1[8]~30_combout\);

-- Location: LCCOMB_X60_Y45_N22
\inst|shifter|auto_generated|sbit_w[56]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[56]~28_combout\ = (\inst|IR\(2) & ((\inst|IR\(4) & ((\inst|shifter|auto_generated|sbit_w[44]~27_combout\))) # (!\inst|IR\(4) & (\inst|shifter|auto_generated|sbit_w[36]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(2),
	datab => \inst|IR\(4),
	datac => \inst|shifter|auto_generated|sbit_w[36]~19_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[44]~27_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[56]~28_combout\);

-- Location: LCCOMB_X60_Y45_N24
\inst|Selector19~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector19~7_combout\ = (\inst|Selector20~2_combout\ & ((\inst|shifter|auto_generated|sbit_w[56]~28_combout\) # ((!\inst|IR\(2) & \inst|shifter|auto_generated|sbit_w[40]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(2),
	datab => \inst|shifter|auto_generated|sbit_w[40]~32_combout\,
	datac => \inst|shifter|auto_generated|sbit_w[56]~28_combout\,
	datad => \inst|Selector20~2_combout\,
	combout => \inst|Selector19~7_combout\);

-- Location: LCCOMB_X60_Y45_N28
\inst|Selector19~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector19~5_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(8) & ((\inst|Selector27~3_combout\) # ((\inst|state.ex_xor~q\ & !\inst|AC\(8))))) # (!\inst|altsyncram_component|auto_generated|q_a\(8) & (((\inst|state.ex_xor~q\ & 
-- \inst|AC\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector27~3_combout\,
	datab => \inst|state.ex_xor~q\,
	datac => \inst|AC\(8),
	datad => \inst|altsyncram_component|auto_generated|q_a\(8),
	combout => \inst|Selector19~5_combout\);

-- Location: LCCOMB_X60_Y45_N2
\inst|Selector19~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector19~6_combout\ = (\inst|Selector19~0_combout\) # ((\inst|Selector19~5_combout\) # ((\inst|AC[8]~0_combout\ & \inst|Add1~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector19~0_combout\,
	datab => \inst|AC[8]~0_combout\,
	datac => \inst|Add1~46_combout\,
	datad => \inst|Selector19~5_combout\,
	combout => \inst|Selector19~6_combout\);

-- Location: LCCOMB_X60_Y45_N14
\inst|Selector19~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector19~8_combout\ = (\inst|Selector19~7_combout\) # (\inst|Selector19~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Selector19~7_combout\,
	datad => \inst|Selector19~6_combout\,
	combout => \inst|Selector19~8_combout\);

-- Location: LCCOMB_X62_Y44_N12
\inst|Selector19~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector19~9_combout\ = (\inst|Selector19~4_combout\) # ((\inst|Selector19~8_combout\) # ((\inst|state.ex_in2~q\ & \inst13|inst1[8]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_in2~q\,
	datab => \inst|Selector19~4_combout\,
	datac => \inst13|inst1[8]~30_combout\,
	datad => \inst|Selector19~8_combout\,
	combout => \inst|Selector19~9_combout\);

-- Location: FF_X62_Y44_N13
\inst|AC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector19~9_combout\,
	ena => \inst13|inst14|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|AC\(8));

-- Location: M9K_X53_Y44_N0
\inst|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000A802220040E14200000001F000000000222322320232013000001223201300000122213212000000000202022221203312130331333F32212321221231331232230000000F0100F00100010001001011200100100010200000131312202121010F11100201000000101011211001121203200010010213021000102011011011001020111001101110130000000000220100313320000201001011101203100000F0111101102111303001100111",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "AccelerometerDemo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "SCOMP:inst|altsyncram:altsyncram_component|altsyncram_ujs3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 11,
	port_b_data_width => 4,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst|MW~q\,
	portare => VCC,
	clk0 => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X54_Y44_N10
\inst|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector1~0_combout\ = (!\inst|state.fetch~q\ & ((\inst|WideNor0~combout\ & (\inst|altsyncram_component|auto_generated|q_a\(10))) # (!\inst|WideNor0~combout\ & ((\inst|IR\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(10),
	datab => \inst|IR\(10),
	datac => \inst|state.fetch~q\,
	datad => \inst|WideNor0~combout\,
	combout => \inst|Selector1~0_combout\);

-- Location: LCCOMB_X55_Y43_N28
\inst|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~20_combout\ = \inst|Add0~19\ $ (!\inst|PC\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|PC\(10),
	cin => \inst|Add0~19\,
	combout => \inst|Add0~20_combout\);

-- Location: LCCOMB_X55_Y43_N30
\inst|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector1~1_combout\ = (\inst|Selector1~0_combout\) # ((\inst|state.fetch~q\ & \inst|Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Selector1~0_combout\,
	datac => \inst|state.fetch~q\,
	datad => \inst|Add0~20_combout\,
	combout => \inst|Selector1~1_combout\);

-- Location: FF_X56_Y42_N15
\inst|PC_stack[9][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|PC_stack[8][10]~q\,
	sload => VCC,
	ena => \inst|PC_stack[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[9][10]~q\);

-- Location: LCCOMB_X55_Y42_N6
\inst|Selector119~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector119~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[9][10]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[7][10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.ex_return~q\,
	datac => \inst|PC_stack[9][10]~q\,
	datad => \inst|PC_stack[7][10]~q\,
	combout => \inst|Selector119~0_combout\);

-- Location: FF_X55_Y42_N7
\inst|PC_stack[8][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector119~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[8][10]~q\);

-- Location: LCCOMB_X55_Y42_N20
\inst|Selector108~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector108~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[8][10]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[6][10]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.ex_return~q\,
	datac => \inst|PC_stack[6][10]~q\,
	datad => \inst|PC_stack[8][10]~q\,
	combout => \inst|Selector108~0_combout\);

-- Location: FF_X55_Y42_N21
\inst|PC_stack[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector108~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[7][10]~q\);

-- Location: LCCOMB_X55_Y42_N14
\inst|Selector97~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector97~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[7][10]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[5][10]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.ex_return~q\,
	datac => \inst|PC_stack[5][10]~q\,
	datad => \inst|PC_stack[7][10]~q\,
	combout => \inst|Selector97~0_combout\);

-- Location: FF_X55_Y42_N15
\inst|PC_stack[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector97~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[6][10]~q\);

-- Location: LCCOMB_X55_Y42_N4
\inst|Selector86~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector86~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[6][10]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[4][10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.ex_return~q\,
	datac => \inst|PC_stack[6][10]~q\,
	datad => \inst|PC_stack[4][10]~q\,
	combout => \inst|Selector86~0_combout\);

-- Location: FF_X55_Y42_N5
\inst|PC_stack[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector86~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[5][10]~q\);

-- Location: LCCOMB_X55_Y42_N18
\inst|Selector75~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector75~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[5][10]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[3][10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.ex_return~q\,
	datac => \inst|PC_stack[5][10]~q\,
	datad => \inst|PC_stack[3][10]~q\,
	combout => \inst|Selector75~0_combout\);

-- Location: FF_X55_Y42_N19
\inst|PC_stack[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector75~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[4][10]~q\);

-- Location: LCCOMB_X55_Y42_N10
\inst|Selector64~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector64~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[4][10]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[2][10]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.ex_return~q\,
	datac => \inst|PC_stack[2][10]~q\,
	datad => \inst|PC_stack[4][10]~q\,
	combout => \inst|Selector64~0_combout\);

-- Location: FF_X55_Y42_N11
\inst|PC_stack[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector64~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[3][10]~q\);

-- Location: LCCOMB_X55_Y42_N26
\inst|Selector53~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector53~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[3][10]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[1][10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[3][10]~q\,
	datac => \inst|PC_stack[1][10]~q\,
	datad => \inst|state.ex_return~q\,
	combout => \inst|Selector53~0_combout\);

-- Location: FF_X55_Y42_N27
\inst|PC_stack[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector53~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[2][10]~q\);

-- Location: LCCOMB_X55_Y42_N30
\inst|Selector42~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector42~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[2][10]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[0][10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[2][10]~q\,
	datac => \inst|PC_stack[0][10]~q\,
	datad => \inst|state.ex_return~q\,
	combout => \inst|Selector42~0_combout\);

-- Location: FF_X55_Y42_N31
\inst|PC_stack[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector42~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[1][10]~q\);

-- Location: LCCOMB_X55_Y42_N22
\inst|Selector31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector31~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[1][10]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.ex_return~q\,
	datac => \inst|PC_stack[1][10]~q\,
	datad => \inst|PC\(10),
	combout => \inst|Selector31~0_combout\);

-- Location: FF_X55_Y42_N23
\inst|PC_stack[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector31~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[0][10]~q\);

-- Location: LCCOMB_X55_Y42_N2
\inst|Selector1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector1~2_combout\ = (\inst|state.ex_return~q\ & (((\inst|PC_stack[0][10]~q\)))) # (!\inst|state.ex_return~q\ & (\inst|state.init~q\ & (\inst|Selector1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.init~q\,
	datab => \inst|Selector1~1_combout\,
	datac => \inst|PC_stack[0][10]~q\,
	datad => \inst|state.ex_return~q\,
	combout => \inst|Selector1~2_combout\);

-- Location: FF_X55_Y42_N3
\inst|PC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector1~2_combout\,
	ena => \inst|PC[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(10));

-- Location: LCCOMB_X55_Y43_N2
\inst|next_mem_addr[10]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|next_mem_addr[10]~10_combout\ = (\inst|Selector1~0_combout\) # ((\inst|state.fetch~q\ & \inst|PC\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Selector1~0_combout\,
	datac => \inst|state.fetch~q\,
	datad => \inst|PC\(10),
	combout => \inst|next_mem_addr[10]~10_combout\);

-- Location: FF_X57_Y44_N31
\inst|IR[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|altsyncram_component|auto_generated|q_a\(9),
	sload => VCC,
	ena => \inst|IR[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR\(9));

-- Location: LCCOMB_X56_Y43_N6
\inst|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector2~0_combout\ = (!\inst|state.fetch~q\ & ((\inst|WideNor0~combout\ & ((\inst|altsyncram_component|auto_generated|q_a\(9)))) # (!\inst|WideNor0~combout\ & (\inst|IR\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.fetch~q\,
	datab => \inst|WideNor0~combout\,
	datac => \inst|IR\(9),
	datad => \inst|altsyncram_component|auto_generated|q_a\(9),
	combout => \inst|Selector2~0_combout\);

-- Location: LCCOMB_X55_Y43_N6
\inst|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector2~1_combout\ = (\inst|Selector2~0_combout\) # ((\inst|state.fetch~q\ & \inst|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.fetch~q\,
	datac => \inst|Add0~18_combout\,
	datad => \inst|Selector2~0_combout\,
	combout => \inst|Selector2~1_combout\);

-- Location: LCCOMB_X56_Y42_N24
\inst|PC_stack[9][9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC_stack[9][9]~feeder_combout\ = \inst|PC_stack[8][9]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|PC_stack[8][9]~q\,
	combout => \inst|PC_stack[9][9]~feeder_combout\);

-- Location: FF_X56_Y42_N25
\inst|PC_stack[9][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|PC_stack[9][9]~feeder_combout\,
	ena => \inst|PC_stack[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[9][9]~q\);

-- Location: LCCOMB_X56_Y42_N28
\inst|Selector120~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector120~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[9][9]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[7][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[9][9]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[7][9]~q\,
	combout => \inst|Selector120~0_combout\);

-- Location: FF_X56_Y42_N29
\inst|PC_stack[8][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector120~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[8][9]~q\);

-- Location: LCCOMB_X56_Y42_N0
\inst|Selector109~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector109~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[8][9]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[6][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[6][9]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[8][9]~q\,
	combout => \inst|Selector109~0_combout\);

-- Location: FF_X56_Y42_N1
\inst|PC_stack[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector109~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[7][9]~q\);

-- Location: LCCOMB_X56_Y42_N4
\inst|Selector98~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector98~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[7][9]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[5][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[5][9]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[7][9]~q\,
	combout => \inst|Selector98~0_combout\);

-- Location: FF_X56_Y42_N5
\inst|PC_stack[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector98~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[6][9]~q\);

-- Location: LCCOMB_X56_Y42_N20
\inst|Selector87~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector87~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[6][9]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[4][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[6][9]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[4][9]~q\,
	combout => \inst|Selector87~0_combout\);

-- Location: FF_X56_Y42_N21
\inst|PC_stack[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector87~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[5][9]~q\);

-- Location: LCCOMB_X56_Y42_N16
\inst|Selector76~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector76~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[5][9]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[3][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[3][9]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[5][9]~q\,
	combout => \inst|Selector76~0_combout\);

-- Location: FF_X56_Y42_N17
\inst|PC_stack[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector76~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[4][9]~q\);

-- Location: LCCOMB_X55_Y40_N10
\inst|Selector65~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector65~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[4][9]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[2][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[2][9]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[4][9]~q\,
	combout => \inst|Selector65~0_combout\);

-- Location: FF_X55_Y40_N11
\inst|PC_stack[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector65~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[3][9]~q\);

-- Location: LCCOMB_X55_Y40_N26
\inst|Selector54~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector54~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[3][9]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[1][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[1][9]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[3][9]~q\,
	combout => \inst|Selector54~0_combout\);

-- Location: FF_X55_Y40_N27
\inst|PC_stack[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector54~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[2][9]~q\);

-- Location: LCCOMB_X55_Y40_N30
\inst|Selector43~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector43~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[2][9]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[0][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[2][9]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[0][9]~q\,
	combout => \inst|Selector43~0_combout\);

-- Location: FF_X55_Y40_N31
\inst|PC_stack[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector43~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[1][9]~q\);

-- Location: LCCOMB_X55_Y40_N2
\inst|Selector32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector32~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[1][9]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[1][9]~q\,
	datab => \inst|PC\(9),
	datac => \inst|state.ex_return~q\,
	combout => \inst|Selector32~0_combout\);

-- Location: FF_X55_Y40_N3
\inst|PC_stack[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector32~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[0][9]~q\);

-- Location: LCCOMB_X55_Y40_N14
\inst|Selector2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector2~2_combout\ = (\inst|state.ex_return~q\ & (((\inst|PC_stack[0][9]~q\)))) # (!\inst|state.ex_return~q\ & (\inst|Selector2~1_combout\ & (\inst|state.init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector2~1_combout\,
	datab => \inst|state.init~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[0][9]~q\,
	combout => \inst|Selector2~2_combout\);

-- Location: FF_X55_Y40_N15
\inst|PC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector2~2_combout\,
	ena => \inst|PC[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(9));

-- Location: LCCOMB_X55_Y43_N4
\inst|next_mem_addr[9]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|next_mem_addr[9]~9_combout\ = (\inst|Selector2~0_combout\) # ((\inst|PC\(9) & \inst|state.fetch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(9),
	datac => \inst|state.fetch~q\,
	datad => \inst|Selector2~0_combout\,
	combout => \inst|next_mem_addr[9]~9_combout\);

-- Location: FF_X57_Y44_N5
\inst|IR[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|altsyncram_component|auto_generated|q_a\(8),
	sload => VCC,
	ena => \inst|IR[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR\(8));

-- Location: LCCOMB_X55_Y44_N24
\inst|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector3~0_combout\ = (!\inst|state.fetch~q\ & ((\inst|WideNor0~combout\ & ((\inst|altsyncram_component|auto_generated|q_a\(8)))) # (!\inst|WideNor0~combout\ & (\inst|IR\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.fetch~q\,
	datab => \inst|WideNor0~combout\,
	datac => \inst|IR\(8),
	datad => \inst|altsyncram_component|auto_generated|q_a\(8),
	combout => \inst|Selector3~0_combout\);

-- Location: LCCOMB_X54_Y44_N16
\inst|next_mem_addr[8]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|next_mem_addr[8]~8_combout\ = (\inst|Selector3~0_combout\) # ((\inst|PC\(8) & \inst|state.fetch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector3~0_combout\,
	datab => \inst|PC\(8),
	datac => \inst|state.fetch~q\,
	combout => \inst|next_mem_addr[8]~8_combout\);

-- Location: M9K_X53_Y43_N0
\inst|altsyncram_component|auto_generated|ram_block1a7\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002222220002E10010000000F0000000002000000080446106191A100446106191B1022800800000000080808200030A0030A0324600470046004600800800A04000A0000007811371161156115611315141111511A11A200000306030434601893711A8546116198618661546191110901069111911109010186888688211111187886828212381181864208228802860829406000008446006088989909080082070060899690806A0028A8A8A8A",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "AccelerometerDemo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "SCOMP:inst|altsyncram:altsyncram_component|altsyncram_ujs3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 11,
	port_b_data_width => 4,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst|MW~q\,
	portare => VCC,
	clk0 => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \inst|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \inst|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

-- Location: LCCOMB_X54_Y43_N12
\inst|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector4~0_combout\ = (!\inst|state.fetch~q\ & ((\inst|WideNor0~combout\ & (\inst|altsyncram_component|auto_generated|q_a\(7))) # (!\inst|WideNor0~combout\ & ((\inst|IR\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(7),
	datab => \inst|WideNor0~combout\,
	datac => \inst|state.fetch~q\,
	datad => \inst|IR\(7),
	combout => \inst|Selector4~0_combout\);

-- Location: LCCOMB_X54_Y43_N26
\inst|next_mem_addr[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|next_mem_addr[7]~7_combout\ = (\inst|Selector4~0_combout\) # ((\inst|state.fetch~q\ & \inst|PC\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector4~0_combout\,
	datac => \inst|state.fetch~q\,
	datad => \inst|PC\(7),
	combout => \inst|next_mem_addr[7]~7_combout\);

-- Location: M9K_X53_Y46_N0
\inst|altsyncram_component|auto_generated|ram_block1a2\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000022000014660F0008402100F0000000002877877708782972A49E878782972A49D8757977970000000000A001302D3002D300F230030F32302393229229230322300000000F0995F9A0A993A9809A8A8999A8A6990A90BA00002202222520270A3F7720A829A2A4027002729173978012720397839870126260AAE03AED67667605E0E09EA6B796796009A008900971790507808890004824424060400908400033F3303400308430939082028001",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "AccelerometerDemo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "SCOMP:inst|altsyncram:altsyncram_component|altsyncram_ujs3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 11,
	port_b_data_width => 4,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst|MW~q\,
	portare => VCC,
	clk0 => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \inst|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: LCCOMB_X54_Y43_N24
\inst|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector5~0_combout\ = (!\inst|state.fetch~q\ & ((\inst|WideNor0~combout\ & (\inst|altsyncram_component|auto_generated|q_a\(6))) # (!\inst|WideNor0~combout\ & ((\inst|IR\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(6),
	datab => \inst|WideNor0~combout\,
	datac => \inst|state.fetch~q\,
	datad => \inst|IR\(6),
	combout => \inst|Selector5~0_combout\);

-- Location: LCCOMB_X54_Y43_N10
\inst|next_mem_addr[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|next_mem_addr[6]~6_combout\ = (\inst|Selector5~0_combout\) # ((\inst|state.fetch~q\ & \inst|PC\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Selector5~0_combout\,
	datac => \inst|state.fetch~q\,
	datad => \inst|PC\(6),
	combout => \inst|next_mem_addr[6]~6_combout\);

-- Location: FF_X57_Y44_N25
\inst|IR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|altsyncram_component|auto_generated|q_a\(5),
	sload => VCC,
	ena => \inst|IR[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR\(5));

-- Location: LCCOMB_X54_Y42_N28
\inst|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector6~0_combout\ = (!\inst|state.fetch~q\ & ((\inst|WideNor0~combout\ & ((\inst|altsyncram_component|auto_generated|q_a\(5)))) # (!\inst|WideNor0~combout\ & (\inst|IR\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.fetch~q\,
	datab => \inst|IR\(5),
	datac => \inst|WideNor0~combout\,
	datad => \inst|altsyncram_component|auto_generated|q_a\(5),
	combout => \inst|Selector6~0_combout\);

-- Location: LCCOMB_X54_Y42_N8
\inst|next_mem_addr[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|next_mem_addr[5]~5_combout\ = (\inst|Selector6~0_combout\) # ((\inst|state.fetch~q\ & \inst|PC\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Selector6~0_combout\,
	datac => \inst|state.fetch~q\,
	datad => \inst|PC\(5),
	combout => \inst|next_mem_addr[5]~5_combout\);

-- Location: LCCOMB_X54_Y43_N20
\inst|Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector8~0_combout\ = (!\inst|state.fetch~q\ & ((\inst|WideNor0~combout\ & (\inst|altsyncram_component|auto_generated|q_a\(3))) # (!\inst|WideNor0~combout\ & ((\inst|IR\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(3),
	datab => \inst|WideNor0~combout\,
	datac => \inst|state.fetch~q\,
	datad => \inst|IR\(3),
	combout => \inst|Selector8~0_combout\);

-- Location: LCCOMB_X54_Y43_N22
\inst|next_mem_addr[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|next_mem_addr[3]~3_combout\ = (\inst|Selector8~0_combout\) # ((\inst|state.fetch~q\ & \inst|PC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Selector8~0_combout\,
	datac => \inst|state.fetch~q\,
	datad => \inst|PC\(3),
	combout => \inst|next_mem_addr[3]~3_combout\);

-- Location: FF_X59_Y44_N15
\inst|IR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|altsyncram_component|auto_generated|q_a\(4),
	sload => VCC,
	ena => \inst|IR[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR\(4));

-- Location: LCCOMB_X58_Y43_N28
\inst|Selector12~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector12~11_combout\ = (\inst|state.ex_and~q\ & ((\inst|altsyncram_component|auto_generated|q_a\(15)) # ((\inst|IR\(4) & \inst|state.ex_shift~q\)))) # (!\inst|state.ex_and~q\ & (((\inst|IR\(4) & \inst|state.ex_shift~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_and~q\,
	datab => \inst|altsyncram_component|auto_generated|q_a\(15),
	datac => \inst|IR\(4),
	datad => \inst|state.ex_shift~q\,
	combout => \inst|Selector12~11_combout\);

-- Location: LCCOMB_X55_Y45_N24
\inst|Add1~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~78_combout\ = (\inst|state.ex_sub~q\ & (!\inst|altsyncram_component|auto_generated|q_a\(15))) # (!\inst|state.ex_sub~q\ & (\inst|altsyncram_component|auto_generated|q_a\(15) & \inst|state.ex_add~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.ex_sub~q\,
	datac => \inst|altsyncram_component|auto_generated|q_a\(15),
	datad => \inst|state.ex_add~q\,
	combout => \inst|Add1~78_combout\);

-- Location: LCCOMB_X55_Y45_N14
\inst|Add1~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~79_combout\ = (\inst|IR\(10) & ((\inst|Add1~1_combout\) # ((\inst|WideOr3~2_combout\ & \inst|Add1~78_combout\)))) # (!\inst|IR\(10) & (((\inst|WideOr3~2_combout\ & \inst|Add1~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(10),
	datab => \inst|Add1~1_combout\,
	datac => \inst|WideOr3~2_combout\,
	datad => \inst|Add1~78_combout\,
	combout => \inst|Add1~79_combout\);

-- Location: LCCOMB_X56_Y45_N18
\inst|Add1~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~80_combout\ = (\inst|AC\(15) & ((\inst|state.ex_add~q\) # ((\inst|state.ex_sub~q\) # (\inst|state.ex_addi~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_add~q\,
	datab => \inst|state.ex_sub~q\,
	datac => \inst|state.ex_addi~q\,
	datad => \inst|AC\(15),
	combout => \inst|Add1~80_combout\);

-- Location: LCCOMB_X56_Y45_N16
\inst|Add1~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~81_combout\ = \inst|Add1~79_combout\ $ (\inst|Add1~77\ $ (!\inst|Add1~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~79_combout\,
	datad => \inst|Add1~80_combout\,
	cin => \inst|Add1~77\,
	combout => \inst|Add1~81_combout\);

-- Location: LCCOMB_X60_Y44_N10
\inst|Selector12~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector12~12_combout\ = (\inst|Selector12~11_combout\ & ((\inst|AC\(15)) # ((\inst|Add1~81_combout\ & \inst|AC[8]~0_combout\)))) # (!\inst|Selector12~11_combout\ & (\inst|Add1~81_combout\ & (\inst|AC[8]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector12~11_combout\,
	datab => \inst|Add1~81_combout\,
	datac => \inst|AC[8]~0_combout\,
	datad => \inst|AC\(15),
	combout => \inst|Selector12~12_combout\);

-- Location: LCCOMB_X60_Y44_N0
\inst|Selector12~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector12~10_combout\ = (\inst|AC\(15) & (((\inst|state.ex_xor~q\ & !\inst|altsyncram_component|auto_generated|q_a\(15))) # (!\inst|Selector27~0_combout\))) # (!\inst|AC\(15) & (((\inst|state.ex_xor~q\ & 
-- \inst|altsyncram_component|auto_generated|q_a\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector27~0_combout\,
	datab => \inst|AC\(15),
	datac => \inst|state.ex_xor~q\,
	datad => \inst|altsyncram_component|auto_generated|q_a\(15),
	combout => \inst|Selector12~10_combout\);

-- Location: LCCOMB_X57_Y47_N26
\inst|shifter|auto_generated|sbit_w[55]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[55]~85_combout\ = (\inst|IR\(2) & ((\inst|IR\(4) & ((\inst|shifter|auto_generated|sbit_w[43]~69_combout\))) # (!\inst|IR\(4) & (\inst|shifter|auto_generated|sbit_w[35]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[35]~73_combout\,
	datab => \inst|IR\(2),
	datac => \inst|IR\(4),
	datad => \inst|shifter|auto_generated|sbit_w[43]~69_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[55]~85_combout\);

-- Location: LCCOMB_X57_Y47_N10
\inst|Selector12~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector12~16_combout\ = (\inst|Selector19~1_combout\ & ((\inst|shifter|auto_generated|sbit_w[55]~85_combout\) # ((\inst|shifter|auto_generated|sbit_w[39]~66_combout\ & !\inst|IR\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[39]~66_combout\,
	datab => \inst|Selector19~1_combout\,
	datac => \inst|shifter|auto_generated|sbit_w[55]~85_combout\,
	datad => \inst|IR\(2),
	combout => \inst|Selector12~16_combout\);

-- Location: LCCOMB_X60_Y46_N20
\inst|Selector12~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector12~7_combout\ = (\inst|IR\(0) & ((\inst|AC\(14)))) # (!\inst|IR\(0) & (\inst|AC\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(15),
	datab => \inst|AC\(14),
	datad => \inst|IR\(0),
	combout => \inst|Selector12~7_combout\);

-- Location: LCCOMB_X60_Y46_N16
\inst|Selector12~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector12~8_combout\ = (\inst|IR\(1) & (\inst|shifter|auto_generated|sbit_w[29]~34_combout\)) # (!\inst|IR\(1) & ((\inst|Selector12~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(1),
	datab => \inst|shifter|auto_generated|sbit_w[29]~34_combout\,
	datad => \inst|Selector12~7_combout\,
	combout => \inst|Selector12~8_combout\);

-- Location: LCCOMB_X60_Y46_N2
\inst|Selector12~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector12~9_combout\ = (\inst|IR\(2) & (\inst|shifter|auto_generated|sbit_w[43]~69_combout\)) # (!\inst|IR\(2) & ((\inst|Selector12~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[43]~69_combout\,
	datab => \inst|Selector12~8_combout\,
	datad => \inst|IR\(2),
	combout => \inst|Selector12~9_combout\);

-- Location: LCCOMB_X60_Y46_N22
\inst|Selector12~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector12~15_combout\ = (!\inst|IR\(3) & (!\inst|IR\(4) & (\inst|state.ex_shift~q\ & \inst|Selector12~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(3),
	datab => \inst|IR\(4),
	datac => \inst|state.ex_shift~q\,
	datad => \inst|Selector12~9_combout\,
	combout => \inst|Selector12~15_combout\);

-- Location: LCCOMB_X60_Y44_N12
\inst|Selector12~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector12~13_combout\ = (\inst|Selector12~12_combout\) # ((\inst|Selector12~10_combout\) # ((\inst|Selector12~16_combout\) # (\inst|Selector12~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector12~12_combout\,
	datab => \inst|Selector12~10_combout\,
	datac => \inst|Selector12~16_combout\,
	datad => \inst|Selector12~15_combout\,
	combout => \inst|Selector12~13_combout\);

-- Location: LCCOMB_X60_Y44_N26
\inst|Selector12~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector12~6_combout\ = (\inst|Selector27~3_combout\ & ((\inst|altsyncram_component|auto_generated|q_a\(15)) # ((\inst|IR\(10) & \inst|state.ex_loadi~q\)))) # (!\inst|Selector27~3_combout\ & (((\inst|IR\(10) & \inst|state.ex_loadi~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector27~3_combout\,
	datab => \inst|altsyncram_component|auto_generated|q_a\(15),
	datac => \inst|IR\(10),
	datad => \inst|state.ex_loadi~q\,
	combout => \inst|Selector12~6_combout\);

-- Location: LCCOMB_X60_Y43_N0
\inst13|inst14|data_out[15]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_out[15]~19_combout\ = (\inst13|inst14|state.Rx2~q\ & (\inst13|inst14|prev_busy~q\ & (!\inst13|inst|busy~q\ & \inst13|inst|data_rd\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|state.Rx2~q\,
	datab => \inst13|inst14|prev_busy~q\,
	datac => \inst13|inst|busy~q\,
	datad => \inst13|inst|data_rd\(7),
	combout => \inst13|inst14|data_out[15]~19_combout\);

-- Location: FF_X60_Y43_N1
\inst13|inst14|data_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|data_out[15]~19_combout\,
	ena => \inst13|inst14|data_out[15]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_out\(15));

-- Location: LCCOMB_X56_Y44_N28
\inst4|COUNT[15]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|COUNT[15]~43_combout\ = \inst4|COUNT[14]~42\ $ (!\inst4|COUNT\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst4|COUNT\(15),
	cin => \inst4|COUNT[14]~42\,
	combout => \inst4|COUNT[15]~43_combout\);

-- Location: FF_X56_Y44_N29
\inst4|COUNT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_10Hz~clkctrl_outclk\,
	d => \inst4|COUNT[15]~43_combout\,
	clrn => \inst4|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|COUNT\(15));

-- Location: LCCOMB_X60_Y44_N6
\inst13|inst1[15]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[15]~45_combout\ = (\inst|IO_WRITE_int~q\ & (\inst|AC\(15) & ((\inst4|COUNT\(15)) # (!\inst4|IO_OUT~combout\)))) # (!\inst|IO_WRITE_int~q\ & (((\inst4|COUNT\(15))) # (!\inst4|IO_OUT~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IO_WRITE_int~q\,
	datab => \inst4|IO_OUT~combout\,
	datac => \inst|AC\(15),
	datad => \inst4|COUNT\(15),
	combout => \inst13|inst1[15]~45_combout\);

-- Location: LCCOMB_X60_Y44_N28
\inst13|inst1[15]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[15]~46_combout\ = (\inst13|inst1[15]~45_combout\ & (\inst13|inst1[10]~34_combout\ & ((\inst13|inst14|data_out\(15)) # (!\inst13|inst7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7~combout\,
	datab => \inst13|inst14|data_out\(15),
	datac => \inst13|inst1[15]~45_combout\,
	datad => \inst13|inst1[10]~34_combout\,
	combout => \inst13|inst1[15]~46_combout\);

-- Location: LCCOMB_X60_Y44_N16
\inst|Selector12~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector12~14_combout\ = (\inst|Selector12~13_combout\) # ((\inst|Selector12~6_combout\) # ((\inst|state.ex_in2~q\ & \inst13|inst1[15]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector12~13_combout\,
	datab => \inst|state.ex_in2~q\,
	datac => \inst|Selector12~6_combout\,
	datad => \inst13|inst1[15]~46_combout\,
	combout => \inst|Selector12~14_combout\);

-- Location: FF_X60_Y44_N17
\inst|AC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector12~14_combout\,
	ena => \inst13|inst14|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|AC\(15));

-- Location: LCCOMB_X60_Y43_N6
\inst|state~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state~51_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(13) & (\inst|state~36_combout\ & !\inst|altsyncram_component|auto_generated|q_a\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(13),
	datac => \inst|state~36_combout\,
	datad => \inst|altsyncram_component|auto_generated|q_a\(14),
	combout => \inst|state~51_combout\);

-- Location: FF_X60_Y43_N7
\inst|state.ex_jpos\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|state~51_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ex_jpos~q\);

-- Location: LCCOMB_X60_Y43_N16
\inst|state~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state~52_combout\ = (!\inst|altsyncram_component|auto_generated|q_a\(13) & (\inst|state~38_combout\ & \inst|altsyncram_component|auto_generated|q_a\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(13),
	datac => \inst|state~38_combout\,
	datad => \inst|altsyncram_component|auto_generated|q_a\(14),
	combout => \inst|state~52_combout\);

-- Location: FF_X60_Y43_N17
\inst|state.ex_jzero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|state~52_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ex_jzero~q\);

-- Location: LCCOMB_X57_Y42_N16
\inst|WideOr2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr2~0_combout\ = (!\inst|state.fetch~q\ & (!\inst|state.ex_return~q\ & (!\inst|state.ex_call~q\ & \inst|state.init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.fetch~q\,
	datab => \inst|state.ex_return~q\,
	datac => \inst|state.ex_call~q\,
	datad => \inst|state.init~q\,
	combout => \inst|WideOr2~0_combout\);

-- Location: LCCOMB_X60_Y43_N4
\inst|state~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state~54_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(13) & (\inst|Selector30~0_combout\ & !\inst|altsyncram_component|auto_generated|q_a\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(13),
	datac => \inst|Selector30~0_combout\,
	datad => \inst|altsyncram_component|auto_generated|q_a\(14),
	combout => \inst|state~54_combout\);

-- Location: FF_X60_Y43_N5
\inst|state.ex_jump\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|state~54_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ex_jump~q\);

-- Location: LCCOMB_X60_Y43_N2
\inst|state~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state~53_combout\ = (\inst|state~44_combout\ & (\inst|altsyncram_component|auto_generated|q_a\(13) & !\inst|altsyncram_component|auto_generated|q_a\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state~44_combout\,
	datac => \inst|altsyncram_component|auto_generated|q_a\(13),
	datad => \inst|altsyncram_component|auto_generated|q_a\(14),
	combout => \inst|state~53_combout\);

-- Location: FF_X60_Y43_N3
\inst|state.ex_jneg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|state~53_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ex_jneg~q\);

-- Location: LCCOMB_X61_Y45_N30
\inst|PC[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC[0]~0_combout\ = (\inst|state.ex_jneg~q\ & (((!\inst|AC\(15))))) # (!\inst|state.ex_jneg~q\ & (\inst|WideOr2~0_combout\ & (!\inst|state.ex_jump~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr2~0_combout\,
	datab => \inst|state.ex_jump~q\,
	datac => \inst|state.ex_jneg~q\,
	datad => \inst|AC\(15),
	combout => \inst|PC[0]~0_combout\);

-- Location: LCCOMB_X60_Y46_N26
\inst|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (!\inst|AC\(15) & (!\inst|AC\(14) & (!\inst|AC\(13) & !\inst|AC\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(15),
	datab => \inst|AC\(14),
	datac => \inst|AC\(13),
	datad => \inst|AC\(12),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X59_Y47_N26
\inst|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (!\inst|AC\(8) & (!\inst|AC\(11) & (!\inst|AC\(10) & !\inst|AC\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(8),
	datab => \inst|AC\(11),
	datac => \inst|AC\(10),
	datad => \inst|AC\(9),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X58_Y43_N22
\inst|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~3_combout\ = (!\inst|AC\(1) & (!\inst|AC\(3) & (!\inst|AC\(0) & !\inst|AC\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(1),
	datab => \inst|AC\(3),
	datac => \inst|AC\(0),
	datad => \inst|AC\(2),
	combout => \inst|Equal0~3_combout\);

-- Location: LCCOMB_X58_Y46_N26
\inst|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (!\inst|AC\(5) & (!\inst|AC\(6) & (!\inst|AC\(7) & !\inst|AC\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(5),
	datab => \inst|AC\(6),
	datac => \inst|AC\(7),
	datad => \inst|AC\(4),
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X60_Y44_N14
\inst|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~4_combout\ = (\inst|Equal0~0_combout\ & (\inst|Equal0~1_combout\ & (\inst|Equal0~3_combout\ & \inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Equal0~3_combout\,
	datad => \inst|Equal0~2_combout\,
	combout => \inst|Equal0~4_combout\);

-- Location: LCCOMB_X61_Y44_N26
\inst|PC[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC[0]~1_combout\ = (\inst|state.ex_jpos~q\ & (((\inst|Equal0~4_combout\)))) # (!\inst|state.ex_jpos~q\ & ((\inst|state.ex_jzero~q\ & ((!\inst|Equal0~4_combout\))) # (!\inst|state.ex_jzero~q\ & (\inst|PC[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_jzero~q\,
	datab => \inst|PC[0]~0_combout\,
	datac => \inst|state.ex_jpos~q\,
	datad => \inst|Equal0~4_combout\,
	combout => \inst|PC[0]~1_combout\);

-- Location: LCCOMB_X61_Y44_N24
\inst|PC[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC[0]~2_combout\ = (!\inst|PC[0]~1_combout\ & (\inst13|inst14|data_out[7]~0_combout\ & ((!\inst|state.ex_jpos~q\) # (!\inst|AC\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(15),
	datab => \inst|state.ex_jpos~q\,
	datac => \inst|PC[0]~1_combout\,
	datad => \inst13|inst14|data_out[7]~0_combout\,
	combout => \inst|PC[0]~2_combout\);

-- Location: FF_X55_Y41_N29
\inst|PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector11~2_combout\,
	ena => \inst|PC[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(0));

-- Location: LCCOMB_X54_Y44_N24
\inst|Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector10~0_combout\ = (!\inst|state.fetch~q\ & ((\inst|WideNor0~combout\ & (\inst|altsyncram_component|auto_generated|q_a\(1))) # (!\inst|WideNor0~combout\ & ((\inst|IR\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(1),
	datab => \inst|IR\(1),
	datac => \inst|state.fetch~q\,
	datad => \inst|WideNor0~combout\,
	combout => \inst|Selector10~0_combout\);

-- Location: LCCOMB_X54_Y44_N14
\inst|Selector10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector10~1_combout\ = (\inst|Selector10~0_combout\) # ((\inst|state.fetch~q\ & \inst|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.fetch~q\,
	datac => \inst|Add0~2_combout\,
	datad => \inst|Selector10~0_combout\,
	combout => \inst|Selector10~1_combout\);

-- Location: LCCOMB_X56_Y41_N6
\inst|PC_stack[9][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC_stack[9][1]~feeder_combout\ = \inst|PC_stack[8][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|PC_stack[8][1]~q\,
	combout => \inst|PC_stack[9][1]~feeder_combout\);

-- Location: FF_X56_Y41_N7
\inst|PC_stack[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|PC_stack[9][1]~feeder_combout\,
	ena => \inst|PC_stack[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[9][1]~q\);

-- Location: LCCOMB_X56_Y41_N16
\inst|Selector128~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector128~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[9][1]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[7][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[9][1]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[7][1]~q\,
	combout => \inst|Selector128~0_combout\);

-- Location: FF_X56_Y41_N17
\inst|PC_stack[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector128~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[8][1]~q\);

-- Location: LCCOMB_X56_Y41_N28
\inst|Selector117~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector117~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[8][1]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[6][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[6][1]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[8][1]~q\,
	combout => \inst|Selector117~0_combout\);

-- Location: FF_X56_Y41_N29
\inst|PC_stack[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector117~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[7][1]~q\);

-- Location: LCCOMB_X56_Y41_N8
\inst|Selector106~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector106~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[7][1]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[5][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[7][1]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[5][1]~q\,
	combout => \inst|Selector106~0_combout\);

-- Location: FF_X56_Y41_N9
\inst|PC_stack[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector106~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[6][1]~q\);

-- Location: LCCOMB_X56_Y41_N20
\inst|Selector95~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector95~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[6][1]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[4][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[6][1]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[4][1]~q\,
	combout => \inst|Selector95~0_combout\);

-- Location: FF_X56_Y41_N21
\inst|PC_stack[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector95~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[5][1]~q\);

-- Location: LCCOMB_X57_Y41_N24
\inst|Selector84~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector84~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[5][1]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[3][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_return~q\,
	datab => \inst|PC_stack[5][1]~q\,
	datad => \inst|PC_stack[3][1]~q\,
	combout => \inst|Selector84~0_combout\);

-- Location: FF_X57_Y41_N25
\inst|PC_stack[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector84~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[4][1]~q\);

-- Location: LCCOMB_X57_Y41_N16
\inst|Selector73~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector73~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[4][1]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[2][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_return~q\,
	datab => \inst|PC_stack[2][1]~q\,
	datad => \inst|PC_stack[4][1]~q\,
	combout => \inst|Selector73~0_combout\);

-- Location: FF_X57_Y41_N17
\inst|PC_stack[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector73~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[3][1]~q\);

-- Location: LCCOMB_X57_Y41_N28
\inst|Selector62~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector62~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[3][1]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[1][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[3][1]~q\,
	datac => \inst|PC_stack[1][1]~q\,
	datad => \inst|state.ex_return~q\,
	combout => \inst|Selector62~0_combout\);

-- Location: FF_X57_Y41_N29
\inst|PC_stack[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector62~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[2][1]~q\);

-- Location: LCCOMB_X57_Y41_N4
\inst|Selector51~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector51~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[2][1]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[0][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_return~q\,
	datac => \inst|PC_stack[0][1]~q\,
	datad => \inst|PC_stack[2][1]~q\,
	combout => \inst|Selector51~0_combout\);

-- Location: FF_X57_Y41_N5
\inst|PC_stack[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector51~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[1][1]~q\);

-- Location: LCCOMB_X57_Y41_N8
\inst|Selector40~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector40~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[1][1]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_return~q\,
	datac => \inst|PC_stack[1][1]~q\,
	datad => \inst|PC\(1),
	combout => \inst|Selector40~0_combout\);

-- Location: FF_X57_Y41_N9
\inst|PC_stack[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector40~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[0][1]~q\);

-- Location: LCCOMB_X57_Y41_N0
\inst|Selector10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector10~2_combout\ = (\inst|state.ex_return~q\ & (((\inst|PC_stack[0][1]~q\)))) # (!\inst|state.ex_return~q\ & (\inst|Selector10~1_combout\ & ((\inst|state.init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector10~1_combout\,
	datab => \inst|PC_stack[0][1]~q\,
	datac => \inst|state.init~q\,
	datad => \inst|state.ex_return~q\,
	combout => \inst|Selector10~2_combout\);

-- Location: FF_X57_Y41_N1
\inst|PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector10~2_combout\,
	ena => \inst|PC[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(1));

-- Location: LCCOMB_X54_Y44_N26
\inst|next_mem_addr[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|next_mem_addr[1]~1_combout\ = (\inst|Selector10~0_combout\) # ((\inst|PC\(1) & \inst|state.fetch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(1),
	datab => \inst|Selector10~0_combout\,
	datac => \inst|state.fetch~q\,
	combout => \inst|next_mem_addr[1]~1_combout\);

-- Location: LCCOMB_X58_Y43_N24
\inst|Selector30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector30~0_combout\ = (!\inst|altsyncram_component|auto_generated|q_a\(12) & (!\inst|altsyncram_component|auto_generated|q_a\(15) & (\inst|altsyncram_component|auto_generated|q_a\(11) & \inst|state.decode~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(12),
	datab => \inst|altsyncram_component|auto_generated|q_a\(15),
	datac => \inst|altsyncram_component|auto_generated|q_a\(11),
	datad => \inst|state.decode~q\,
	combout => \inst|Selector30~0_combout\);

-- Location: LCCOMB_X59_Y43_N4
\inst|Selector30~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector30~1_combout\ = (\inst|state.ex_iload~q\) # ((!\inst|altsyncram_component|auto_generated|q_a\(13) & (\inst|Selector30~0_combout\ & !\inst|altsyncram_component|auto_generated|q_a\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(13),
	datab => \inst|Selector30~0_combout\,
	datac => \inst|altsyncram_component|auto_generated|q_a\(14),
	datad => \inst|state.ex_iload~q\,
	combout => \inst|Selector30~1_combout\);

-- Location: FF_X59_Y43_N5
\inst|state.ex_load\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector30~1_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ex_load~q\);

-- Location: LCCOMB_X59_Y47_N24
\inst|Selector27~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector27~3_combout\ = (\inst|state.ex_load~q\) # (\inst|state.ex_or~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|state.ex_load~q\,
	datad => \inst|state.ex_or~q\,
	combout => \inst|Selector27~3_combout\);

-- Location: LCCOMB_X58_Y45_N30
\inst|Selector25~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector25~6_combout\ = (\inst|Selector27~3_combout\ & ((\inst|altsyncram_component|auto_generated|q_a\(2)) # ((\inst|state.ex_loadi~q\ & \inst|IR\(2))))) # (!\inst|Selector27~3_combout\ & (\inst|state.ex_loadi~q\ & (\inst|IR\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector27~3_combout\,
	datab => \inst|state.ex_loadi~q\,
	datac => \inst|IR\(2),
	datad => \inst|altsyncram_component|auto_generated|q_a\(2),
	combout => \inst|Selector25~6_combout\);

-- Location: LCCOMB_X58_Y45_N12
\inst|Selector25~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector25~7_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(2) & ((\inst|AC\(2) & ((\inst|state.ex_and~q\))) # (!\inst|AC\(2) & (\inst|state.ex_xor~q\)))) # (!\inst|altsyncram_component|auto_generated|q_a\(2) & (\inst|state.ex_xor~q\ & 
-- ((\inst|AC\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_xor~q\,
	datab => \inst|state.ex_and~q\,
	datac => \inst|altsyncram_component|auto_generated|q_a\(2),
	datad => \inst|AC\(2),
	combout => \inst|Selector25~7_combout\);

-- Location: LCCOMB_X58_Y45_N22
\inst|Selector25~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector25~8_combout\ = (\inst|Selector25~6_combout\) # ((\inst|Selector25~7_combout\) # ((\inst|AC\(2) & !\inst|Selector27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector25~6_combout\,
	datab => \inst|AC\(2),
	datac => \inst|Selector27~0_combout\,
	datad => \inst|Selector25~7_combout\,
	combout => \inst|Selector25~8_combout\);

-- Location: LCCOMB_X55_Y44_N0
\inst|Selector25~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector25~10_combout\ = (\inst|state.ex_shift~q\ & (\inst|IR\(4) & (\inst|IR\(3) & \inst|shifter|auto_generated|sbit_w[58]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_shift~q\,
	datab => \inst|IR\(4),
	datac => \inst|IR\(3),
	datad => \inst|shifter|auto_generated|sbit_w[58]~61_combout\,
	combout => \inst|Selector25~10_combout\);

-- Location: LCCOMB_X55_Y44_N14
\inst|Selector25~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector25~4_combout\ = (\inst|Selector20~2_combout\ & ((\inst|Selector17~0_combout\) # ((\inst|shifter|auto_generated|sbit_w[48]~13_combout\ & \inst|shifter|auto_generated|sbit_w[38]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector20~2_combout\,
	datab => \inst|Selector17~0_combout\,
	datac => \inst|shifter|auto_generated|sbit_w[48]~13_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[38]~57_combout\,
	combout => \inst|Selector25~4_combout\);

-- Location: LCCOMB_X57_Y45_N0
\inst|Selector25~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector25~5_combout\ = (\inst|Selector25~10_combout\) # ((\inst|Selector25~4_combout\) # ((\inst|Add1~16_combout\ & \inst|AC[8]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector25~10_combout\,
	datab => \inst|Add1~16_combout\,
	datac => \inst|Selector25~4_combout\,
	datad => \inst|AC[8]~0_combout\,
	combout => \inst|Selector25~5_combout\);

-- Location: LCCOMB_X58_Y45_N0
\inst|Selector25~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector25~9_combout\ = (\inst|Selector25~8_combout\) # ((\inst|Selector25~5_combout\) # ((\inst|state.ex_in2~q\ & \inst13|inst1[2]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector25~8_combout\,
	datab => \inst|state.ex_in2~q\,
	datac => \inst|Selector25~5_combout\,
	datad => \inst13|inst1[2]~12_combout\,
	combout => \inst|Selector25~9_combout\);

-- Location: FF_X58_Y45_N1
\inst|AC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector25~9_combout\,
	ena => \inst13|inst14|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|AC\(2));

-- Location: FF_X57_Y44_N23
\inst|IR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|altsyncram_component|auto_generated|q_a\(2),
	sload => VCC,
	ena => \inst|IR[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR\(2));

-- Location: LCCOMB_X60_Y45_N20
\inst|Selector27~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector27~8_combout\ = (\inst|Selector27~7_combout\ & ((\inst|shifter|auto_generated|sbit_w[56]~28_combout\) # ((!\inst|IR\(2) & \inst|shifter|auto_generated|sbit_w[40]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(2),
	datab => \inst|Selector27~7_combout\,
	datac => \inst|shifter|auto_generated|sbit_w[56]~28_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[40]~32_combout\,
	combout => \inst|Selector27~8_combout\);

-- Location: LCCOMB_X60_Y45_N18
\inst|Selector27~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector27~1_combout\ = (\inst|AC\(0) & (((\inst|altsyncram_component|auto_generated|q_a\(0) & \inst|state.ex_and~q\)) # (!\inst|Selector27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(0),
	datab => \inst|state.ex_and~q\,
	datac => \inst|AC\(0),
	datad => \inst|Selector27~0_combout\,
	combout => \inst|Selector27~1_combout\);

-- Location: LCCOMB_X60_Y45_N12
\inst|Selector27~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector27~4_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(0) & ((\inst|Selector27~3_combout\) # ((\inst|state.ex_loadi~q\ & \inst|IR\(0))))) # (!\inst|altsyncram_component|auto_generated|q_a\(0) & (\inst|state.ex_loadi~q\ & 
-- (\inst|IR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(0),
	datab => \inst|state.ex_loadi~q\,
	datac => \inst|IR\(0),
	datad => \inst|Selector27~3_combout\,
	combout => \inst|Selector27~4_combout\);

-- Location: LCCOMB_X60_Y45_N16
\inst|Selector27~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector27~2_combout\ = (\inst|state.ex_xor~q\ & (\inst|altsyncram_component|auto_generated|q_a\(0) $ (\inst|AC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(0),
	datab => \inst|state.ex_xor~q\,
	datad => \inst|AC\(0),
	combout => \inst|Selector27~2_combout\);

-- Location: LCCOMB_X60_Y45_N26
\inst|Selector27~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector27~5_combout\ = (\inst|Selector27~4_combout\) # ((\inst|Selector27~2_combout\) # ((\inst|AC[8]~0_combout\ & \inst|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector27~4_combout\,
	datab => \inst|AC[8]~0_combout\,
	datac => \inst|Add1~6_combout\,
	datad => \inst|Selector27~2_combout\,
	combout => \inst|Selector27~5_combout\);

-- Location: LCCOMB_X60_Y45_N0
\inst|Selector27~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector27~6_combout\ = (\inst|Selector27~1_combout\) # ((\inst|Selector27~5_combout\) # ((\inst|shifter|auto_generated|sbit_w[48]~87_combout\ & \inst|Selector20~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[48]~87_combout\,
	datab => \inst|Selector27~1_combout\,
	datac => \inst|Selector27~5_combout\,
	datad => \inst|Selector20~2_combout\,
	combout => \inst|Selector27~6_combout\);

-- Location: LCCOMB_X61_Y43_N0
\inst13|inst14|data_out[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_out[0]~1_combout\ = (\inst13|inst|data_rd\(0) & (\inst13|inst14|prev_busy~q\ & (\inst13|inst14|state.Rx1~q\ & !\inst13|inst|busy~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|data_rd\(0),
	datab => \inst13|inst14|prev_busy~q\,
	datac => \inst13|inst14|state.Rx1~q\,
	datad => \inst13|inst|busy~q\,
	combout => \inst13|inst14|data_out[0]~1_combout\);

-- Location: FF_X61_Y43_N1
\inst13|inst14|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|data_out[0]~1_combout\,
	ena => \inst13|inst14|data_out[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_out\(0));

-- Location: LCCOMB_X58_Y44_N16
\inst13|inst1[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[0]~3_combout\ = (\inst13|inst7~combout\ & (\inst13|inst14|data_out\(0) & ((\inst4|COUNT\(0)) # (!\inst4|IO_OUT~combout\)))) # (!\inst13|inst7~combout\ & (((\inst4|COUNT\(0)) # (!\inst4|IO_OUT~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7~combout\,
	datab => \inst13|inst14|data_out\(0),
	datac => \inst4|IO_OUT~combout\,
	datad => \inst4|COUNT\(0),
	combout => \inst13|inst1[0]~3_combout\);

-- Location: LCCOMB_X58_Y44_N18
\inst13|inst1[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[0]~4_combout\ = (!\inst13|inst14|go~q\ & (\inst3|I2C_RDY_EN~0_combout\ & (!\inst13|inst14|running~q\ & \inst3|SWITCH_EN~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|go~q\,
	datab => \inst3|I2C_RDY_EN~0_combout\,
	datac => \inst13|inst14|running~q\,
	datad => \inst3|SWITCH_EN~2_combout\,
	combout => \inst13|inst1[0]~4_combout\);

-- Location: LCCOMB_X58_Y44_N8
\inst13|inst1[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[0]~5_combout\ = (\inst13|inst1[0]~3_combout\ & ((\inst|IO_WRITE_int~q\ & ((\inst|AC\(0)))) # (!\inst|IO_WRITE_int~q\ & (!\inst13|inst1[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IO_WRITE_int~q\,
	datab => \inst13|inst1[0]~3_combout\,
	datac => \inst13|inst1[0]~4_combout\,
	datad => \inst|AC\(0),
	combout => \inst13|inst1[0]~5_combout\);

-- Location: IOIBUF_X51_Y54_N29
\SW[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: FF_X58_Y46_N17
\inst7|B_DI[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SWITCH_EN~clkctrl_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|B_DI\(0));

-- Location: LCCOMB_X58_Y44_N24
\inst13|inst1[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[0]~6_combout\ = ((\inst13|inst1[0]~5_combout\ & ((\inst7|B_DI\(0)) # (!\inst3|SWITCH_EN~combout\)))) # (!\inst13|inst1[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|SWITCH_EN~combout\,
	datab => \inst13|inst1[0]~5_combout\,
	datac => \inst13|inst1[0]~2_combout\,
	datad => \inst7|B_DI\(0),
	combout => \inst13|inst1[0]~6_combout\);

-- Location: LCCOMB_X58_Y44_N0
\inst|Selector27~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector27~9_combout\ = (\inst|Selector27~8_combout\) # ((\inst|Selector27~6_combout\) # ((\inst|state.ex_in2~q\ & \inst13|inst1[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector27~8_combout\,
	datab => \inst|Selector27~6_combout\,
	datac => \inst|state.ex_in2~q\,
	datad => \inst13|inst1[0]~6_combout\,
	combout => \inst|Selector27~9_combout\);

-- Location: FF_X58_Y44_N1
\inst|AC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector27~9_combout\,
	ena => \inst13|inst14|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|AC\(0));

-- Location: LCCOMB_X54_Y44_N28
\inst|Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector11~0_combout\ = (!\inst|state.fetch~q\ & ((\inst|WideNor0~combout\ & (\inst|altsyncram_component|auto_generated|q_a\(0))) # (!\inst|WideNor0~combout\ & ((\inst|IR\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(0),
	datab => \inst|IR\(0),
	datac => \inst|state.fetch~q\,
	datad => \inst|WideNor0~combout\,
	combout => \inst|Selector11~0_combout\);

-- Location: LCCOMB_X54_Y44_N2
\inst|next_mem_addr[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|next_mem_addr[0]~0_combout\ = (\inst|Selector11~0_combout\) # ((\inst|state.fetch~q\ & \inst|PC\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Selector11~0_combout\,
	datac => \inst|state.fetch~q\,
	datad => \inst|PC\(0),
	combout => \inst|next_mem_addr[0]~0_combout\);

-- Location: LCCOMB_X58_Y43_N30
\inst|state~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state~32_combout\ = (!\inst|altsyncram_component|auto_generated|q_a\(14) & (\inst|altsyncram_component|auto_generated|q_a\(15) & (!\inst|altsyncram_component|auto_generated|q_a\(13) & \inst|state.decode~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(14),
	datab => \inst|altsyncram_component|auto_generated|q_a\(15),
	datac => \inst|altsyncram_component|auto_generated|q_a\(13),
	datad => \inst|state.decode~q\,
	combout => \inst|state~32_combout\);

-- Location: LCCOMB_X59_Y43_N12
\inst|state~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state~33_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(12) & (!\inst|altsyncram_component|auto_generated|q_a\(11) & \inst|state~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(12),
	datac => \inst|altsyncram_component|auto_generated|q_a\(11),
	datad => \inst|state~32_combout\,
	combout => \inst|state~33_combout\);

-- Location: FF_X59_Y43_N13
\inst|state.ex_in\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|state~33_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ex_in~q\);

-- Location: FF_X57_Y43_N11
\inst|state.ex_in2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|state.ex_in~q\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ex_in2~q\);

-- Location: LCCOMB_X57_Y43_N22
\inst|Selector26~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector26~7_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(1) & ((\inst|AC\(1) & ((\inst|state.ex_and~q\))) # (!\inst|AC\(1) & (\inst|state.ex_xor~q\)))) # (!\inst|altsyncram_component|auto_generated|q_a\(1) & (\inst|AC\(1) & 
-- (\inst|state.ex_xor~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(1),
	datab => \inst|AC\(1),
	datac => \inst|state.ex_xor~q\,
	datad => \inst|state.ex_and~q\,
	combout => \inst|Selector26~7_combout\);

-- Location: LCCOMB_X57_Y43_N20
\inst|Selector26~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector26~6_combout\ = (\inst|Selector27~3_combout\ & ((\inst|altsyncram_component|auto_generated|q_a\(1)) # ((\inst|IR\(1) & \inst|state.ex_loadi~q\)))) # (!\inst|Selector27~3_combout\ & (((\inst|IR\(1) & \inst|state.ex_loadi~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector27~3_combout\,
	datab => \inst|altsyncram_component|auto_generated|q_a\(1),
	datac => \inst|IR\(1),
	datad => \inst|state.ex_loadi~q\,
	combout => \inst|Selector26~6_combout\);

-- Location: LCCOMB_X57_Y43_N24
\inst|Selector26~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector26~8_combout\ = (\inst|Selector26~7_combout\) # ((\inst|Selector26~6_combout\) # ((\inst|AC\(1) & !\inst|Selector27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector26~7_combout\,
	datab => \inst|AC\(1),
	datac => \inst|Selector27~0_combout\,
	datad => \inst|Selector26~6_combout\,
	combout => \inst|Selector26~8_combout\);

-- Location: LCCOMB_X58_Y47_N6
\inst|Selector26~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector26~4_combout\ = (\inst|Selector20~2_combout\ & ((\inst|shifter|auto_generated|sbit_w[49]~54_combout\) # ((\inst|shifter|auto_generated|sbit_w[37]~45_combout\ & \inst|shifter|auto_generated|sbit_w[48]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector20~2_combout\,
	datab => \inst|shifter|auto_generated|sbit_w[49]~54_combout\,
	datac => \inst|shifter|auto_generated|sbit_w[37]~45_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[48]~13_combout\,
	combout => \inst|Selector26~4_combout\);

-- Location: LCCOMB_X57_Y47_N14
\inst|Selector26~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector26~10_combout\ = (\inst|IR\(3) & (\inst|shifter|auto_generated|sbit_w[57]~51_combout\ & (\inst|IR\(4) & \inst|state.ex_shift~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(3),
	datab => \inst|shifter|auto_generated|sbit_w[57]~51_combout\,
	datac => \inst|IR\(4),
	datad => \inst|state.ex_shift~q\,
	combout => \inst|Selector26~10_combout\);

-- Location: LCCOMB_X57_Y43_N30
\inst|Selector26~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector26~5_combout\ = (\inst|Selector26~4_combout\) # ((\inst|Selector26~10_combout\) # ((\inst|AC[8]~0_combout\ & \inst|Add1~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector26~4_combout\,
	datab => \inst|AC[8]~0_combout\,
	datac => \inst|Add1~11_combout\,
	datad => \inst|Selector26~10_combout\,
	combout => \inst|Selector26~5_combout\);

-- Location: LCCOMB_X57_Y43_N0
\inst|Selector26~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector26~9_combout\ = (\inst|Selector26~8_combout\) # ((\inst|Selector26~5_combout\) # ((\inst|state.ex_in2~q\ & \inst13|inst1[1]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_in2~q\,
	datab => \inst|Selector26~8_combout\,
	datac => \inst|Selector26~5_combout\,
	datad => \inst13|inst1[1]~9_combout\,
	combout => \inst|Selector26~9_combout\);

-- Location: FF_X57_Y43_N1
\inst|AC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector26~9_combout\,
	ena => \inst13|inst14|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|AC\(1));

-- Location: LCCOMB_X58_Y43_N26
\inst|state~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state~38_combout\ = (!\inst|altsyncram_component|auto_generated|q_a\(12) & (!\inst|altsyncram_component|auto_generated|q_a\(15) & (!\inst|altsyncram_component|auto_generated|q_a\(11) & \inst|state.decode~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(12),
	datab => \inst|altsyncram_component|auto_generated|q_a\(15),
	datac => \inst|altsyncram_component|auto_generated|q_a\(11),
	datad => \inst|state.decode~q\,
	combout => \inst|state~38_combout\);

-- Location: LCCOMB_X60_Y43_N30
\inst|state~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state~43_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(13) & (\inst|state~38_combout\ & \inst|altsyncram_component|auto_generated|q_a\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(13),
	datac => \inst|state~38_combout\,
	datad => \inst|altsyncram_component|auto_generated|q_a\(14),
	combout => \inst|state~43_combout\);

-- Location: FF_X60_Y43_N31
\inst|state.ex_shift\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|state~43_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ex_shift~q\);

-- Location: LCCOMB_X58_Y43_N4
\inst|Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector19~0_combout\ = (\inst|state.ex_shift~q\ & (\inst|IR\(3) & (\inst|AC\(15) & \inst|IR\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_shift~q\,
	datab => \inst|IR\(3),
	datac => \inst|AC\(15),
	datad => \inst|IR\(4),
	combout => \inst|Selector19~0_combout\);

-- Location: LCCOMB_X59_Y47_N12
\inst|Selector20~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector20~8_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(7) & ((\inst|state.ex_load~q\) # ((\inst|state.ex_xor~q\) # (\inst|state.ex_or~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_load~q\,
	datab => \inst|altsyncram_component|auto_generated|q_a\(7),
	datac => \inst|state.ex_xor~q\,
	datad => \inst|state.ex_or~q\,
	combout => \inst|Selector20~8_combout\);

-- Location: LCCOMB_X59_Y47_N10
\inst|Selector20~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector20~4_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(7) & (((\inst|Selector27~3_combout\) # (\inst|state.ex_and~q\)))) # (!\inst|altsyncram_component|auto_generated|q_a\(7) & (\inst|state.ex_xor~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_xor~q\,
	datab => \inst|altsyncram_component|auto_generated|q_a\(7),
	datac => \inst|Selector27~3_combout\,
	datad => \inst|state.ex_and~q\,
	combout => \inst|Selector20~4_combout\);

-- Location: LCCOMB_X59_Y47_N0
\inst|Selector20~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector20~5_combout\ = (\inst|AC\(7) & (((\inst|Selector20~4_combout\) # (!\inst|Selector27~0_combout\)))) # (!\inst|AC\(7) & (\inst|Selector20~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector20~8_combout\,
	datab => \inst|AC\(7),
	datac => \inst|Selector27~0_combout\,
	datad => \inst|Selector20~4_combout\,
	combout => \inst|Selector20~5_combout\);

-- Location: LCCOMB_X57_Y47_N8
\inst|shifter|auto_generated|sbit_w[55]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[55]~86_combout\ = (\inst|shifter|auto_generated|sbit_w[55]~85_combout\) # ((\inst|shifter|auto_generated|sbit_w[39]~66_combout\ & !\inst|IR\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[39]~66_combout\,
	datab => \inst|IR\(2),
	datac => \inst|shifter|auto_generated|sbit_w[55]~85_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[55]~86_combout\);

-- Location: LCCOMB_X59_Y44_N18
\inst|Selector20~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector20~3_combout\ = (\inst|shifter|auto_generated|sbit_w[55]~86_combout\ & ((\inst|Selector20~2_combout\) # ((\inst|state.ex_loadi~q\ & \inst|IR\(7))))) # (!\inst|shifter|auto_generated|sbit_w[55]~86_combout\ & (\inst|state.ex_loadi~q\ & 
-- (\inst|IR\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[55]~86_combout\,
	datab => \inst|state.ex_loadi~q\,
	datac => \inst|IR\(7),
	datad => \inst|Selector20~2_combout\,
	combout => \inst|Selector20~3_combout\);

-- Location: LCCOMB_X59_Y48_N28
\inst|Selector20~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector20~6_combout\ = (\inst|Selector20~5_combout\) # ((\inst|Selector20~3_combout\) # ((\inst|AC[8]~0_combout\ & \inst|Add1~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC[8]~0_combout\,
	datab => \inst|Selector20~5_combout\,
	datac => \inst|Selector20~3_combout\,
	datad => \inst|Add1~41_combout\,
	combout => \inst|Selector20~6_combout\);

-- Location: LCCOMB_X58_Y46_N2
\inst|Selector20~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector20~7_combout\ = (\inst|Selector19~0_combout\) # ((\inst|Selector20~6_combout\) # ((\inst|state.ex_in2~q\ & \inst13|inst1[7]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector19~0_combout\,
	datab => \inst|state.ex_in2~q\,
	datac => \inst|Selector20~6_combout\,
	datad => \inst13|inst1[7]~27_combout\,
	combout => \inst|Selector20~7_combout\);

-- Location: FF_X58_Y46_N3
\inst|AC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector20~7_combout\,
	ena => \inst13|inst14|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|AC\(7));

-- Location: LCCOMB_X60_Y43_N12
\inst|state~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state~49_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(13) & (\inst|state~36_combout\ & \inst|altsyncram_component|auto_generated|q_a\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(13),
	datac => \inst|state~36_combout\,
	datad => \inst|altsyncram_component|auto_generated|q_a\(14),
	combout => \inst|state~49_combout\);

-- Location: FF_X60_Y43_N13
\inst|state.ex_istore\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|state~49_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ex_istore~q\);

-- Location: FF_X59_Y43_N1
\inst|state.ex_istore2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|state.ex_istore~q\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ex_istore2~q\);

-- Location: FF_X59_Y43_N11
\inst|state.ex_store2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|state.ex_store~q\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ex_store2~q\);

-- Location: LCCOMB_X59_Y43_N10
\inst|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector0~0_combout\ = (\inst|state.init~q\ & (!\inst|state.ex_istore2~q\ & (!\inst|state.ex_store2~q\ & \inst|MW~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.init~q\,
	datab => \inst|state.ex_istore2~q\,
	datac => \inst|state.ex_store2~q\,
	datad => \inst|MW~q\,
	combout => \inst|Selector0~0_combout\);

-- Location: LCCOMB_X59_Y43_N22
\inst|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector0~1_combout\ = (\inst|Selector0~0_combout\) # ((\inst|state.ex_istore~q\) # (\inst|state.ex_store~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector0~0_combout\,
	datac => \inst|state.ex_istore~q\,
	datad => \inst|state.ex_store~q\,
	combout => \inst|Selector0~1_combout\);

-- Location: FF_X59_Y43_N23
\inst|MW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector0~1_combout\,
	ena => \inst13|inst14|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MW~q\);

-- Location: LCCOMB_X58_Y43_N18
\inst|Selector28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector28~0_combout\ = (\inst|IO_WRITE_int~q\ & ((\inst|state.decode~q\) # ((!\inst|state.fetch~q\ & \inst|state.init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.fetch~q\,
	datab => \inst|state.decode~q\,
	datac => \inst|IO_WRITE_int~q\,
	datad => \inst|state.init~q\,
	combout => \inst|Selector28~0_combout\);

-- Location: LCCOMB_X58_Y43_N10
\inst|Selector28~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector28~1_combout\ = (\inst|Selector28~0_combout\) # ((\inst|altsyncram_component|auto_generated|q_a\(11) & (\inst|altsyncram_component|auto_generated|q_a\(12) & \inst|state~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(11),
	datab => \inst|altsyncram_component|auto_generated|q_a\(12),
	datac => \inst|state~32_combout\,
	datad => \inst|Selector28~0_combout\,
	combout => \inst|Selector28~1_combout\);

-- Location: FF_X58_Y43_N11
\inst|IO_WRITE_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector28~1_combout\,
	ena => \inst13|inst14|data_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IO_WRITE_int~q\);

-- Location: LCCOMB_X59_Y44_N30
\inst3|I2C_DATA_EN~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|I2C_DATA_EN~1_combout\ = (\inst|IR\(4) & \inst|IR\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|IR\(4),
	datad => \inst|IR\(7),
	combout => \inst3|I2C_DATA_EN~1_combout\);

-- Location: LCCOMB_X58_Y43_N6
\inst13|inst12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst12~combout\ = LCELL((\inst|IO_WRITE_int~q\ & (\inst3|SWITCH_EN~2_combout\ & (\inst3|I2C_DATA_EN~1_combout\ & !\inst|IR\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IO_WRITE_int~q\,
	datab => \inst3|SWITCH_EN~2_combout\,
	datac => \inst3|I2C_DATA_EN~1_combout\,
	datad => \inst|IR\(1),
	combout => \inst13|inst12~combout\);

-- Location: CLKCTRL_G6
\inst13|inst12~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst13|inst12~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst13|inst12~clkctrl_outclk\);

-- Location: FF_X62_Y44_N25
\inst13|inst14|cmd_in[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst12~clkctrl_outclk\,
	asdata => \inst13|inst1[8]~30_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|cmd_in\(0));

-- Location: LCCOMB_X62_Y43_N0
\inst13|inst14|Selector32~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Selector32~1_combout\ = (!\inst13|inst14|state.Rx1~q\ & (\inst13|inst14|cmd_in\(0) $ (\inst13|inst14|cmd_in\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|cmd_in\(0),
	datab => \inst13|inst14|cmd_in\(1),
	datad => \inst13|inst14|state.Rx1~q\,
	combout => \inst13|inst14|Selector32~1_combout\);

-- Location: LCCOMB_X61_Y43_N18
\inst13|inst14|Selector32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Selector32~0_combout\ = (!\inst13|inst14|state.Rx1~q\ & (!\inst13|inst14|state.Tx1~q\ & ((\inst13|inst14|comm_en~q\) # (\inst13|inst14|state.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|state.Rx1~q\,
	datab => \inst13|inst14|comm_en~q\,
	datac => \inst13|inst14|state.Tx1~q\,
	datad => \inst13|inst14|state.idle~q\,
	combout => \inst13|inst14|Selector32~0_combout\);

-- Location: LCCOMB_X62_Y43_N22
\inst13|inst14|state_machine~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|state_machine~1_combout\ = (\inst13|inst|busy~q\ & !\inst13|inst14|prev_busy~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst|busy~q\,
	datad => \inst13|inst14|prev_busy~q\,
	combout => \inst13|inst14|state_machine~1_combout\);

-- Location: LCCOMB_X62_Y43_N10
\inst13|inst14|Selector32~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Selector32~2_combout\ = (\inst13|inst14|Selector32~0_combout\) # ((\inst13|inst14|comm_en~q\ & ((\inst13|inst14|Selector32~1_combout\) # (!\inst13|inst14|state_machine~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|Selector32~1_combout\,
	datab => \inst13|inst14|Selector32~0_combout\,
	datac => \inst13|inst14|comm_en~q\,
	datad => \inst13|inst14|state_machine~1_combout\,
	combout => \inst13|inst14|Selector32~2_combout\);

-- Location: FF_X62_Y43_N11
\inst13|inst14|comm_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|Selector32~2_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|comm_en~q\);

-- Location: LCCOMB_X65_Y42_N8
\inst13|inst|Selector24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector24~0_combout\ = (\inst13|inst|state.slv_ack2~q\ & (((\inst13|inst|ack_error~q\) # (!\inst13|inst|process_1~4_combout\)))) # (!\inst13|inst|state.slv_ack2~q\ & (\inst13|inst|state.mstr_ack~q\ & (!\inst13|inst|process_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|state.mstr_ack~q\,
	datab => \inst13|inst|state.slv_ack2~q\,
	datac => \inst13|inst|process_1~4_combout\,
	datad => \inst13|inst|ack_error~q\,
	combout => \inst13|inst|Selector24~0_combout\);

-- Location: LCCOMB_X65_Y42_N24
\inst13|inst|Selector24~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector24~1_combout\ = (\inst13|inst|Selector24~0_combout\) # ((\inst13|inst|state.slv_ack1~q\ & \inst13|inst|ack_error~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst|state.slv_ack1~q\,
	datac => \inst13|inst|ack_error~q\,
	datad => \inst13|inst|Selector24~0_combout\,
	combout => \inst13|inst|Selector24~1_combout\);

-- Location: FF_X65_Y42_N25
\inst13|inst|state.stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	d => \inst13|inst|Selector24~1_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|state.stop~q\);

-- Location: LCCOMB_X65_Y42_N4
\inst13|inst|Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector18~0_combout\ = (!\inst13|inst|state.stop~q\ & ((\inst13|inst14|comm_en~q\) # (\inst13|inst|state.ready~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst14|comm_en~q\,
	datac => \inst13|inst|state.ready~q\,
	datad => \inst13|inst|state.stop~q\,
	combout => \inst13|inst|Selector18~0_combout\);

-- Location: FF_X65_Y42_N5
\inst13|inst|state.ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	d => \inst13|inst|Selector18~0_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|state.ready~q\);

-- Location: LCCOMB_X65_Y42_N2
\inst13|inst|Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector19~0_combout\ = (\inst13|inst|state.restart~q\) # ((!\inst13|inst|state.ready~q\ & \inst13|inst14|comm_en~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst|state.ready~q\,
	datac => \inst13|inst14|comm_en~q\,
	datad => \inst13|inst|state.restart~q\,
	combout => \inst13|inst|Selector19~0_combout\);

-- Location: FF_X65_Y42_N3
\inst13|inst|state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	d => \inst13|inst|Selector19~0_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|state.start~q\);

-- Location: LCCOMB_X59_Y44_N16
\inst13|inst13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst13~combout\ = LCELL((\inst|IR\(4) & (\inst3|I2C_DATA_EN~0_combout\ & (\inst|IO_WRITE_int~q\ & \inst|IR\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(4),
	datab => \inst3|I2C_DATA_EN~0_combout\,
	datac => \inst|IO_WRITE_int~q\,
	datad => \inst|IR\(7),
	combout => \inst13|inst13~combout\);

-- Location: CLKCTRL_G14
\inst13|inst13~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst13|inst13~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst13|inst13~clkctrl_outclk\);

-- Location: LCCOMB_X63_Y44_N6
\inst13|inst14|data_in[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_in[11]~feeder_combout\ = \inst13|inst1[11]~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[11]~38_combout\,
	combout => \inst13|inst14|data_in[11]~feeder_combout\);

-- Location: FF_X63_Y44_N7
\inst13|inst14|data_in[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst13~clkctrl_outclk\,
	d => \inst13|inst14|data_in[11]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_in\(11));

-- Location: LCCOMB_X63_Y44_N28
\inst13|inst14|data_in[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_in[3]~feeder_combout\ = \inst13|inst1[3]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst1[3]~15_combout\,
	combout => \inst13|inst14|data_in[3]~feeder_combout\);

-- Location: FF_X63_Y44_N29
\inst13|inst14|data_in[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst13~clkctrl_outclk\,
	d => \inst13|inst14|data_in[3]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_in\(3));

-- Location: LCCOMB_X63_Y44_N14
\inst13|inst14|Selector27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Selector27~0_combout\ = (\inst13|inst14|Equal0~0_combout\ & ((\inst13|inst14|state.idle~q\ & ((\inst13|inst14|data_in\(3)))) # (!\inst13|inst14|state.idle~q\ & (\inst13|inst14|data_in\(11))))) # (!\inst13|inst14|Equal0~0_combout\ & 
-- (((\inst13|inst14|data_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|Equal0~0_combout\,
	datab => \inst13|inst14|data_in\(11),
	datac => \inst13|inst14|state.idle~q\,
	datad => \inst13|inst14|data_in\(3),
	combout => \inst13|inst14|Selector27~0_combout\);

-- Location: LCCOMB_X62_Y44_N10
\inst13|inst14|tx_byte[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|tx_byte[7]~0_combout\ = ((\inst13|inst14|state.idle~q\) # (\inst13|inst14|cmd_in\(5) $ (!\inst13|inst14|cmd_in\(4)))) # (!\inst13|inst14|go~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|go~q\,
	datab => \inst13|inst14|cmd_in\(5),
	datac => \inst13|inst14|cmd_in\(4),
	datad => \inst13|inst14|state.idle~q\,
	combout => \inst13|inst14|tx_byte[7]~0_combout\);

-- Location: LCCOMB_X63_Y44_N4
\inst13|inst14|tx_byte[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|tx_byte[7]~1_combout\ = (\inst13|inst14|data_out[7]~0_combout\ & (((\inst13|inst14|state.Tx2~q\ & \inst13|inst14|state_machine~1_combout\)) # (!\inst13|inst14|tx_byte[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|state.Tx2~q\,
	datab => \inst13|inst14|data_out[7]~0_combout\,
	datac => \inst13|inst14|state_machine~1_combout\,
	datad => \inst13|inst14|tx_byte[7]~0_combout\,
	combout => \inst13|inst14|tx_byte[7]~1_combout\);

-- Location: FF_X63_Y44_N15
\inst13|inst14|tx_byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|Selector27~0_combout\,
	ena => \inst13|inst14|tx_byte[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|tx_byte\(3));

-- Location: LCCOMB_X63_Y44_N30
\inst13|inst14|data_in[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_in[10]~feeder_combout\ = \inst13|inst1[10]~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst1[10]~36_combout\,
	combout => \inst13|inst14|data_in[10]~feeder_combout\);

-- Location: FF_X63_Y44_N31
\inst13|inst14|data_in[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst13~clkctrl_outclk\,
	d => \inst13|inst14|data_in[10]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_in\(10));

-- Location: LCCOMB_X64_Y44_N6
\inst13|inst14|data_in[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_in[2]~feeder_combout\ = \inst13|inst1[2]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst1[2]~12_combout\,
	combout => \inst13|inst14|data_in[2]~feeder_combout\);

-- Location: FF_X64_Y44_N7
\inst13|inst14|data_in[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst13~clkctrl_outclk\,
	d => \inst13|inst14|data_in[2]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_in\(2));

-- Location: LCCOMB_X63_Y44_N12
\inst13|inst14|Selector28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Selector28~0_combout\ = (\inst13|inst14|Equal0~0_combout\ & ((\inst13|inst14|state.idle~q\ & ((\inst13|inst14|data_in\(2)))) # (!\inst13|inst14|state.idle~q\ & (\inst13|inst14|data_in\(10))))) # (!\inst13|inst14|Equal0~0_combout\ & 
-- (((\inst13|inst14|data_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|Equal0~0_combout\,
	datab => \inst13|inst14|state.idle~q\,
	datac => \inst13|inst14|data_in\(10),
	datad => \inst13|inst14|data_in\(2),
	combout => \inst13|inst14|Selector28~0_combout\);

-- Location: FF_X63_Y44_N13
\inst13|inst14|tx_byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|Selector28~0_combout\,
	ena => \inst13|inst14|tx_byte[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|tx_byte\(2));

-- Location: LCCOMB_X63_Y44_N22
\inst13|inst14|data_in[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_in[1]~feeder_combout\ = \inst13|inst1[1]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst1[1]~9_combout\,
	combout => \inst13|inst14|data_in[1]~feeder_combout\);

-- Location: FF_X63_Y44_N23
\inst13|inst14|data_in[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst13~clkctrl_outclk\,
	d => \inst13|inst14|data_in[1]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_in\(1));

-- Location: LCCOMB_X64_Y44_N4
\inst13|inst14|data_in[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_in[9]~feeder_combout\ = \inst13|inst1[9]~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst1[9]~33_combout\,
	combout => \inst13|inst14|data_in[9]~feeder_combout\);

-- Location: FF_X64_Y44_N5
\inst13|inst14|data_in[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst13~clkctrl_outclk\,
	d => \inst13|inst14|data_in[9]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_in\(9));

-- Location: LCCOMB_X63_Y44_N2
\inst13|inst14|Selector29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Selector29~0_combout\ = (\inst13|inst14|Equal0~0_combout\ & ((\inst13|inst14|state.idle~q\ & (\inst13|inst14|data_in\(1))) # (!\inst13|inst14|state.idle~q\ & ((\inst13|inst14|data_in\(9)))))) # (!\inst13|inst14|Equal0~0_combout\ & 
-- (((\inst13|inst14|data_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|Equal0~0_combout\,
	datab => \inst13|inst14|state.idle~q\,
	datac => \inst13|inst14|data_in\(1),
	datad => \inst13|inst14|data_in\(9),
	combout => \inst13|inst14|Selector29~0_combout\);

-- Location: FF_X63_Y44_N3
\inst13|inst14|tx_byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|Selector29~0_combout\,
	ena => \inst13|inst14|tx_byte[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|tx_byte\(1));

-- Location: LCCOMB_X63_Y44_N26
\inst13|inst14|data_in[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_in[8]~feeder_combout\ = \inst13|inst1[8]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst1[8]~30_combout\,
	combout => \inst13|inst14|data_in[8]~feeder_combout\);

-- Location: FF_X63_Y44_N27
\inst13|inst14|data_in[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst13~clkctrl_outclk\,
	d => \inst13|inst14|data_in[8]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_in\(8));

-- Location: LCCOMB_X63_Y44_N0
\inst13|inst14|data_in[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_in[0]~feeder_combout\ = \inst13|inst1[0]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst1[0]~6_combout\,
	combout => \inst13|inst14|data_in[0]~feeder_combout\);

-- Location: FF_X63_Y44_N1
\inst13|inst14|data_in[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst13~clkctrl_outclk\,
	d => \inst13|inst14|data_in[0]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_in\(0));

-- Location: LCCOMB_X63_Y44_N24
\inst13|inst14|Selector30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Selector30~0_combout\ = (\inst13|inst14|Equal0~0_combout\ & ((\inst13|inst14|state.idle~q\ & ((\inst13|inst14|data_in\(0)))) # (!\inst13|inst14|state.idle~q\ & (\inst13|inst14|data_in\(8))))) # (!\inst13|inst14|Equal0~0_combout\ & 
-- (((\inst13|inst14|data_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|Equal0~0_combout\,
	datab => \inst13|inst14|data_in\(8),
	datac => \inst13|inst14|state.idle~q\,
	datad => \inst13|inst14|data_in\(0),
	combout => \inst13|inst14|Selector30~0_combout\);

-- Location: FF_X63_Y44_N25
\inst13|inst14|tx_byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|Selector30~0_combout\,
	ena => \inst13|inst14|tx_byte[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|tx_byte\(0));

-- Location: LCCOMB_X62_Y42_N16
\inst13|inst|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Mux4~0_combout\ = (\inst13|inst|bit_cnt\(0) & (\inst13|inst|bit_cnt\(1) & ((\inst13|inst14|tx_byte\(0))))) # (!\inst13|inst|bit_cnt\(0) & (((\inst13|inst14|tx_byte\(1))) # (!\inst13|inst|bit_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|bit_cnt\(0),
	datab => \inst13|inst|bit_cnt\(1),
	datac => \inst13|inst14|tx_byte\(1),
	datad => \inst13|inst14|tx_byte\(0),
	combout => \inst13|inst|Mux4~0_combout\);

-- Location: LCCOMB_X63_Y42_N28
\inst13|inst|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Mux4~1_combout\ = (\inst13|inst|Mux4~0_combout\ & ((\inst13|inst14|tx_byte\(3)) # ((\inst13|inst|bit_cnt\(1))))) # (!\inst13|inst|Mux4~0_combout\ & (((\inst13|inst14|tx_byte\(2) & !\inst13|inst|bit_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|tx_byte\(3),
	datab => \inst13|inst14|tx_byte\(2),
	datac => \inst13|inst|Mux4~0_combout\,
	datad => \inst13|inst|bit_cnt\(1),
	combout => \inst13|inst|Mux4~1_combout\);

-- Location: LCCOMB_X63_Y44_N8
\inst13|inst14|data_in[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_in[6]~feeder_combout\ = \inst13|inst1[6]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[6]~24_combout\,
	combout => \inst13|inst14|data_in[6]~feeder_combout\);

-- Location: FF_X63_Y44_N9
\inst13|inst14|data_in[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst13~clkctrl_outclk\,
	d => \inst13|inst14|data_in[6]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_in\(6));

-- Location: LCCOMB_X63_Y44_N18
\inst13|inst14|data_in[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_in[14]~feeder_combout\ = \inst13|inst1[14]~44_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[14]~44_combout\,
	combout => \inst13|inst14|data_in[14]~feeder_combout\);

-- Location: FF_X63_Y44_N19
\inst13|inst14|data_in[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst13~clkctrl_outclk\,
	d => \inst13|inst14|data_in[14]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_in\(14));

-- Location: LCCOMB_X63_Y44_N16
\inst13|inst14|Selector24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Selector24~0_combout\ = (\inst13|inst14|Equal0~0_combout\ & ((\inst13|inst14|state.idle~q\ & (\inst13|inst14|data_in\(6))) # (!\inst13|inst14|state.idle~q\ & ((\inst13|inst14|data_in\(14)))))) # (!\inst13|inst14|Equal0~0_combout\ & 
-- (((\inst13|inst14|data_in\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|Equal0~0_combout\,
	datab => \inst13|inst14|state.idle~q\,
	datac => \inst13|inst14|data_in\(6),
	datad => \inst13|inst14|data_in\(14),
	combout => \inst13|inst14|Selector24~0_combout\);

-- Location: FF_X63_Y44_N17
\inst13|inst14|tx_byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|Selector24~0_combout\,
	ena => \inst13|inst14|tx_byte[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|tx_byte\(6));

-- Location: FF_X64_Y44_N15
\inst13|inst14|data_in[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst13~clkctrl_outclk\,
	asdata => \inst13|inst1[7]~27_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_in\(7));

-- Location: LCCOMB_X64_Y44_N28
\inst13|inst14|data_in[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_in[15]~feeder_combout\ = \inst13|inst1[15]~46_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst1[15]~46_combout\,
	combout => \inst13|inst14|data_in[15]~feeder_combout\);

-- Location: FF_X64_Y44_N29
\inst13|inst14|data_in[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst13~clkctrl_outclk\,
	d => \inst13|inst14|data_in[15]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_in\(15));

-- Location: LCCOMB_X63_Y44_N20
\inst13|inst14|Selector23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Selector23~0_combout\ = (\inst13|inst14|Equal0~0_combout\ & ((\inst13|inst14|state.idle~q\ & (\inst13|inst14|data_in\(7))) # (!\inst13|inst14|state.idle~q\ & ((\inst13|inst14|data_in\(15)))))) # (!\inst13|inst14|Equal0~0_combout\ & 
-- (((\inst13|inst14|data_in\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|Equal0~0_combout\,
	datab => \inst13|inst14|state.idle~q\,
	datac => \inst13|inst14|data_in\(7),
	datad => \inst13|inst14|data_in\(15),
	combout => \inst13|inst14|Selector23~0_combout\);

-- Location: FF_X63_Y44_N21
\inst13|inst14|tx_byte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|Selector23~0_combout\,
	ena => \inst13|inst14|tx_byte[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|tx_byte\(7));

-- Location: LCCOMB_X64_Y44_N12
\inst13|inst14|data_in[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_in[13]~feeder_combout\ = \inst13|inst1[13]~42_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[13]~42_combout\,
	combout => \inst13|inst14|data_in[13]~feeder_combout\);

-- Location: FF_X64_Y44_N13
\inst13|inst14|data_in[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst13~clkctrl_outclk\,
	d => \inst13|inst14|data_in[13]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_in\(13));

-- Location: FF_X64_Y44_N23
\inst13|inst14|data_in[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst13~clkctrl_outclk\,
	asdata => \inst13|inst1[5]~21_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_in\(5));

-- Location: LCCOMB_X63_Y44_N10
\inst13|inst14|Selector25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Selector25~0_combout\ = (\inst13|inst14|Equal0~0_combout\ & ((\inst13|inst14|state.idle~q\ & ((\inst13|inst14|data_in\(5)))) # (!\inst13|inst14|state.idle~q\ & (\inst13|inst14|data_in\(13))))) # (!\inst13|inst14|Equal0~0_combout\ & 
-- (((\inst13|inst14|data_in\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|Equal0~0_combout\,
	datab => \inst13|inst14|state.idle~q\,
	datac => \inst13|inst14|data_in\(13),
	datad => \inst13|inst14|data_in\(5),
	combout => \inst13|inst14|Selector25~0_combout\);

-- Location: FF_X63_Y44_N11
\inst13|inst14|tx_byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|Selector25~0_combout\,
	ena => \inst13|inst14|tx_byte[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|tx_byte\(5));

-- Location: LCCOMB_X64_Y44_N30
\inst13|inst14|data_in[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_in[4]~feeder_combout\ = \inst13|inst1[4]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst1[4]~18_combout\,
	combout => \inst13|inst14|data_in[4]~feeder_combout\);

-- Location: FF_X64_Y44_N31
\inst13|inst14|data_in[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst13~clkctrl_outclk\,
	d => \inst13|inst14|data_in[4]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_in\(4));

-- Location: LCCOMB_X64_Y44_N24
\inst13|inst14|data_in[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_in[12]~feeder_combout\ = \inst13|inst1[12]~40_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst1[12]~40_combout\,
	combout => \inst13|inst14|data_in[12]~feeder_combout\);

-- Location: FF_X64_Y44_N25
\inst13|inst14|data_in[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst13~clkctrl_outclk\,
	d => \inst13|inst14|data_in[12]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_in\(12));

-- Location: LCCOMB_X64_Y44_N16
\inst13|inst14|Selector26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Selector26~0_combout\ = (\inst13|inst14|state.idle~q\ & (((\inst13|inst14|data_in\(4))))) # (!\inst13|inst14|state.idle~q\ & ((\inst13|inst14|Equal0~0_combout\ & ((\inst13|inst14|data_in\(12)))) # (!\inst13|inst14|Equal0~0_combout\ & 
-- (\inst13|inst14|data_in\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|state.idle~q\,
	datab => \inst13|inst14|Equal0~0_combout\,
	datac => \inst13|inst14|data_in\(4),
	datad => \inst13|inst14|data_in\(12),
	combout => \inst13|inst14|Selector26~0_combout\);

-- Location: FF_X64_Y44_N17
\inst13|inst14|tx_byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|Selector26~0_combout\,
	ena => \inst13|inst14|tx_byte[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|tx_byte\(4));

-- Location: LCCOMB_X64_Y44_N10
\inst13|inst|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Mux4~2_combout\ = (\inst13|inst|bit_cnt\(0) & (((\inst13|inst14|tx_byte\(4) & \inst13|inst|bit_cnt\(1))))) # (!\inst13|inst|bit_cnt\(0) & ((\inst13|inst14|tx_byte\(5)) # ((!\inst13|inst|bit_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|tx_byte\(5),
	datab => \inst13|inst14|tx_byte\(4),
	datac => \inst13|inst|bit_cnt\(0),
	datad => \inst13|inst|bit_cnt\(1),
	combout => \inst13|inst|Mux4~2_combout\);

-- Location: LCCOMB_X64_Y44_N20
\inst13|inst|Mux4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Mux4~3_combout\ = (\inst13|inst|bit_cnt\(1) & (((\inst13|inst|Mux4~2_combout\)))) # (!\inst13|inst|bit_cnt\(1) & ((\inst13|inst|Mux4~2_combout\ & ((\inst13|inst14|tx_byte\(7)))) # (!\inst13|inst|Mux4~2_combout\ & 
-- (\inst13|inst14|tx_byte\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|bit_cnt\(1),
	datab => \inst13|inst14|tx_byte\(6),
	datac => \inst13|inst14|tx_byte\(7),
	datad => \inst13|inst|Mux4~2_combout\,
	combout => \inst13|inst|Mux4~3_combout\);

-- Location: LCCOMB_X63_Y42_N10
\inst13|inst|Selector25~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector25~7_combout\ = (\inst13|inst|Selector25~6_combout\ & ((\inst13|inst|bit_cnt\(2) & (\inst13|inst|Mux4~1_combout\)) # (!\inst13|inst|bit_cnt\(2) & ((\inst13|inst|Mux4~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|Mux4~1_combout\,
	datab => \inst13|inst|bit_cnt\(2),
	datac => \inst13|inst|Selector25~6_combout\,
	datad => \inst13|inst|Mux4~3_combout\,
	combout => \inst13|inst|Selector25~7_combout\);

-- Location: LCCOMB_X62_Y42_N24
\inst13|inst|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Mux0~0_combout\ = (\inst13|inst|bit_cnt\(0) & (\inst13|inst|bit_cnt\(1) & (\inst13|inst|addr_rw\(0)))) # (!\inst13|inst|bit_cnt\(0) & (((\inst13|inst|addr_rw\(1))) # (!\inst13|inst|bit_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|bit_cnt\(0),
	datab => \inst13|inst|bit_cnt\(1),
	datac => \inst13|inst|addr_rw\(0),
	datad => \inst13|inst|addr_rw\(1),
	combout => \inst13|inst|Mux0~0_combout\);

-- Location: LCCOMB_X62_Y42_N26
\inst13|inst|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Mux0~1_combout\ = (\inst13|inst|bit_cnt\(1) & (((\inst13|inst|Mux0~0_combout\)))) # (!\inst13|inst|bit_cnt\(1) & ((\inst13|inst|Mux0~0_combout\ & ((\inst13|inst|addr_rw\(3)))) # (!\inst13|inst|Mux0~0_combout\ & (\inst13|inst|addr_rw\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|addr_rw\(2),
	datab => \inst13|inst|addr_rw\(3),
	datac => \inst13|inst|bit_cnt\(1),
	datad => \inst13|inst|Mux0~0_combout\,
	combout => \inst13|inst|Mux0~1_combout\);

-- Location: LCCOMB_X61_Y42_N14
\inst13|inst|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Mux0~2_combout\ = (\inst13|inst|bit_cnt\(0) & (((\inst13|inst|addr_rw\(4) & \inst13|inst|bit_cnt\(1))))) # (!\inst13|inst|bit_cnt\(0) & ((\inst13|inst|addr_rw\(5)) # ((!\inst13|inst|bit_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|addr_rw\(5),
	datab => \inst13|inst|bit_cnt\(0),
	datac => \inst13|inst|addr_rw\(4),
	datad => \inst13|inst|bit_cnt\(1),
	combout => \inst13|inst|Mux0~2_combout\);

-- Location: LCCOMB_X62_Y42_N12
\inst13|inst|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Mux0~3_combout\ = (\inst13|inst|bit_cnt\(1) & (((\inst13|inst|Mux0~2_combout\)))) # (!\inst13|inst|bit_cnt\(1) & ((\inst13|inst|Mux0~2_combout\ & ((\inst13|inst|addr_rw\(7)))) # (!\inst13|inst|Mux0~2_combout\ & (\inst13|inst|addr_rw\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|addr_rw\(6),
	datab => \inst13|inst|addr_rw\(7),
	datac => \inst13|inst|bit_cnt\(1),
	datad => \inst13|inst|Mux0~2_combout\,
	combout => \inst13|inst|Mux0~3_combout\);

-- Location: LCCOMB_X63_Y42_N8
\inst13|inst|Selector25~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector25~13_combout\ = (\inst13|inst|state.start~q\ & ((\inst13|inst|bit_cnt\(2) & (\inst13|inst|Mux0~1_combout\)) # (!\inst13|inst|bit_cnt\(2) & ((\inst13|inst|Mux0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|bit_cnt\(2),
	datab => \inst13|inst|state.start~q\,
	datac => \inst13|inst|Mux0~1_combout\,
	datad => \inst13|inst|Mux0~3_combout\,
	combout => \inst13|inst|Selector25~13_combout\);

-- Location: FF_X61_Y42_N27
\inst13|inst|data_tx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	asdata => \inst13|inst14|tx_byte\(6),
	sload => VCC,
	ena => \inst13|inst|addr_rw[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_tx\(6));

-- Location: FF_X61_Y42_N13
\inst13|inst|data_tx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	asdata => \inst13|inst14|tx_byte\(7),
	sload => VCC,
	ena => \inst13|inst|addr_rw[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_tx\(7));

-- Location: FF_X61_Y42_N23
\inst13|inst|data_tx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	asdata => \inst13|inst14|tx_byte\(5),
	sload => VCC,
	ena => \inst13|inst|addr_rw[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_tx\(5));

-- Location: FF_X61_Y42_N1
\inst13|inst|data_tx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	asdata => \inst13|inst14|tx_byte\(4),
	sload => VCC,
	ena => \inst13|inst|addr_rw[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_tx\(4));

-- Location: LCCOMB_X61_Y42_N0
\inst13|inst|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Mux2~2_combout\ = (\inst13|inst|bit_cnt\(1) & ((\inst13|inst|bit_cnt\(0) & ((\inst13|inst|data_tx\(4)))) # (!\inst13|inst|bit_cnt\(0) & (\inst13|inst|data_tx\(5))))) # (!\inst13|inst|bit_cnt\(1) & (((!\inst13|inst|bit_cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|data_tx\(5),
	datab => \inst13|inst|bit_cnt\(1),
	datac => \inst13|inst|data_tx\(4),
	datad => \inst13|inst|bit_cnt\(0),
	combout => \inst13|inst|Mux2~2_combout\);

-- Location: LCCOMB_X61_Y42_N12
\inst13|inst|Mux2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Mux2~3_combout\ = (\inst13|inst|bit_cnt\(1) & (((\inst13|inst|Mux2~2_combout\)))) # (!\inst13|inst|bit_cnt\(1) & ((\inst13|inst|Mux2~2_combout\ & ((\inst13|inst|data_tx\(7)))) # (!\inst13|inst|Mux2~2_combout\ & (\inst13|inst|data_tx\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|bit_cnt\(1),
	datab => \inst13|inst|data_tx\(6),
	datac => \inst13|inst|data_tx\(7),
	datad => \inst13|inst|Mux2~2_combout\,
	combout => \inst13|inst|Mux2~3_combout\);

-- Location: FF_X61_Y42_N31
\inst13|inst|data_tx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	asdata => \inst13|inst14|tx_byte\(2),
	sload => VCC,
	ena => \inst13|inst|addr_rw[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_tx\(2));

-- Location: FF_X61_Y42_N29
\inst13|inst|data_tx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	asdata => \inst13|inst14|tx_byte\(3),
	sload => VCC,
	ena => \inst13|inst|addr_rw[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_tx\(3));

-- Location: FF_X62_Y42_N31
\inst13|inst|data_tx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	asdata => \inst13|inst14|tx_byte\(1),
	sload => VCC,
	ena => \inst13|inst|addr_rw[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_tx\(1));

-- Location: FF_X61_Y42_N25
\inst13|inst|data_tx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	asdata => \inst13|inst14|tx_byte\(0),
	sload => VCC,
	ena => \inst13|inst|addr_rw[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_tx\(0));

-- Location: LCCOMB_X61_Y42_N24
\inst13|inst|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Mux2~0_combout\ = (\inst13|inst|bit_cnt\(1) & ((\inst13|inst|bit_cnt\(0) & ((\inst13|inst|data_tx\(0)))) # (!\inst13|inst|bit_cnt\(0) & (\inst13|inst|data_tx\(1))))) # (!\inst13|inst|bit_cnt\(1) & (((!\inst13|inst|bit_cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|bit_cnt\(1),
	datab => \inst13|inst|data_tx\(1),
	datac => \inst13|inst|data_tx\(0),
	datad => \inst13|inst|bit_cnt\(0),
	combout => \inst13|inst|Mux2~0_combout\);

-- Location: LCCOMB_X61_Y42_N28
\inst13|inst|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Mux2~1_combout\ = (\inst13|inst|bit_cnt\(1) & (((\inst13|inst|Mux2~0_combout\)))) # (!\inst13|inst|bit_cnt\(1) & ((\inst13|inst|Mux2~0_combout\ & ((\inst13|inst|data_tx\(3)))) # (!\inst13|inst|Mux2~0_combout\ & (\inst13|inst|data_tx\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|data_tx\(2),
	datab => \inst13|inst|bit_cnt\(1),
	datac => \inst13|inst|data_tx\(3),
	datad => \inst13|inst|Mux2~0_combout\,
	combout => \inst13|inst|Mux2~1_combout\);

-- Location: LCCOMB_X64_Y42_N28
\inst13|inst|Selector23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector23~0_combout\ = (\inst13|inst|state.slv_ack1~q\ & !\inst13|inst|ack_error~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst|state.slv_ack1~q\,
	datad => \inst13|inst|ack_error~q\,
	combout => \inst13|inst|Selector23~0_combout\);

-- Location: LCCOMB_X64_Y42_N30
\inst13|inst|Selector25~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector25~11_combout\ = (\inst13|inst|Selector23~0_combout\ & ((\inst13|inst|bit_cnt\(2) & ((\inst13|inst|Mux2~1_combout\))) # (!\inst13|inst|bit_cnt\(2) & (\inst13|inst|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|bit_cnt\(2),
	datab => \inst13|inst|Mux2~3_combout\,
	datac => \inst13|inst|Mux2~1_combout\,
	datad => \inst13|inst|Selector23~0_combout\,
	combout => \inst13|inst|Selector25~11_combout\);

-- Location: LCCOMB_X62_Y42_N8
\inst13|inst|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Mux1~0_combout\ = (\inst13|inst|bit_cnt\(0) & (\inst13|inst|addr_rw\(3) & (\inst13|inst|bit_cnt\(1)))) # (!\inst13|inst|bit_cnt\(0) & (((\inst13|inst|bit_cnt\(1)) # (\inst13|inst|addr_rw\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|bit_cnt\(0),
	datab => \inst13|inst|addr_rw\(3),
	datac => \inst13|inst|bit_cnt\(1),
	datad => \inst13|inst|addr_rw\(2),
	combout => \inst13|inst|Mux1~0_combout\);

-- Location: LCCOMB_X62_Y42_N22
\inst13|inst|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Mux1~1_combout\ = (\inst13|inst|Mux1~0_combout\ & (((\inst13|inst|addr_rw\(0)) # (!\inst13|inst|Selector27~0_combout\)))) # (!\inst13|inst|Mux1~0_combout\ & (\inst13|inst|addr_rw\(1) & ((\inst13|inst|Selector27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|addr_rw\(1),
	datab => \inst13|inst|addr_rw\(0),
	datac => \inst13|inst|Mux1~0_combout\,
	datad => \inst13|inst|Selector27~0_combout\,
	combout => \inst13|inst|Mux1~1_combout\);

-- Location: LCCOMB_X62_Y42_N2
\inst13|inst|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Mux1~2_combout\ = (\inst13|inst|bit_cnt\(0) & (\inst13|inst|bit_cnt\(1) & ((\inst13|inst|addr_rw\(7))))) # (!\inst13|inst|bit_cnt\(0) & ((\inst13|inst|bit_cnt\(1)) # ((\inst13|inst|addr_rw\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|bit_cnt\(0),
	datab => \inst13|inst|bit_cnt\(1),
	datac => \inst13|inst|addr_rw\(6),
	datad => \inst13|inst|addr_rw\(7),
	combout => \inst13|inst|Mux1~2_combout\);

-- Location: LCCOMB_X62_Y42_N28
\inst13|inst|Mux1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Mux1~3_combout\ = (\inst13|inst|Mux1~2_combout\ & (((\inst13|inst|addr_rw\(4)) # (!\inst13|inst|Selector27~0_combout\)))) # (!\inst13|inst|Mux1~2_combout\ & (\inst13|inst|addr_rw\(5) & ((\inst13|inst|Selector27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|addr_rw\(5),
	datab => \inst13|inst|Mux1~2_combout\,
	datac => \inst13|inst|addr_rw\(4),
	datad => \inst13|inst|Selector27~0_combout\,
	combout => \inst13|inst|Mux1~3_combout\);

-- Location: LCCOMB_X62_Y42_N6
\inst13|inst|Selector25~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector25~9_combout\ = (\inst13|inst|state.command~q\ & ((\inst13|inst|Add1~0_combout\ & (\inst13|inst|Mux1~1_combout\)) # (!\inst13|inst|Add1~0_combout\ & ((\inst13|inst|Mux1~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|state.command~q\,
	datab => \inst13|inst|Add1~0_combout\,
	datac => \inst13|inst|Mux1~1_combout\,
	datad => \inst13|inst|Mux1~3_combout\,
	combout => \inst13|inst|Selector25~9_combout\);

-- Location: LCCOMB_X61_Y42_N30
\inst13|inst|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Mux3~0_combout\ = (\inst13|inst|bit_cnt\(0) & (\inst13|inst|data_tx\(3) & ((\inst13|inst|bit_cnt\(1))))) # (!\inst13|inst|bit_cnt\(0) & (((\inst13|inst|data_tx\(2)) # (\inst13|inst|bit_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|bit_cnt\(0),
	datab => \inst13|inst|data_tx\(3),
	datac => \inst13|inst|data_tx\(2),
	datad => \inst13|inst|bit_cnt\(1),
	combout => \inst13|inst|Mux3~0_combout\);

-- Location: LCCOMB_X62_Y42_N30
\inst13|inst|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Mux3~1_combout\ = (\inst13|inst|Selector27~0_combout\ & ((\inst13|inst|Mux3~0_combout\ & (\inst13|inst|data_tx\(0))) # (!\inst13|inst|Mux3~0_combout\ & ((\inst13|inst|data_tx\(1)))))) # (!\inst13|inst|Selector27~0_combout\ & 
-- (((\inst13|inst|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|Selector27~0_combout\,
	datab => \inst13|inst|data_tx\(0),
	datac => \inst13|inst|data_tx\(1),
	datad => \inst13|inst|Mux3~0_combout\,
	combout => \inst13|inst|Mux3~1_combout\);

-- Location: LCCOMB_X61_Y42_N26
\inst13|inst|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Mux3~2_combout\ = (\inst13|inst|bit_cnt\(0) & (\inst13|inst|data_tx\(7) & ((\inst13|inst|bit_cnt\(1))))) # (!\inst13|inst|bit_cnt\(0) & (((\inst13|inst|data_tx\(6)) # (\inst13|inst|bit_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|data_tx\(7),
	datab => \inst13|inst|bit_cnt\(0),
	datac => \inst13|inst|data_tx\(6),
	datad => \inst13|inst|bit_cnt\(1),
	combout => \inst13|inst|Mux3~2_combout\);

-- Location: LCCOMB_X61_Y42_N22
\inst13|inst|Mux3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Mux3~3_combout\ = (\inst13|inst|Mux3~2_combout\ & ((\inst13|inst|data_tx\(4)) # ((!\inst13|inst|Selector27~0_combout\)))) # (!\inst13|inst|Mux3~2_combout\ & (((\inst13|inst|data_tx\(5) & \inst13|inst|Selector27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|Mux3~2_combout\,
	datab => \inst13|inst|data_tx\(4),
	datac => \inst13|inst|data_tx\(5),
	datad => \inst13|inst|Selector27~0_combout\,
	combout => \inst13|inst|Mux3~3_combout\);

-- Location: LCCOMB_X62_Y42_N18
\inst13|inst|Selector25~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector25~8_combout\ = (\inst13|inst|state.wr~q\ & ((\inst13|inst|Add1~0_combout\ & (\inst13|inst|Mux3~1_combout\)) # (!\inst13|inst|Add1~0_combout\ & ((\inst13|inst|Mux3~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|state.wr~q\,
	datab => \inst13|inst|Add1~0_combout\,
	datac => \inst13|inst|Mux3~1_combout\,
	datad => \inst13|inst|Mux3~3_combout\,
	combout => \inst13|inst|Selector25~8_combout\);

-- Location: LCCOMB_X63_Y42_N20
\inst13|inst|Selector25~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector25~10_combout\ = (\inst13|inst|Selector25~9_combout\) # ((\inst13|inst|Selector25~8_combout\) # ((\inst13|inst|state.mstr_ack~q\ & \inst13|inst|process_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|state.mstr_ack~q\,
	datab => \inst13|inst|process_1~4_combout\,
	datac => \inst13|inst|Selector25~9_combout\,
	datad => \inst13|inst|Selector25~8_combout\,
	combout => \inst13|inst|Selector25~10_combout\);

-- Location: LCCOMB_X63_Y42_N2
\inst13|inst|Selector25~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector25~14_combout\ = (\inst13|inst|Selector23~1_combout\) # ((\inst13|inst|Selector25~13_combout\) # ((\inst13|inst|Selector25~11_combout\) # (\inst13|inst|Selector25~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|Selector23~1_combout\,
	datab => \inst13|inst|Selector25~13_combout\,
	datac => \inst13|inst|Selector25~11_combout\,
	datad => \inst13|inst|Selector25~10_combout\,
	combout => \inst13|inst|Selector25~14_combout\);

-- Location: LCCOMB_X63_Y42_N22
\inst13|inst|Selector25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector25~0_combout\ = (!\inst13|inst|ack_error~q\ & (\inst13|inst|state.slv_ack2~q\ & (\inst13|inst14|rnw~q\ & \inst13|inst|process_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|ack_error~q\,
	datab => \inst13|inst|state.slv_ack2~q\,
	datac => \inst13|inst14|rnw~q\,
	datad => \inst13|inst|process_1~4_combout\,
	combout => \inst13|inst|Selector25~0_combout\);

-- Location: LCCOMB_X64_Y42_N12
\inst13|inst|Selector25~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector25~1_combout\ = ((\inst13|inst|state.mstr_ack~q\) # ((\inst13|inst|state.slv_ack1~q\ & \inst13|inst|ack_error~q\))) # (!\inst13|inst|state.ready~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|state.ready~q\,
	datab => \inst13|inst|state.slv_ack1~q\,
	datac => \inst13|inst|state.mstr_ack~q\,
	datad => \inst13|inst|ack_error~q\,
	combout => \inst13|inst|Selector25~1_combout\);

-- Location: LCCOMB_X64_Y42_N22
\inst13|inst|Selector25~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector25~2_combout\ = (\inst13|inst|state.stop~q\) # ((\inst13|inst|Selector25~1_combout\) # ((!\inst13|inst|Equal1~0_combout\ & \inst13|inst|state.rd~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|Equal1~0_combout\,
	datab => \inst13|inst|state.stop~q\,
	datac => \inst13|inst|state.rd~q\,
	datad => \inst13|inst|Selector25~1_combout\,
	combout => \inst13|inst|Selector25~2_combout\);

-- Location: LCCOMB_X63_Y42_N30
\inst13|inst|Selector25~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector25~3_combout\ = (\inst13|inst|Selector25~0_combout\) # ((!\inst13|inst|sda_int~q\ & ((\inst13|inst|Selector25~2_combout\) # (!\inst13|inst|Selector0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|sda_int~q\,
	datab => \inst13|inst|Selector0~1_combout\,
	datac => \inst13|inst|Selector25~0_combout\,
	datad => \inst13|inst|Selector25~2_combout\,
	combout => \inst13|inst|Selector25~3_combout\);

-- Location: LCCOMB_X63_Y42_N4
\inst13|inst|Selector25~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector25~4_combout\ = (\inst13|inst|state.rd~q\ & ((\inst13|inst|addr_rw\(0) $ (\inst13|inst14|rnw~q\)) # (!\inst13|inst|process_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|state.rd~q\,
	datab => \inst13|inst|addr_rw\(0),
	datac => \inst13|inst14|rnw~q\,
	datad => \inst13|inst|process_1~4_combout\,
	combout => \inst13|inst|Selector25~4_combout\);

-- Location: LCCOMB_X63_Y42_N26
\inst13|inst|Selector25~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector25~5_combout\ = (\inst13|inst|Equal1~0_combout\ & ((\inst13|inst|state.wr~q\) # ((\inst13|inst|state.command~q\) # (\inst13|inst|Selector25~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|state.wr~q\,
	datab => \inst13|inst|state.command~q\,
	datac => \inst13|inst|Selector25~4_combout\,
	datad => \inst13|inst|Equal1~0_combout\,
	combout => \inst13|inst|Selector25~5_combout\);

-- Location: LCCOMB_X63_Y42_N12
\inst13|inst|Selector25~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector25~12_combout\ = (!\inst13|inst|Selector25~7_combout\ & (!\inst13|inst|Selector25~14_combout\ & (!\inst13|inst|Selector25~3_combout\ & !\inst13|inst|Selector25~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|Selector25~7_combout\,
	datab => \inst13|inst|Selector25~14_combout\,
	datac => \inst13|inst|Selector25~3_combout\,
	datad => \inst13|inst|Selector25~5_combout\,
	combout => \inst13|inst|Selector25~12_combout\);

-- Location: FF_X63_Y42_N13
\inst13|inst|sda_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	d => \inst13|inst|Selector25~12_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|sda_int~q\);

-- Location: LCCOMB_X65_Y42_N18
\inst13|inst|Selector30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector30~0_combout\ = (\inst13|inst|state.restart~q\) # ((!\inst13|inst|state.start~q\ & (!\inst13|inst|state.stop~q\ & !\inst13|inst|sda_int~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|state.start~q\,
	datab => \inst13|inst|state.stop~q\,
	datac => \inst13|inst|state.restart~q\,
	datad => \inst13|inst|sda_int~q\,
	combout => \inst13|inst|Selector30~0_combout\);

-- Location: LCCOMB_X65_Y42_N20
\inst13|inst|Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector17~0_combout\ = ((\inst13|inst|scl_req~q\ & (\inst13|inst14|rnw~q\ & \inst13|inst|process_1~4_combout\))) # (!\inst13|inst|state.mstr_ack~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|scl_req~q\,
	datab => \inst13|inst14|rnw~q\,
	datac => \inst13|inst|process_1~4_combout\,
	datad => \inst13|inst|state.mstr_ack~q\,
	combout => \inst13|inst|Selector17~0_combout\);

-- Location: LCCOMB_X65_Y42_N28
\inst13|inst|scl_req~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|scl_req~0_combout\ = (\inst13|inst|scl_req~q\ & (!\inst13|inst14|rnw~q\ & (\inst13|inst|process_1~4_combout\ & !\inst13|inst|ack_error~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|scl_req~q\,
	datab => \inst13|inst14|rnw~q\,
	datac => \inst13|inst|process_1~4_combout\,
	datad => \inst13|inst|ack_error~q\,
	combout => \inst13|inst|scl_req~0_combout\);

-- Location: LCCOMB_X65_Y42_N26
\inst13|inst|Selector17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector17~1_combout\ = (\inst13|inst|scl_req~q\) # ((!\inst13|inst|state.command~q\ & (\inst13|inst|WideOr3~0_combout\ & !\inst13|inst|state.stop~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|scl_req~q\,
	datab => \inst13|inst|state.command~q\,
	datac => \inst13|inst|WideOr3~0_combout\,
	datad => \inst13|inst|state.stop~q\,
	combout => \inst13|inst|Selector17~1_combout\);

-- Location: LCCOMB_X65_Y42_N0
\inst13|inst|Selector17~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector17~2_combout\ = (\inst13|inst|Selector17~1_combout\ & (((\inst13|inst|scl_req~q\ & !\inst13|inst|ack_error~q\)) # (!\inst13|inst|state.slv_ack1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|scl_req~q\,
	datab => \inst13|inst|state.slv_ack1~q\,
	datac => \inst13|inst|Selector17~1_combout\,
	datad => \inst13|inst|ack_error~q\,
	combout => \inst13|inst|Selector17~2_combout\);

-- Location: LCCOMB_X65_Y42_N14
\inst13|inst|Selector17~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector17~3_combout\ = (\inst13|inst|Selector17~2_combout\ & ((\inst13|inst|scl_req~q\) # ((\inst13|inst|state.ready~q\) # (\inst13|inst14|comm_en~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|scl_req~q\,
	datab => \inst13|inst|state.ready~q\,
	datac => \inst13|inst14|comm_en~q\,
	datad => \inst13|inst|Selector17~2_combout\,
	combout => \inst13|inst|Selector17~3_combout\);

-- Location: LCCOMB_X65_Y42_N30
\inst13|inst|Selector17~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector17~4_combout\ = (\inst13|inst|Selector17~0_combout\ & (\inst13|inst|Selector17~3_combout\ & ((\inst13|inst|scl_req~0_combout\) # (!\inst13|inst|state.slv_ack2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|Selector17~0_combout\,
	datab => \inst13|inst|scl_req~0_combout\,
	datac => \inst13|inst|Selector17~3_combout\,
	datad => \inst13|inst|state.slv_ack2~q\,
	combout => \inst13|inst|Selector17~4_combout\);

-- Location: FF_X65_Y42_N31
\inst13|inst|scl_req\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	d => \inst13|inst|Selector17~4_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|scl_req~q\);

-- Location: FF_X64_Y42_N17
\inst13|inst|scl_ena\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|ALT_INV_data_clk~clkctrl_outclk\,
	asdata => \inst13|inst|scl_req~q\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|scl_ena~q\);

-- Location: LCCOMB_X63_Y43_N28
\inst13|inst|scl_clk~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|scl_clk~1_combout\ = !\inst13|inst|count~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst|count~0_combout\,
	combout => \inst13|inst|scl_clk~1_combout\);

-- Location: FF_X63_Y43_N29
\inst13|inst|scl_clk~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst|scl_clk~1_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|scl_clk~en_q\);

-- Location: LCCOMB_X64_Y42_N16
\inst13|inst|scl~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|scl~1_combout\ = (!\inst13|inst|scl_clk~en_q\) # (!\inst13|inst|scl_ena~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst|scl_ena~q\,
	datad => \inst13|inst|scl_clk~en_q\,
	combout => \inst13|inst|scl~1_combout\);

-- Location: LCCOMB_X57_Y44_N6
\inst3|DP_EN~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DP_EN~1_combout\ = (!\inst|IR\(2) & (\inst|IR\(7) & (!\inst|IR\(0) & !\inst|IR\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(2),
	datab => \inst|IR\(7),
	datac => \inst|IR\(0),
	datad => \inst|IR\(1),
	combout => \inst3|DP_EN~1_combout\);

-- Location: LCCOMB_X57_Y44_N30
\inst3|DP_EN~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DP_EN~2_combout\ = (!\inst|IR\(4) & (\inst|IR\(6) & \inst|IR\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(4),
	datab => \inst|IR\(6),
	datad => \inst|IR\(5),
	combout => \inst3|DP_EN~2_combout\);

-- Location: LCCOMB_X57_Y44_N8
\inst3|DP_EN\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DP_EN~combout\ = LCELL((\inst3|DP_EN~1_combout\ & (\inst3|DP_EN~2_combout\ & (!\inst|IR\(3) & \inst3|DP_EN~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|DP_EN~1_combout\,
	datab => \inst3|DP_EN~2_combout\,
	datac => \inst|IR\(3),
	datad => \inst3|DP_EN~0_combout\,
	combout => \inst3|DP_EN~combout\);

-- Location: FF_X58_Y44_N3
inst14 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|DP_EN~combout\,
	asdata => \inst13|inst1[0]~6_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14~q\);

-- Location: LCCOMB_X57_Y44_N22
\inst3|HEX0_EN~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|HEX0_EN~0_combout\ = (!\inst|IR\(4) & (!\inst|IR\(7) & (\inst|IR\(2) & \inst3|SWITCH_EN~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(4),
	datab => \inst|IR\(7),
	datac => \inst|IR\(2),
	datad => \inst3|SWITCH_EN~3_combout\,
	combout => \inst3|HEX0_EN~0_combout\);

-- Location: LCCOMB_X57_Y44_N24
\inst3|HEX0_EN\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|HEX0_EN~combout\ = LCELL((!\inst|IR\(1) & (!\inst|IR\(0) & \inst3|HEX0_EN~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(1),
	datab => \inst|IR\(0),
	datad => \inst3|HEX0_EN~0_combout\,
	combout => \inst3|HEX0_EN~combout\);

-- Location: CLKCTRL_G1
\inst3|HEX0_EN~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|HEX0_EN~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|HEX0_EN~clkctrl_outclk\);

-- Location: LCCOMB_X59_Y42_N26
\inst9|inst1|latched_hex[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst1|latched_hex[3]~feeder_combout\ = \inst13|inst1[3]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst1[3]~15_combout\,
	combout => \inst9|inst1|latched_hex[3]~feeder_combout\);

-- Location: FF_X59_Y42_N27
\inst9|inst1|latched_hex[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|HEX0_EN~clkctrl_outclk\,
	d => \inst9|inst1|latched_hex[3]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst1|latched_hex\(3));

-- Location: LCCOMB_X59_Y42_N4
\inst9|inst1|latched_hex[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst1|latched_hex[1]~feeder_combout\ = \inst13|inst1[1]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[1]~9_combout\,
	combout => \inst9|inst1|latched_hex[1]~feeder_combout\);

-- Location: FF_X59_Y42_N5
\inst9|inst1|latched_hex[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|HEX0_EN~clkctrl_outclk\,
	d => \inst9|inst1|latched_hex[1]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst1|latched_hex\(1));

-- Location: LCCOMB_X64_Y45_N0
\inst9|inst1|latched_hex[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst1|latched_hex[2]~feeder_combout\ = \inst13|inst1[2]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst1[2]~12_combout\,
	combout => \inst9|inst1|latched_hex[2]~feeder_combout\);

-- Location: FF_X64_Y45_N1
\inst9|inst1|latched_hex[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|HEX0_EN~clkctrl_outclk\,
	d => \inst9|inst1|latched_hex[2]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst1|latched_hex\(2));

-- Location: LCCOMB_X67_Y44_N8
\inst9|inst1|latched_hex[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst1|latched_hex[0]~feeder_combout\ = \inst13|inst1[0]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst1[0]~6_combout\,
	combout => \inst9|inst1|latched_hex[0]~feeder_combout\);

-- Location: FF_X67_Y44_N9
\inst9|inst1|latched_hex[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|HEX0_EN~clkctrl_outclk\,
	d => \inst9|inst1|latched_hex[0]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst1|latched_hex\(0));

-- Location: LCCOMB_X75_Y46_N28
\inst9|inst1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst1|Mux0~0_combout\ = (\inst9|inst1|latched_hex\(0) & ((\inst9|inst1|latched_hex\(3)) # (\inst9|inst1|latched_hex\(1) $ (\inst9|inst1|latched_hex\(2))))) # (!\inst9|inst1|latched_hex\(0) & ((\inst9|inst1|latched_hex\(1)) # 
-- (\inst9|inst1|latched_hex\(3) $ (\inst9|inst1|latched_hex\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst1|latched_hex\(3),
	datab => \inst9|inst1|latched_hex\(1),
	datac => \inst9|inst1|latched_hex\(2),
	datad => \inst9|inst1|latched_hex\(0),
	combout => \inst9|inst1|Mux0~0_combout\);

-- Location: LCCOMB_X75_Y46_N2
\inst9|inst1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst1|Mux1~0_combout\ = (\inst9|inst1|latched_hex\(1) & (!\inst9|inst1|latched_hex\(3) & ((\inst9|inst1|latched_hex\(0)) # (!\inst9|inst1|latched_hex\(2))))) # (!\inst9|inst1|latched_hex\(1) & (\inst9|inst1|latched_hex\(0) & 
-- (\inst9|inst1|latched_hex\(3) $ (!\inst9|inst1|latched_hex\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst1|latched_hex\(3),
	datab => \inst9|inst1|latched_hex\(1),
	datac => \inst9|inst1|latched_hex\(2),
	datad => \inst9|inst1|latched_hex\(0),
	combout => \inst9|inst1|Mux1~0_combout\);

-- Location: LCCOMB_X75_Y46_N16
\inst9|inst1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst1|Mux2~0_combout\ = (\inst9|inst1|latched_hex\(1) & (!\inst9|inst1|latched_hex\(3) & ((\inst9|inst1|latched_hex\(0))))) # (!\inst9|inst1|latched_hex\(1) & ((\inst9|inst1|latched_hex\(2) & (!\inst9|inst1|latched_hex\(3))) # 
-- (!\inst9|inst1|latched_hex\(2) & ((\inst9|inst1|latched_hex\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst1|latched_hex\(3),
	datab => \inst9|inst1|latched_hex\(1),
	datac => \inst9|inst1|latched_hex\(2),
	datad => \inst9|inst1|latched_hex\(0),
	combout => \inst9|inst1|Mux2~0_combout\);

-- Location: LCCOMB_X75_Y46_N26
\inst9|inst1|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst1|Mux3~0_combout\ = (\inst9|inst1|latched_hex\(1) & ((\inst9|inst1|latched_hex\(2) & ((\inst9|inst1|latched_hex\(0)))) # (!\inst9|inst1|latched_hex\(2) & (\inst9|inst1|latched_hex\(3) & !\inst9|inst1|latched_hex\(0))))) # 
-- (!\inst9|inst1|latched_hex\(1) & (!\inst9|inst1|latched_hex\(3) & (\inst9|inst1|latched_hex\(2) $ (\inst9|inst1|latched_hex\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst1|latched_hex\(3),
	datab => \inst9|inst1|latched_hex\(1),
	datac => \inst9|inst1|latched_hex\(2),
	datad => \inst9|inst1|latched_hex\(0),
	combout => \inst9|inst1|Mux3~0_combout\);

-- Location: LCCOMB_X75_Y46_N12
\inst9|inst1|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst1|Mux4~0_combout\ = (\inst9|inst1|latched_hex\(3) & (\inst9|inst1|latched_hex\(2) & ((\inst9|inst1|latched_hex\(1)) # (!\inst9|inst1|latched_hex\(0))))) # (!\inst9|inst1|latched_hex\(3) & (\inst9|inst1|latched_hex\(1) & 
-- (!\inst9|inst1|latched_hex\(2) & !\inst9|inst1|latched_hex\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst1|latched_hex\(3),
	datab => \inst9|inst1|latched_hex\(1),
	datac => \inst9|inst1|latched_hex\(2),
	datad => \inst9|inst1|latched_hex\(0),
	combout => \inst9|inst1|Mux4~0_combout\);

-- Location: LCCOMB_X75_Y46_N22
\inst9|inst1|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst1|Mux5~0_combout\ = (\inst9|inst1|latched_hex\(3) & ((\inst9|inst1|latched_hex\(0) & (\inst9|inst1|latched_hex\(1))) # (!\inst9|inst1|latched_hex\(0) & ((\inst9|inst1|latched_hex\(2)))))) # (!\inst9|inst1|latched_hex\(3) & 
-- (\inst9|inst1|latched_hex\(2) & (\inst9|inst1|latched_hex\(1) $ (\inst9|inst1|latched_hex\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst1|latched_hex\(3),
	datab => \inst9|inst1|latched_hex\(1),
	datac => \inst9|inst1|latched_hex\(2),
	datad => \inst9|inst1|latched_hex\(0),
	combout => \inst9|inst1|Mux5~0_combout\);

-- Location: LCCOMB_X75_Y46_N8
\inst9|inst1|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst1|Mux6~0_combout\ = (\inst9|inst1|latched_hex\(3) & (\inst9|inst1|latched_hex\(0) & (\inst9|inst1|latched_hex\(1) $ (\inst9|inst1|latched_hex\(2))))) # (!\inst9|inst1|latched_hex\(3) & (!\inst9|inst1|latched_hex\(1) & 
-- (\inst9|inst1|latched_hex\(2) $ (\inst9|inst1|latched_hex\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst1|latched_hex\(3),
	datab => \inst9|inst1|latched_hex\(1),
	datac => \inst9|inst1|latched_hex\(2),
	datad => \inst9|inst1|latched_hex\(0),
	combout => \inst9|inst1|Mux6~0_combout\);

-- Location: LCCOMB_X61_Y46_N8
\inst9|inst2|latched_hex[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst2|latched_hex[3]~feeder_combout\ = \inst13|inst1[7]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[7]~27_combout\,
	combout => \inst9|inst2|latched_hex[3]~feeder_combout\);

-- Location: FF_X61_Y46_N9
\inst9|inst2|latched_hex[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|HEX0_EN~clkctrl_outclk\,
	d => \inst9|inst2|latched_hex[3]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst2|latched_hex\(3));

-- Location: LCCOMB_X60_Y46_N8
\inst9|inst2|latched_hex[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst2|latched_hex[2]~feeder_combout\ = \inst13|inst1[6]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst1[6]~24_combout\,
	combout => \inst9|inst2|latched_hex[2]~feeder_combout\);

-- Location: FF_X60_Y46_N9
\inst9|inst2|latched_hex[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|HEX0_EN~clkctrl_outclk\,
	d => \inst9|inst2|latched_hex[2]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst2|latched_hex\(2));

-- Location: FF_X56_Y46_N25
\inst9|inst2|latched_hex[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|HEX0_EN~clkctrl_outclk\,
	asdata => \inst13|inst1[5]~21_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst2|latched_hex\(1));

-- Location: LCCOMB_X65_Y46_N28
\inst9|inst2|latched_hex[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst2|latched_hex[0]~feeder_combout\ = \inst13|inst1[4]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst1[4]~18_combout\,
	combout => \inst9|inst2|latched_hex[0]~feeder_combout\);

-- Location: FF_X65_Y46_N29
\inst9|inst2|latched_hex[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|HEX0_EN~clkctrl_outclk\,
	d => \inst9|inst2|latched_hex[0]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst2|latched_hex\(0));

-- Location: LCCOMB_X70_Y46_N16
\inst9|inst2|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst2|Mux0~0_combout\ = (\inst9|inst2|latched_hex\(0) & ((\inst9|inst2|latched_hex\(3)) # (\inst9|inst2|latched_hex\(2) $ (\inst9|inst2|latched_hex\(1))))) # (!\inst9|inst2|latched_hex\(0) & ((\inst9|inst2|latched_hex\(1)) # 
-- (\inst9|inst2|latched_hex\(3) $ (\inst9|inst2|latched_hex\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst2|latched_hex\(3),
	datab => \inst9|inst2|latched_hex\(2),
	datac => \inst9|inst2|latched_hex\(1),
	datad => \inst9|inst2|latched_hex\(0),
	combout => \inst9|inst2|Mux0~0_combout\);

-- Location: LCCOMB_X70_Y46_N26
\inst9|inst2|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst2|Mux1~0_combout\ = (\inst9|inst2|latched_hex\(2) & (\inst9|inst2|latched_hex\(0) & (\inst9|inst2|latched_hex\(3) $ (\inst9|inst2|latched_hex\(1))))) # (!\inst9|inst2|latched_hex\(2) & (!\inst9|inst2|latched_hex\(3) & 
-- ((\inst9|inst2|latched_hex\(1)) # (\inst9|inst2|latched_hex\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst2|latched_hex\(3),
	datab => \inst9|inst2|latched_hex\(2),
	datac => \inst9|inst2|latched_hex\(1),
	datad => \inst9|inst2|latched_hex\(0),
	combout => \inst9|inst2|Mux1~0_combout\);

-- Location: LCCOMB_X70_Y46_N4
\inst9|inst2|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst2|Mux2~0_combout\ = (\inst9|inst2|latched_hex\(1) & (!\inst9|inst2|latched_hex\(3) & ((\inst9|inst2|latched_hex\(0))))) # (!\inst9|inst2|latched_hex\(1) & ((\inst9|inst2|latched_hex\(2) & (!\inst9|inst2|latched_hex\(3))) # 
-- (!\inst9|inst2|latched_hex\(2) & ((\inst9|inst2|latched_hex\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst2|latched_hex\(3),
	datab => \inst9|inst2|latched_hex\(2),
	datac => \inst9|inst2|latched_hex\(1),
	datad => \inst9|inst2|latched_hex\(0),
	combout => \inst9|inst2|Mux2~0_combout\);

-- Location: LCCOMB_X70_Y46_N22
\inst9|inst2|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst2|Mux3~0_combout\ = (\inst9|inst2|latched_hex\(1) & ((\inst9|inst2|latched_hex\(2) & ((\inst9|inst2|latched_hex\(0)))) # (!\inst9|inst2|latched_hex\(2) & (\inst9|inst2|latched_hex\(3) & !\inst9|inst2|latched_hex\(0))))) # 
-- (!\inst9|inst2|latched_hex\(1) & (!\inst9|inst2|latched_hex\(3) & (\inst9|inst2|latched_hex\(2) $ (\inst9|inst2|latched_hex\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst2|latched_hex\(3),
	datab => \inst9|inst2|latched_hex\(2),
	datac => \inst9|inst2|latched_hex\(1),
	datad => \inst9|inst2|latched_hex\(0),
	combout => \inst9|inst2|Mux3~0_combout\);

-- Location: LCCOMB_X70_Y46_N24
\inst9|inst2|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst2|Mux4~0_combout\ = (\inst9|inst2|latched_hex\(3) & (\inst9|inst2|latched_hex\(2) & ((\inst9|inst2|latched_hex\(1)) # (!\inst9|inst2|latched_hex\(0))))) # (!\inst9|inst2|latched_hex\(3) & (!\inst9|inst2|latched_hex\(2) & 
-- (\inst9|inst2|latched_hex\(1) & !\inst9|inst2|latched_hex\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst2|latched_hex\(3),
	datab => \inst9|inst2|latched_hex\(2),
	datac => \inst9|inst2|latched_hex\(1),
	datad => \inst9|inst2|latched_hex\(0),
	combout => \inst9|inst2|Mux4~0_combout\);

-- Location: LCCOMB_X70_Y46_N2
\inst9|inst2|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst2|Mux5~0_combout\ = (\inst9|inst2|latched_hex\(3) & ((\inst9|inst2|latched_hex\(0) & ((\inst9|inst2|latched_hex\(1)))) # (!\inst9|inst2|latched_hex\(0) & (\inst9|inst2|latched_hex\(2))))) # (!\inst9|inst2|latched_hex\(3) & 
-- (\inst9|inst2|latched_hex\(2) & (\inst9|inst2|latched_hex\(1) $ (\inst9|inst2|latched_hex\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst2|latched_hex\(3),
	datab => \inst9|inst2|latched_hex\(2),
	datac => \inst9|inst2|latched_hex\(1),
	datad => \inst9|inst2|latched_hex\(0),
	combout => \inst9|inst2|Mux5~0_combout\);

-- Location: LCCOMB_X70_Y46_N28
\inst9|inst2|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst2|Mux6~0_combout\ = (\inst9|inst2|latched_hex\(3) & (\inst9|inst2|latched_hex\(0) & (\inst9|inst2|latched_hex\(2) $ (\inst9|inst2|latched_hex\(1))))) # (!\inst9|inst2|latched_hex\(3) & (!\inst9|inst2|latched_hex\(1) & 
-- (\inst9|inst2|latched_hex\(2) $ (\inst9|inst2|latched_hex\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst2|latched_hex\(3),
	datab => \inst9|inst2|latched_hex\(2),
	datac => \inst9|inst2|latched_hex\(1),
	datad => \inst9|inst2|latched_hex\(0),
	combout => \inst9|inst2|Mux6~0_combout\);

-- Location: LCCOMB_X59_Y45_N22
\inst9|inst3|latched_hex[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst3|latched_hex[3]~feeder_combout\ = \inst13|inst1[11]~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst1[11]~38_combout\,
	combout => \inst9|inst3|latched_hex[3]~feeder_combout\);

-- Location: FF_X59_Y45_N23
\inst9|inst3|latched_hex[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|HEX0_EN~clkctrl_outclk\,
	d => \inst9|inst3|latched_hex[3]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst3|latched_hex\(3));

-- Location: FF_X63_Y45_N21
\inst9|inst3|latched_hex[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|HEX0_EN~clkctrl_outclk\,
	asdata => \inst13|inst1[8]~30_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst3|latched_hex\(0));

-- Location: LCCOMB_X61_Y45_N12
\inst9|inst3|latched_hex[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst3|latched_hex[1]~feeder_combout\ = \inst13|inst1[9]~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst1[9]~33_combout\,
	combout => \inst9|inst3|latched_hex[1]~feeder_combout\);

-- Location: FF_X61_Y45_N13
\inst9|inst3|latched_hex[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|HEX0_EN~clkctrl_outclk\,
	d => \inst9|inst3|latched_hex[1]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst3|latched_hex\(1));

-- Location: LCCOMB_X59_Y45_N24
\inst9|inst3|latched_hex[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst3|latched_hex[2]~feeder_combout\ = \inst13|inst1[10]~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst1[10]~36_combout\,
	combout => \inst9|inst3|latched_hex[2]~feeder_combout\);

-- Location: FF_X59_Y45_N25
\inst9|inst3|latched_hex[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|HEX0_EN~clkctrl_outclk\,
	d => \inst9|inst3|latched_hex[2]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst3|latched_hex\(2));

-- Location: LCCOMB_X59_Y45_N12
\inst9|inst3|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst3|Mux0~0_combout\ = (\inst9|inst3|latched_hex\(0) & ((\inst9|inst3|latched_hex\(3)) # (\inst9|inst3|latched_hex\(1) $ (\inst9|inst3|latched_hex\(2))))) # (!\inst9|inst3|latched_hex\(0) & ((\inst9|inst3|latched_hex\(1)) # 
-- (\inst9|inst3|latched_hex\(3) $ (\inst9|inst3|latched_hex\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst3|latched_hex\(3),
	datab => \inst9|inst3|latched_hex\(0),
	datac => \inst9|inst3|latched_hex\(1),
	datad => \inst9|inst3|latched_hex\(2),
	combout => \inst9|inst3|Mux0~0_combout\);

-- Location: LCCOMB_X61_Y45_N2
\inst9|inst3|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst3|Mux1~0_combout\ = (\inst9|inst3|latched_hex\(1) & (!\inst9|inst3|latched_hex\(3) & ((\inst9|inst3|latched_hex\(0)) # (!\inst9|inst3|latched_hex\(2))))) # (!\inst9|inst3|latched_hex\(1) & (\inst9|inst3|latched_hex\(0) & 
-- (\inst9|inst3|latched_hex\(2) $ (!\inst9|inst3|latched_hex\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst3|latched_hex\(1),
	datab => \inst9|inst3|latched_hex\(2),
	datac => \inst9|inst3|latched_hex\(3),
	datad => \inst9|inst3|latched_hex\(0),
	combout => \inst9|inst3|Mux1~0_combout\);

-- Location: LCCOMB_X61_Y45_N16
\inst9|inst3|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst3|Mux2~0_combout\ = (\inst9|inst3|latched_hex\(1) & (((!\inst9|inst3|latched_hex\(3) & \inst9|inst3|latched_hex\(0))))) # (!\inst9|inst3|latched_hex\(1) & ((\inst9|inst3|latched_hex\(2) & (!\inst9|inst3|latched_hex\(3))) # 
-- (!\inst9|inst3|latched_hex\(2) & ((\inst9|inst3|latched_hex\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst3|latched_hex\(1),
	datab => \inst9|inst3|latched_hex\(2),
	datac => \inst9|inst3|latched_hex\(3),
	datad => \inst9|inst3|latched_hex\(0),
	combout => \inst9|inst3|Mux2~0_combout\);

-- Location: LCCOMB_X61_Y45_N10
\inst9|inst3|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst3|Mux3~0_combout\ = (\inst9|inst3|latched_hex\(1) & ((\inst9|inst3|latched_hex\(2) & ((\inst9|inst3|latched_hex\(0)))) # (!\inst9|inst3|latched_hex\(2) & (\inst9|inst3|latched_hex\(3) & !\inst9|inst3|latched_hex\(0))))) # 
-- (!\inst9|inst3|latched_hex\(1) & (!\inst9|inst3|latched_hex\(3) & (\inst9|inst3|latched_hex\(2) $ (\inst9|inst3|latched_hex\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst3|latched_hex\(1),
	datab => \inst9|inst3|latched_hex\(2),
	datac => \inst9|inst3|latched_hex\(3),
	datad => \inst9|inst3|latched_hex\(0),
	combout => \inst9|inst3|Mux3~0_combout\);

-- Location: LCCOMB_X61_Y45_N0
\inst9|inst3|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst3|Mux4~0_combout\ = (\inst9|inst3|latched_hex\(2) & (\inst9|inst3|latched_hex\(3) & ((\inst9|inst3|latched_hex\(1)) # (!\inst9|inst3|latched_hex\(0))))) # (!\inst9|inst3|latched_hex\(2) & (\inst9|inst3|latched_hex\(1) & 
-- (!\inst9|inst3|latched_hex\(3) & !\inst9|inst3|latched_hex\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst3|latched_hex\(1),
	datab => \inst9|inst3|latched_hex\(2),
	datac => \inst9|inst3|latched_hex\(3),
	datad => \inst9|inst3|latched_hex\(0),
	combout => \inst9|inst3|Mux4~0_combout\);

-- Location: LCCOMB_X59_Y45_N18
\inst9|inst3|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst3|Mux5~0_combout\ = (\inst9|inst3|latched_hex\(3) & ((\inst9|inst3|latched_hex\(0) & (\inst9|inst3|latched_hex\(1))) # (!\inst9|inst3|latched_hex\(0) & ((\inst9|inst3|latched_hex\(2)))))) # (!\inst9|inst3|latched_hex\(3) & 
-- (\inst9|inst3|latched_hex\(2) & (\inst9|inst3|latched_hex\(0) $ (\inst9|inst3|latched_hex\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst3|latched_hex\(3),
	datab => \inst9|inst3|latched_hex\(0),
	datac => \inst9|inst3|latched_hex\(1),
	datad => \inst9|inst3|latched_hex\(2),
	combout => \inst9|inst3|Mux5~0_combout\);

-- Location: LCCOMB_X59_Y45_N0
\inst9|inst3|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst3|Mux6~0_combout\ = (\inst9|inst3|latched_hex\(3) & (\inst9|inst3|latched_hex\(0) & (\inst9|inst3|latched_hex\(1) $ (\inst9|inst3|latched_hex\(2))))) # (!\inst9|inst3|latched_hex\(3) & (!\inst9|inst3|latched_hex\(1) & 
-- (\inst9|inst3|latched_hex\(0) $ (\inst9|inst3|latched_hex\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst3|latched_hex\(3),
	datab => \inst9|inst3|latched_hex\(0),
	datac => \inst9|inst3|latched_hex\(1),
	datad => \inst9|inst3|latched_hex\(2),
	combout => \inst9|inst3|Mux6~0_combout\);

-- Location: FF_X60_Y44_N23
\inst9|inst4|latched_hex[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|HEX0_EN~clkctrl_outclk\,
	asdata => \inst13|inst1[13]~42_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst4|latched_hex\(1));

-- Location: FF_X60_Y44_N21
\inst9|inst4|latched_hex[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|HEX0_EN~clkctrl_outclk\,
	asdata => \inst13|inst1[14]~44_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst4|latched_hex\(2));

-- Location: FF_X60_Y44_N31
\inst9|inst4|latched_hex[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|HEX0_EN~clkctrl_outclk\,
	asdata => \inst13|inst1[15]~46_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst4|latched_hex\(3));

-- Location: LCCOMB_X60_Y44_N24
\inst9|inst4|latched_hex[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst4|latched_hex[0]~feeder_combout\ = \inst13|inst1[12]~40_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst1[12]~40_combout\,
	combout => \inst9|inst4|latched_hex[0]~feeder_combout\);

-- Location: FF_X60_Y44_N25
\inst9|inst4|latched_hex[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|HEX0_EN~clkctrl_outclk\,
	d => \inst9|inst4|latched_hex[0]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst4|latched_hex\(0));

-- Location: LCCOMB_X60_Y44_N4
\inst9|inst4|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst4|Mux0~0_combout\ = (\inst9|inst4|latched_hex\(0) & ((\inst9|inst4|latched_hex\(3)) # (\inst9|inst4|latched_hex\(1) $ (\inst9|inst4|latched_hex\(2))))) # (!\inst9|inst4|latched_hex\(0) & ((\inst9|inst4|latched_hex\(1)) # 
-- (\inst9|inst4|latched_hex\(2) $ (\inst9|inst4|latched_hex\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst4|latched_hex\(1),
	datab => \inst9|inst4|latched_hex\(2),
	datac => \inst9|inst4|latched_hex\(3),
	datad => \inst9|inst4|latched_hex\(0),
	combout => \inst9|inst4|Mux0~0_combout\);

-- Location: LCCOMB_X60_Y44_N18
\inst9|inst4|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst4|Mux1~0_combout\ = (\inst9|inst4|latched_hex\(1) & (!\inst9|inst4|latched_hex\(3) & ((\inst9|inst4|latched_hex\(0)) # (!\inst9|inst4|latched_hex\(2))))) # (!\inst9|inst4|latched_hex\(1) & (\inst9|inst4|latched_hex\(0) & 
-- (\inst9|inst4|latched_hex\(2) $ (!\inst9|inst4|latched_hex\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst4|latched_hex\(1),
	datab => \inst9|inst4|latched_hex\(2),
	datac => \inst9|inst4|latched_hex\(3),
	datad => \inst9|inst4|latched_hex\(0),
	combout => \inst9|inst4|Mux1~0_combout\);

-- Location: LCCOMB_X60_Y44_N8
\inst9|inst4|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst4|Mux2~0_combout\ = (\inst9|inst4|latched_hex\(1) & (((!\inst9|inst4|latched_hex\(3) & \inst9|inst4|latched_hex\(0))))) # (!\inst9|inst4|latched_hex\(1) & ((\inst9|inst4|latched_hex\(2) & (!\inst9|inst4|latched_hex\(3))) # 
-- (!\inst9|inst4|latched_hex\(2) & ((\inst9|inst4|latched_hex\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst4|latched_hex\(1),
	datab => \inst9|inst4|latched_hex\(2),
	datac => \inst9|inst4|latched_hex\(3),
	datad => \inst9|inst4|latched_hex\(0),
	combout => \inst9|inst4|Mux2~0_combout\);

-- Location: LCCOMB_X60_Y44_N2
\inst9|inst4|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst4|Mux3~0_combout\ = (\inst9|inst4|latched_hex\(1) & ((\inst9|inst4|latched_hex\(2) & ((\inst9|inst4|latched_hex\(0)))) # (!\inst9|inst4|latched_hex\(2) & (\inst9|inst4|latched_hex\(3) & !\inst9|inst4|latched_hex\(0))))) # 
-- (!\inst9|inst4|latched_hex\(1) & (!\inst9|inst4|latched_hex\(3) & (\inst9|inst4|latched_hex\(2) $ (\inst9|inst4|latched_hex\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst4|latched_hex\(1),
	datab => \inst9|inst4|latched_hex\(2),
	datac => \inst9|inst4|latched_hex\(3),
	datad => \inst9|inst4|latched_hex\(0),
	combout => \inst9|inst4|Mux3~0_combout\);

-- Location: LCCOMB_X60_Y44_N22
\inst9|inst4|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst4|Mux4~0_combout\ = (\inst9|inst4|latched_hex\(3) & (\inst9|inst4|latched_hex\(2) & ((\inst9|inst4|latched_hex\(1)) # (!\inst9|inst4|latched_hex\(0))))) # (!\inst9|inst4|latched_hex\(3) & (!\inst9|inst4|latched_hex\(2) & 
-- (\inst9|inst4|latched_hex\(1) & !\inst9|inst4|latched_hex\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst4|latched_hex\(3),
	datab => \inst9|inst4|latched_hex\(2),
	datac => \inst9|inst4|latched_hex\(1),
	datad => \inst9|inst4|latched_hex\(0),
	combout => \inst9|inst4|Mux4~0_combout\);

-- Location: LCCOMB_X60_Y44_N20
\inst9|inst4|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst4|Mux5~0_combout\ = (\inst9|inst4|latched_hex\(3) & ((\inst9|inst4|latched_hex\(0) & (\inst9|inst4|latched_hex\(1))) # (!\inst9|inst4|latched_hex\(0) & ((\inst9|inst4|latched_hex\(2)))))) # (!\inst9|inst4|latched_hex\(3) & 
-- (\inst9|inst4|latched_hex\(2) & (\inst9|inst4|latched_hex\(1) $ (\inst9|inst4|latched_hex\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst4|latched_hex\(3),
	datab => \inst9|inst4|latched_hex\(1),
	datac => \inst9|inst4|latched_hex\(2),
	datad => \inst9|inst4|latched_hex\(0),
	combout => \inst9|inst4|Mux5~0_combout\);

-- Location: LCCOMB_X60_Y44_N30
\inst9|inst4|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst4|Mux6~0_combout\ = (\inst9|inst4|latched_hex\(2) & (!\inst9|inst4|latched_hex\(1) & (\inst9|inst4|latched_hex\(3) $ (!\inst9|inst4|latched_hex\(0))))) # (!\inst9|inst4|latched_hex\(2) & (\inst9|inst4|latched_hex\(0) & 
-- (\inst9|inst4|latched_hex\(1) $ (!\inst9|inst4|latched_hex\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst4|latched_hex\(1),
	datab => \inst9|inst4|latched_hex\(2),
	datac => \inst9|inst4|latched_hex\(3),
	datad => \inst9|inst4|latched_hex\(0),
	combout => \inst9|inst4|Mux6~0_combout\);

-- Location: LCCOMB_X57_Y44_N20
\inst3|HEX1_EN\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|HEX1_EN~combout\ = LCELL((!\inst|IR\(1) & (\inst|IR\(0) & \inst3|HEX0_EN~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(1),
	datab => \inst|IR\(0),
	datad => \inst3|HEX0_EN~0_combout\,
	combout => \inst3|HEX1_EN~combout\);

-- Location: CLKCTRL_G12
\inst3|HEX1_EN~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|HEX1_EN~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|HEX1_EN~clkctrl_outclk\);

-- Location: FF_X63_Y45_N3
\inst9|inst5|latched_hex[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|HEX1_EN~clkctrl_outclk\,
	asdata => \inst13|inst1[3]~15_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst5|latched_hex\(3));

-- Location: LCCOMB_X62_Y46_N20
\inst9|inst5|latched_hex[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst5|latched_hex[2]~feeder_combout\ = \inst13|inst1[2]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst1[2]~12_combout\,
	combout => \inst9|inst5|latched_hex[2]~feeder_combout\);

-- Location: FF_X62_Y46_N21
\inst9|inst5|latched_hex[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|HEX1_EN~clkctrl_outclk\,
	d => \inst9|inst5|latched_hex[2]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst5|latched_hex\(2));

-- Location: LCCOMB_X59_Y41_N12
\inst9|inst5|latched_hex[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst5|latched_hex[1]~feeder_combout\ = \inst13|inst1[1]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst1[1]~9_combout\,
	combout => \inst9|inst5|latched_hex[1]~feeder_combout\);

-- Location: FF_X59_Y41_N13
\inst9|inst5|latched_hex[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|HEX1_EN~clkctrl_outclk\,
	d => \inst9|inst5|latched_hex[1]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst5|latched_hex\(1));

-- Location: FF_X72_Y46_N21
\inst9|inst5|latched_hex[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|HEX1_EN~clkctrl_outclk\,
	asdata => \inst13|inst1[0]~6_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst5|latched_hex\(0));

-- Location: LCCOMB_X75_Y46_N18
\inst9|inst5|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst5|Mux0~0_combout\ = (\inst9|inst5|latched_hex\(0) & ((\inst9|inst5|latched_hex\(3)) # (\inst9|inst5|latched_hex\(2) $ (\inst9|inst5|latched_hex\(1))))) # (!\inst9|inst5|latched_hex\(0) & ((\inst9|inst5|latched_hex\(1)) # 
-- (\inst9|inst5|latched_hex\(3) $ (\inst9|inst5|latched_hex\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst5|latched_hex\(3),
	datab => \inst9|inst5|latched_hex\(2),
	datac => \inst9|inst5|latched_hex\(1),
	datad => \inst9|inst5|latched_hex\(0),
	combout => \inst9|inst5|Mux0~0_combout\);

-- Location: LCCOMB_X75_Y46_N4
\inst9|inst5|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst5|Mux1~0_combout\ = (\inst9|inst5|latched_hex\(2) & (\inst9|inst5|latched_hex\(0) & (\inst9|inst5|latched_hex\(3) $ (\inst9|inst5|latched_hex\(1))))) # (!\inst9|inst5|latched_hex\(2) & (!\inst9|inst5|latched_hex\(3) & 
-- ((\inst9|inst5|latched_hex\(1)) # (\inst9|inst5|latched_hex\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst5|latched_hex\(3),
	datab => \inst9|inst5|latched_hex\(2),
	datac => \inst9|inst5|latched_hex\(1),
	datad => \inst9|inst5|latched_hex\(0),
	combout => \inst9|inst5|Mux1~0_combout\);

-- Location: LCCOMB_X75_Y46_N30
\inst9|inst5|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst5|Mux2~0_combout\ = (\inst9|inst5|latched_hex\(1) & (!\inst9|inst5|latched_hex\(3) & ((\inst9|inst5|latched_hex\(0))))) # (!\inst9|inst5|latched_hex\(1) & ((\inst9|inst5|latched_hex\(2) & (!\inst9|inst5|latched_hex\(3))) # 
-- (!\inst9|inst5|latched_hex\(2) & ((\inst9|inst5|latched_hex\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst5|latched_hex\(3),
	datab => \inst9|inst5|latched_hex\(2),
	datac => \inst9|inst5|latched_hex\(1),
	datad => \inst9|inst5|latched_hex\(0),
	combout => \inst9|inst5|Mux2~0_combout\);

-- Location: LCCOMB_X75_Y46_N24
\inst9|inst5|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst5|Mux3~0_combout\ = (\inst9|inst5|latched_hex\(1) & ((\inst9|inst5|latched_hex\(2) & ((\inst9|inst5|latched_hex\(0)))) # (!\inst9|inst5|latched_hex\(2) & (\inst9|inst5|latched_hex\(3) & !\inst9|inst5|latched_hex\(0))))) # 
-- (!\inst9|inst5|latched_hex\(1) & (!\inst9|inst5|latched_hex\(3) & (\inst9|inst5|latched_hex\(2) $ (\inst9|inst5|latched_hex\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst5|latched_hex\(3),
	datab => \inst9|inst5|latched_hex\(2),
	datac => \inst9|inst5|latched_hex\(1),
	datad => \inst9|inst5|latched_hex\(0),
	combout => \inst9|inst5|Mux3~0_combout\);

-- Location: LCCOMB_X75_Y46_N14
\inst9|inst5|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst5|Mux4~0_combout\ = (\inst9|inst5|latched_hex\(3) & (\inst9|inst5|latched_hex\(2) & ((\inst9|inst5|latched_hex\(1)) # (!\inst9|inst5|latched_hex\(0))))) # (!\inst9|inst5|latched_hex\(3) & (!\inst9|inst5|latched_hex\(2) & 
-- (\inst9|inst5|latched_hex\(1) & !\inst9|inst5|latched_hex\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst5|latched_hex\(3),
	datab => \inst9|inst5|latched_hex\(2),
	datac => \inst9|inst5|latched_hex\(1),
	datad => \inst9|inst5|latched_hex\(0),
	combout => \inst9|inst5|Mux4~0_combout\);

-- Location: LCCOMB_X75_Y46_N20
\inst9|inst5|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst5|Mux5~0_combout\ = (\inst9|inst5|latched_hex\(3) & ((\inst9|inst5|latched_hex\(0) & ((\inst9|inst5|latched_hex\(1)))) # (!\inst9|inst5|latched_hex\(0) & (\inst9|inst5|latched_hex\(2))))) # (!\inst9|inst5|latched_hex\(3) & 
-- (\inst9|inst5|latched_hex\(2) & (\inst9|inst5|latched_hex\(1) $ (\inst9|inst5|latched_hex\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst5|latched_hex\(3),
	datab => \inst9|inst5|latched_hex\(2),
	datac => \inst9|inst5|latched_hex\(1),
	datad => \inst9|inst5|latched_hex\(0),
	combout => \inst9|inst5|Mux5~0_combout\);

-- Location: LCCOMB_X75_Y46_N10
\inst9|inst5|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst5|Mux6~0_combout\ = (\inst9|inst5|latched_hex\(3) & (\inst9|inst5|latched_hex\(0) & (\inst9|inst5|latched_hex\(2) $ (\inst9|inst5|latched_hex\(1))))) # (!\inst9|inst5|latched_hex\(3) & (!\inst9|inst5|latched_hex\(1) & 
-- (\inst9|inst5|latched_hex\(2) $ (\inst9|inst5|latched_hex\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst5|latched_hex\(3),
	datab => \inst9|inst5|latched_hex\(2),
	datac => \inst9|inst5|latched_hex\(1),
	datad => \inst9|inst5|latched_hex\(0),
	combout => \inst9|inst5|Mux6~0_combout\);

-- Location: LCCOMB_X62_Y46_N26
\inst9|inst6|latched_hex[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst6|latched_hex[0]~feeder_combout\ = \inst13|inst1[4]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst1[4]~18_combout\,
	combout => \inst9|inst6|latched_hex[0]~feeder_combout\);

-- Location: FF_X62_Y46_N27
\inst9|inst6|latched_hex[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|HEX1_EN~clkctrl_outclk\,
	d => \inst9|inst6|latched_hex[0]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst6|latched_hex\(0));

-- Location: LCCOMB_X61_Y46_N30
\inst9|inst6|latched_hex[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst6|latched_hex[3]~feeder_combout\ = \inst13|inst1[7]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst1[7]~27_combout\,
	combout => \inst9|inst6|latched_hex[3]~feeder_combout\);

-- Location: FF_X61_Y46_N31
\inst9|inst6|latched_hex[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|HEX1_EN~clkctrl_outclk\,
	d => \inst9|inst6|latched_hex[3]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst6|latched_hex\(3));

-- Location: LCCOMB_X62_Y46_N4
\inst9|inst6|latched_hex[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst6|latched_hex[1]~feeder_combout\ = \inst13|inst1[5]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[5]~21_combout\,
	combout => \inst9|inst6|latched_hex[1]~feeder_combout\);

-- Location: FF_X62_Y46_N5
\inst9|inst6|latched_hex[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|HEX1_EN~clkctrl_outclk\,
	d => \inst9|inst6|latched_hex[1]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst6|latched_hex\(1));

-- Location: LCCOMB_X63_Y46_N12
\inst9|inst6|latched_hex[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst6|latched_hex[2]~feeder_combout\ = \inst13|inst1[6]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst1[6]~24_combout\,
	combout => \inst9|inst6|latched_hex[2]~feeder_combout\);

-- Location: FF_X63_Y46_N13
\inst9|inst6|latched_hex[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|HEX1_EN~clkctrl_outclk\,
	d => \inst9|inst6|latched_hex[2]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst6|latched_hex\(2));

-- Location: LCCOMB_X70_Y46_N10
\inst9|inst6|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst6|Mux0~0_combout\ = (\inst9|inst6|latched_hex\(0) & ((\inst9|inst6|latched_hex\(3)) # (\inst9|inst6|latched_hex\(1) $ (\inst9|inst6|latched_hex\(2))))) # (!\inst9|inst6|latched_hex\(0) & ((\inst9|inst6|latched_hex\(1)) # 
-- (\inst9|inst6|latched_hex\(3) $ (\inst9|inst6|latched_hex\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst6|latched_hex\(0),
	datab => \inst9|inst6|latched_hex\(3),
	datac => \inst9|inst6|latched_hex\(1),
	datad => \inst9|inst6|latched_hex\(2),
	combout => \inst9|inst6|Mux0~0_combout\);

-- Location: LCCOMB_X70_Y46_N12
\inst9|inst6|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst6|Mux1~0_combout\ = (\inst9|inst6|latched_hex\(0) & (\inst9|inst6|latched_hex\(3) $ (((\inst9|inst6|latched_hex\(1)) # (!\inst9|inst6|latched_hex\(2)))))) # (!\inst9|inst6|latched_hex\(0) & (!\inst9|inst6|latched_hex\(3) & 
-- (\inst9|inst6|latched_hex\(1) & !\inst9|inst6|latched_hex\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst6|latched_hex\(0),
	datab => \inst9|inst6|latched_hex\(3),
	datac => \inst9|inst6|latched_hex\(1),
	datad => \inst9|inst6|latched_hex\(2),
	combout => \inst9|inst6|Mux1~0_combout\);

-- Location: LCCOMB_X70_Y46_N30
\inst9|inst6|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst6|Mux2~0_combout\ = (\inst9|inst6|latched_hex\(1) & (\inst9|inst6|latched_hex\(0) & (!\inst9|inst6|latched_hex\(3)))) # (!\inst9|inst6|latched_hex\(1) & ((\inst9|inst6|latched_hex\(2) & ((!\inst9|inst6|latched_hex\(3)))) # 
-- (!\inst9|inst6|latched_hex\(2) & (\inst9|inst6|latched_hex\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst6|latched_hex\(0),
	datab => \inst9|inst6|latched_hex\(3),
	datac => \inst9|inst6|latched_hex\(1),
	datad => \inst9|inst6|latched_hex\(2),
	combout => \inst9|inst6|Mux2~0_combout\);

-- Location: LCCOMB_X70_Y46_N20
\inst9|inst6|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst6|Mux3~0_combout\ = (\inst9|inst6|latched_hex\(1) & ((\inst9|inst6|latched_hex\(0) & ((\inst9|inst6|latched_hex\(2)))) # (!\inst9|inst6|latched_hex\(0) & (\inst9|inst6|latched_hex\(3) & !\inst9|inst6|latched_hex\(2))))) # 
-- (!\inst9|inst6|latched_hex\(1) & (!\inst9|inst6|latched_hex\(3) & (\inst9|inst6|latched_hex\(0) $ (\inst9|inst6|latched_hex\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst6|latched_hex\(0),
	datab => \inst9|inst6|latched_hex\(3),
	datac => \inst9|inst6|latched_hex\(1),
	datad => \inst9|inst6|latched_hex\(2),
	combout => \inst9|inst6|Mux3~0_combout\);

-- Location: LCCOMB_X70_Y46_N14
\inst9|inst6|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst6|Mux4~0_combout\ = (\inst9|inst6|latched_hex\(3) & (\inst9|inst6|latched_hex\(2) & ((\inst9|inst6|latched_hex\(1)) # (!\inst9|inst6|latched_hex\(0))))) # (!\inst9|inst6|latched_hex\(3) & (!\inst9|inst6|latched_hex\(0) & 
-- (\inst9|inst6|latched_hex\(1) & !\inst9|inst6|latched_hex\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst6|latched_hex\(0),
	datab => \inst9|inst6|latched_hex\(3),
	datac => \inst9|inst6|latched_hex\(1),
	datad => \inst9|inst6|latched_hex\(2),
	combout => \inst9|inst6|Mux4~0_combout\);

-- Location: LCCOMB_X70_Y46_N8
\inst9|inst6|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst6|Mux5~0_combout\ = (\inst9|inst6|latched_hex\(3) & ((\inst9|inst6|latched_hex\(0) & (\inst9|inst6|latched_hex\(1))) # (!\inst9|inst6|latched_hex\(0) & ((\inst9|inst6|latched_hex\(2)))))) # (!\inst9|inst6|latched_hex\(3) & 
-- (\inst9|inst6|latched_hex\(2) & (\inst9|inst6|latched_hex\(0) $ (\inst9|inst6|latched_hex\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst6|latched_hex\(0),
	datab => \inst9|inst6|latched_hex\(3),
	datac => \inst9|inst6|latched_hex\(1),
	datad => \inst9|inst6|latched_hex\(2),
	combout => \inst9|inst6|Mux5~0_combout\);

-- Location: LCCOMB_X70_Y46_N18
\inst9|inst6|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst6|Mux6~0_combout\ = (\inst9|inst6|latched_hex\(3) & (\inst9|inst6|latched_hex\(0) & (\inst9|inst6|latched_hex\(1) $ (\inst9|inst6|latched_hex\(2))))) # (!\inst9|inst6|latched_hex\(3) & (!\inst9|inst6|latched_hex\(1) & 
-- (\inst9|inst6|latched_hex\(0) $ (\inst9|inst6|latched_hex\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst6|latched_hex\(0),
	datab => \inst9|inst6|latched_hex\(3),
	datac => \inst9|inst6|latched_hex\(1),
	datad => \inst9|inst6|latched_hex\(2),
	combout => \inst9|inst6|Mux6~0_combout\);

-- Location: LCCOMB_X58_Y44_N2
\inst3|LED_EN\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LED_EN~combout\ = LCELL((\inst3|I2C_DATA_EN~0_combout\ & (!\inst|IR\(4) & !\inst|IR\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|I2C_DATA_EN~0_combout\,
	datab => \inst|IR\(4),
	datad => \inst|IR\(7),
	combout => \inst3|LED_EN~combout\);

-- Location: CLKCTRL_G10
\inst3|LED_EN~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|LED_EN~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|LED_EN~clkctrl_outclk\);

-- Location: LCCOMB_X62_Y46_N2
\inst6|DATA[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|DATA[9]~feeder_combout\ = \inst13|inst1[9]~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst1[9]~33_combout\,
	combout => \inst6|DATA[9]~feeder_combout\);

-- Location: FF_X62_Y46_N3
\inst6|DATA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|LED_EN~clkctrl_outclk\,
	d => \inst6|DATA[9]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|DATA\(9));

-- Location: LCCOMB_X63_Y46_N18
\inst6|DATA[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|DATA[8]~feeder_combout\ = \inst13|inst1[8]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst1[8]~30_combout\,
	combout => \inst6|DATA[8]~feeder_combout\);

-- Location: FF_X63_Y46_N19
\inst6|DATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|LED_EN~clkctrl_outclk\,
	d => \inst6|DATA[8]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|DATA\(8));

-- Location: LCCOMB_X58_Y50_N0
\inst6|DATA[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|DATA[7]~feeder_combout\ = \inst13|inst1[7]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst1[7]~27_combout\,
	combout => \inst6|DATA[7]~feeder_combout\);

-- Location: FF_X58_Y50_N1
\inst6|DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|LED_EN~clkctrl_outclk\,
	d => \inst6|DATA[7]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|DATA\(7));

-- Location: LCCOMB_X62_Y46_N12
\inst6|DATA[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|DATA[6]~feeder_combout\ = \inst13|inst1[6]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst1[6]~24_combout\,
	combout => \inst6|DATA[6]~feeder_combout\);

-- Location: FF_X62_Y46_N13
\inst6|DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|LED_EN~clkctrl_outclk\,
	d => \inst6|DATA[6]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|DATA\(6));

-- Location: LCCOMB_X58_Y50_N2
\inst6|DATA[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|DATA[5]~feeder_combout\ = \inst13|inst1[5]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst1[5]~21_combout\,
	combout => \inst6|DATA[5]~feeder_combout\);

-- Location: FF_X58_Y50_N3
\inst6|DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|LED_EN~clkctrl_outclk\,
	d => \inst6|DATA[5]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|DATA\(5));

-- Location: LCCOMB_X59_Y50_N4
\inst6|DATA[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|DATA[4]~feeder_combout\ = \inst13|inst1[4]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst1[4]~18_combout\,
	combout => \inst6|DATA[4]~feeder_combout\);

-- Location: FF_X59_Y50_N5
\inst6|DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|LED_EN~clkctrl_outclk\,
	d => \inst6|DATA[4]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|DATA\(4));

-- Location: LCCOMB_X54_Y45_N0
\inst6|DATA[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|DATA[3]~feeder_combout\ = \inst13|inst1[3]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst1[3]~15_combout\,
	combout => \inst6|DATA[3]~feeder_combout\);

-- Location: FF_X54_Y45_N1
\inst6|DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|LED_EN~clkctrl_outclk\,
	d => \inst6|DATA[3]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|DATA\(3));

-- Location: LCCOMB_X58_Y50_N24
\inst6|DATA[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|DATA[2]~feeder_combout\ = \inst13|inst1[2]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst1[2]~12_combout\,
	combout => \inst6|DATA[2]~feeder_combout\);

-- Location: FF_X58_Y50_N25
\inst6|DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|LED_EN~clkctrl_outclk\,
	d => \inst6|DATA[2]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|DATA\(2));

-- Location: LCCOMB_X57_Y42_N20
\inst6|DATA[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|DATA[1]~feeder_combout\ = \inst13|inst1[1]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst1[1]~9_combout\,
	combout => \inst6|DATA[1]~feeder_combout\);

-- Location: FF_X57_Y42_N21
\inst6|DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|LED_EN~clkctrl_outclk\,
	d => \inst6|DATA[1]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|DATA\(1));

-- Location: LCCOMB_X59_Y50_N2
\inst6|DATA[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|DATA[0]~feeder_combout\ = \inst13|inst1[0]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[0]~6_combout\,
	combout => \inst6|DATA[0]~feeder_combout\);

-- Location: FF_X59_Y50_N3
\inst6|DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|LED_EN~clkctrl_outclk\,
	d => \inst6|DATA[0]~feeder_combout\,
	clrn => \inst13|inst14|data_out[7]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|DATA\(0));

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);
END structure;


