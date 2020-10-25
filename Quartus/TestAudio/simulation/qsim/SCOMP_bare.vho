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

-- DATE "10/06/2020 18:25:40"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SCOMP IS
    PORT (
	clock : IN std_logic;
	resetn : IN std_logic;
	IO_WRITE : OUT std_logic;
	IO_CYCLE : OUT std_logic;
	IO_ADDR : OUT std_logic_vector(10 DOWNTO 0);
	IO_DATA : INOUT std_logic_vector(15 DOWNTO 0);
	dbg_FETCH : OUT std_logic;
	dbg_AC : OUT std_logic_vector(15 DOWNTO 0);
	dbg_PC : OUT std_logic_vector(10 DOWNTO 0);
	dbg_MA : OUT std_logic_vector(10 DOWNTO 0);
	dbg_MD : OUT std_logic_vector(15 DOWNTO 0);
	dbg_IR : OUT std_logic_vector(15 DOWNTO 0)
	);
END SCOMP;

-- Design Ports Information
-- IO_WRITE	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- IO_CYCLE	=>  Location: PIN_V10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- IO_ADDR[0]	=>  Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- IO_ADDR[1]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- IO_ADDR[2]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- IO_ADDR[3]	=>  Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- IO_ADDR[4]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- IO_ADDR[5]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- IO_ADDR[6]	=>  Location: PIN_AB7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- IO_ADDR[7]	=>  Location: PIN_W10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- IO_ADDR[8]	=>  Location: PIN_T20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- IO_ADDR[9]	=>  Location: PIN_P21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- IO_ADDR[10]	=>  Location: PIN_Y11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_FETCH	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_AC[0]	=>  Location: PIN_AA22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_AC[1]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_AC[2]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_AC[3]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_AC[4]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_AC[5]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_AC[6]	=>  Location: PIN_W17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_AC[7]	=>  Location: PIN_P13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_AC[8]	=>  Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_AC[9]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_AC[10]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_AC[11]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_AC[12]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_AC[13]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_AC[14]	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_AC[15]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_PC[0]	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_PC[1]	=>  Location: PIN_P14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_PC[2]	=>  Location: PIN_AA8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_PC[3]	=>  Location: PIN_AB6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_PC[4]	=>  Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_PC[5]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_PC[6]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_PC[7]	=>  Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_PC[8]	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_PC[9]	=>  Location: PIN_P12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_PC[10]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_MA[0]	=>  Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_MA[1]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_MA[2]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_MA[3]	=>  Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_MA[4]	=>  Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_MA[5]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_MA[6]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_MA[7]	=>  Location: PIN_W20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_MA[8]	=>  Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_MA[9]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_MA[10]	=>  Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_MD[0]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_MD[1]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_MD[2]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_MD[3]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_MD[4]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_MD[5]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_MD[6]	=>  Location: PIN_AB14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_MD[7]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_MD[8]	=>  Location: PIN_AB9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_MD[9]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_MD[10]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_MD[11]	=>  Location: PIN_Y20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_MD[12]	=>  Location: PIN_V16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_MD[13]	=>  Location: PIN_W14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_MD[14]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_MD[15]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_IR[0]	=>  Location: PIN_R15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_IR[1]	=>  Location: PIN_V17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_IR[2]	=>  Location: PIN_W18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_IR[3]	=>  Location: PIN_AB5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_IR[4]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_IR[5]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_IR[6]	=>  Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_IR[7]	=>  Location: PIN_AB2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_IR[8]	=>  Location: PIN_T19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_IR[9]	=>  Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_IR[10]	=>  Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_IR[11]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_IR[12]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_IR[13]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_IR[14]	=>  Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dbg_IR[15]	=>  Location: PIN_W13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- IO_DATA[0]	=>  Location: PIN_AA21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- IO_DATA[1]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- IO_DATA[2]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- IO_DATA[3]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- IO_DATA[4]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- IO_DATA[5]	=>  Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- IO_DATA[6]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- IO_DATA[7]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- IO_DATA[8]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- IO_DATA[9]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- IO_DATA[10]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- IO_DATA[11]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- IO_DATA[12]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- IO_DATA[13]	=>  Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- IO_DATA[14]	=>  Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- IO_DATA[15]	=>  Location: PIN_V15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- clock	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- resetn	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF SCOMP IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_resetn : std_logic;
SIGNAL ww_IO_WRITE : std_logic;
SIGNAL ww_IO_CYCLE : std_logic;
SIGNAL ww_IO_ADDR : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_dbg_FETCH : std_logic;
SIGNAL ww_dbg_AC : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_dbg_PC : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_dbg_MA : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_dbg_MD : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_dbg_IR : std_logic_vector(15 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \resetn~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \IO_DATA[0]~output_o\ : std_logic;
SIGNAL \IO_DATA[1]~output_o\ : std_logic;
SIGNAL \IO_DATA[2]~output_o\ : std_logic;
SIGNAL \IO_DATA[3]~output_o\ : std_logic;
SIGNAL \IO_DATA[4]~output_o\ : std_logic;
SIGNAL \IO_DATA[5]~output_o\ : std_logic;
SIGNAL \IO_DATA[6]~output_o\ : std_logic;
SIGNAL \IO_DATA[7]~output_o\ : std_logic;
SIGNAL \IO_DATA[8]~output_o\ : std_logic;
SIGNAL \IO_DATA[9]~output_o\ : std_logic;
SIGNAL \IO_DATA[10]~output_o\ : std_logic;
SIGNAL \IO_DATA[11]~output_o\ : std_logic;
SIGNAL \IO_DATA[12]~output_o\ : std_logic;
SIGNAL \IO_DATA[13]~output_o\ : std_logic;
SIGNAL \IO_DATA[14]~output_o\ : std_logic;
SIGNAL \IO_DATA[15]~output_o\ : std_logic;
SIGNAL \IO_WRITE~output_o\ : std_logic;
SIGNAL \IO_CYCLE~output_o\ : std_logic;
SIGNAL \IO_ADDR[0]~output_o\ : std_logic;
SIGNAL \IO_ADDR[1]~output_o\ : std_logic;
SIGNAL \IO_ADDR[2]~output_o\ : std_logic;
SIGNAL \IO_ADDR[3]~output_o\ : std_logic;
SIGNAL \IO_ADDR[4]~output_o\ : std_logic;
SIGNAL \IO_ADDR[5]~output_o\ : std_logic;
SIGNAL \IO_ADDR[6]~output_o\ : std_logic;
SIGNAL \IO_ADDR[7]~output_o\ : std_logic;
SIGNAL \IO_ADDR[8]~output_o\ : std_logic;
SIGNAL \IO_ADDR[9]~output_o\ : std_logic;
SIGNAL \IO_ADDR[10]~output_o\ : std_logic;
SIGNAL \dbg_FETCH~output_o\ : std_logic;
SIGNAL \dbg_AC[0]~output_o\ : std_logic;
SIGNAL \dbg_AC[1]~output_o\ : std_logic;
SIGNAL \dbg_AC[2]~output_o\ : std_logic;
SIGNAL \dbg_AC[3]~output_o\ : std_logic;
SIGNAL \dbg_AC[4]~output_o\ : std_logic;
SIGNAL \dbg_AC[5]~output_o\ : std_logic;
SIGNAL \dbg_AC[6]~output_o\ : std_logic;
SIGNAL \dbg_AC[7]~output_o\ : std_logic;
SIGNAL \dbg_AC[8]~output_o\ : std_logic;
SIGNAL \dbg_AC[9]~output_o\ : std_logic;
SIGNAL \dbg_AC[10]~output_o\ : std_logic;
SIGNAL \dbg_AC[11]~output_o\ : std_logic;
SIGNAL \dbg_AC[12]~output_o\ : std_logic;
SIGNAL \dbg_AC[13]~output_o\ : std_logic;
SIGNAL \dbg_AC[14]~output_o\ : std_logic;
SIGNAL \dbg_AC[15]~output_o\ : std_logic;
SIGNAL \dbg_PC[0]~output_o\ : std_logic;
SIGNAL \dbg_PC[1]~output_o\ : std_logic;
SIGNAL \dbg_PC[2]~output_o\ : std_logic;
SIGNAL \dbg_PC[3]~output_o\ : std_logic;
SIGNAL \dbg_PC[4]~output_o\ : std_logic;
SIGNAL \dbg_PC[5]~output_o\ : std_logic;
SIGNAL \dbg_PC[6]~output_o\ : std_logic;
SIGNAL \dbg_PC[7]~output_o\ : std_logic;
SIGNAL \dbg_PC[8]~output_o\ : std_logic;
SIGNAL \dbg_PC[9]~output_o\ : std_logic;
SIGNAL \dbg_PC[10]~output_o\ : std_logic;
SIGNAL \dbg_MA[0]~output_o\ : std_logic;
SIGNAL \dbg_MA[1]~output_o\ : std_logic;
SIGNAL \dbg_MA[2]~output_o\ : std_logic;
SIGNAL \dbg_MA[3]~output_o\ : std_logic;
SIGNAL \dbg_MA[4]~output_o\ : std_logic;
SIGNAL \dbg_MA[5]~output_o\ : std_logic;
SIGNAL \dbg_MA[6]~output_o\ : std_logic;
SIGNAL \dbg_MA[7]~output_o\ : std_logic;
SIGNAL \dbg_MA[8]~output_o\ : std_logic;
SIGNAL \dbg_MA[9]~output_o\ : std_logic;
SIGNAL \dbg_MA[10]~output_o\ : std_logic;
SIGNAL \dbg_MD[0]~output_o\ : std_logic;
SIGNAL \dbg_MD[1]~output_o\ : std_logic;
SIGNAL \dbg_MD[2]~output_o\ : std_logic;
SIGNAL \dbg_MD[3]~output_o\ : std_logic;
SIGNAL \dbg_MD[4]~output_o\ : std_logic;
SIGNAL \dbg_MD[5]~output_o\ : std_logic;
SIGNAL \dbg_MD[6]~output_o\ : std_logic;
SIGNAL \dbg_MD[7]~output_o\ : std_logic;
SIGNAL \dbg_MD[8]~output_o\ : std_logic;
SIGNAL \dbg_MD[9]~output_o\ : std_logic;
SIGNAL \dbg_MD[10]~output_o\ : std_logic;
SIGNAL \dbg_MD[11]~output_o\ : std_logic;
SIGNAL \dbg_MD[12]~output_o\ : std_logic;
SIGNAL \dbg_MD[13]~output_o\ : std_logic;
SIGNAL \dbg_MD[14]~output_o\ : std_logic;
SIGNAL \dbg_MD[15]~output_o\ : std_logic;
SIGNAL \dbg_IR[0]~output_o\ : std_logic;
SIGNAL \dbg_IR[1]~output_o\ : std_logic;
SIGNAL \dbg_IR[2]~output_o\ : std_logic;
SIGNAL \dbg_IR[3]~output_o\ : std_logic;
SIGNAL \dbg_IR[4]~output_o\ : std_logic;
SIGNAL \dbg_IR[5]~output_o\ : std_logic;
SIGNAL \dbg_IR[6]~output_o\ : std_logic;
SIGNAL \dbg_IR[7]~output_o\ : std_logic;
SIGNAL \dbg_IR[8]~output_o\ : std_logic;
SIGNAL \dbg_IR[9]~output_o\ : std_logic;
SIGNAL \dbg_IR[10]~output_o\ : std_logic;
SIGNAL \dbg_IR[11]~output_o\ : std_logic;
SIGNAL \dbg_IR[12]~output_o\ : std_logic;
SIGNAL \dbg_IR[13]~output_o\ : std_logic;
SIGNAL \dbg_IR[14]~output_o\ : std_logic;
SIGNAL \dbg_IR[15]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \state.init~feeder_combout\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \resetn~inputclkctrl_outclk\ : std_logic;
SIGNAL \state.init~q\ : std_logic;
SIGNAL \state.decode~feeder_combout\ : std_logic;
SIGNAL \state.decode~q\ : std_logic;
SIGNAL \state~35_combout\ : std_logic;
SIGNAL \state~36_combout\ : std_logic;
SIGNAL \state.ex_iload~q\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \state~38_combout\ : std_logic;
SIGNAL \state.ex_istore~q\ : std_logic;
SIGNAL \state.ex_istore2~q\ : std_logic;
SIGNAL \WideNor0~combout\ : std_logic;
SIGNAL \state~53_combout\ : std_logic;
SIGNAL \state.ex_call~q\ : std_logic;
SIGNAL \PC_stack[9][0]~1_combout\ : std_logic;
SIGNAL \PC_stack[9][3]~q\ : std_logic;
SIGNAL \Selector126~0_combout\ : std_logic;
SIGNAL \PC_stack[0][0]~0_combout\ : std_logic;
SIGNAL \PC_stack[8][3]~q\ : std_logic;
SIGNAL \Selector115~0_combout\ : std_logic;
SIGNAL \PC_stack[7][3]~q\ : std_logic;
SIGNAL \Selector104~0_combout\ : std_logic;
SIGNAL \PC_stack[6][3]~q\ : std_logic;
SIGNAL \Selector93~0_combout\ : std_logic;
SIGNAL \PC_stack[5][3]~q\ : std_logic;
SIGNAL \Selector82~0_combout\ : std_logic;
SIGNAL \PC_stack[4][3]~q\ : std_logic;
SIGNAL \Selector71~0_combout\ : std_logic;
SIGNAL \PC_stack[3][3]~q\ : std_logic;
SIGNAL \Selector60~0_combout\ : std_logic;
SIGNAL \PC_stack[2][3]~q\ : std_logic;
SIGNAL \Selector49~0_combout\ : std_logic;
SIGNAL \PC_stack[1][3]~q\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \PC_stack[0][3]~q\ : std_logic;
SIGNAL \PC_stack[9][0]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[9][0]~q\ : std_logic;
SIGNAL \Selector129~0_combout\ : std_logic;
SIGNAL \PC_stack[8][0]~q\ : std_logic;
SIGNAL \Selector118~0_combout\ : std_logic;
SIGNAL \PC_stack[7][0]~q\ : std_logic;
SIGNAL \Selector107~0_combout\ : std_logic;
SIGNAL \PC_stack[6][0]~q\ : std_logic;
SIGNAL \Selector96~0_combout\ : std_logic;
SIGNAL \PC_stack[5][0]~q\ : std_logic;
SIGNAL \Selector85~0_combout\ : std_logic;
SIGNAL \PC_stack[4][0]~q\ : std_logic;
SIGNAL \Selector74~0_combout\ : std_logic;
SIGNAL \PC_stack[3][0]~q\ : std_logic;
SIGNAL \Selector63~0_combout\ : std_logic;
SIGNAL \PC_stack[2][0]~q\ : std_logic;
SIGNAL \Selector52~0_combout\ : std_logic;
SIGNAL \PC_stack[1][0]~q\ : std_logic;
SIGNAL \Selector41~0_combout\ : std_logic;
SIGNAL \PC_stack[0][0]~q\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \PC_stack[9][4]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[9][4]~q\ : std_logic;
SIGNAL \Selector125~0_combout\ : std_logic;
SIGNAL \PC_stack[8][4]~q\ : std_logic;
SIGNAL \Selector114~0_combout\ : std_logic;
SIGNAL \PC_stack[7][4]~q\ : std_logic;
SIGNAL \Selector103~0_combout\ : std_logic;
SIGNAL \PC_stack[6][4]~q\ : std_logic;
SIGNAL \Selector92~0_combout\ : std_logic;
SIGNAL \PC_stack[5][4]~q\ : std_logic;
SIGNAL \Selector81~0_combout\ : std_logic;
SIGNAL \PC_stack[4][4]~q\ : std_logic;
SIGNAL \Selector70~0_combout\ : std_logic;
SIGNAL \PC_stack[3][4]~q\ : std_logic;
SIGNAL \Selector59~0_combout\ : std_logic;
SIGNAL \PC_stack[2][4]~q\ : std_logic;
SIGNAL \Selector48~0_combout\ : std_logic;
SIGNAL \PC_stack[1][4]~q\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \PC_stack[0][4]~q\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \Selector7~2_combout\ : std_logic;
SIGNAL \state~41_combout\ : std_logic;
SIGNAL \state~50_combout\ : std_logic;
SIGNAL \state.ex_jneg~q\ : std_logic;
SIGNAL \IR[4]~0_combout\ : std_logic;
SIGNAL \state~46_combout\ : std_logic;
SIGNAL \state.ex_shift~q\ : std_logic;
SIGNAL \PC_stack[9][5]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[9][5]~q\ : std_logic;
SIGNAL \Selector124~0_combout\ : std_logic;
SIGNAL \PC_stack[8][5]~q\ : std_logic;
SIGNAL \Selector113~0_combout\ : std_logic;
SIGNAL \PC_stack[7][5]~q\ : std_logic;
SIGNAL \Selector102~0_combout\ : std_logic;
SIGNAL \PC_stack[6][5]~q\ : std_logic;
SIGNAL \Selector91~0_combout\ : std_logic;
SIGNAL \PC_stack[5][5]~q\ : std_logic;
SIGNAL \Selector80~0_combout\ : std_logic;
SIGNAL \PC_stack[4][5]~q\ : std_logic;
SIGNAL \Selector69~0_combout\ : std_logic;
SIGNAL \PC_stack[3][5]~q\ : std_logic;
SIGNAL \Selector58~0_combout\ : std_logic;
SIGNAL \PC_stack[2][5]~q\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \PC_stack[1][5]~q\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \PC_stack[0][5]~q\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \PC_stack[9][6]~q\ : std_logic;
SIGNAL \Selector123~0_combout\ : std_logic;
SIGNAL \PC_stack[8][6]~q\ : std_logic;
SIGNAL \Selector112~0_combout\ : std_logic;
SIGNAL \PC_stack[7][6]~q\ : std_logic;
SIGNAL \Selector101~0_combout\ : std_logic;
SIGNAL \PC_stack[6][6]~q\ : std_logic;
SIGNAL \Selector90~0_combout\ : std_logic;
SIGNAL \PC_stack[5][6]~q\ : std_logic;
SIGNAL \Selector79~0_combout\ : std_logic;
SIGNAL \PC_stack[4][6]~q\ : std_logic;
SIGNAL \Selector68~0_combout\ : std_logic;
SIGNAL \PC_stack[3][6]~q\ : std_logic;
SIGNAL \Selector57~0_combout\ : std_logic;
SIGNAL \PC_stack[2][6]~q\ : std_logic;
SIGNAL \Selector46~0_combout\ : std_logic;
SIGNAL \PC_stack[1][6]~q\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \PC_stack[0][6]~q\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \PC_stack[9][7]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[9][7]~q\ : std_logic;
SIGNAL \Selector122~0_combout\ : std_logic;
SIGNAL \PC_stack[8][7]~q\ : std_logic;
SIGNAL \Selector111~0_combout\ : std_logic;
SIGNAL \PC_stack[7][7]~q\ : std_logic;
SIGNAL \Selector100~0_combout\ : std_logic;
SIGNAL \PC_stack[6][7]~q\ : std_logic;
SIGNAL \Selector89~0_combout\ : std_logic;
SIGNAL \PC_stack[5][7]~q\ : std_logic;
SIGNAL \Selector78~0_combout\ : std_logic;
SIGNAL \PC_stack[4][7]~q\ : std_logic;
SIGNAL \Selector67~0_combout\ : std_logic;
SIGNAL \PC_stack[3][7]~q\ : std_logic;
SIGNAL \Selector56~0_combout\ : std_logic;
SIGNAL \PC_stack[2][7]~q\ : std_logic;
SIGNAL \Selector45~0_combout\ : std_logic;
SIGNAL \PC_stack[1][7]~q\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \PC_stack[0][7]~q\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \PC_stack[9][8]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[9][8]~q\ : std_logic;
SIGNAL \Selector121~0_combout\ : std_logic;
SIGNAL \PC_stack[8][8]~q\ : std_logic;
SIGNAL \Selector110~0_combout\ : std_logic;
SIGNAL \PC_stack[7][8]~q\ : std_logic;
SIGNAL \Selector99~0_combout\ : std_logic;
SIGNAL \PC_stack[6][8]~q\ : std_logic;
SIGNAL \Selector88~0_combout\ : std_logic;
SIGNAL \PC_stack[5][8]~q\ : std_logic;
SIGNAL \Selector77~0_combout\ : std_logic;
SIGNAL \PC_stack[4][8]~q\ : std_logic;
SIGNAL \Selector66~0_combout\ : std_logic;
SIGNAL \PC_stack[3][8]~q\ : std_logic;
SIGNAL \Selector55~0_combout\ : std_logic;
SIGNAL \PC_stack[2][8]~q\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \PC_stack[1][8]~q\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \PC_stack[0][8]~q\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \PC_stack[9][9]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[9][9]~q\ : std_logic;
SIGNAL \Selector120~0_combout\ : std_logic;
SIGNAL \PC_stack[8][9]~q\ : std_logic;
SIGNAL \Selector109~0_combout\ : std_logic;
SIGNAL \PC_stack[7][9]~q\ : std_logic;
SIGNAL \Selector98~0_combout\ : std_logic;
SIGNAL \PC_stack[6][9]~q\ : std_logic;
SIGNAL \Selector87~0_combout\ : std_logic;
SIGNAL \PC_stack[5][9]~q\ : std_logic;
SIGNAL \Selector76~0_combout\ : std_logic;
SIGNAL \PC_stack[4][9]~q\ : std_logic;
SIGNAL \Selector65~0_combout\ : std_logic;
SIGNAL \PC_stack[3][9]~q\ : std_logic;
SIGNAL \Selector54~0_combout\ : std_logic;
SIGNAL \PC_stack[2][9]~q\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \PC_stack[1][9]~q\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \PC_stack[0][9]~q\ : std_logic;
SIGNAL \PC_stack[9][10]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[9][10]~q\ : std_logic;
SIGNAL \Selector119~0_combout\ : std_logic;
SIGNAL \PC_stack[8][10]~q\ : std_logic;
SIGNAL \Selector108~0_combout\ : std_logic;
SIGNAL \PC_stack[7][10]~q\ : std_logic;
SIGNAL \Selector97~0_combout\ : std_logic;
SIGNAL \PC_stack[6][10]~q\ : std_logic;
SIGNAL \Selector86~0_combout\ : std_logic;
SIGNAL \PC_stack[5][10]~q\ : std_logic;
SIGNAL \Selector75~0_combout\ : std_logic;
SIGNAL \PC_stack[4][10]~q\ : std_logic;
SIGNAL \Selector64~0_combout\ : std_logic;
SIGNAL \PC_stack[3][10]~q\ : std_logic;
SIGNAL \Selector53~0_combout\ : std_logic;
SIGNAL \PC_stack[2][10]~q\ : std_logic;
SIGNAL \Selector42~0_combout\ : std_logic;
SIGNAL \PC_stack[1][10]~q\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \PC_stack[0][10]~q\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \state~43_combout\ : std_logic;
SIGNAL \state~44_combout\ : std_logic;
SIGNAL \state.ex_loadi~q\ : std_logic;
SIGNAL \IO_DATA[9]~input_o\ : std_logic;
SIGNAL \Selector18~4_combout\ : std_logic;
SIGNAL \state~47_combout\ : std_logic;
SIGNAL \state.ex_or~q\ : std_logic;
SIGNAL \Selector29~1_combout\ : std_logic;
SIGNAL \state~39_combout\ : std_logic;
SIGNAL \state.ex_and~q\ : std_logic;
SIGNAL \state~45_combout\ : std_logic;
SIGNAL \state.ex_addi~q\ : std_logic;
SIGNAL \WideOr3~1_combout\ : std_logic;
SIGNAL \WideOr3~2_combout\ : std_logic;
SIGNAL \Selector29~2_combout\ : std_logic;
SIGNAL \state.ex_load~q\ : std_logic;
SIGNAL \state~40_combout\ : std_logic;
SIGNAL \state.ex_add~q\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \IO_DATA[10]~input_o\ : std_logic;
SIGNAL \Selector17~1_combout\ : std_logic;
SIGNAL \Selector27~9_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[19]~31_combout\ : std_logic;
SIGNAL \Selector26~1_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[17]~37_combout\ : std_logic;
SIGNAL \Selector27~7_combout\ : std_logic;
SIGNAL \Selector26~2_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[23]~29_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[23]~30_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[37]~33_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[37]~36_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[17]~38_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[49]~39_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[49]~40_combout\ : std_logic;
SIGNAL \IO_DATA[1]~input_o\ : std_logic;
SIGNAL \Selector26~3_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \Selector26~4_combout\ : std_logic;
SIGNAL \Add1~11_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~9_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~3_combout\ : std_logic;
SIGNAL \Add1~5_cout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Selector26~5_combout\ : std_logic;
SIGNAL \Selector26~6_combout\ : std_logic;
SIGNAL \Selector26~7_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[53]~78_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[53]~79_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[53]~80_combout\ : std_logic;
SIGNAL \Selector22~2_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[30]~57_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[45]~41_combout\ : std_logic;
SIGNAL \Selector18~5_combout\ : std_logic;
SIGNAL \Selector14~2_combout\ : std_logic;
SIGNAL \Selector20~4_combout\ : std_logic;
SIGNAL \Selector15~3_combout\ : std_logic;
SIGNAL \IO_DATA[13]~input_o\ : std_logic;
SIGNAL \Selector14~7_combout\ : std_logic;
SIGNAL \Selector14~3_combout\ : std_logic;
SIGNAL \Selector14~4_combout\ : std_logic;
SIGNAL \Selector14~5_combout\ : std_logic;
SIGNAL \Add1~79_combout\ : std_logic;
SIGNAL \Add1~57_combout\ : std_logic;
SIGNAL \WideOr3~3_combout\ : std_logic;
SIGNAL \Add1~77_combout\ : std_logic;
SIGNAL \Add1~78_combout\ : std_logic;
SIGNAL \Add1~74_combout\ : std_logic;
SIGNAL \Add1~72_combout\ : std_logic;
SIGNAL \Add1~73_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Selector16~4_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[39]~65_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[39]~66_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[59]~67_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[29]~68_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[43]~69_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[27]~45_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[27]~46_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[43]~70_combout\ : std_logic;
SIGNAL \Selector16~3_combout\ : std_logic;
SIGNAL \IO_DATA[11]~input_o\ : std_logic;
SIGNAL \Selector16~1_combout\ : std_logic;
SIGNAL \Selector16~2_combout\ : std_logic;
SIGNAL \Selector16~5_combout\ : std_logic;
SIGNAL \Add1~67_combout\ : std_logic;
SIGNAL \Add1~68_combout\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \Add1~63_combout\ : std_logic;
SIGNAL \Add1~64_combout\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \Add1~59_combout\ : std_logic;
SIGNAL \Add1~53_combout\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Add1~51_combout\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \Add1~47_combout\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Add1~45_combout\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Add1~39_combout\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Add1~41_combout\ : std_logic;
SIGNAL \Add1~35_combout\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Add1~33_combout\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~27_combout\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Add1~29_combout\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~21_combout\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add1~23_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~15_combout\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add1~17_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~66\ : std_logic;
SIGNAL \Add1~70_combout\ : std_logic;
SIGNAL \Selector16~6_combout\ : std_logic;
SIGNAL \Add1~69_combout\ : std_logic;
SIGNAL \Add1~71\ : std_logic;
SIGNAL \Add1~76\ : std_logic;
SIGNAL \Add1~80_combout\ : std_logic;
SIGNAL \Selector14~6_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[30]~22_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[46]~58_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[28]~25_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[28]~26_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[46]~59_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[62]~81_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[62]~82_combout\ : std_logic;
SIGNAL \Selector13~2_combout\ : std_logic;
SIGNAL \Add1~82_combout\ : std_logic;
SIGNAL \Add1~83_combout\ : std_logic;
SIGNAL \Add1~84_combout\ : std_logic;
SIGNAL \Add1~81\ : std_logic;
SIGNAL \Add1~85_combout\ : std_logic;
SIGNAL \IO_DATA[14]~input_o\ : std_logic;
SIGNAL \Selector13~3_combout\ : std_logic;
SIGNAL \Selector13~7_combout\ : std_logic;
SIGNAL \Selector13~4_combout\ : std_logic;
SIGNAL \Selector13~5_combout\ : std_logic;
SIGNAL \Selector13~6_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[29]~43_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[29]~42_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[45]~44_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[45]~47_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[61]~76_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[61]~77_combout\ : std_logic;
SIGNAL \IO_DATA[5]~input_o\ : std_logic;
SIGNAL \Selector22~3_combout\ : std_logic;
SIGNAL \Selector22~4_combout\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Selector22~5_combout\ : std_logic;
SIGNAL \Selector22~6_combout\ : std_logic;
SIGNAL \Selector22~7_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[21]~34_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[21]~35_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[35]~71_combout\ : std_logic;
SIGNAL \Selector24~6_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Selector24~1_combout\ : std_logic;
SIGNAL \IO_DATA[3]~input_o\ : std_logic;
SIGNAL \Selector24~2_combout\ : std_logic;
SIGNAL \Selector24~3_combout\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Selector24~4_combout\ : std_logic;
SIGNAL \Selector24~5_combout\ : std_logic;
SIGNAL \Selector24~7_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[19]~32_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[35]~85_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[55]~86_combout\ : std_logic;
SIGNAL \Selector20~2_combout\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \IO_DATA[7]~input_o\ : std_logic;
SIGNAL \Selector20~3_combout\ : std_logic;
SIGNAL \Selector20~5_combout\ : std_logic;
SIGNAL \Selector20~9_combout\ : std_logic;
SIGNAL \Selector20~6_combout\ : std_logic;
SIGNAL \Selector20~7_combout\ : std_logic;
SIGNAL \Selector20~8_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[24]~14_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[24]~54_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[42]~62_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[26]~18_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[26]~19_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[42]~63_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[54]~83_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[20]~11_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[20]~12_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[38]~55_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[38]~60_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[54]~84_combout\ : std_logic;
SIGNAL \Selector21~2_combout\ : std_logic;
SIGNAL \IO_DATA[6]~input_o\ : std_logic;
SIGNAL \Selector21~3_combout\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Selector21~4_combout\ : std_logic;
SIGNAL \Selector21~5_combout\ : std_logic;
SIGNAL \Selector21~6_combout\ : std_logic;
SIGNAL \Selector21~7_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[22]~8_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[22]~9_combout\ : std_logic;
SIGNAL \Selector25~1_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[58]~61_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[58]~64_combout\ : std_logic;
SIGNAL \Selector25~2_combout\ : std_logic;
SIGNAL \IO_DATA[2]~input_o\ : std_logic;
SIGNAL \Selector25~3_combout\ : std_logic;
SIGNAL \Selector25~4_combout\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Selector25~5_combout\ : std_logic;
SIGNAL \Selector25~7_combout\ : std_logic;
SIGNAL \Selector25~8_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[18]~5_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[18]~6_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[32]~3_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[34]~56_combout\ : std_logic;
SIGNAL \Selector25~6_combout\ : std_logic;
SIGNAL \Selector17~2_combout\ : std_logic;
SIGNAL \Selector17~3_combout\ : std_logic;
SIGNAL \Selector17~4_combout\ : std_logic;
SIGNAL \Selector17~5_combout\ : std_logic;
SIGNAL \Add1~65_combout\ : std_logic;
SIGNAL \Selector17~6_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[25]~50_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[25]~51_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[41]~49_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[41]~52_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[57]~48_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[57]~53_combout\ : std_logic;
SIGNAL \Selector18~11_combout\ : std_logic;
SIGNAL \Selector18~6_combout\ : std_logic;
SIGNAL \Selector18~7_combout\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Selector18~10_combout\ : std_logic;
SIGNAL \Selector18~8_combout\ : std_logic;
SIGNAL \Selector18~9_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \next_mem_addr[10]~10_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \next_mem_addr[9]~9_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \Selector3~2_combout\ : std_logic;
SIGNAL \next_mem_addr[8]~8_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \Selector4~2_combout\ : std_logic;
SIGNAL \next_mem_addr[7]~7_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \Selector5~2_combout\ : std_logic;
SIGNAL \next_mem_addr[6]~6_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[36]~4_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[40]~15_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[22]~16_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[40]~17_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[40]~20_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[60]~74_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[30]~23_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[44]~24_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[44]~27_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[60]~75_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[32]~2_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[32]~87_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[52]~72_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[36]~10_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[36]~13_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[52]~73_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \IO_DATA[4]~input_o\ : std_logic;
SIGNAL \Selector23~1_combout\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Selector23~2_combout\ : std_logic;
SIGNAL \Selector23~3_combout\ : std_logic;
SIGNAL \Selector23~4_combout\ : std_logic;
SIGNAL \Selector23~5_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Selector6~2_combout\ : std_logic;
SIGNAL \next_mem_addr[5]~5_combout\ : std_logic;
SIGNAL \Selector12~6_combout\ : std_logic;
SIGNAL \Selector12~7_combout\ : std_logic;
SIGNAL \Selector12~8_combout\ : std_logic;
SIGNAL \IO_DATA[15]~input_o\ : std_logic;
SIGNAL \Selector12~5_combout\ : std_logic;
SIGNAL \Selector12~9_combout\ : std_logic;
SIGNAL \Selector12~4_combout\ : std_logic;
SIGNAL \Selector12~10_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Selector12~1_combout\ : std_logic;
SIGNAL \Selector12~2_combout\ : std_logic;
SIGNAL \Selector12~3_combout\ : std_logic;
SIGNAL \Add1~89_combout\ : std_logic;
SIGNAL \Add1~87_combout\ : std_logic;
SIGNAL \Add1~88_combout\ : std_logic;
SIGNAL \Add1~86\ : std_logic;
SIGNAL \Add1~90_combout\ : std_logic;
SIGNAL \Selector12~11_combout\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \state~51_combout\ : std_logic;
SIGNAL \state.ex_jzero~q\ : std_logic;
SIGNAL \state~54_combout\ : std_logic;
SIGNAL \state.ex_jump~q\ : std_logic;
SIGNAL \state~52_combout\ : std_logic;
SIGNAL \state.ex_jpos~q\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \WideOr2~1_combout\ : std_logic;
SIGNAL \PC[0]~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \PC[4]~1_combout\ : std_logic;
SIGNAL \PC[0]~2_combout\ : std_logic;
SIGNAL \next_mem_addr[4]~4_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Selector11~1_combout\ : std_logic;
SIGNAL \Selector11~2_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \PC_stack[9][2]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[9][2]~q\ : std_logic;
SIGNAL \Selector127~0_combout\ : std_logic;
SIGNAL \PC_stack[8][2]~q\ : std_logic;
SIGNAL \Selector116~0_combout\ : std_logic;
SIGNAL \PC_stack[7][2]~q\ : std_logic;
SIGNAL \Selector105~0_combout\ : std_logic;
SIGNAL \PC_stack[6][2]~q\ : std_logic;
SIGNAL \Selector94~0_combout\ : std_logic;
SIGNAL \PC_stack[5][2]~q\ : std_logic;
SIGNAL \Selector83~0_combout\ : std_logic;
SIGNAL \PC_stack[4][2]~q\ : std_logic;
SIGNAL \Selector72~0_combout\ : std_logic;
SIGNAL \PC_stack[3][2]~q\ : std_logic;
SIGNAL \Selector61~0_combout\ : std_logic;
SIGNAL \PC_stack[2][2]~q\ : std_logic;
SIGNAL \Selector50~0_combout\ : std_logic;
SIGNAL \PC_stack[1][2]~q\ : std_logic;
SIGNAL \Selector39~0_combout\ : std_logic;
SIGNAL \PC_stack[0][2]~q\ : std_logic;
SIGNAL \Selector9~2_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \Selector8~2_combout\ : std_logic;
SIGNAL \next_mem_addr[3]~3_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \next_mem_addr[2]~2_combout\ : std_logic;
SIGNAL \state~32_combout\ : std_logic;
SIGNAL \state~49_combout\ : std_logic;
SIGNAL \state.ex_return~q\ : std_logic;
SIGNAL \PC_stack[9][1]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[9][1]~q\ : std_logic;
SIGNAL \Selector128~0_combout\ : std_logic;
SIGNAL \PC_stack[8][1]~q\ : std_logic;
SIGNAL \Selector117~0_combout\ : std_logic;
SIGNAL \PC_stack[7][1]~q\ : std_logic;
SIGNAL \Selector106~0_combout\ : std_logic;
SIGNAL \PC_stack[6][1]~q\ : std_logic;
SIGNAL \Selector95~0_combout\ : std_logic;
SIGNAL \PC_stack[5][1]~q\ : std_logic;
SIGNAL \Selector84~0_combout\ : std_logic;
SIGNAL \PC_stack[4][1]~q\ : std_logic;
SIGNAL \Selector73~0_combout\ : std_logic;
SIGNAL \PC_stack[3][1]~q\ : std_logic;
SIGNAL \Selector62~0_combout\ : std_logic;
SIGNAL \PC_stack[2][1]~q\ : std_logic;
SIGNAL \Selector51~0_combout\ : std_logic;
SIGNAL \PC_stack[1][1]~q\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \PC_stack[0][1]~q\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \Selector10~2_combout\ : std_logic;
SIGNAL \next_mem_addr[1]~1_combout\ : std_logic;
SIGNAL \state~34_combout\ : std_logic;
SIGNAL \state.ex_in~q\ : std_logic;
SIGNAL \WideOr5~0_combout\ : std_logic;
SIGNAL \state~33_combout\ : std_logic;
SIGNAL \state.ex_out~q\ : std_logic;
SIGNAL \WideOr5~combout\ : std_logic;
SIGNAL \state.fetch~q\ : std_logic;
SIGNAL \next_mem_addr[0]~0_combout\ : std_logic;
SIGNAL \state~48_combout\ : std_logic;
SIGNAL \state.ex_xor~q\ : std_logic;
SIGNAL \Selector19~4_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[48]~7_combout\ : std_logic;
SIGNAL \Selector19~6_combout\ : std_logic;
SIGNAL \IO_DATA[8]~input_o\ : std_logic;
SIGNAL \Selector19~5_combout\ : std_logic;
SIGNAL \Selector19~9_combout\ : std_logic;
SIGNAL \Selector19~3_combout\ : std_logic;
SIGNAL \Selector19~7_combout\ : std_logic;
SIGNAL \Selector19~2_combout\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \Selector19~8_combout\ : std_logic;
SIGNAL \state~42_combout\ : std_logic;
SIGNAL \state.ex_sub~q\ : std_logic;
SIGNAL \AC[13]~0_combout\ : std_logic;
SIGNAL \IO_DATA[12]~input_o\ : std_logic;
SIGNAL \Selector15~4_combout\ : std_logic;
SIGNAL \Selector15~5_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Selector15~1_combout\ : std_logic;
SIGNAL \Selector15~2_combout\ : std_logic;
SIGNAL \Add1~75_combout\ : std_logic;
SIGNAL \Selector15~6_combout\ : std_logic;
SIGNAL \state~37_combout\ : std_logic;
SIGNAL \state.ex_store~q\ : std_logic;
SIGNAL \state.ex_store2~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \MW~q\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[56]~28_combout\ : std_logic;
SIGNAL \shifter|auto_generated|sbit_w[56]~21_combout\ : std_logic;
SIGNAL \Selector27~5_combout\ : std_logic;
SIGNAL \Selector27~1_combout\ : std_logic;
SIGNAL \IO_DATA[0]~input_o\ : std_logic;
SIGNAL \Selector27~2_combout\ : std_logic;
SIGNAL \Selector27~3_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Selector27~4_combout\ : std_logic;
SIGNAL \Selector27~6_combout\ : std_logic;
SIGNAL \Selector27~8_combout\ : std_logic;
SIGNAL \Selector28~1_combout\ : std_logic;
SIGNAL \IO_WRITE_int~q\ : std_logic;
SIGNAL \state.ex_in2~q\ : std_logic;
SIGNAL \state.ex_out2~q\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \Selector30~1_combout\ : std_logic;
SIGNAL \IO_CYCLE~reg0_q\ : std_logic;
SIGNAL \IR[14]~feeder_combout\ : std_logic;
SIGNAL \IR[15]~feeder_combout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL IR : std_logic_vector(15 DOWNTO 0);
SIGNAL AC : std_logic_vector(15 DOWNTO 0);
SIGNAL PC : std_logic_vector(10 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clock <= clock;
ww_resetn <= resetn;
IO_WRITE <= ww_IO_WRITE;
IO_CYCLE <= ww_IO_CYCLE;
IO_ADDR <= ww_IO_ADDR;
dbg_FETCH <= ww_dbg_FETCH;
dbg_AC <= ww_dbg_AC;
dbg_PC <= ww_dbg_PC;
dbg_MA <= ww_dbg_MA;
dbg_MD <= ww_dbg_MD;
dbg_IR <= ww_dbg_IR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (AC(3) & AC(2) & AC(1) & AC(0));

\altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\next_mem_addr[10]~10_combout\ & \next_mem_addr[9]~9_combout\ & \next_mem_addr[8]~8_combout\ & \next_mem_addr[7]~7_combout\ & \next_mem_addr[6]~6_combout\ & \next_mem_addr[5]~5_combout\
& \next_mem_addr[4]~4_combout\ & \next_mem_addr[3]~3_combout\ & \next_mem_addr[2]~2_combout\ & \next_mem_addr[1]~1_combout\ & \next_mem_addr[0]~0_combout\);

\altsyncram_component|auto_generated|q_a\(0) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\altsyncram_component|auto_generated|q_a\(1) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\altsyncram_component|auto_generated|q_a\(2) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\altsyncram_component|auto_generated|q_a\(3) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);

\altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ <= (AC(7) & AC(6) & AC(5) & AC(4));

\altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\next_mem_addr[10]~10_combout\ & \next_mem_addr[9]~9_combout\ & \next_mem_addr[8]~8_combout\ & \next_mem_addr[7]~7_combout\ & \next_mem_addr[6]~6_combout\ & \next_mem_addr[5]~5_combout\
& \next_mem_addr[4]~4_combout\ & \next_mem_addr[3]~3_combout\ & \next_mem_addr[2]~2_combout\ & \next_mem_addr[1]~1_combout\ & \next_mem_addr[0]~0_combout\);

\altsyncram_component|auto_generated|q_a\(4) <= \altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);
\altsyncram_component|auto_generated|q_a\(5) <= \altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(1);
\altsyncram_component|auto_generated|q_a\(6) <= \altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(2);
\altsyncram_component|auto_generated|q_a\(7) <= \altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(3);

\altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\ <= (AC(11) & AC(10) & AC(9) & AC(8));

\altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\next_mem_addr[10]~10_combout\ & \next_mem_addr[9]~9_combout\ & \next_mem_addr[8]~8_combout\ & \next_mem_addr[7]~7_combout\ & \next_mem_addr[6]~6_combout\ & \next_mem_addr[5]~5_combout\
& \next_mem_addr[4]~4_combout\ & \next_mem_addr[3]~3_combout\ & \next_mem_addr[2]~2_combout\ & \next_mem_addr[1]~1_combout\ & \next_mem_addr[0]~0_combout\);

\altsyncram_component|auto_generated|q_a\(8) <= \altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);
\altsyncram_component|auto_generated|q_a\(9) <= \altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(1);
\altsyncram_component|auto_generated|q_a\(10) <= \altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(2);
\altsyncram_component|auto_generated|q_a\(11) <= \altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(3);

\altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\ <= (AC(15) & AC(14) & AC(13) & AC(12));

\altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\next_mem_addr[10]~10_combout\ & \next_mem_addr[9]~9_combout\ & \next_mem_addr[8]~8_combout\ & \next_mem_addr[7]~7_combout\ & \next_mem_addr[6]~6_combout\ & \next_mem_addr[5]~5_combout\
& \next_mem_addr[4]~4_combout\ & \next_mem_addr[3]~3_combout\ & \next_mem_addr[2]~2_combout\ & \next_mem_addr[1]~1_combout\ & \next_mem_addr[0]~0_combout\);

\altsyncram_component|auto_generated|q_a\(12) <= \altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);
\altsyncram_component|auto_generated|q_a\(13) <= \altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(1);
\altsyncram_component|auto_generated|q_a\(14) <= \altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(2);
\altsyncram_component|auto_generated|q_a\(15) <= \altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(3);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\resetn~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \resetn~input_o\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
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

-- Location: IOOBUF_X78_Y3_N9
\IO_DATA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AC(0),
	oe => \IO_WRITE_int~q\,
	devoe => ww_devoe,
	o => \IO_DATA[0]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\IO_DATA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AC(1),
	oe => \IO_WRITE_int~q\,
	devoe => ww_devoe,
	o => \IO_DATA[1]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\IO_DATA[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AC(2),
	oe => \IO_WRITE_int~q\,
	devoe => ww_devoe,
	o => \IO_DATA[2]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\IO_DATA[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AC(3),
	oe => \IO_WRITE_int~q\,
	devoe => ww_devoe,
	o => \IO_DATA[3]~output_o\);

-- Location: IOOBUF_X51_Y0_N9
\IO_DATA[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AC(4),
	oe => \IO_WRITE_int~q\,
	devoe => ww_devoe,
	o => \IO_DATA[4]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\IO_DATA[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AC(5),
	oe => \IO_WRITE_int~q\,
	devoe => ww_devoe,
	o => \IO_DATA[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N16
\IO_DATA[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AC(6),
	oe => \IO_WRITE_int~q\,
	devoe => ww_devoe,
	o => \IO_DATA[6]~output_o\);

-- Location: IOOBUF_X51_Y0_N23
\IO_DATA[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AC(7),
	oe => \IO_WRITE_int~q\,
	devoe => ww_devoe,
	o => \IO_DATA[7]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\IO_DATA[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AC(8),
	oe => \IO_WRITE_int~q\,
	devoe => ww_devoe,
	o => \IO_DATA[8]~output_o\);

-- Location: IOOBUF_X78_Y15_N23
\IO_DATA[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AC(9),
	oe => \IO_WRITE_int~q\,
	devoe => ww_devoe,
	o => \IO_DATA[9]~output_o\);

-- Location: IOOBUF_X78_Y17_N9
\IO_DATA[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AC(10),
	oe => \IO_WRITE_int~q\,
	devoe => ww_devoe,
	o => \IO_DATA[10]~output_o\);

-- Location: IOOBUF_X78_Y17_N23
\IO_DATA[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AC(11),
	oe => \IO_WRITE_int~q\,
	devoe => ww_devoe,
	o => \IO_DATA[11]~output_o\);

-- Location: IOOBUF_X58_Y0_N30
\IO_DATA[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AC(12),
	oe => \IO_WRITE_int~q\,
	devoe => ww_devoe,
	o => \IO_DATA[12]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\IO_DATA[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AC(13),
	oe => \IO_WRITE_int~q\,
	devoe => ww_devoe,
	o => \IO_DATA[13]~output_o\);

-- Location: IOOBUF_X38_Y0_N16
\IO_DATA[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AC(14),
	oe => \IO_WRITE_int~q\,
	devoe => ww_devoe,
	o => \IO_DATA[14]~output_o\);

-- Location: IOOBUF_X58_Y0_N2
\IO_DATA[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AC(15),
	oe => \IO_WRITE_int~q\,
	devoe => ww_devoe,
	o => \IO_DATA[15]~output_o\);

-- Location: IOOBUF_X78_Y15_N2
\IO_WRITE~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IO_WRITE_int~q\,
	devoe => ww_devoe,
	o => \IO_WRITE~output_o\);

-- Location: IOOBUF_X31_Y0_N23
\IO_CYCLE~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IO_CYCLE~reg0_q\,
	devoe => ww_devoe,
	o => \IO_CYCLE~output_o\);

-- Location: IOOBUF_X78_Y18_N16
\IO_ADDR[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => IR(0),
	devoe => ww_devoe,
	o => \IO_ADDR[0]~output_o\);

-- Location: IOOBUF_X62_Y0_N30
\IO_ADDR[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => IR(1),
	devoe => ww_devoe,
	o => \IO_ADDR[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\IO_ADDR[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => IR(2),
	devoe => ww_devoe,
	o => \IO_ADDR[2]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\IO_ADDR[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => IR(3),
	devoe => ww_devoe,
	o => \IO_ADDR[3]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\IO_ADDR[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => IR(4),
	devoe => ww_devoe,
	o => \IO_ADDR[4]~output_o\);

-- Location: IOOBUF_X78_Y20_N16
\IO_ADDR[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => IR(5),
	devoe => ww_devoe,
	o => \IO_ADDR[5]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\IO_ADDR[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => IR(6),
	devoe => ww_devoe,
	o => \IO_ADDR[6]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\IO_ADDR[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => IR(7),
	devoe => ww_devoe,
	o => \IO_ADDR[7]~output_o\);

-- Location: IOOBUF_X78_Y20_N9
\IO_ADDR[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => IR(8),
	devoe => ww_devoe,
	o => \IO_ADDR[8]~output_o\);

-- Location: IOOBUF_X78_Y23_N9
\IO_ADDR[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => IR(9),
	devoe => ww_devoe,
	o => \IO_ADDR[9]~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\IO_ADDR[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => IR(10),
	devoe => ww_devoe,
	o => \IO_ADDR[10]~output_o\);

-- Location: IOOBUF_X49_Y0_N30
\dbg_FETCH~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.fetch~q\,
	devoe => ww_devoe,
	o => \dbg_FETCH~output_o\);

-- Location: IOOBUF_X78_Y3_N2
\dbg_AC[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AC(0),
	devoe => ww_devoe,
	o => \dbg_AC[0]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\dbg_AC[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AC(1),
	devoe => ww_devoe,
	o => \dbg_AC[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\dbg_AC[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AC(2),
	devoe => ww_devoe,
	o => \dbg_AC[2]~output_o\);

-- Location: IOOBUF_X69_Y0_N23
\dbg_AC[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AC(3),
	devoe => ww_devoe,
	o => \dbg_AC[3]~output_o\);

-- Location: IOOBUF_X51_Y0_N16
\dbg_AC[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AC(4),
	devoe => ww_devoe,
	o => \dbg_AC[4]~output_o\);

-- Location: IOOBUF_X38_Y0_N23
\dbg_AC[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AC(5),
	devoe => ww_devoe,
	o => \dbg_AC[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\dbg_AC[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AC(6),
	devoe => ww_devoe,
	o => \dbg_AC[6]~output_o\);

-- Location: IOOBUF_X51_Y0_N30
\dbg_AC[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AC(7),
	devoe => ww_devoe,
	o => \dbg_AC[7]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\dbg_AC[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AC(8),
	devoe => ww_devoe,
	o => \dbg_AC[8]~output_o\);

-- Location: IOOBUF_X78_Y15_N9
\dbg_AC[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AC(9),
	devoe => ww_devoe,
	o => \dbg_AC[9]~output_o\);

-- Location: IOOBUF_X78_Y18_N2
\dbg_AC[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AC(10),
	devoe => ww_devoe,
	o => \dbg_AC[10]~output_o\);

-- Location: IOOBUF_X78_Y17_N16
\dbg_AC[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AC(11),
	devoe => ww_devoe,
	o => \dbg_AC[11]~output_o\);

-- Location: IOOBUF_X58_Y0_N23
\dbg_AC[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AC(12),
	devoe => ww_devoe,
	o => \dbg_AC[12]~output_o\);

-- Location: IOOBUF_X56_Y0_N30
\dbg_AC[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AC(13),
	devoe => ww_devoe,
	o => \dbg_AC[13]~output_o\);

-- Location: IOOBUF_X38_Y0_N30
\dbg_AC[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AC(14),
	devoe => ww_devoe,
	o => \dbg_AC[14]~output_o\);

-- Location: IOOBUF_X58_Y0_N16
\dbg_AC[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AC(15),
	devoe => ww_devoe,
	o => \dbg_AC[15]~output_o\);

-- Location: IOOBUF_X34_Y0_N30
\dbg_PC[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => PC(0),
	devoe => ww_devoe,
	o => \dbg_PC[0]~output_o\);

-- Location: IOOBUF_X78_Y23_N16
\dbg_PC[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => PC(1),
	devoe => ww_devoe,
	o => \dbg_PC[1]~output_o\);

-- Location: IOOBUF_X31_Y0_N16
\dbg_PC[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => PC(2),
	devoe => ww_devoe,
	o => \dbg_PC[2]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\dbg_PC[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => PC(3),
	devoe => ww_devoe,
	o => \dbg_PC[3]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\dbg_PC[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => PC(4),
	devoe => ww_devoe,
	o => \dbg_PC[4]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\dbg_PC[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => PC(5),
	devoe => ww_devoe,
	o => \dbg_PC[5]~output_o\);

-- Location: IOOBUF_X78_Y20_N2
\dbg_PC[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => PC(6),
	devoe => ww_devoe,
	o => \dbg_PC[6]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\dbg_PC[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => PC(7),
	devoe => ww_devoe,
	o => \dbg_PC[7]~output_o\);

-- Location: IOOBUF_X31_Y0_N30
\dbg_PC[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => PC(8),
	devoe => ww_devoe,
	o => \dbg_PC[8]~output_o\);

-- Location: IOOBUF_X40_Y0_N30
\dbg_PC[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => PC(9),
	devoe => ww_devoe,
	o => \dbg_PC[9]~output_o\);

-- Location: IOOBUF_X36_Y39_N23
\dbg_PC[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => PC(10),
	devoe => ww_devoe,
	o => \dbg_PC[10]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\dbg_MA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \next_mem_addr[0]~0_combout\,
	devoe => ww_devoe,
	o => \dbg_MA[0]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\dbg_MA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \next_mem_addr[1]~1_combout\,
	devoe => ww_devoe,
	o => \dbg_MA[1]~output_o\);

-- Location: IOOBUF_X46_Y0_N9
\dbg_MA[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \next_mem_addr[2]~2_combout\,
	devoe => ww_devoe,
	o => \dbg_MA[2]~output_o\);

-- Location: IOOBUF_X40_Y0_N2
\dbg_MA[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \next_mem_addr[3]~3_combout\,
	devoe => ww_devoe,
	o => \dbg_MA[3]~output_o\);

-- Location: IOOBUF_X34_Y0_N9
\dbg_MA[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \next_mem_addr[4]~4_combout\,
	devoe => ww_devoe,
	o => \dbg_MA[4]~output_o\);

-- Location: IOOBUF_X78_Y16_N2
\dbg_MA[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \next_mem_addr[5]~5_combout\,
	devoe => ww_devoe,
	o => \dbg_MA[5]~output_o\);

-- Location: IOOBUF_X78_Y16_N24
\dbg_MA[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \next_mem_addr[6]~6_combout\,
	devoe => ww_devoe,
	o => \dbg_MA[6]~output_o\);

-- Location: IOOBUF_X78_Y16_N16
\dbg_MA[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \next_mem_addr[7]~7_combout\,
	devoe => ww_devoe,
	o => \dbg_MA[7]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\dbg_MA[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \next_mem_addr[8]~8_combout\,
	devoe => ww_devoe,
	o => \dbg_MA[8]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\dbg_MA[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \next_mem_addr[9]~9_combout\,
	devoe => ww_devoe,
	o => \dbg_MA[9]~output_o\);

-- Location: IOOBUF_X40_Y0_N9
\dbg_MA[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \next_mem_addr[10]~10_combout\,
	devoe => ww_devoe,
	o => \dbg_MA[10]~output_o\);

-- Location: IOOBUF_X58_Y0_N9
\dbg_MD[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \dbg_MD[0]~output_o\);

-- Location: IOOBUF_X51_Y0_N2
\dbg_MD[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \dbg_MD[1]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\dbg_MD[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \dbg_MD[2]~output_o\);

-- Location: IOOBUF_X78_Y21_N23
\dbg_MD[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \dbg_MD[3]~output_o\);

-- Location: IOOBUF_X78_Y3_N16
\dbg_MD[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \dbg_MD[4]~output_o\);

-- Location: IOOBUF_X54_Y0_N30
\dbg_MD[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \dbg_MD[5]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\dbg_MD[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \dbg_MD[6]~output_o\);

-- Location: IOOBUF_X78_Y3_N23
\dbg_MD[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \dbg_MD[7]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\dbg_MD[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => \dbg_MD[8]~output_o\);

-- Location: IOOBUF_X78_Y18_N9
\dbg_MD[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => \dbg_MD[9]~output_o\);

-- Location: IOOBUF_X78_Y17_N2
\dbg_MD[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => \dbg_MD[10]~output_o\);

-- Location: IOOBUF_X78_Y16_N9
\dbg_MD[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => \dbg_MD[11]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\dbg_MD[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => \dbg_MD[12]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\dbg_MD[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => \dbg_MD[13]~output_o\);

-- Location: IOOBUF_X78_Y15_N16
\dbg_MD[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => \dbg_MD[14]~output_o\);

-- Location: IOOBUF_X60_Y0_N30
\dbg_MD[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \dbg_MD[15]~output_o\);

-- Location: IOOBUF_X78_Y18_N23
\dbg_IR[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => IR(0),
	devoe => ww_devoe,
	o => \dbg_IR[0]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\dbg_IR[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => IR(1),
	devoe => ww_devoe,
	o => \dbg_IR[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N9
\dbg_IR[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => IR(2),
	devoe => ww_devoe,
	o => \dbg_IR[2]~output_o\);

-- Location: IOOBUF_X29_Y0_N30
\dbg_IR[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => IR(3),
	devoe => ww_devoe,
	o => \dbg_IR[3]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\dbg_IR[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => IR(4),
	devoe => ww_devoe,
	o => \dbg_IR[4]~output_o\);

-- Location: IOOBUF_X78_Y21_N9
\dbg_IR[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => IR(5),
	devoe => ww_devoe,
	o => \dbg_IR[5]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\dbg_IR[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => IR(6),
	devoe => ww_devoe,
	o => \dbg_IR[6]~output_o\);

-- Location: IOOBUF_X22_Y0_N16
\dbg_IR[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => IR(7),
	devoe => ww_devoe,
	o => \dbg_IR[7]~output_o\);

-- Location: IOOBUF_X78_Y20_N24
\dbg_IR[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => IR(8),
	devoe => ww_devoe,
	o => \dbg_IR[8]~output_o\);

-- Location: IOOBUF_X78_Y23_N2
\dbg_IR[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => IR(9),
	devoe => ww_devoe,
	o => \dbg_IR[9]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\dbg_IR[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => IR(10),
	devoe => ww_devoe,
	o => \dbg_IR[10]~output_o\);

-- Location: IOOBUF_X78_Y21_N16
\dbg_IR[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => IR(11),
	devoe => ww_devoe,
	o => \dbg_IR[11]~output_o\);

-- Location: IOOBUF_X36_Y39_N30
\dbg_IR[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => IR(12),
	devoe => ww_devoe,
	o => \dbg_IR[12]~output_o\);

-- Location: IOOBUF_X36_Y39_N16
\dbg_IR[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => IR(13),
	devoe => ww_devoe,
	o => \dbg_IR[13]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\dbg_IR[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => IR(14),
	devoe => ww_devoe,
	o => \dbg_IR[14]~output_o\);

-- Location: IOOBUF_X46_Y0_N2
\dbg_IR[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => IR(15),
	devoe => ww_devoe,
	o => \dbg_IR[15]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\clock~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G3
\clock~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X50_Y5_N4
\state.init~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state.init~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \state.init~feeder_combout\);

-- Location: IOIBUF_X0_Y18_N22
\resetn~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resetn,
	o => \resetn~input_o\);

-- Location: CLKCTRL_G4
\resetn~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \resetn~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \resetn~inputclkctrl_outclk\);

-- Location: FF_X50_Y5_N5
\state.init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state.init~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.init~q\);

-- Location: LCCOMB_X51_Y5_N26
\state.decode~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state.decode~feeder_combout\ = \state.fetch~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.fetch~q\,
	combout => \state.decode~feeder_combout\);

-- Location: FF_X51_Y5_N27
\state.decode\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state.decode~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.decode~q\);

-- Location: LCCOMB_X54_Y6_N12
\state~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~35_combout\ = (\state.decode~q\ & (!\altsyncram_component|auto_generated|q_a\(15) & \altsyncram_component|auto_generated|q_a\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.decode~q\,
	datac => \altsyncram_component|auto_generated|q_a\(15),
	datad => \altsyncram_component|auto_generated|q_a\(14),
	combout => \state~35_combout\);

-- Location: LCCOMB_X54_Y6_N20
\state~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~36_combout\ = (!\altsyncram_component|auto_generated|q_a\(11) & (\altsyncram_component|auto_generated|q_a\(12) & (\altsyncram_component|auto_generated|q_a\(13) & \state~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|q_a\(11),
	datab => \altsyncram_component|auto_generated|q_a\(12),
	datac => \altsyncram_component|auto_generated|q_a\(13),
	datad => \state~35_combout\,
	combout => \state~36_combout\);

-- Location: FF_X54_Y6_N21
\state.ex_iload\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~36_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_iload~q\);

-- Location: LCCOMB_X54_Y6_N10
\Selector29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (\state.decode~q\ & (!\altsyncram_component|auto_generated|q_a\(15) & \altsyncram_component|auto_generated|q_a\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.decode~q\,
	datac => \altsyncram_component|auto_generated|q_a\(15),
	datad => \altsyncram_component|auto_generated|q_a\(11),
	combout => \Selector29~0_combout\);

-- Location: LCCOMB_X54_Y6_N30
\state~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~38_combout\ = (\altsyncram_component|auto_generated|q_a\(14) & (\altsyncram_component|auto_generated|q_a\(12) & (\altsyncram_component|auto_generated|q_a\(13) & \Selector29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|q_a\(14),
	datab => \altsyncram_component|auto_generated|q_a\(12),
	datac => \altsyncram_component|auto_generated|q_a\(13),
	datad => \Selector29~0_combout\,
	combout => \state~38_combout\);

-- Location: FF_X54_Y6_N31
\state.ex_istore\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~38_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_istore~q\);

-- Location: FF_X51_Y5_N17
\state.ex_istore2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \state.ex_istore~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_istore2~q\);

-- Location: LCCOMB_X51_Y5_N16
WideNor0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideNor0~combout\ = (\state.decode~q\) # ((\state.ex_iload~q\) # (\state.ex_istore2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.decode~q\,
	datab => \state.ex_iload~q\,
	datac => \state.ex_istore2~q\,
	combout => \WideNor0~combout\);

-- Location: LCCOMB_X51_Y5_N0
\state~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~53_combout\ = (\altsyncram_component|auto_generated|q_a\(15) & (!\altsyncram_component|auto_generated|q_a\(12) & (!\altsyncram_component|auto_generated|q_a\(11) & \state~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|q_a\(15),
	datab => \altsyncram_component|auto_generated|q_a\(12),
	datac => \altsyncram_component|auto_generated|q_a\(11),
	datad => \state~32_combout\,
	combout => \state~53_combout\);

-- Location: FF_X51_Y5_N1
\state.ex_call\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~53_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_call~q\);

-- Location: LCCOMB_X50_Y7_N18
\PC_stack[9][0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC_stack[9][0]~1_combout\ = (\resetn~input_o\ & \state.ex_call~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \resetn~input_o\,
	datad => \state.ex_call~q\,
	combout => \PC_stack[9][0]~1_combout\);

-- Location: FF_X50_Y6_N29
\PC_stack[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \PC_stack[8][3]~q\,
	sload => VCC,
	ena => \PC_stack[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[9][3]~q\);

-- Location: LCCOMB_X50_Y6_N30
\Selector126~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector126~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[9][3]~q\))) # (!\state.ex_return~q\ & (\PC_stack[7][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[7][3]~q\,
	datab => \PC_stack[9][3]~q\,
	datac => \state.ex_return~q\,
	combout => \Selector126~0_combout\);

-- Location: LCCOMB_X50_Y7_N16
\PC_stack[0][0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC_stack[0][0]~0_combout\ = (\resetn~input_o\ & ((\state.ex_return~q\) # (\state.ex_call~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_return~q\,
	datab => \resetn~input_o\,
	datad => \state.ex_call~q\,
	combout => \PC_stack[0][0]~0_combout\);

-- Location: FF_X50_Y6_N31
\PC_stack[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector126~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[8][3]~q\);

-- Location: LCCOMB_X50_Y6_N10
\Selector115~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector115~0_combout\ = (\state.ex_return~q\ & (\PC_stack[8][3]~q\)) # (!\state.ex_return~q\ & ((\PC_stack[6][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[8][3]~q\,
	datab => \PC_stack[6][3]~q\,
	datac => \state.ex_return~q\,
	combout => \Selector115~0_combout\);

-- Location: FF_X50_Y6_N11
\PC_stack[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector115~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[7][3]~q\);

-- Location: LCCOMB_X50_Y6_N18
\Selector104~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector104~0_combout\ = (\state.ex_return~q\ & (\PC_stack[7][3]~q\)) # (!\state.ex_return~q\ & ((\PC_stack[5][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[7][3]~q\,
	datab => \PC_stack[5][3]~q\,
	datac => \state.ex_return~q\,
	combout => \Selector104~0_combout\);

-- Location: FF_X50_Y6_N19
\PC_stack[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector104~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[6][3]~q\);

-- Location: LCCOMB_X50_Y6_N2
\Selector93~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector93~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[6][3]~q\))) # (!\state.ex_return~q\ & (\PC_stack[4][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[4][3]~q\,
	datab => \PC_stack[6][3]~q\,
	datac => \state.ex_return~q\,
	combout => \Selector93~0_combout\);

-- Location: FF_X50_Y6_N3
\PC_stack[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector93~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[5][3]~q\);

-- Location: LCCOMB_X50_Y6_N22
\Selector82~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector82~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[5][3]~q\))) # (!\state.ex_return~q\ & (\PC_stack[3][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[3][3]~q\,
	datab => \PC_stack[5][3]~q\,
	datac => \state.ex_return~q\,
	combout => \Selector82~0_combout\);

-- Location: FF_X50_Y6_N23
\PC_stack[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector82~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[4][3]~q\);

-- Location: LCCOMB_X50_Y6_N6
\Selector71~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector71~0_combout\ = (\state.ex_return~q\ & (\PC_stack[4][3]~q\)) # (!\state.ex_return~q\ & ((\PC_stack[2][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[4][3]~q\,
	datab => \PC_stack[2][3]~q\,
	datac => \state.ex_return~q\,
	combout => \Selector71~0_combout\);

-- Location: FF_X50_Y6_N7
\PC_stack[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector71~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[3][3]~q\);

-- Location: LCCOMB_X49_Y6_N24
\Selector60~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector60~0_combout\ = (\state.ex_return~q\ & (\PC_stack[3][3]~q\)) # (!\state.ex_return~q\ & ((\PC_stack[1][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[3][3]~q\,
	datab => \PC_stack[1][3]~q\,
	datac => \state.ex_return~q\,
	combout => \Selector60~0_combout\);

-- Location: FF_X49_Y6_N25
\PC_stack[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector60~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[2][3]~q\);

-- Location: LCCOMB_X49_Y6_N28
\Selector49~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector49~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[2][3]~q\))) # (!\state.ex_return~q\ & (\PC_stack[0][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[0][3]~q\,
	datab => \PC_stack[2][3]~q\,
	datac => \state.ex_return~q\,
	combout => \Selector49~0_combout\);

-- Location: FF_X49_Y6_N29
\PC_stack[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector49~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[1][3]~q\);

-- Location: LCCOMB_X49_Y6_N12
\Selector38~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[1][3]~q\))) # (!\state.ex_return~q\ & (PC(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(3),
	datab => \PC_stack[1][3]~q\,
	datac => \state.ex_return~q\,
	combout => \Selector38~0_combout\);

-- Location: FF_X49_Y6_N13
\PC_stack[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector38~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[0][3]~q\);

-- Location: LCCOMB_X50_Y3_N20
\PC_stack[9][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC_stack[9][0]~feeder_combout\ = \PC_stack[8][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC_stack[8][0]~q\,
	combout => \PC_stack[9][0]~feeder_combout\);

-- Location: FF_X50_Y3_N21
\PC_stack[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC_stack[9][0]~feeder_combout\,
	ena => \PC_stack[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[9][0]~q\);

-- Location: LCCOMB_X50_Y3_N28
\Selector129~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector129~0_combout\ = (\state.ex_return~q\ & (\PC_stack[9][0]~q\)) # (!\state.ex_return~q\ & ((\PC_stack[7][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_stack[9][0]~q\,
	datac => \PC_stack[7][0]~q\,
	datad => \state.ex_return~q\,
	combout => \Selector129~0_combout\);

-- Location: FF_X50_Y3_N29
\PC_stack[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector129~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[8][0]~q\);

-- Location: LCCOMB_X50_Y3_N8
\Selector118~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector118~0_combout\ = (\state.ex_return~q\ & (\PC_stack[8][0]~q\)) # (!\state.ex_return~q\ & ((\PC_stack[6][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_stack[8][0]~q\,
	datac => \PC_stack[6][0]~q\,
	datad => \state.ex_return~q\,
	combout => \Selector118~0_combout\);

-- Location: FF_X50_Y3_N9
\PC_stack[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector118~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[7][0]~q\);

-- Location: LCCOMB_X50_Y3_N4
\Selector107~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector107~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[7][0]~q\))) # (!\state.ex_return~q\ & (\PC_stack[5][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_stack[5][0]~q\,
	datac => \PC_stack[7][0]~q\,
	datad => \state.ex_return~q\,
	combout => \Selector107~0_combout\);

-- Location: FF_X50_Y3_N5
\PC_stack[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector107~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[6][0]~q\);

-- Location: LCCOMB_X50_Y3_N0
\Selector96~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector96~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[6][0]~q\))) # (!\state.ex_return~q\ & (\PC_stack[4][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_stack[4][0]~q\,
	datac => \PC_stack[6][0]~q\,
	datad => \state.ex_return~q\,
	combout => \Selector96~0_combout\);

-- Location: FF_X50_Y3_N1
\PC_stack[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector96~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[5][0]~q\);

-- Location: LCCOMB_X50_Y3_N24
\Selector85~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector85~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[5][0]~q\))) # (!\state.ex_return~q\ & (\PC_stack[3][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[3][0]~q\,
	datab => \PC_stack[5][0]~q\,
	datad => \state.ex_return~q\,
	combout => \Selector85~0_combout\);

-- Location: FF_X50_Y3_N25
\PC_stack[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector85~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[4][0]~q\);

-- Location: LCCOMB_X51_Y3_N6
\Selector74~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector74~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[4][0]~q\))) # (!\state.ex_return~q\ & (\PC_stack[2][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[2][0]~q\,
	datab => \PC_stack[4][0]~q\,
	datac => \state.ex_return~q\,
	combout => \Selector74~0_combout\);

-- Location: FF_X51_Y3_N7
\PC_stack[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector74~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[3][0]~q\);

-- Location: LCCOMB_X51_Y3_N30
\Selector63~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector63~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[3][0]~q\))) # (!\state.ex_return~q\ & (\PC_stack[1][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[1][0]~q\,
	datac => \state.ex_return~q\,
	datad => \PC_stack[3][0]~q\,
	combout => \Selector63~0_combout\);

-- Location: FF_X51_Y3_N31
\PC_stack[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector63~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[2][0]~q\);

-- Location: LCCOMB_X51_Y3_N22
\Selector52~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector52~0_combout\ = (\state.ex_return~q\ & (\PC_stack[2][0]~q\)) # (!\state.ex_return~q\ & ((\PC_stack[0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[2][0]~q\,
	datac => \state.ex_return~q\,
	datad => \PC_stack[0][0]~q\,
	combout => \Selector52~0_combout\);

-- Location: FF_X51_Y3_N23
\PC_stack[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector52~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[1][0]~q\);

-- Location: LCCOMB_X51_Y3_N10
\Selector41~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector41~0_combout\ = (\state.ex_return~q\ & (\PC_stack[1][0]~q\)) # (!\state.ex_return~q\ & ((PC(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[1][0]~q\,
	datab => PC(0),
	datac => \state.ex_return~q\,
	combout => \Selector41~0_combout\);

-- Location: FF_X51_Y3_N11
\PC_stack[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector41~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[0][0]~q\);

-- Location: LCCOMB_X52_Y6_N2
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = PC(0) $ (VCC)
-- \Add0~1\ = CARRY(PC(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X50_Y7_N10
\PC_stack[9][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC_stack[9][4]~feeder_combout\ = \PC_stack[8][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC_stack[8][4]~q\,
	combout => \PC_stack[9][4]~feeder_combout\);

-- Location: FF_X50_Y7_N11
\PC_stack[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC_stack[9][4]~feeder_combout\,
	ena => \PC_stack[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[9][4]~q\);

-- Location: LCCOMB_X49_Y7_N2
\Selector125~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector125~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[9][4]~q\))) # (!\state.ex_return~q\ & (\PC_stack[7][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[7][4]~q\,
	datab => \PC_stack[9][4]~q\,
	datac => \state.ex_return~q\,
	combout => \Selector125~0_combout\);

-- Location: FF_X49_Y7_N3
\PC_stack[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector125~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[8][4]~q\);

-- Location: LCCOMB_X49_Y7_N12
\Selector114~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector114~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[8][4]~q\))) # (!\state.ex_return~q\ & (\PC_stack[6][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_return~q\,
	datab => \PC_stack[6][4]~q\,
	datac => \PC_stack[8][4]~q\,
	combout => \Selector114~0_combout\);

-- Location: FF_X49_Y7_N13
\PC_stack[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector114~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[7][4]~q\);

-- Location: LCCOMB_X49_Y7_N28
\Selector103~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector103~0_combout\ = (\state.ex_return~q\ & (\PC_stack[7][4]~q\)) # (!\state.ex_return~q\ & ((\PC_stack[5][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[7][4]~q\,
	datab => \PC_stack[5][4]~q\,
	datac => \state.ex_return~q\,
	combout => \Selector103~0_combout\);

-- Location: FF_X49_Y7_N29
\PC_stack[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector103~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[6][4]~q\);

-- Location: LCCOMB_X49_Y7_N24
\Selector92~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector92~0_combout\ = (\state.ex_return~q\ & (\PC_stack[6][4]~q\)) # (!\state.ex_return~q\ & ((\PC_stack[4][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_stack[6][4]~q\,
	datac => \state.ex_return~q\,
	datad => \PC_stack[4][4]~q\,
	combout => \Selector92~0_combout\);

-- Location: FF_X49_Y7_N25
\PC_stack[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector92~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[5][4]~q\);

-- Location: LCCOMB_X49_Y7_N16
\Selector81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector81~0_combout\ = (\state.ex_return~q\ & (\PC_stack[5][4]~q\)) # (!\state.ex_return~q\ & ((\PC_stack[3][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_return~q\,
	datab => \PC_stack[5][4]~q\,
	datac => \PC_stack[3][4]~q\,
	combout => \Selector81~0_combout\);

-- Location: FF_X49_Y7_N17
\PC_stack[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector81~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[4][4]~q\);

-- Location: LCCOMB_X49_Y7_N4
\Selector70~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector70~0_combout\ = (\state.ex_return~q\ & (\PC_stack[4][4]~q\)) # (!\state.ex_return~q\ & ((\PC_stack[2][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_return~q\,
	datab => \PC_stack[4][4]~q\,
	datac => \PC_stack[2][4]~q\,
	combout => \Selector70~0_combout\);

-- Location: FF_X49_Y7_N5
\PC_stack[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector70~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[3][4]~q\);

-- Location: LCCOMB_X49_Y7_N8
\Selector59~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector59~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[3][4]~q\))) # (!\state.ex_return~q\ & (\PC_stack[1][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_return~q\,
	datab => \PC_stack[1][4]~q\,
	datac => \PC_stack[3][4]~q\,
	combout => \Selector59~0_combout\);

-- Location: FF_X49_Y7_N9
\PC_stack[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector59~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[2][4]~q\);

-- Location: LCCOMB_X49_Y7_N0
\Selector48~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector48~0_combout\ = (\state.ex_return~q\ & (\PC_stack[2][4]~q\)) # (!\state.ex_return~q\ & ((\PC_stack[0][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_return~q\,
	datab => \PC_stack[2][4]~q\,
	datac => \PC_stack[0][4]~q\,
	combout => \Selector48~0_combout\);

-- Location: FF_X49_Y7_N1
\PC_stack[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector48~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[1][4]~q\);

-- Location: LCCOMB_X49_Y7_N20
\Selector37~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[1][4]~q\))) # (!\state.ex_return~q\ & (PC(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(4),
	datab => \PC_stack[1][4]~q\,
	datac => \state.ex_return~q\,
	combout => \Selector37~0_combout\);

-- Location: FF_X49_Y7_N21
\PC_stack[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector37~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[0][4]~q\);

-- Location: LCCOMB_X52_Y5_N28
\Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (!\state.fetch~q\ & ((\WideNor0~combout\ & ((\altsyncram_component|auto_generated|q_a\(4)))) # (!\WideNor0~combout\ & (IR(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(4),
	datab => \state.fetch~q\,
	datac => \WideNor0~combout\,
	datad => \altsyncram_component|auto_generated|q_a\(4),
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X52_Y6_N8
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (PC(3) & (!\Add0~5\)) # (!PC(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!PC(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X52_Y6_N10
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (PC(4) & (\Add0~7\ $ (GND))) # (!PC(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((PC(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X49_Y5_N20
\Selector7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\Selector7~0_combout\) # ((\state.fetch~q\ & \Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.fetch~q\,
	datac => \Selector7~0_combout\,
	datad => \Add0~8_combout\,
	combout => \Selector7~1_combout\);

-- Location: LCCOMB_X49_Y5_N0
\Selector7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~2_combout\ = (\state.ex_return~q\ & (\PC_stack[0][4]~q\)) # (!\state.ex_return~q\ & (((\state.init~q\ & \Selector7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_return~q\,
	datab => \PC_stack[0][4]~q\,
	datac => \state.init~q\,
	datad => \Selector7~1_combout\,
	combout => \Selector7~2_combout\);

-- Location: LCCOMB_X54_Y6_N16
\state~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~41_combout\ = (\altsyncram_component|auto_generated|q_a\(13) & (!\altsyncram_component|auto_generated|q_a\(14) & (!\altsyncram_component|auto_generated|q_a\(15) & \state.decode~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|q_a\(13),
	datab => \altsyncram_component|auto_generated|q_a\(14),
	datac => \altsyncram_component|auto_generated|q_a\(15),
	datad => \state.decode~q\,
	combout => \state~41_combout\);

-- Location: LCCOMB_X54_Y6_N22
\state~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~50_combout\ = (\altsyncram_component|auto_generated|q_a\(12) & (!\altsyncram_component|auto_generated|q_a\(11) & \state~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altsyncram_component|auto_generated|q_a\(12),
	datac => \altsyncram_component|auto_generated|q_a\(11),
	datad => \state~41_combout\,
	combout => \state~50_combout\);

-- Location: FF_X54_Y6_N23
\state.ex_jneg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~50_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_jneg~q\);

-- Location: LCCOMB_X51_Y4_N22
\IR[4]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR[4]~0_combout\ = (\resetn~input_o\ & \state.decode~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resetn~input_o\,
	datac => \state.decode~q\,
	combout => \IR[4]~0_combout\);

-- Location: FF_X54_Y5_N11
\IR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \altsyncram_component|auto_generated|q_a\(2),
	sload => VCC,
	ena => \IR[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(2));

-- Location: LCCOMB_X54_Y6_N14
\state~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~46_combout\ = (!\altsyncram_component|auto_generated|q_a\(11) & (!\altsyncram_component|auto_generated|q_a\(12) & (\altsyncram_component|auto_generated|q_a\(13) & \state~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|q_a\(11),
	datab => \altsyncram_component|auto_generated|q_a\(12),
	datac => \altsyncram_component|auto_generated|q_a\(13),
	datad => \state~35_combout\,
	combout => \state~46_combout\);

-- Location: FF_X54_Y6_N15
\state.ex_shift\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~46_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_shift~q\);

-- Location: LCCOMB_X50_Y7_N28
\PC_stack[9][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC_stack[9][5]~feeder_combout\ = \PC_stack[8][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC_stack[8][5]~q\,
	combout => \PC_stack[9][5]~feeder_combout\);

-- Location: FF_X50_Y7_N29
\PC_stack[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC_stack[9][5]~feeder_combout\,
	ena => \PC_stack[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[9][5]~q\);

-- Location: LCCOMB_X50_Y7_N20
\Selector124~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector124~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[9][5]~q\))) # (!\state.ex_return~q\ & (\PC_stack[7][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[7][5]~q\,
	datab => \PC_stack[9][5]~q\,
	datac => \state.ex_return~q\,
	combout => \Selector124~0_combout\);

-- Location: FF_X50_Y7_N21
\PC_stack[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector124~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[8][5]~q\);

-- Location: LCCOMB_X50_Y7_N26
\Selector113~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector113~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[8][5]~q\))) # (!\state.ex_return~q\ & (\PC_stack[6][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_stack[6][5]~q\,
	datac => \state.ex_return~q\,
	datad => \PC_stack[8][5]~q\,
	combout => \Selector113~0_combout\);

-- Location: FF_X50_Y7_N27
\PC_stack[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector113~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[7][5]~q\);

-- Location: LCCOMB_X49_Y7_N6
\Selector102~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector102~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[7][5]~q\))) # (!\state.ex_return~q\ & (\PC_stack[5][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[5][5]~q\,
	datab => \PC_stack[7][5]~q\,
	datac => \state.ex_return~q\,
	combout => \Selector102~0_combout\);

-- Location: FF_X49_Y7_N7
\PC_stack[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector102~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[6][5]~q\);

-- Location: LCCOMB_X49_Y7_N26
\Selector91~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector91~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[6][5]~q\))) # (!\state.ex_return~q\ & (\PC_stack[4][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[4][5]~q\,
	datac => \state.ex_return~q\,
	datad => \PC_stack[6][5]~q\,
	combout => \Selector91~0_combout\);

-- Location: FF_X49_Y7_N27
\PC_stack[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector91~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[5][5]~q\);

-- Location: LCCOMB_X49_Y7_N22
\Selector80~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector80~0_combout\ = (\state.ex_return~q\ & (\PC_stack[5][5]~q\)) # (!\state.ex_return~q\ & ((\PC_stack[3][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[5][5]~q\,
	datac => \state.ex_return~q\,
	datad => \PC_stack[3][5]~q\,
	combout => \Selector80~0_combout\);

-- Location: FF_X49_Y7_N23
\PC_stack[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector80~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[4][5]~q\);

-- Location: LCCOMB_X49_Y7_N10
\Selector69~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector69~0_combout\ = (\state.ex_return~q\ & (\PC_stack[4][5]~q\)) # (!\state.ex_return~q\ & ((\PC_stack[2][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[4][5]~q\,
	datab => \PC_stack[2][5]~q\,
	datac => \state.ex_return~q\,
	combout => \Selector69~0_combout\);

-- Location: FF_X49_Y7_N11
\PC_stack[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector69~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[3][5]~q\);

-- Location: LCCOMB_X49_Y7_N18
\Selector58~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector58~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[3][5]~q\))) # (!\state.ex_return~q\ & (\PC_stack[1][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[1][5]~q\,
	datac => \state.ex_return~q\,
	datad => \PC_stack[3][5]~q\,
	combout => \Selector58~0_combout\);

-- Location: FF_X49_Y7_N19
\PC_stack[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector58~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[2][5]~q\);

-- Location: LCCOMB_X49_Y7_N30
\Selector47~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector47~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[2][5]~q\))) # (!\state.ex_return~q\ & (\PC_stack[0][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_return~q\,
	datac => \PC_stack[0][5]~q\,
	datad => \PC_stack[2][5]~q\,
	combout => \Selector47~0_combout\);

-- Location: FF_X49_Y7_N31
\PC_stack[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector47~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[1][5]~q\);

-- Location: LCCOMB_X49_Y7_N14
\Selector36~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = (\state.ex_return~q\ & (\PC_stack[1][5]~q\)) # (!\state.ex_return~q\ & ((PC(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[1][5]~q\,
	datab => PC(5),
	datac => \state.ex_return~q\,
	combout => \Selector36~0_combout\);

-- Location: FF_X49_Y7_N15
\PC_stack[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector36~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[0][5]~q\);

-- Location: LCCOMB_X52_Y6_N12
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (PC(5) & (!\Add0~9\)) # (!PC(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!PC(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X50_Y7_N31
\PC_stack[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \PC_stack[8][6]~q\,
	sload => VCC,
	ena => \PC_stack[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[9][6]~q\);

-- Location: LCCOMB_X50_Y7_N22
\Selector123~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector123~0_combout\ = (\state.ex_return~q\ & (\PC_stack[9][6]~q\)) # (!\state.ex_return~q\ & ((\PC_stack[7][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[9][6]~q\,
	datab => \PC_stack[7][6]~q\,
	datac => \state.ex_return~q\,
	combout => \Selector123~0_combout\);

-- Location: FF_X50_Y7_N23
\PC_stack[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector123~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[8][6]~q\);

-- Location: LCCOMB_X50_Y7_N24
\Selector112~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector112~0_combout\ = (\state.ex_return~q\ & (\PC_stack[8][6]~q\)) # (!\state.ex_return~q\ & ((\PC_stack[6][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[8][6]~q\,
	datab => \PC_stack[6][6]~q\,
	datac => \state.ex_return~q\,
	combout => \Selector112~0_combout\);

-- Location: FF_X50_Y7_N25
\PC_stack[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector112~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[7][6]~q\);

-- Location: LCCOMB_X51_Y7_N10
\Selector101~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector101~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[7][6]~q\))) # (!\state.ex_return~q\ & (\PC_stack[5][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_return~q\,
	datac => \PC_stack[5][6]~q\,
	datad => \PC_stack[7][6]~q\,
	combout => \Selector101~0_combout\);

-- Location: FF_X51_Y7_N11
\PC_stack[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector101~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[6][6]~q\);

-- Location: LCCOMB_X51_Y7_N4
\Selector90~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector90~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[6][6]~q\))) # (!\state.ex_return~q\ & (\PC_stack[4][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[4][6]~q\,
	datab => \state.ex_return~q\,
	datad => \PC_stack[6][6]~q\,
	combout => \Selector90~0_combout\);

-- Location: FF_X51_Y7_N5
\PC_stack[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector90~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[5][6]~q\);

-- Location: LCCOMB_X51_Y7_N22
\Selector79~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector79~0_combout\ = (\state.ex_return~q\ & (\PC_stack[5][6]~q\)) # (!\state.ex_return~q\ & ((\PC_stack[3][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_return~q\,
	datac => \PC_stack[5][6]~q\,
	datad => \PC_stack[3][6]~q\,
	combout => \Selector79~0_combout\);

-- Location: FF_X51_Y7_N23
\PC_stack[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector79~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[4][6]~q\);

-- Location: LCCOMB_X51_Y7_N28
\Selector68~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector68~0_combout\ = (\state.ex_return~q\ & (\PC_stack[4][6]~q\)) # (!\state.ex_return~q\ & ((\PC_stack[2][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.ex_return~q\,
	datac => \PC_stack[4][6]~q\,
	datad => \PC_stack[2][6]~q\,
	combout => \Selector68~0_combout\);

-- Location: FF_X51_Y7_N29
\PC_stack[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector68~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[3][6]~q\);

-- Location: LCCOMB_X51_Y7_N8
\Selector57~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector57~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[3][6]~q\))) # (!\state.ex_return~q\ & (\PC_stack[1][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_stack[1][6]~q\,
	datac => \state.ex_return~q\,
	datad => \PC_stack[3][6]~q\,
	combout => \Selector57~0_combout\);

-- Location: FF_X51_Y7_N9
\PC_stack[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector57~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[2][6]~q\);

-- Location: LCCOMB_X51_Y7_N24
\Selector46~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector46~0_combout\ = (\state.ex_return~q\ & (\PC_stack[2][6]~q\)) # (!\state.ex_return~q\ & ((\PC_stack[0][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_return~q\,
	datac => \PC_stack[2][6]~q\,
	datad => \PC_stack[0][6]~q\,
	combout => \Selector46~0_combout\);

-- Location: FF_X51_Y7_N25
\PC_stack[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector46~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[1][6]~q\);

-- Location: LCCOMB_X51_Y7_N16
\Selector35~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (\state.ex_return~q\ & (\PC_stack[1][6]~q\)) # (!\state.ex_return~q\ & ((PC(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_stack[1][6]~q\,
	datac => \state.ex_return~q\,
	datad => PC(6),
	combout => \Selector35~0_combout\);

-- Location: FF_X51_Y7_N17
\PC_stack[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector35~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[0][6]~q\);

-- Location: LCCOMB_X52_Y6_N14
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (PC(6) & (\Add0~11\ $ (GND))) # (!PC(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((PC(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X50_Y7_N12
\PC_stack[9][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC_stack[9][7]~feeder_combout\ = \PC_stack[8][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC_stack[8][7]~q\,
	combout => \PC_stack[9][7]~feeder_combout\);

-- Location: FF_X50_Y7_N13
\PC_stack[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC_stack[9][7]~feeder_combout\,
	ena => \PC_stack[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[9][7]~q\);

-- Location: LCCOMB_X50_Y7_N0
\Selector122~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector122~0_combout\ = (\state.ex_return~q\ & (\PC_stack[9][7]~q\)) # (!\state.ex_return~q\ & ((\PC_stack[7][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[9][7]~q\,
	datab => \PC_stack[7][7]~q\,
	datac => \state.ex_return~q\,
	combout => \Selector122~0_combout\);

-- Location: FF_X50_Y7_N1
\PC_stack[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector122~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[8][7]~q\);

-- Location: LCCOMB_X50_Y7_N2
\Selector111~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector111~0_combout\ = (\state.ex_return~q\ & (\PC_stack[8][7]~q\)) # (!\state.ex_return~q\ & ((\PC_stack[6][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_stack[8][7]~q\,
	datac => \state.ex_return~q\,
	datad => \PC_stack[6][7]~q\,
	combout => \Selector111~0_combout\);

-- Location: FF_X50_Y7_N3
\PC_stack[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector111~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[7][7]~q\);

-- Location: LCCOMB_X50_Y7_N4
\Selector100~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector100~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[7][7]~q\))) # (!\state.ex_return~q\ & (\PC_stack[5][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_stack[5][7]~q\,
	datac => \state.ex_return~q\,
	datad => \PC_stack[7][7]~q\,
	combout => \Selector100~0_combout\);

-- Location: FF_X50_Y7_N5
\PC_stack[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector100~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[6][7]~q\);

-- Location: LCCOMB_X50_Y7_N14
\Selector89~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector89~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[6][7]~q\))) # (!\state.ex_return~q\ & (\PC_stack[4][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_stack[4][7]~q\,
	datac => \state.ex_return~q\,
	datad => \PC_stack[6][7]~q\,
	combout => \Selector89~0_combout\);

-- Location: FF_X50_Y7_N15
\PC_stack[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector89~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[5][7]~q\);

-- Location: LCCOMB_X50_Y7_N8
\Selector78~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector78~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[5][7]~q\))) # (!\state.ex_return~q\ & (\PC_stack[3][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[3][7]~q\,
	datab => \PC_stack[5][7]~q\,
	datac => \state.ex_return~q\,
	combout => \Selector78~0_combout\);

-- Location: FF_X50_Y7_N9
\PC_stack[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector78~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[4][7]~q\);

-- Location: LCCOMB_X50_Y7_N6
\Selector67~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector67~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[4][7]~q\))) # (!\state.ex_return~q\ & (\PC_stack[2][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[2][7]~q\,
	datab => \PC_stack[4][7]~q\,
	datac => \state.ex_return~q\,
	combout => \Selector67~0_combout\);

-- Location: FF_X50_Y7_N7
\PC_stack[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector67~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[3][7]~q\);

-- Location: LCCOMB_X51_Y7_N30
\Selector56~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector56~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[3][7]~q\))) # (!\state.ex_return~q\ & (\PC_stack[1][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.ex_return~q\,
	datac => \PC_stack[1][7]~q\,
	datad => \PC_stack[3][7]~q\,
	combout => \Selector56~0_combout\);

-- Location: FF_X51_Y7_N31
\PC_stack[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector56~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[2][7]~q\);

-- Location: LCCOMB_X51_Y7_N14
\Selector45~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector45~0_combout\ = (\state.ex_return~q\ & (\PC_stack[2][7]~q\)) # (!\state.ex_return~q\ & ((\PC_stack[0][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[2][7]~q\,
	datab => \state.ex_return~q\,
	datad => \PC_stack[0][7]~q\,
	combout => \Selector45~0_combout\);

-- Location: FF_X51_Y7_N15
\PC_stack[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector45~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[1][7]~q\);

-- Location: LCCOMB_X51_Y7_N12
\Selector34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[1][7]~q\))) # (!\state.ex_return~q\ & (PC(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(7),
	datab => \PC_stack[1][7]~q\,
	datad => \state.ex_return~q\,
	combout => \Selector34~0_combout\);

-- Location: FF_X51_Y7_N13
\PC_stack[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector34~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[0][7]~q\);

-- Location: LCCOMB_X52_Y6_N16
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (PC(7) & (!\Add0~13\)) # (!PC(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!PC(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X50_Y5_N26
\PC_stack[9][8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC_stack[9][8]~feeder_combout\ = \PC_stack[8][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC_stack[8][8]~q\,
	combout => \PC_stack[9][8]~feeder_combout\);

-- Location: FF_X50_Y5_N27
\PC_stack[9][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC_stack[9][8]~feeder_combout\,
	ena => \PC_stack[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[9][8]~q\);

-- Location: LCCOMB_X49_Y5_N24
\Selector121~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector121~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[9][8]~q\))) # (!\state.ex_return~q\ & (\PC_stack[7][8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_return~q\,
	datab => \PC_stack[7][8]~q\,
	datac => \PC_stack[9][8]~q\,
	combout => \Selector121~0_combout\);

-- Location: FF_X49_Y5_N25
\PC_stack[8][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector121~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[8][8]~q\);

-- Location: LCCOMB_X49_Y5_N2
\Selector110~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector110~0_combout\ = (\state.ex_return~q\ & (\PC_stack[8][8]~q\)) # (!\state.ex_return~q\ & ((\PC_stack[6][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_stack[8][8]~q\,
	datac => \PC_stack[6][8]~q\,
	datad => \state.ex_return~q\,
	combout => \Selector110~0_combout\);

-- Location: FF_X49_Y5_N3
\PC_stack[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector110~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[7][8]~q\);

-- Location: LCCOMB_X49_Y5_N8
\Selector99~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector99~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[7][8]~q\))) # (!\state.ex_return~q\ & (\PC_stack[5][8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_stack[5][8]~q\,
	datac => \state.ex_return~q\,
	datad => \PC_stack[7][8]~q\,
	combout => \Selector99~0_combout\);

-- Location: FF_X49_Y5_N9
\PC_stack[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector99~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[6][8]~q\);

-- Location: LCCOMB_X49_Y5_N18
\Selector88~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector88~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[6][8]~q\))) # (!\state.ex_return~q\ & (\PC_stack[4][8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[4][8]~q\,
	datab => \PC_stack[6][8]~q\,
	datad => \state.ex_return~q\,
	combout => \Selector88~0_combout\);

-- Location: FF_X49_Y5_N19
\PC_stack[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector88~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[5][8]~q\);

-- Location: LCCOMB_X49_Y5_N12
\Selector77~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector77~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[5][8]~q\))) # (!\state.ex_return~q\ & (\PC_stack[3][8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[3][8]~q\,
	datab => \PC_stack[5][8]~q\,
	datad => \state.ex_return~q\,
	combout => \Selector77~0_combout\);

-- Location: FF_X49_Y5_N13
\PC_stack[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector77~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[4][8]~q\);

-- Location: LCCOMB_X49_Y5_N26
\Selector66~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector66~0_combout\ = (\state.ex_return~q\ & (\PC_stack[4][8]~q\)) # (!\state.ex_return~q\ & ((\PC_stack[2][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[4][8]~q\,
	datab => \PC_stack[2][8]~q\,
	datad => \state.ex_return~q\,
	combout => \Selector66~0_combout\);

-- Location: FF_X49_Y5_N27
\PC_stack[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector66~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[3][8]~q\);

-- Location: LCCOMB_X49_Y5_N28
\Selector55~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector55~0_combout\ = (\state.ex_return~q\ & (\PC_stack[3][8]~q\)) # (!\state.ex_return~q\ & ((\PC_stack[1][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[3][8]~q\,
	datac => \state.ex_return~q\,
	datad => \PC_stack[1][8]~q\,
	combout => \Selector55~0_combout\);

-- Location: FF_X49_Y5_N29
\PC_stack[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector55~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[2][8]~q\);

-- Location: LCCOMB_X49_Y5_N10
\Selector44~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[2][8]~q\))) # (!\state.ex_return~q\ & (\PC_stack[0][8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[0][8]~q\,
	datab => \PC_stack[2][8]~q\,
	datad => \state.ex_return~q\,
	combout => \Selector44~0_combout\);

-- Location: FF_X49_Y5_N11
\PC_stack[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector44~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[1][8]~q\);

-- Location: LCCOMB_X49_Y5_N30
\Selector33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[1][8]~q\))) # (!\state.ex_return~q\ & (PC(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(8),
	datac => \state.ex_return~q\,
	datad => \PC_stack[1][8]~q\,
	combout => \Selector33~0_combout\);

-- Location: FF_X49_Y5_N31
\PC_stack[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector33~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[0][8]~q\);

-- Location: LCCOMB_X52_Y6_N18
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (PC(8) & (\Add0~15\ $ (GND))) # (!PC(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((PC(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X50_Y3_N14
\PC_stack[9][9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC_stack[9][9]~feeder_combout\ = \PC_stack[8][9]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC_stack[8][9]~q\,
	combout => \PC_stack[9][9]~feeder_combout\);

-- Location: FF_X50_Y3_N15
\PC_stack[9][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC_stack[9][9]~feeder_combout\,
	ena => \PC_stack[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[9][9]~q\);

-- Location: LCCOMB_X50_Y3_N2
\Selector120~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector120~0_combout\ = (\state.ex_return~q\ & (\PC_stack[9][9]~q\)) # (!\state.ex_return~q\ & ((\PC_stack[7][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_stack[9][9]~q\,
	datac => \PC_stack[7][9]~q\,
	datad => \state.ex_return~q\,
	combout => \Selector120~0_combout\);

-- Location: FF_X50_Y3_N3
\PC_stack[8][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector120~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[8][9]~q\);

-- Location: LCCOMB_X50_Y3_N30
\Selector109~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector109~0_combout\ = (\state.ex_return~q\ & (\PC_stack[8][9]~q\)) # (!\state.ex_return~q\ & ((\PC_stack[6][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_stack[8][9]~q\,
	datac => \PC_stack[6][9]~q\,
	datad => \state.ex_return~q\,
	combout => \Selector109~0_combout\);

-- Location: FF_X50_Y3_N31
\PC_stack[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector109~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[7][9]~q\);

-- Location: LCCOMB_X50_Y3_N22
\Selector98~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector98~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[7][9]~q\))) # (!\state.ex_return~q\ & (\PC_stack[5][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[5][9]~q\,
	datac => \PC_stack[7][9]~q\,
	datad => \state.ex_return~q\,
	combout => \Selector98~0_combout\);

-- Location: FF_X50_Y3_N23
\PC_stack[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector98~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[6][9]~q\);

-- Location: LCCOMB_X50_Y3_N10
\Selector87~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector87~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[6][9]~q\))) # (!\state.ex_return~q\ & (\PC_stack[4][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_stack[4][9]~q\,
	datac => \PC_stack[6][9]~q\,
	datad => \state.ex_return~q\,
	combout => \Selector87~0_combout\);

-- Location: FF_X50_Y3_N11
\PC_stack[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector87~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[5][9]~q\);

-- Location: LCCOMB_X50_Y3_N18
\Selector76~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector76~0_combout\ = (\state.ex_return~q\ & (\PC_stack[5][9]~q\)) # (!\state.ex_return~q\ & ((\PC_stack[3][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[5][9]~q\,
	datac => \PC_stack[3][9]~q\,
	datad => \state.ex_return~q\,
	combout => \Selector76~0_combout\);

-- Location: FF_X50_Y3_N19
\PC_stack[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector76~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[4][9]~q\);

-- Location: LCCOMB_X50_Y3_N26
\Selector65~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector65~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[4][9]~q\))) # (!\state.ex_return~q\ & (\PC_stack[2][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[2][9]~q\,
	datab => \PC_stack[4][9]~q\,
	datad => \state.ex_return~q\,
	combout => \Selector65~0_combout\);

-- Location: FF_X50_Y3_N27
\PC_stack[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector65~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[3][9]~q\);

-- Location: LCCOMB_X50_Y3_N12
\Selector54~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector54~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[3][9]~q\))) # (!\state.ex_return~q\ & (\PC_stack[1][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[1][9]~q\,
	datac => \PC_stack[3][9]~q\,
	datad => \state.ex_return~q\,
	combout => \Selector54~0_combout\);

-- Location: FF_X50_Y3_N13
\PC_stack[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector54~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[2][9]~q\);

-- Location: LCCOMB_X50_Y3_N6
\Selector43~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = (\state.ex_return~q\ & (\PC_stack[2][9]~q\)) # (!\state.ex_return~q\ & ((\PC_stack[0][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[2][9]~q\,
	datab => \PC_stack[0][9]~q\,
	datad => \state.ex_return~q\,
	combout => \Selector43~0_combout\);

-- Location: FF_X50_Y3_N7
\PC_stack[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector43~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[1][9]~q\);

-- Location: LCCOMB_X50_Y3_N16
\Selector32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (\state.ex_return~q\ & (\PC_stack[1][9]~q\)) # (!\state.ex_return~q\ & ((PC(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[1][9]~q\,
	datab => PC(9),
	datad => \state.ex_return~q\,
	combout => \Selector32~0_combout\);

-- Location: FF_X50_Y3_N17
\PC_stack[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector32~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[0][9]~q\);

-- Location: LCCOMB_X50_Y6_N14
\PC_stack[9][10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC_stack[9][10]~feeder_combout\ = \PC_stack[8][10]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC_stack[8][10]~q\,
	combout => \PC_stack[9][10]~feeder_combout\);

-- Location: FF_X50_Y6_N15
\PC_stack[9][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC_stack[9][10]~feeder_combout\,
	ena => \PC_stack[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[9][10]~q\);

-- Location: LCCOMB_X51_Y6_N2
\Selector119~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector119~0_combout\ = (\state.ex_return~q\ & (\PC_stack[9][10]~q\)) # (!\state.ex_return~q\ & ((\PC_stack[7][10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[9][10]~q\,
	datab => \PC_stack[7][10]~q\,
	datad => \state.ex_return~q\,
	combout => \Selector119~0_combout\);

-- Location: FF_X51_Y6_N3
\PC_stack[8][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector119~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[8][10]~q\);

-- Location: LCCOMB_X51_Y6_N24
\Selector108~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector108~0_combout\ = (\state.ex_return~q\ & (\PC_stack[8][10]~q\)) # (!\state.ex_return~q\ & ((\PC_stack[6][10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_stack[8][10]~q\,
	datac => \PC_stack[6][10]~q\,
	datad => \state.ex_return~q\,
	combout => \Selector108~0_combout\);

-- Location: FF_X51_Y6_N25
\PC_stack[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector108~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[7][10]~q\);

-- Location: LCCOMB_X51_Y6_N26
\Selector97~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector97~0_combout\ = (\state.ex_return~q\ & (\PC_stack[7][10]~q\)) # (!\state.ex_return~q\ & ((\PC_stack[5][10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_stack[7][10]~q\,
	datac => \PC_stack[5][10]~q\,
	datad => \state.ex_return~q\,
	combout => \Selector97~0_combout\);

-- Location: FF_X51_Y6_N27
\PC_stack[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector97~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[6][10]~q\);

-- Location: LCCOMB_X51_Y6_N4
\Selector86~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector86~0_combout\ = (\state.ex_return~q\ & (\PC_stack[6][10]~q\)) # (!\state.ex_return~q\ & ((\PC_stack[4][10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[6][10]~q\,
	datac => \PC_stack[4][10]~q\,
	datad => \state.ex_return~q\,
	combout => \Selector86~0_combout\);

-- Location: FF_X51_Y6_N5
\PC_stack[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector86~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[5][10]~q\);

-- Location: LCCOMB_X51_Y6_N30
\Selector75~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector75~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[5][10]~q\))) # (!\state.ex_return~q\ & (\PC_stack[3][10]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_stack[3][10]~q\,
	datac => \PC_stack[5][10]~q\,
	datad => \state.ex_return~q\,
	combout => \Selector75~0_combout\);

-- Location: FF_X51_Y6_N31
\PC_stack[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector75~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[4][10]~q\);

-- Location: LCCOMB_X51_Y6_N8
\Selector64~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector64~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[4][10]~q\))) # (!\state.ex_return~q\ & (\PC_stack[2][10]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[2][10]~q\,
	datac => \PC_stack[4][10]~q\,
	datad => \state.ex_return~q\,
	combout => \Selector64~0_combout\);

-- Location: FF_X51_Y6_N9
\PC_stack[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector64~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[3][10]~q\);

-- Location: LCCOMB_X51_Y6_N22
\Selector53~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector53~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[3][10]~q\))) # (!\state.ex_return~q\ & (\PC_stack[1][10]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_stack[1][10]~q\,
	datac => \PC_stack[3][10]~q\,
	datad => \state.ex_return~q\,
	combout => \Selector53~0_combout\);

-- Location: FF_X51_Y6_N23
\PC_stack[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector53~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[2][10]~q\);

-- Location: LCCOMB_X51_Y6_N20
\Selector42~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector42~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[2][10]~q\))) # (!\state.ex_return~q\ & (\PC_stack[0][10]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[0][10]~q\,
	datac => \PC_stack[2][10]~q\,
	datad => \state.ex_return~q\,
	combout => \Selector42~0_combout\);

-- Location: FF_X51_Y6_N21
\PC_stack[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector42~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[1][10]~q\);

-- Location: LCCOMB_X51_Y6_N10
\Selector31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (\state.ex_return~q\ & (\PC_stack[1][10]~q\)) # (!\state.ex_return~q\ & ((PC(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_stack[1][10]~q\,
	datac => PC(10),
	datad => \state.ex_return~q\,
	combout => \Selector31~0_combout\);

-- Location: FF_X51_Y6_N11
\PC_stack[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector31~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[0][10]~q\);

-- Location: LCCOMB_X52_Y6_N20
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (PC(9) & (!\Add0~17\)) # (!PC(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!PC(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X52_Y6_N22
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = \Add0~19\ $ (!PC(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => PC(10),
	cin => \Add0~19\,
	combout => \Add0~20_combout\);

-- Location: LCCOMB_X54_Y6_N18
\state~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~43_combout\ = (!\altsyncram_component|auto_generated|q_a\(14) & (\altsyncram_component|auto_generated|q_a\(12) & (\altsyncram_component|auto_generated|q_a\(13) & \altsyncram_component|auto_generated|q_a\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|q_a\(14),
	datab => \altsyncram_component|auto_generated|q_a\(12),
	datac => \altsyncram_component|auto_generated|q_a\(13),
	datad => \altsyncram_component|auto_generated|q_a\(11),
	combout => \state~43_combout\);

-- Location: LCCOMB_X54_Y6_N4
\state~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~44_combout\ = (\state.decode~q\ & (\altsyncram_component|auto_generated|q_a\(15) & \state~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.decode~q\,
	datac => \altsyncram_component|auto_generated|q_a\(15),
	datad => \state~43_combout\,
	combout => \state~44_combout\);

-- Location: FF_X54_Y6_N5
\state.ex_loadi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~44_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_loadi~q\);

-- Location: IOIBUF_X78_Y15_N22
\IO_DATA[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(9),
	o => \IO_DATA[9]~input_o\);

-- Location: LCCOMB_X56_Y7_N8
\Selector18~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector18~4_combout\ = (IR(9) & ((\state.ex_loadi~q\) # ((\state.ex_in~q\ & \IO_DATA[9]~input_o\)))) # (!IR(9) & (((\state.ex_in~q\ & \IO_DATA[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(9),
	datab => \state.ex_loadi~q\,
	datac => \state.ex_in~q\,
	datad => \IO_DATA[9]~input_o\,
	combout => \Selector18~4_combout\);

-- Location: LCCOMB_X54_Y6_N28
\state~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~47_combout\ = (!\altsyncram_component|auto_generated|q_a\(11) & (\altsyncram_component|auto_generated|q_a\(12) & (!\altsyncram_component|auto_generated|q_a\(13) & \state~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|q_a\(11),
	datab => \altsyncram_component|auto_generated|q_a\(12),
	datac => \altsyncram_component|auto_generated|q_a\(13),
	datad => \state~35_combout\,
	combout => \state~47_combout\);

-- Location: FF_X54_Y6_N29
\state.ex_or\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~47_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_or~q\);

-- Location: LCCOMB_X51_Y4_N18
\Selector29~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector29~1_combout\ = (\state.decode~q\ & (\altsyncram_component|auto_generated|q_a\(11) & (!\altsyncram_component|auto_generated|q_a\(12) & !\altsyncram_component|auto_generated|q_a\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.decode~q\,
	datab => \altsyncram_component|auto_generated|q_a\(11),
	datac => \altsyncram_component|auto_generated|q_a\(12),
	datad => \altsyncram_component|auto_generated|q_a\(15),
	combout => \Selector29~1_combout\);

-- Location: LCCOMB_X51_Y4_N16
\state~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~39_combout\ = (\altsyncram_component|auto_generated|q_a\(14) & (!\altsyncram_component|auto_generated|q_a\(13) & \Selector29~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altsyncram_component|auto_generated|q_a\(14),
	datac => \altsyncram_component|auto_generated|q_a\(13),
	datad => \Selector29~1_combout\,
	combout => \state~39_combout\);

-- Location: FF_X51_Y4_N17
\state.ex_and\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~39_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_and~q\);

-- Location: LCCOMB_X51_Y4_N26
\state~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~45_combout\ = (\altsyncram_component|auto_generated|q_a\(14) & (\altsyncram_component|auto_generated|q_a\(13) & \Selector29~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altsyncram_component|auto_generated|q_a\(14),
	datac => \altsyncram_component|auto_generated|q_a\(13),
	datad => \Selector29~1_combout\,
	combout => \state~45_combout\);

-- Location: FF_X51_Y4_N27
\state.ex_addi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~45_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_addi~q\);

-- Location: LCCOMB_X54_Y4_N26
\WideOr3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr3~1_combout\ = (!\state.ex_and~q\ & (!\state.ex_loadi~q\ & (!\state.ex_in~q\ & !\state.ex_addi~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_and~q\,
	datab => \state.ex_loadi~q\,
	datac => \state.ex_in~q\,
	datad => \state.ex_addi~q\,
	combout => \WideOr3~1_combout\);

-- Location: LCCOMB_X55_Y6_N24
\WideOr3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr3~2_combout\ = (!\state.ex_or~q\ & (!\state.ex_xor~q\ & !\state.ex_shift~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.ex_or~q\,
	datac => \state.ex_xor~q\,
	datad => \state.ex_shift~q\,
	combout => \WideOr3~2_combout\);

-- Location: LCCOMB_X51_Y4_N30
\Selector29~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector29~2_combout\ = (\state.ex_iload~q\) # ((!\altsyncram_component|auto_generated|q_a\(14) & (!\altsyncram_component|auto_generated|q_a\(13) & \Selector29~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_iload~q\,
	datab => \altsyncram_component|auto_generated|q_a\(14),
	datac => \altsyncram_component|auto_generated|q_a\(13),
	datad => \Selector29~1_combout\,
	combout => \Selector29~2_combout\);

-- Location: FF_X51_Y4_N31
\state.ex_load\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector29~2_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_load~q\);

-- Location: LCCOMB_X54_Y6_N0
\state~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~40_combout\ = (!\altsyncram_component|auto_generated|q_a\(14) & (\altsyncram_component|auto_generated|q_a\(12) & (!\altsyncram_component|auto_generated|q_a\(13) & \Selector29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|q_a\(14),
	datab => \altsyncram_component|auto_generated|q_a\(12),
	datac => \altsyncram_component|auto_generated|q_a\(13),
	datad => \Selector29~0_combout\,
	combout => \state~40_combout\);

-- Location: FF_X54_Y6_N1
\state.ex_add\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~40_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_add~q\);

-- Location: LCCOMB_X51_Y4_N12
\WideOr3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = (\state.ex_load~q\) # ((\state.ex_add~q\) # ((\state.ex_sub~q\) # (!\state.init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_load~q\,
	datab => \state.ex_add~q\,
	datac => \state.init~q\,
	datad => \state.ex_sub~q\,
	combout => \WideOr3~0_combout\);

-- Location: LCCOMB_X52_Y4_N0
\Selector27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (!\state.ex_or~q\ & (((\WideOr3~0_combout\) # (!\WideOr3~2_combout\)) # (!\WideOr3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_or~q\,
	datab => \WideOr3~1_combout\,
	datac => \WideOr3~2_combout\,
	datad => \WideOr3~0_combout\,
	combout => \Selector27~0_combout\);

-- Location: LCCOMB_X55_Y6_N28
\Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (AC(10) & (((\altsyncram_component|auto_generated|q_a\(10) & \state.ex_and~q\)) # (!\Selector27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|q_a\(10),
	datab => AC(10),
	datac => \Selector27~0_combout\,
	datad => \state.ex_and~q\,
	combout => \Selector17~0_combout\);

-- Location: IOIBUF_X78_Y17_N8
\IO_DATA[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(10),
	o => \IO_DATA[10]~input_o\);

-- Location: LCCOMB_X55_Y6_N30
\Selector17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector17~1_combout\ = (IR(10) & ((\state.ex_loadi~q\) # ((\IO_DATA[10]~input_o\ & \state.ex_in~q\)))) # (!IR(10) & (((\IO_DATA[10]~input_o\ & \state.ex_in~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(10),
	datab => \state.ex_loadi~q\,
	datac => \IO_DATA[10]~input_o\,
	datad => \state.ex_in~q\,
	combout => \Selector17~1_combout\);

-- Location: LCCOMB_X55_Y6_N6
\Selector27~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector27~9_combout\ = (IR(3) & \state.ex_shift~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => IR(3),
	datad => \state.ex_shift~q\,
	combout => \Selector27~9_combout\);

-- Location: LCCOMB_X57_Y4_N0
\Selector25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (\state.ex_shift~q\ & (!IR(3) & (IR(2) & IR(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_shift~q\,
	datab => IR(3),
	datac => IR(2),
	datad => IR(4),
	combout => \Selector25~0_combout\);

-- Location: FF_X56_Y3_N13
\IR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \altsyncram_component|auto_generated|q_a\(0),
	sload => VCC,
	ena => \IR[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(0));

-- Location: LCCOMB_X56_Y3_N26
\shifter|auto_generated|sbit_w[19]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[19]~31_combout\ = (IR(0) & ((IR(4) & ((AC(4)))) # (!IR(4) & (AC(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(0),
	datab => IR(4),
	datac => AC(2),
	datad => AC(4),
	combout => \shifter|auto_generated|sbit_w[19]~31_combout\);

-- Location: LCCOMB_X57_Y5_N30
\Selector26~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector26~1_combout\ = (!IR(3) & \state.ex_shift~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => IR(3),
	datad => \state.ex_shift~q\,
	combout => \Selector26~1_combout\);

-- Location: LCCOMB_X56_Y3_N20
\shifter|auto_generated|sbit_w[17]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[17]~37_combout\ = (IR(0) & ((IR(4) & (AC(2))) # (!IR(4) & ((AC(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(0),
	datab => IR(4),
	datac => AC(2),
	datad => AC(0),
	combout => \shifter|auto_generated|sbit_w[17]~37_combout\);

-- Location: LCCOMB_X57_Y5_N22
\Selector27~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector27~7_combout\ = (IR(4) & (IR(3) & \state.ex_shift~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => IR(4),
	datac => IR(3),
	datad => \state.ex_shift~q\,
	combout => \Selector27~7_combout\);

-- Location: LCCOMB_X52_Y5_N14
\Selector26~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector26~2_combout\ = (AC(1) & (((\state.ex_and~q\ & \altsyncram_component|auto_generated|q_a\(1))) # (!\Selector27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_and~q\,
	datab => \altsyncram_component|auto_generated|q_a\(1),
	datac => AC(1),
	datad => \Selector27~0_combout\,
	combout => \Selector26~2_combout\);

-- Location: LCCOMB_X55_Y3_N14
\shifter|auto_generated|sbit_w[23]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[23]~29_combout\ = (IR(0) & ((IR(4) & (AC(8))) # (!IR(4) & ((AC(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(4),
	datab => AC(8),
	datac => AC(6),
	datad => IR(0),
	combout => \shifter|auto_generated|sbit_w[23]~29_combout\);

-- Location: LCCOMB_X55_Y3_N24
\shifter|auto_generated|sbit_w[23]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[23]~30_combout\ = (\shifter|auto_generated|sbit_w[23]~29_combout\) # ((!IR(0) & AC(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(0),
	datac => \shifter|auto_generated|sbit_w[23]~29_combout\,
	datad => AC(7),
	combout => \shifter|auto_generated|sbit_w[23]~30_combout\);

-- Location: LCCOMB_X59_Y3_N18
\shifter|auto_generated|sbit_w[37]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[37]~33_combout\ = (IR(1) & ((IR(4) & (\shifter|auto_generated|sbit_w[23]~30_combout\)) # (!IR(4) & ((\shifter|auto_generated|sbit_w[19]~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(1),
	datab => \shifter|auto_generated|sbit_w[23]~30_combout\,
	datac => \shifter|auto_generated|sbit_w[19]~32_combout\,
	datad => IR(4),
	combout => \shifter|auto_generated|sbit_w[37]~33_combout\);

-- Location: LCCOMB_X59_Y3_N4
\shifter|auto_generated|sbit_w[37]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[37]~36_combout\ = (\shifter|auto_generated|sbit_w[37]~33_combout\) # ((!IR(1) & \shifter|auto_generated|sbit_w[21]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(1),
	datac => \shifter|auto_generated|sbit_w[21]~35_combout\,
	datad => \shifter|auto_generated|sbit_w[37]~33_combout\,
	combout => \shifter|auto_generated|sbit_w[37]~36_combout\);

-- Location: LCCOMB_X56_Y3_N2
\shifter|auto_generated|sbit_w[17]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[17]~38_combout\ = (\shifter|auto_generated|sbit_w[17]~37_combout\) # ((!IR(0) & AC(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(0),
	datab => AC(1),
	datad => \shifter|auto_generated|sbit_w[17]~37_combout\,
	combout => \shifter|auto_generated|sbit_w[17]~38_combout\);

-- Location: LCCOMB_X59_Y3_N2
\shifter|auto_generated|sbit_w[49]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[49]~39_combout\ = (IR(1) & (IR(4) & (\shifter|auto_generated|sbit_w[19]~32_combout\))) # (!IR(1) & (((\shifter|auto_generated|sbit_w[17]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(1),
	datab => IR(4),
	datac => \shifter|auto_generated|sbit_w[19]~32_combout\,
	datad => \shifter|auto_generated|sbit_w[17]~38_combout\,
	combout => \shifter|auto_generated|sbit_w[49]~39_combout\);

-- Location: LCCOMB_X59_Y3_N0
\shifter|auto_generated|sbit_w[49]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[49]~40_combout\ = (IR(2) & (IR(4) & (\shifter|auto_generated|sbit_w[37]~36_combout\))) # (!IR(2) & (((\shifter|auto_generated|sbit_w[49]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(2),
	datab => IR(4),
	datac => \shifter|auto_generated|sbit_w[37]~36_combout\,
	datad => \shifter|auto_generated|sbit_w[49]~39_combout\,
	combout => \shifter|auto_generated|sbit_w[49]~40_combout\);

-- Location: IOIBUF_X54_Y0_N22
\IO_DATA[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(1),
	o => \IO_DATA[1]~input_o\);

-- Location: LCCOMB_X54_Y5_N12
\Selector26~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector26~3_combout\ = (\state.ex_loadi~q\ & ((IR(1)) # ((\IO_DATA[1]~input_o\ & \state.ex_in~q\)))) # (!\state.ex_loadi~q\ & (\IO_DATA[1]~input_o\ & ((\state.ex_in~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_loadi~q\,
	datab => \IO_DATA[1]~input_o\,
	datac => IR(1),
	datad => \state.ex_in~q\,
	combout => \Selector26~3_combout\);

-- Location: LCCOMB_X52_Y4_N6
\Selector26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (!\state.ex_load~q\ & !\state.ex_or~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.ex_load~q\,
	datac => \state.ex_or~q\,
	combout => \Selector26~0_combout\);

-- Location: LCCOMB_X52_Y5_N16
\Selector26~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector26~4_combout\ = (\altsyncram_component|auto_generated|q_a\(1) & (((\state.ex_xor~q\ & !AC(1))) # (!\Selector26~0_combout\))) # (!\altsyncram_component|auto_generated|q_a\(1) & (\state.ex_xor~q\ & (AC(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_xor~q\,
	datab => AC(1),
	datac => \Selector26~0_combout\,
	datad => \altsyncram_component|auto_generated|q_a\(1),
	combout => \Selector26~4_combout\);

-- Location: LCCOMB_X54_Y5_N8
\Add1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~11_combout\ = (AC(1) & ((\state.ex_sub~q\) # ((\state.ex_addi~q\) # (\state.ex_add~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_sub~q\,
	datab => AC(1),
	datac => \state.ex_addi~q\,
	datad => \state.ex_add~q\,
	combout => \Add1~11_combout\);

-- Location: LCCOMB_X54_Y5_N18
\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (!\state.ex_loadi~q\ & (!\state.ex_in~q\ & (\state.ex_addi~q\ & IR(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_loadi~q\,
	datab => \state.ex_in~q\,
	datac => \state.ex_addi~q\,
	datad => IR(1),
	combout => \Add1~8_combout\);

-- Location: LCCOMB_X54_Y5_N0
\Add1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~9_combout\ = (\state.ex_sub~q\ & ((!\altsyncram_component|auto_generated|q_a\(1)))) # (!\state.ex_sub~q\ & (\state.ex_add~q\ & \altsyncram_component|auto_generated|q_a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.ex_add~q\,
	datac => \state.ex_sub~q\,
	datad => \altsyncram_component|auto_generated|q_a\(1),
	combout => \Add1~9_combout\);

-- Location: LCCOMB_X54_Y5_N6
\Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\Add1~8_combout\) # ((\WideOr3~2_combout\ & (\WideOr3~1_combout\ & \Add1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr3~2_combout\,
	datab => \Add1~8_combout\,
	datac => \WideOr3~1_combout\,
	datad => \Add1~9_combout\,
	combout => \Add1~10_combout\);

-- Location: LCCOMB_X52_Y5_N4
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (!\state.ex_loadi~q\ & (\state.ex_addi~q\ & (!\state.ex_in~q\ & IR(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_loadi~q\,
	datab => \state.ex_addi~q\,
	datac => \state.ex_in~q\,
	datad => IR(0),
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X54_Y5_N14
\Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = (\state.ex_sub~q\ & ((!\altsyncram_component|auto_generated|q_a\(0)))) # (!\state.ex_sub~q\ & (\state.ex_add~q\ & \altsyncram_component|auto_generated|q_a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.ex_add~q\,
	datac => \state.ex_sub~q\,
	datad => \altsyncram_component|auto_generated|q_a\(0),
	combout => \Add1~1_combout\);

-- Location: LCCOMB_X55_Y5_N6
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\Add1~0_combout\) # ((\WideOr3~2_combout\ & (\WideOr3~1_combout\ & \Add1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \WideOr3~2_combout\,
	datac => \WideOr3~1_combout\,
	datad => \Add1~1_combout\,
	combout => \Add1~2_combout\);

-- Location: LCCOMB_X54_Y5_N24
\Add1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~3_combout\ = (AC(0) & ((\state.ex_addi~q\) # ((\state.ex_sub~q\) # (\state.ex_add~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AC(0),
	datab => \state.ex_addi~q\,
	datac => \state.ex_sub~q\,
	datad => \state.ex_add~q\,
	combout => \Add1~3_combout\);

-- Location: LCCOMB_X55_Y5_N16
\Add1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~5_cout\ = CARRY(\state.ex_sub~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.ex_sub~q\,
	datad => VCC,
	cout => \Add1~5_cout\);

-- Location: LCCOMB_X55_Y5_N18
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\Add1~2_combout\ & ((\Add1~3_combout\ & (\Add1~5_cout\ & VCC)) # (!\Add1~3_combout\ & (!\Add1~5_cout\)))) # (!\Add1~2_combout\ & ((\Add1~3_combout\ & (!\Add1~5_cout\)) # (!\Add1~3_combout\ & ((\Add1~5_cout\) # (GND)))))
-- \Add1~7\ = CARRY((\Add1~2_combout\ & (!\Add1~3_combout\ & !\Add1~5_cout\)) # (!\Add1~2_combout\ & ((!\Add1~5_cout\) # (!\Add1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \Add1~3_combout\,
	datad => VCC,
	cin => \Add1~5_cout\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X55_Y5_N20
\Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\Add1~11_combout\ $ (\Add1~10_combout\ $ (!\Add1~7\)))) # (GND)
-- \Add1~13\ = CARRY((\Add1~11_combout\ & ((\Add1~10_combout\) # (!\Add1~7\))) # (!\Add1~11_combout\ & (\Add1~10_combout\ & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~11_combout\,
	datab => \Add1~10_combout\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X55_Y5_N8
\Selector26~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector26~5_combout\ = (\Selector26~3_combout\) # ((\Selector26~4_combout\) # ((\AC[13]~0_combout\ & \Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector26~3_combout\,
	datab => \AC[13]~0_combout\,
	datac => \Selector26~4_combout\,
	datad => \Add1~12_combout\,
	combout => \Selector26~5_combout\);

-- Location: LCCOMB_X56_Y5_N0
\Selector26~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector26~6_combout\ = (\Selector26~2_combout\) # ((\Selector26~5_combout\) # ((\Selector26~1_combout\ & \shifter|auto_generated|sbit_w[49]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector26~1_combout\,
	datab => \Selector26~2_combout\,
	datac => \shifter|auto_generated|sbit_w[49]~40_combout\,
	datad => \Selector26~5_combout\,
	combout => \Selector26~6_combout\);

-- Location: LCCOMB_X56_Y5_N4
\Selector26~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector26~7_combout\ = (\Selector26~6_combout\) # ((\Selector27~7_combout\ & \shifter|auto_generated|sbit_w[57]~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector27~7_combout\,
	datac => \shifter|auto_generated|sbit_w[57]~53_combout\,
	datad => \Selector26~6_combout\,
	combout => \Selector26~7_combout\);

-- Location: FF_X56_Y5_N5
\AC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector26~7_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(1));

-- Location: LCCOMB_X56_Y3_N12
\shifter|auto_generated|sbit_w[53]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[53]~78_combout\ = (!IR(1) & ((\shifter|auto_generated|sbit_w[17]~37_combout\) # ((!IR(0) & AC(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(1),
	datab => \shifter|auto_generated|sbit_w[17]~37_combout\,
	datac => IR(0),
	datad => AC(1),
	combout => \shifter|auto_generated|sbit_w[53]~78_combout\);

-- Location: LCCOMB_X56_Y5_N22
\shifter|auto_generated|sbit_w[53]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[53]~79_combout\ = (IR(2) & ((IR(4) & ((\shifter|auto_generated|sbit_w[41]~52_combout\))) # (!IR(4) & (\shifter|auto_generated|sbit_w[53]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(4),
	datab => \shifter|auto_generated|sbit_w[53]~78_combout\,
	datac => \shifter|auto_generated|sbit_w[41]~52_combout\,
	datad => IR(2),
	combout => \shifter|auto_generated|sbit_w[53]~79_combout\);

-- Location: LCCOMB_X56_Y5_N16
\shifter|auto_generated|sbit_w[53]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[53]~80_combout\ = (\shifter|auto_generated|sbit_w[53]~79_combout\) # ((!IR(2) & \shifter|auto_generated|sbit_w[37]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => IR(2),
	datac => \shifter|auto_generated|sbit_w[53]~79_combout\,
	datad => \shifter|auto_generated|sbit_w[37]~36_combout\,
	combout => \shifter|auto_generated|sbit_w[53]~80_combout\);

-- Location: LCCOMB_X56_Y5_N10
\Selector22~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector22~2_combout\ = (AC(5) & (((\state.ex_and~q\ & \altsyncram_component|auto_generated|q_a\(5))) # (!\Selector27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_and~q\,
	datab => \altsyncram_component|auto_generated|q_a\(5),
	datac => \Selector27~0_combout\,
	datad => AC(5),
	combout => \Selector22~2_combout\);

-- Location: LCCOMB_X59_Y3_N20
\shifter|auto_generated|sbit_w[30]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[30]~57_combout\ = (AC(14) & !IR(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => AC(14),
	datad => IR(0),
	combout => \shifter|auto_generated|sbit_w[30]~57_combout\);

-- Location: LCCOMB_X59_Y3_N26
\shifter|auto_generated|sbit_w[45]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[45]~41_combout\ = (AC(15) & (IR(1) & IR(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => AC(15),
	datac => IR(1),
	datad => IR(4),
	combout => \shifter|auto_generated|sbit_w[45]~41_combout\);

-- Location: LCCOMB_X56_Y4_N18
\Selector18~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector18~5_combout\ = (IR(3) & (!IR(4) & \state.ex_shift~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(3),
	datac => IR(4),
	datad => \state.ex_shift~q\,
	combout => \Selector18~5_combout\);

-- Location: LCCOMB_X56_Y5_N18
\Selector14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector14~2_combout\ = (\Selector18~5_combout\ & ((\shifter|auto_generated|sbit_w[53]~80_combout\) # ((\shifter|auto_generated|sbit_w[61]~77_combout\ & \Selector26~1_combout\)))) # (!\Selector18~5_combout\ & 
-- (\shifter|auto_generated|sbit_w[61]~77_combout\ & (\Selector26~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector18~5_combout\,
	datab => \shifter|auto_generated|sbit_w[61]~77_combout\,
	datac => \Selector26~1_combout\,
	datad => \shifter|auto_generated|sbit_w[53]~80_combout\,
	combout => \Selector14~2_combout\);

-- Location: LCCOMB_X57_Y4_N20
\Selector20~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector20~4_combout\ = (\state.ex_shift~q\ & (IR(3) & (AC(15) & IR(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_shift~q\,
	datab => IR(3),
	datac => AC(15),
	datad => IR(4),
	combout => \Selector20~4_combout\);

-- Location: LCCOMB_X57_Y4_N26
\Selector15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector15~3_combout\ = (!\Selector20~4_combout\ & ((!IR(10)) # (!\state.ex_loadi~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.ex_loadi~q\,
	datac => IR(10),
	datad => \Selector20~4_combout\,
	combout => \Selector15~3_combout\);

-- Location: IOIBUF_X56_Y0_N22
\IO_DATA[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(13),
	o => \IO_DATA[13]~input_o\);

-- Location: LCCOMB_X52_Y4_N4
\Selector14~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector14~7_combout\ = (\altsyncram_component|auto_generated|q_a\(13) & ((\state.ex_or~q\) # ((\state.ex_load~q\) # (\state.ex_xor~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_or~q\,
	datab => \state.ex_load~q\,
	datac => \state.ex_xor~q\,
	datad => \altsyncram_component|auto_generated|q_a\(13),
	combout => \Selector14~7_combout\);

-- Location: LCCOMB_X52_Y4_N16
\Selector14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector14~3_combout\ = (\altsyncram_component|auto_generated|q_a\(13) & (((\state.ex_and~q\)) # (!\Selector26~0_combout\))) # (!\altsyncram_component|auto_generated|q_a\(13) & (((\state.ex_xor~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector26~0_combout\,
	datab => \state.ex_and~q\,
	datac => \state.ex_xor~q\,
	datad => \altsyncram_component|auto_generated|q_a\(13),
	combout => \Selector14~3_combout\);

-- Location: LCCOMB_X52_Y4_N30
\Selector14~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector14~4_combout\ = (AC(13) & (((\Selector14~3_combout\)) # (!\Selector27~0_combout\))) # (!AC(13) & (((\Selector14~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AC(13),
	datab => \Selector27~0_combout\,
	datac => \Selector14~7_combout\,
	datad => \Selector14~3_combout\,
	combout => \Selector14~4_combout\);

-- Location: LCCOMB_X56_Y4_N14
\Selector14~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector14~5_combout\ = ((\Selector14~4_combout\) # ((\IO_DATA[13]~input_o\ & \state.ex_in~q\))) # (!\Selector15~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector15~3_combout\,
	datab => \IO_DATA[13]~input_o\,
	datac => \state.ex_in~q\,
	datad => \Selector14~4_combout\,
	combout => \Selector14~5_combout\);

-- Location: LCCOMB_X52_Y4_N2
\Add1~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~79_combout\ = (AC(13) & ((\state.ex_addi~q\) # ((\state.ex_sub~q\) # (\state.ex_add~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_addi~q\,
	datab => \state.ex_sub~q\,
	datac => AC(13),
	datad => \state.ex_add~q\,
	combout => \Add1~79_combout\);

-- Location: LCCOMB_X54_Y7_N4
\Add1~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~57_combout\ = (!\state.ex_in~q\ & (!\state.ex_loadi~q\ & \state.ex_addi~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_in~q\,
	datab => \state.ex_loadi~q\,
	datad => \state.ex_addi~q\,
	combout => \Add1~57_combout\);

-- Location: LCCOMB_X54_Y7_N22
\WideOr3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr3~3_combout\ = (!\state.ex_or~q\ & (!\state.ex_xor~q\ & (\WideOr3~1_combout\ & !\state.ex_shift~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_or~q\,
	datab => \state.ex_xor~q\,
	datac => \WideOr3~1_combout\,
	datad => \state.ex_shift~q\,
	combout => \WideOr3~3_combout\);

-- Location: LCCOMB_X54_Y7_N0
\Add1~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~77_combout\ = (\state.ex_sub~q\ & (!\altsyncram_component|auto_generated|q_a\(13))) # (!\state.ex_sub~q\ & (\altsyncram_component|auto_generated|q_a\(13) & \state.ex_add~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_sub~q\,
	datac => \altsyncram_component|auto_generated|q_a\(13),
	datad => \state.ex_add~q\,
	combout => \Add1~77_combout\);

-- Location: LCCOMB_X54_Y7_N12
\Add1~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~78_combout\ = (IR(10) & ((\Add1~57_combout\) # ((\WideOr3~3_combout\ & \Add1~77_combout\)))) # (!IR(10) & (((\WideOr3~3_combout\ & \Add1~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(10),
	datab => \Add1~57_combout\,
	datac => \WideOr3~3_combout\,
	datad => \Add1~77_combout\,
	combout => \Add1~78_combout\);

-- Location: LCCOMB_X54_Y4_N14
\Add1~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~74_combout\ = (AC(12) & ((\state.ex_sub~q\) # ((\state.ex_addi~q\) # (\state.ex_add~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_sub~q\,
	datab => \state.ex_addi~q\,
	datac => \state.ex_add~q\,
	datad => AC(12),
	combout => \Add1~74_combout\);

-- Location: LCCOMB_X54_Y7_N28
\Add1~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~72_combout\ = (\state.ex_sub~q\ & ((!\altsyncram_component|auto_generated|q_a\(12)))) # (!\state.ex_sub~q\ & (\state.ex_add~q\ & \altsyncram_component|auto_generated|q_a\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_sub~q\,
	datab => \state.ex_add~q\,
	datad => \altsyncram_component|auto_generated|q_a\(12),
	combout => \Add1~72_combout\);

-- Location: LCCOMB_X54_Y7_N30
\Add1~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~73_combout\ = (IR(10) & ((\Add1~57_combout\) # ((\WideOr3~3_combout\ & \Add1~72_combout\)))) # (!IR(10) & (((\WideOr3~3_combout\ & \Add1~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(10),
	datab => \Add1~57_combout\,
	datac => \WideOr3~3_combout\,
	datad => \Add1~72_combout\,
	combout => \Add1~73_combout\);

-- Location: LCCOMB_X56_Y6_N12
\Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (AC(11) & (((\state.ex_and~q\ & \altsyncram_component|auto_generated|q_a\(11))) # (!\Selector27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector27~0_combout\,
	datab => \state.ex_and~q\,
	datac => \altsyncram_component|auto_generated|q_a\(11),
	datad => AC(11),
	combout => \Selector16~0_combout\);

-- Location: LCCOMB_X56_Y6_N10
\Selector16~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector16~4_combout\ = (\altsyncram_component|auto_generated|q_a\(11) & (((\state.ex_xor~q\ & !AC(11))) # (!\Selector26~0_combout\))) # (!\altsyncram_component|auto_generated|q_a\(11) & (\state.ex_xor~q\ & (AC(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_xor~q\,
	datab => AC(11),
	datac => \Selector26~0_combout\,
	datad => \altsyncram_component|auto_generated|q_a\(11),
	combout => \Selector16~4_combout\);

-- Location: LCCOMB_X55_Y3_N10
\shifter|auto_generated|sbit_w[39]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[39]~65_combout\ = (IR(1) & ((IR(4) & (\shifter|auto_generated|sbit_w[25]~51_combout\)) # (!IR(4) & ((\shifter|auto_generated|sbit_w[21]~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|auto_generated|sbit_w[25]~51_combout\,
	datab => IR(1),
	datac => IR(4),
	datad => \shifter|auto_generated|sbit_w[21]~35_combout\,
	combout => \shifter|auto_generated|sbit_w[39]~65_combout\);

-- Location: LCCOMB_X55_Y3_N16
\shifter|auto_generated|sbit_w[39]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[39]~66_combout\ = (\shifter|auto_generated|sbit_w[39]~65_combout\) # ((!IR(1) & \shifter|auto_generated|sbit_w[23]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|auto_generated|sbit_w[39]~65_combout\,
	datab => IR(1),
	datad => \shifter|auto_generated|sbit_w[23]~30_combout\,
	combout => \shifter|auto_generated|sbit_w[39]~66_combout\);

-- Location: LCCOMB_X56_Y6_N0
\shifter|auto_generated|sbit_w[59]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[59]~67_combout\ = (IR(2) & ((IR(4) & ((AC(15)))) # (!IR(4) & (\shifter|auto_generated|sbit_w[39]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(2),
	datab => \shifter|auto_generated|sbit_w[39]~66_combout\,
	datac => IR(4),
	datad => AC(15),
	combout => \shifter|auto_generated|sbit_w[59]~67_combout\);

-- Location: LCCOMB_X58_Y3_N16
\shifter|auto_generated|sbit_w[29]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[29]~68_combout\ = (\shifter|auto_generated|sbit_w[29]~43_combout\) # ((!IR(0) & AC(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(0),
	datab => AC(13),
	datad => \shifter|auto_generated|sbit_w[29]~43_combout\,
	combout => \shifter|auto_generated|sbit_w[29]~68_combout\);

-- Location: LCCOMB_X58_Y3_N14
\shifter|auto_generated|sbit_w[43]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[43]~69_combout\ = (IR(1) & ((IR(4) & ((\shifter|auto_generated|sbit_w[29]~68_combout\))) # (!IR(4) & (\shifter|auto_generated|sbit_w[25]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(4),
	datab => IR(1),
	datac => \shifter|auto_generated|sbit_w[25]~51_combout\,
	datad => \shifter|auto_generated|sbit_w[29]~68_combout\,
	combout => \shifter|auto_generated|sbit_w[43]~69_combout\);

-- Location: LCCOMB_X58_Y3_N6
\shifter|auto_generated|sbit_w[27]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[27]~45_combout\ = (IR(0) & ((IR(4) & (AC(12))) # (!IR(4) & ((AC(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(0),
	datab => AC(12),
	datac => IR(4),
	datad => AC(10),
	combout => \shifter|auto_generated|sbit_w[27]~45_combout\);

-- Location: LCCOMB_X58_Y3_N24
\shifter|auto_generated|sbit_w[27]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[27]~46_combout\ = (\shifter|auto_generated|sbit_w[27]~45_combout\) # ((!IR(0) & AC(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(0),
	datac => AC(11),
	datad => \shifter|auto_generated|sbit_w[27]~45_combout\,
	combout => \shifter|auto_generated|sbit_w[27]~46_combout\);

-- Location: LCCOMB_X57_Y3_N22
\shifter|auto_generated|sbit_w[43]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[43]~70_combout\ = (\shifter|auto_generated|sbit_w[43]~69_combout\) # ((!IR(1) & \shifter|auto_generated|sbit_w[27]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(1),
	datac => \shifter|auto_generated|sbit_w[43]~69_combout\,
	datad => \shifter|auto_generated|sbit_w[27]~46_combout\,
	combout => \shifter|auto_generated|sbit_w[43]~70_combout\);

-- Location: LCCOMB_X56_Y6_N28
\Selector16~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector16~3_combout\ = (\Selector26~1_combout\ & ((\shifter|auto_generated|sbit_w[59]~67_combout\) # ((!IR(2) & \shifter|auto_generated|sbit_w[43]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(2),
	datab => \shifter|auto_generated|sbit_w[59]~67_combout\,
	datac => \Selector26~1_combout\,
	datad => \shifter|auto_generated|sbit_w[43]~70_combout\,
	combout => \Selector16~3_combout\);

-- Location: IOIBUF_X78_Y17_N22
\IO_DATA[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(11),
	o => \IO_DATA[11]~input_o\);

-- Location: LCCOMB_X55_Y6_N0
\Selector16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector16~1_combout\ = (IR(10) & ((\state.ex_loadi~q\) # ((\IO_DATA[11]~input_o\ & \state.ex_in~q\)))) # (!IR(10) & (((\IO_DATA[11]~input_o\ & \state.ex_in~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(10),
	datab => \state.ex_loadi~q\,
	datac => \IO_DATA[11]~input_o\,
	datad => \state.ex_in~q\,
	combout => \Selector16~1_combout\);

-- Location: LCCOMB_X56_Y6_N6
\Selector16~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector16~2_combout\ = (\Selector27~9_combout\ & ((IR(4) & (AC(15))) # (!IR(4) & ((\Selector24~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AC(15),
	datab => \Selector27~9_combout\,
	datac => IR(4),
	datad => \Selector24~6_combout\,
	combout => \Selector16~2_combout\);

-- Location: LCCOMB_X56_Y6_N8
\Selector16~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector16~5_combout\ = (\Selector16~4_combout\) # ((\Selector16~3_combout\) # ((\Selector16~1_combout\) # (\Selector16~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector16~4_combout\,
	datab => \Selector16~3_combout\,
	datac => \Selector16~1_combout\,
	datad => \Selector16~2_combout\,
	combout => \Selector16~5_combout\);

-- Location: LCCOMB_X54_Y7_N24
\Add1~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~67_combout\ = (\state.ex_sub~q\ & ((!\altsyncram_component|auto_generated|q_a\(11)))) # (!\state.ex_sub~q\ & (\state.ex_add~q\ & \altsyncram_component|auto_generated|q_a\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.ex_add~q\,
	datac => \state.ex_sub~q\,
	datad => \altsyncram_component|auto_generated|q_a\(11),
	combout => \Add1~67_combout\);

-- Location: LCCOMB_X54_Y7_N26
\Add1~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~68_combout\ = (\WideOr3~3_combout\ & ((\Add1~67_combout\) # ((\Add1~57_combout\ & IR(10))))) # (!\WideOr3~3_combout\ & (\Add1~57_combout\ & (IR(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr3~3_combout\,
	datab => \Add1~57_combout\,
	datac => IR(10),
	datad => \Add1~67_combout\,
	combout => \Add1~68_combout\);

-- Location: LCCOMB_X54_Y7_N20
\Add1~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = (\state.ex_sub~q\ & ((!\altsyncram_component|auto_generated|q_a\(10)))) # (!\state.ex_sub~q\ & (\state.ex_add~q\ & \altsyncram_component|auto_generated|q_a\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.ex_add~q\,
	datac => \state.ex_sub~q\,
	datad => \altsyncram_component|auto_generated|q_a\(10),
	combout => \Add1~62_combout\);

-- Location: LCCOMB_X54_Y7_N14
\Add1~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~63_combout\ = (IR(10) & ((\Add1~57_combout\) # ((\WideOr3~3_combout\ & \Add1~62_combout\)))) # (!IR(10) & (((\WideOr3~3_combout\ & \Add1~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(10),
	datab => \Add1~57_combout\,
	datac => \WideOr3~3_combout\,
	datad => \Add1~62_combout\,
	combout => \Add1~63_combout\);

-- Location: LCCOMB_X54_Y4_N18
\Add1~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~64_combout\ = (AC(10) & ((\state.ex_sub~q\) # ((\state.ex_addi~q\) # (\state.ex_add~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_sub~q\,
	datab => \state.ex_addi~q\,
	datac => \state.ex_add~q\,
	datad => AC(10),
	combout => \Add1~64_combout\);

-- Location: LCCOMB_X54_Y7_N16
\Add1~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = (\state.ex_sub~q\ & ((!\altsyncram_component|auto_generated|q_a\(9)))) # (!\state.ex_sub~q\ & (\state.ex_add~q\ & \altsyncram_component|auto_generated|q_a\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.ex_add~q\,
	datac => \state.ex_sub~q\,
	datad => \altsyncram_component|auto_generated|q_a\(9),
	combout => \Add1~56_combout\);

-- Location: LCCOMB_X54_Y7_N2
\Add1~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (\WideOr3~3_combout\ & ((\Add1~56_combout\) # ((\Add1~57_combout\ & IR(9))))) # (!\WideOr3~3_combout\ & (\Add1~57_combout\ & (IR(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr3~3_combout\,
	datab => \Add1~57_combout\,
	datac => IR(9),
	datad => \Add1~56_combout\,
	combout => \Add1~58_combout\);

-- Location: LCCOMB_X52_Y4_N24
\Add1~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~59_combout\ = (AC(9) & ((\state.ex_addi~q\) # ((\state.ex_sub~q\) # (\state.ex_add~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_addi~q\,
	datab => \state.ex_sub~q\,
	datac => AC(9),
	datad => \state.ex_add~q\,
	combout => \Add1~59_combout\);

-- Location: LCCOMB_X54_Y4_N22
\Add1~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~53_combout\ = (AC(8) & ((\state.ex_sub~q\) # ((\state.ex_add~q\) # (\state.ex_addi~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_sub~q\,
	datab => AC(8),
	datac => \state.ex_add~q\,
	datad => \state.ex_addi~q\,
	combout => \Add1~53_combout\);

-- Location: LCCOMB_X54_Y4_N6
\Add1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (IR(8) & (\state.ex_addi~q\ & (!\state.ex_in~q\ & !\state.ex_loadi~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(8),
	datab => \state.ex_addi~q\,
	datac => \state.ex_in~q\,
	datad => \state.ex_loadi~q\,
	combout => \Add1~50_combout\);

-- Location: LCCOMB_X54_Y4_N24
\Add1~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~51_combout\ = (\state.ex_sub~q\ & ((!\altsyncram_component|auto_generated|q_a\(8)))) # (!\state.ex_sub~q\ & (\state.ex_add~q\ & \altsyncram_component|auto_generated|q_a\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_add~q\,
	datac => \state.ex_sub~q\,
	datad => \altsyncram_component|auto_generated|q_a\(8),
	combout => \Add1~51_combout\);

-- Location: LCCOMB_X55_Y4_N24
\Add1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = (\Add1~50_combout\) # ((\WideOr3~1_combout\ & (\WideOr3~2_combout\ & \Add1~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr3~1_combout\,
	datab => \WideOr3~2_combout\,
	datac => \Add1~50_combout\,
	datad => \Add1~51_combout\,
	combout => \Add1~52_combout\);

-- Location: LCCOMB_X54_Y4_N16
\Add1~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~47_combout\ = (AC(7) & ((\state.ex_sub~q\) # ((\state.ex_add~q\) # (\state.ex_addi~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_sub~q\,
	datab => AC(7),
	datac => \state.ex_add~q\,
	datad => \state.ex_addi~q\,
	combout => \Add1~47_combout\);

-- Location: FF_X51_Y4_N25
\IR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \altsyncram_component|auto_generated|q_a\(7),
	sload => VCC,
	ena => \IR[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(7));

-- Location: LCCOMB_X51_Y4_N24
\Add1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (\state.ex_addi~q\ & (!\state.ex_in~q\ & (IR(7) & !\state.ex_loadi~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_addi~q\,
	datab => \state.ex_in~q\,
	datac => IR(7),
	datad => \state.ex_loadi~q\,
	combout => \Add1~44_combout\);

-- Location: LCCOMB_X54_Y4_N12
\Add1~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~45_combout\ = (\state.ex_sub~q\ & ((!\altsyncram_component|auto_generated|q_a\(7)))) # (!\state.ex_sub~q\ & (\state.ex_add~q\ & \altsyncram_component|auto_generated|q_a\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_sub~q\,
	datab => \state.ex_add~q\,
	datad => \altsyncram_component|auto_generated|q_a\(7),
	combout => \Add1~45_combout\);

-- Location: LCCOMB_X55_Y4_N18
\Add1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (\Add1~44_combout\) # ((\WideOr3~2_combout\ & (\WideOr3~1_combout\ & \Add1~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~44_combout\,
	datab => \WideOr3~2_combout\,
	datac => \WideOr3~1_combout\,
	datad => \Add1~45_combout\,
	combout => \Add1~46_combout\);

-- Location: FF_X54_Y4_N31
\IR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \altsyncram_component|auto_generated|q_a\(6),
	sload => VCC,
	ena => \IR[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(6));

-- Location: LCCOMB_X54_Y4_N30
\Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (!\state.ex_in~q\ & (\state.ex_addi~q\ & (IR(6) & !\state.ex_loadi~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_in~q\,
	datab => \state.ex_addi~q\,
	datac => IR(6),
	datad => \state.ex_loadi~q\,
	combout => \Add1~38_combout\);

-- Location: LCCOMB_X54_Y4_N20
\Add1~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~39_combout\ = (\state.ex_sub~q\ & ((!\altsyncram_component|auto_generated|q_a\(6)))) # (!\state.ex_sub~q\ & (\state.ex_add~q\ & \altsyncram_component|auto_generated|q_a\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_sub~q\,
	datac => \state.ex_add~q\,
	datad => \altsyncram_component|auto_generated|q_a\(6),
	combout => \Add1~39_combout\);

-- Location: LCCOMB_X54_Y4_N2
\Add1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (\Add1~38_combout\) # ((\WideOr3~2_combout\ & (\WideOr3~1_combout\ & \Add1~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~38_combout\,
	datab => \WideOr3~2_combout\,
	datac => \WideOr3~1_combout\,
	datad => \Add1~39_combout\,
	combout => \Add1~40_combout\);

-- Location: LCCOMB_X52_Y5_N12
\Add1~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~41_combout\ = (AC(6) & ((\state.ex_addi~q\) # ((\state.ex_add~q\) # (\state.ex_sub~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AC(6),
	datab => \state.ex_addi~q\,
	datac => \state.ex_add~q\,
	datad => \state.ex_sub~q\,
	combout => \Add1~41_combout\);

-- Location: LCCOMB_X52_Y5_N24
\Add1~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~35_combout\ = (AC(5) & ((\state.ex_add~q\) # ((\state.ex_addi~q\) # (\state.ex_sub~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_add~q\,
	datab => AC(5),
	datac => \state.ex_addi~q\,
	datad => \state.ex_sub~q\,
	combout => \Add1~35_combout\);

-- Location: FF_X54_Y4_N9
\IR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \altsyncram_component|auto_generated|q_a\(5),
	sload => VCC,
	ena => \IR[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(5));

-- Location: LCCOMB_X54_Y4_N8
\Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (!\state.ex_in~q\ & (\state.ex_addi~q\ & (IR(5) & !\state.ex_loadi~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_in~q\,
	datab => \state.ex_addi~q\,
	datac => IR(5),
	datad => \state.ex_loadi~q\,
	combout => \Add1~32_combout\);

-- Location: LCCOMB_X54_Y4_N28
\Add1~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~33_combout\ = (\state.ex_sub~q\ & ((!\altsyncram_component|auto_generated|q_a\(5)))) # (!\state.ex_sub~q\ & (\state.ex_add~q\ & \altsyncram_component|auto_generated|q_a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_sub~q\,
	datac => \state.ex_add~q\,
	datad => \altsyncram_component|auto_generated|q_a\(5),
	combout => \Add1~33_combout\);

-- Location: LCCOMB_X54_Y4_N10
\Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (\Add1~32_combout\) # ((\WideOr3~1_combout\ & (\WideOr3~2_combout\ & \Add1~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr3~1_combout\,
	datab => \Add1~32_combout\,
	datac => \WideOr3~2_combout\,
	datad => \Add1~33_combout\,
	combout => \Add1~34_combout\);

-- Location: LCCOMB_X52_Y5_N8
\Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (!\state.ex_loadi~q\ & (\state.ex_addi~q\ & (!\state.ex_in~q\ & IR(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_loadi~q\,
	datab => \state.ex_addi~q\,
	datac => \state.ex_in~q\,
	datad => IR(4),
	combout => \Add1~26_combout\);

-- Location: LCCOMB_X54_Y5_N2
\Add1~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~27_combout\ = (\state.ex_sub~q\ & ((!\altsyncram_component|auto_generated|q_a\(4)))) # (!\state.ex_sub~q\ & (\state.ex_add~q\ & \altsyncram_component|auto_generated|q_a\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.ex_add~q\,
	datac => \state.ex_sub~q\,
	datad => \altsyncram_component|auto_generated|q_a\(4),
	combout => \Add1~27_combout\);

-- Location: LCCOMB_X54_Y5_N16
\Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (\Add1~26_combout\) # ((\WideOr3~2_combout\ & (\WideOr3~1_combout\ & \Add1~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr3~2_combout\,
	datab => \Add1~26_combout\,
	datac => \WideOr3~1_combout\,
	datad => \Add1~27_combout\,
	combout => \Add1~28_combout\);

-- Location: LCCOMB_X52_Y5_N2
\Add1~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~29_combout\ = (AC(4) & ((\state.ex_addi~q\) # ((\state.ex_add~q\) # (\state.ex_sub~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AC(4),
	datab => \state.ex_addi~q\,
	datac => \state.ex_add~q\,
	datad => \state.ex_sub~q\,
	combout => \Add1~29_combout\);

-- Location: LCCOMB_X54_Y5_N20
\Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (!\state.ex_loadi~q\ & (\state.ex_addi~q\ & (IR(3) & !\state.ex_in~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_loadi~q\,
	datab => \state.ex_addi~q\,
	datac => IR(3),
	datad => \state.ex_in~q\,
	combout => \Add1~20_combout\);

-- Location: LCCOMB_X54_Y5_N22
\Add1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~21_combout\ = (\state.ex_sub~q\ & ((!\altsyncram_component|auto_generated|q_a\(3)))) # (!\state.ex_sub~q\ & (\state.ex_add~q\ & \altsyncram_component|auto_generated|q_a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.ex_add~q\,
	datac => \state.ex_sub~q\,
	datad => \altsyncram_component|auto_generated|q_a\(3),
	combout => \Add1~21_combout\);

-- Location: LCCOMB_X55_Y5_N12
\Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (\Add1~20_combout\) # ((\WideOr3~2_combout\ & (\WideOr3~1_combout\ & \Add1~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~20_combout\,
	datab => \WideOr3~2_combout\,
	datac => \WideOr3~1_combout\,
	datad => \Add1~21_combout\,
	combout => \Add1~22_combout\);

-- Location: LCCOMB_X54_Y5_N28
\Add1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~23_combout\ = (AC(3) & ((\state.ex_sub~q\) # ((\state.ex_add~q\) # (\state.ex_addi~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_sub~q\,
	datab => \state.ex_add~q\,
	datac => \state.ex_addi~q\,
	datad => AC(3),
	combout => \Add1~23_combout\);

-- Location: LCCOMB_X54_Y5_N10
\Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (!\state.ex_loadi~q\ & (\state.ex_addi~q\ & (IR(2) & !\state.ex_in~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_loadi~q\,
	datab => \state.ex_addi~q\,
	datac => IR(2),
	datad => \state.ex_in~q\,
	combout => \Add1~14_combout\);

-- Location: LCCOMB_X54_Y5_N30
\Add1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~15_combout\ = (\state.ex_sub~q\ & ((!\altsyncram_component|auto_generated|q_a\(2)))) # (!\state.ex_sub~q\ & (\state.ex_add~q\ & \altsyncram_component|auto_generated|q_a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.ex_add~q\,
	datac => \state.ex_sub~q\,
	datad => \altsyncram_component|auto_generated|q_a\(2),
	combout => \Add1~15_combout\);

-- Location: LCCOMB_X55_Y5_N10
\Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (\Add1~14_combout\) # ((\WideOr3~2_combout\ & (\WideOr3~1_combout\ & \Add1~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datab => \WideOr3~2_combout\,
	datac => \WideOr3~1_combout\,
	datad => \Add1~15_combout\,
	combout => \Add1~16_combout\);

-- Location: LCCOMB_X54_Y5_N4
\Add1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~17_combout\ = (AC(2) & ((\state.ex_addi~q\) # ((\state.ex_sub~q\) # (\state.ex_add~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AC(2),
	datab => \state.ex_addi~q\,
	datac => \state.ex_sub~q\,
	datad => \state.ex_add~q\,
	combout => \Add1~17_combout\);

-- Location: LCCOMB_X55_Y5_N22
\Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\Add1~16_combout\ & ((\Add1~17_combout\ & (\Add1~13\ & VCC)) # (!\Add1~17_combout\ & (!\Add1~13\)))) # (!\Add1~16_combout\ & ((\Add1~17_combout\ & (!\Add1~13\)) # (!\Add1~17_combout\ & ((\Add1~13\) # (GND)))))
-- \Add1~19\ = CARRY((\Add1~16_combout\ & (!\Add1~17_combout\ & !\Add1~13\)) # (!\Add1~16_combout\ & ((!\Add1~13\) # (!\Add1~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datab => \Add1~17_combout\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X55_Y5_N24
\Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = ((\Add1~22_combout\ $ (\Add1~23_combout\ $ (!\Add1~19\)))) # (GND)
-- \Add1~25\ = CARRY((\Add1~22_combout\ & ((\Add1~23_combout\) # (!\Add1~19\))) # (!\Add1~22_combout\ & (\Add1~23_combout\ & !\Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~22_combout\,
	datab => \Add1~23_combout\,
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X55_Y5_N26
\Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (\Add1~28_combout\ & ((\Add1~29_combout\ & (\Add1~25\ & VCC)) # (!\Add1~29_combout\ & (!\Add1~25\)))) # (!\Add1~28_combout\ & ((\Add1~29_combout\ & (!\Add1~25\)) # (!\Add1~29_combout\ & ((\Add1~25\) # (GND)))))
-- \Add1~31\ = CARRY((\Add1~28_combout\ & (!\Add1~29_combout\ & !\Add1~25\)) # (!\Add1~28_combout\ & ((!\Add1~25\) # (!\Add1~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~28_combout\,
	datab => \Add1~29_combout\,
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X55_Y5_N28
\Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = ((\Add1~35_combout\ $ (\Add1~34_combout\ $ (!\Add1~31\)))) # (GND)
-- \Add1~37\ = CARRY((\Add1~35_combout\ & ((\Add1~34_combout\) # (!\Add1~31\))) # (!\Add1~35_combout\ & (\Add1~34_combout\ & !\Add1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~35_combout\,
	datab => \Add1~34_combout\,
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X55_Y5_N30
\Add1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (\Add1~40_combout\ & ((\Add1~41_combout\ & (\Add1~37\ & VCC)) # (!\Add1~41_combout\ & (!\Add1~37\)))) # (!\Add1~40_combout\ & ((\Add1~41_combout\ & (!\Add1~37\)) # (!\Add1~41_combout\ & ((\Add1~37\) # (GND)))))
-- \Add1~43\ = CARRY((\Add1~40_combout\ & (!\Add1~41_combout\ & !\Add1~37\)) # (!\Add1~40_combout\ & ((!\Add1~37\) # (!\Add1~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~40_combout\,
	datab => \Add1~41_combout\,
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X55_Y4_N0
\Add1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = ((\Add1~47_combout\ $ (\Add1~46_combout\ $ (!\Add1~43\)))) # (GND)
-- \Add1~49\ = CARRY((\Add1~47_combout\ & ((\Add1~46_combout\) # (!\Add1~43\))) # (!\Add1~47_combout\ & (\Add1~46_combout\ & !\Add1~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~47_combout\,
	datab => \Add1~46_combout\,
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: LCCOMB_X55_Y4_N2
\Add1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (\Add1~53_combout\ & ((\Add1~52_combout\ & (\Add1~49\ & VCC)) # (!\Add1~52_combout\ & (!\Add1~49\)))) # (!\Add1~53_combout\ & ((\Add1~52_combout\ & (!\Add1~49\)) # (!\Add1~52_combout\ & ((\Add1~49\) # (GND)))))
-- \Add1~55\ = CARRY((\Add1~53_combout\ & (!\Add1~52_combout\ & !\Add1~49\)) # (!\Add1~53_combout\ & ((!\Add1~49\) # (!\Add1~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~53_combout\,
	datab => \Add1~52_combout\,
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: LCCOMB_X55_Y4_N4
\Add1~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = ((\Add1~58_combout\ $ (\Add1~59_combout\ $ (!\Add1~55\)))) # (GND)
-- \Add1~61\ = CARRY((\Add1~58_combout\ & ((\Add1~59_combout\) # (!\Add1~55\))) # (!\Add1~58_combout\ & (\Add1~59_combout\ & !\Add1~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~58_combout\,
	datab => \Add1~59_combout\,
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: LCCOMB_X55_Y4_N6
\Add1~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~65_combout\ = (\Add1~63_combout\ & ((\Add1~64_combout\ & (\Add1~61\ & VCC)) # (!\Add1~64_combout\ & (!\Add1~61\)))) # (!\Add1~63_combout\ & ((\Add1~64_combout\ & (!\Add1~61\)) # (!\Add1~64_combout\ & ((\Add1~61\) # (GND)))))
-- \Add1~66\ = CARRY((\Add1~63_combout\ & (!\Add1~64_combout\ & !\Add1~61\)) # (!\Add1~63_combout\ & ((!\Add1~61\) # (!\Add1~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~63_combout\,
	datab => \Add1~64_combout\,
	datad => VCC,
	cin => \Add1~61\,
	combout => \Add1~65_combout\,
	cout => \Add1~66\);

-- Location: LCCOMB_X55_Y4_N8
\Add1~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~70_combout\ = ((\Add1~69_combout\ $ (\Add1~68_combout\ $ (!\Add1~66\)))) # (GND)
-- \Add1~71\ = CARRY((\Add1~69_combout\ & ((\Add1~68_combout\) # (!\Add1~66\))) # (!\Add1~69_combout\ & (\Add1~68_combout\ & !\Add1~66\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~69_combout\,
	datab => \Add1~68_combout\,
	datad => VCC,
	cin => \Add1~66\,
	combout => \Add1~70_combout\,
	cout => \Add1~71\);

-- Location: LCCOMB_X56_Y6_N18
\Selector16~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector16~6_combout\ = (\Selector16~0_combout\) # ((\Selector16~5_combout\) # ((\AC[13]~0_combout\ & \Add1~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector16~0_combout\,
	datab => \AC[13]~0_combout\,
	datac => \Selector16~5_combout\,
	datad => \Add1~70_combout\,
	combout => \Selector16~6_combout\);

-- Location: FF_X56_Y6_N19
\AC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector16~6_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(11));

-- Location: LCCOMB_X54_Y4_N0
\Add1~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~69_combout\ = (AC(11) & ((\state.ex_sub~q\) # ((\state.ex_addi~q\) # (\state.ex_add~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_sub~q\,
	datab => \state.ex_addi~q\,
	datac => \state.ex_add~q\,
	datad => AC(11),
	combout => \Add1~69_combout\);

-- Location: LCCOMB_X55_Y4_N10
\Add1~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~75_combout\ = (\Add1~74_combout\ & ((\Add1~73_combout\ & (\Add1~71\ & VCC)) # (!\Add1~73_combout\ & (!\Add1~71\)))) # (!\Add1~74_combout\ & ((\Add1~73_combout\ & (!\Add1~71\)) # (!\Add1~73_combout\ & ((\Add1~71\) # (GND)))))
-- \Add1~76\ = CARRY((\Add1~74_combout\ & (!\Add1~73_combout\ & !\Add1~71\)) # (!\Add1~74_combout\ & ((!\Add1~71\) # (!\Add1~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~74_combout\,
	datab => \Add1~73_combout\,
	datad => VCC,
	cin => \Add1~71\,
	combout => \Add1~75_combout\,
	cout => \Add1~76\);

-- Location: LCCOMB_X55_Y4_N12
\Add1~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~80_combout\ = ((\Add1~79_combout\ $ (\Add1~78_combout\ $ (!\Add1~76\)))) # (GND)
-- \Add1~81\ = CARRY((\Add1~79_combout\ & ((\Add1~78_combout\) # (!\Add1~76\))) # (!\Add1~79_combout\ & (\Add1~78_combout\ & !\Add1~76\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~79_combout\,
	datab => \Add1~78_combout\,
	datad => VCC,
	cin => \Add1~76\,
	combout => \Add1~80_combout\,
	cout => \Add1~81\);

-- Location: LCCOMB_X55_Y4_N28
\Selector14~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector14~6_combout\ = (\Selector14~2_combout\) # ((\Selector14~5_combout\) # ((\AC[13]~0_combout\ & \Add1~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AC[13]~0_combout\,
	datab => \Selector14~2_combout\,
	datac => \Selector14~5_combout\,
	datad => \Add1~80_combout\,
	combout => \Selector14~6_combout\);

-- Location: FF_X55_Y4_N29
\AC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector14~6_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(13));

-- Location: LCCOMB_X58_Y3_N12
\shifter|auto_generated|sbit_w[30]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[30]~22_combout\ = (IR(0) & ((IR(4) & (AC(15))) # (!IR(4) & ((AC(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AC(15),
	datab => AC(13),
	datac => IR(4),
	datad => IR(0),
	combout => \shifter|auto_generated|sbit_w[30]~22_combout\);

-- Location: LCCOMB_X59_Y3_N10
\shifter|auto_generated|sbit_w[46]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[46]~58_combout\ = (\shifter|auto_generated|sbit_w[45]~41_combout\) # ((!IR(1) & ((\shifter|auto_generated|sbit_w[30]~57_combout\) # (\shifter|auto_generated|sbit_w[30]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(1),
	datab => \shifter|auto_generated|sbit_w[30]~57_combout\,
	datac => \shifter|auto_generated|sbit_w[45]~41_combout\,
	datad => \shifter|auto_generated|sbit_w[30]~22_combout\,
	combout => \shifter|auto_generated|sbit_w[46]~58_combout\);

-- Location: LCCOMB_X58_Y3_N10
\shifter|auto_generated|sbit_w[28]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[28]~25_combout\ = (IR(0) & ((IR(4) & (AC(13))) # (!IR(4) & ((AC(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(4),
	datab => AC(13),
	datac => AC(11),
	datad => IR(0),
	combout => \shifter|auto_generated|sbit_w[28]~25_combout\);

-- Location: LCCOMB_X58_Y3_N28
\shifter|auto_generated|sbit_w[28]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[28]~26_combout\ = (\shifter|auto_generated|sbit_w[28]~25_combout\) # ((!IR(0) & AC(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(0),
	datab => AC(12),
	datad => \shifter|auto_generated|sbit_w[28]~25_combout\,
	combout => \shifter|auto_generated|sbit_w[28]~26_combout\);

-- Location: LCCOMB_X58_Y3_N2
\shifter|auto_generated|sbit_w[46]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[46]~59_combout\ = (\shifter|auto_generated|sbit_w[46]~58_combout\) # ((!IR(4) & (IR(1) & \shifter|auto_generated|sbit_w[28]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(4),
	datab => IR(1),
	datac => \shifter|auto_generated|sbit_w[46]~58_combout\,
	datad => \shifter|auto_generated|sbit_w[28]~26_combout\,
	combout => \shifter|auto_generated|sbit_w[46]~59_combout\);

-- Location: LCCOMB_X57_Y4_N24
\shifter|auto_generated|sbit_w[62]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[62]~81_combout\ = (IR(2) & (AC(15) & (IR(4)))) # (!IR(2) & (((\shifter|auto_generated|sbit_w[46]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AC(15),
	datab => IR(4),
	datac => IR(2),
	datad => \shifter|auto_generated|sbit_w[46]~59_combout\,
	combout => \shifter|auto_generated|sbit_w[62]~81_combout\);

-- Location: LCCOMB_X56_Y4_N10
\shifter|auto_generated|sbit_w[62]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[62]~82_combout\ = (\shifter|auto_generated|sbit_w[62]~81_combout\) # ((!IR(4) & (IR(2) & \shifter|auto_generated|sbit_w[42]~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(4),
	datab => IR(2),
	datac => \shifter|auto_generated|sbit_w[42]~63_combout\,
	datad => \shifter|auto_generated|sbit_w[62]~81_combout\,
	combout => \shifter|auto_generated|sbit_w[62]~82_combout\);

-- Location: LCCOMB_X56_Y4_N12
\Selector13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector13~2_combout\ = (\shifter|auto_generated|sbit_w[62]~82_combout\ & ((\Selector26~1_combout\) # ((\shifter|auto_generated|sbit_w[54]~84_combout\ & \Selector18~5_combout\)))) # (!\shifter|auto_generated|sbit_w[62]~82_combout\ & 
-- (\shifter|auto_generated|sbit_w[54]~84_combout\ & ((\Selector18~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|auto_generated|sbit_w[62]~82_combout\,
	datab => \shifter|auto_generated|sbit_w[54]~84_combout\,
	datac => \Selector26~1_combout\,
	datad => \Selector18~5_combout\,
	combout => \Selector13~2_combout\);

-- Location: LCCOMB_X54_Y7_N6
\Add1~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~82_combout\ = (\state.ex_sub~q\ & (!\altsyncram_component|auto_generated|q_a\(14))) # (!\state.ex_sub~q\ & (\altsyncram_component|auto_generated|q_a\(14) & \state.ex_add~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_sub~q\,
	datac => \altsyncram_component|auto_generated|q_a\(14),
	datad => \state.ex_add~q\,
	combout => \Add1~82_combout\);

-- Location: LCCOMB_X54_Y7_N8
\Add1~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~83_combout\ = (IR(10) & ((\Add1~57_combout\) # ((\WideOr3~3_combout\ & \Add1~82_combout\)))) # (!IR(10) & (((\WideOr3~3_combout\ & \Add1~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(10),
	datab => \Add1~57_combout\,
	datac => \WideOr3~3_combout\,
	datad => \Add1~82_combout\,
	combout => \Add1~83_combout\);

-- Location: LCCOMB_X52_Y4_N12
\Add1~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~84_combout\ = (AC(14) & ((\state.ex_sub~q\) # ((\state.ex_add~q\) # (\state.ex_addi~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_sub~q\,
	datab => \state.ex_add~q\,
	datac => \state.ex_addi~q\,
	datad => AC(14),
	combout => \Add1~84_combout\);

-- Location: LCCOMB_X55_Y4_N14
\Add1~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~85_combout\ = (\Add1~83_combout\ & ((\Add1~84_combout\ & (\Add1~81\ & VCC)) # (!\Add1~84_combout\ & (!\Add1~81\)))) # (!\Add1~83_combout\ & ((\Add1~84_combout\ & (!\Add1~81\)) # (!\Add1~84_combout\ & ((\Add1~81\) # (GND)))))
-- \Add1~86\ = CARRY((\Add1~83_combout\ & (!\Add1~84_combout\ & !\Add1~81\)) # (!\Add1~83_combout\ & ((!\Add1~81\) # (!\Add1~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~83_combout\,
	datab => \Add1~84_combout\,
	datad => VCC,
	cin => \Add1~81\,
	combout => \Add1~85_combout\,
	cout => \Add1~86\);

-- Location: IOIBUF_X38_Y0_N15
\IO_DATA[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(14),
	o => \IO_DATA[14]~input_o\);

-- Location: LCCOMB_X52_Y4_N10
\Selector13~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector13~3_combout\ = (\altsyncram_component|auto_generated|q_a\(14) & (((\state.ex_and~q\)) # (!\Selector26~0_combout\))) # (!\altsyncram_component|auto_generated|q_a\(14) & (((\state.ex_xor~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector26~0_combout\,
	datab => \state.ex_and~q\,
	datac => \state.ex_xor~q\,
	datad => \altsyncram_component|auto_generated|q_a\(14),
	combout => \Selector13~3_combout\);

-- Location: LCCOMB_X52_Y4_N14
\Selector13~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector13~7_combout\ = (\altsyncram_component|auto_generated|q_a\(14) & ((\state.ex_or~q\) # ((\state.ex_load~q\) # (\state.ex_xor~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_or~q\,
	datab => \state.ex_load~q\,
	datac => \state.ex_xor~q\,
	datad => \altsyncram_component|auto_generated|q_a\(14),
	combout => \Selector13~7_combout\);

-- Location: LCCOMB_X52_Y4_N20
\Selector13~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector13~4_combout\ = (AC(14) & ((\Selector13~3_combout\) # ((!\Selector27~0_combout\)))) # (!AC(14) & (((\Selector13~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector13~3_combout\,
	datab => AC(14),
	datac => \Selector13~7_combout\,
	datad => \Selector27~0_combout\,
	combout => \Selector13~4_combout\);

-- Location: LCCOMB_X52_Y4_N22
\Selector13~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector13~5_combout\ = ((\Selector13~4_combout\) # ((\state.ex_in~q\ & \IO_DATA[14]~input_o\))) # (!\Selector15~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_in~q\,
	datab => \Selector15~3_combout\,
	datac => \IO_DATA[14]~input_o\,
	datad => \Selector13~4_combout\,
	combout => \Selector13~5_combout\);

-- Location: LCCOMB_X55_Y4_N26
\Selector13~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector13~6_combout\ = (\Selector13~2_combout\) # ((\Selector13~5_combout\) # ((\AC[13]~0_combout\ & \Add1~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AC[13]~0_combout\,
	datab => \Selector13~2_combout\,
	datac => \Add1~85_combout\,
	datad => \Selector13~5_combout\,
	combout => \Selector13~6_combout\);

-- Location: FF_X55_Y4_N27
\AC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector13~6_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(14));

-- Location: LCCOMB_X58_Y3_N20
\shifter|auto_generated|sbit_w[29]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[29]~43_combout\ = (IR(0) & ((IR(4) & (AC(14))) # (!IR(4) & ((AC(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(0),
	datab => AC(14),
	datac => IR(4),
	datad => AC(12),
	combout => \shifter|auto_generated|sbit_w[29]~43_combout\);

-- Location: LCCOMB_X59_Y3_N12
\shifter|auto_generated|sbit_w[29]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[29]~42_combout\ = (AC(13) & !IR(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => AC(13),
	datad => IR(0),
	combout => \shifter|auto_generated|sbit_w[29]~42_combout\);

-- Location: LCCOMB_X59_Y3_N22
\shifter|auto_generated|sbit_w[45]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[45]~44_combout\ = (\shifter|auto_generated|sbit_w[45]~41_combout\) # ((!IR(1) & ((\shifter|auto_generated|sbit_w[29]~43_combout\) # (\shifter|auto_generated|sbit_w[29]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(1),
	datab => \shifter|auto_generated|sbit_w[29]~43_combout\,
	datac => \shifter|auto_generated|sbit_w[45]~41_combout\,
	datad => \shifter|auto_generated|sbit_w[29]~42_combout\,
	combout => \shifter|auto_generated|sbit_w[45]~44_combout\);

-- Location: LCCOMB_X59_Y3_N24
\shifter|auto_generated|sbit_w[45]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[45]~47_combout\ = (\shifter|auto_generated|sbit_w[45]~44_combout\) # ((IR(1) & (!IR(4) & \shifter|auto_generated|sbit_w[27]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(1),
	datab => IR(4),
	datac => \shifter|auto_generated|sbit_w[45]~44_combout\,
	datad => \shifter|auto_generated|sbit_w[27]~46_combout\,
	combout => \shifter|auto_generated|sbit_w[45]~47_combout\);

-- Location: LCCOMB_X59_Y3_N16
\shifter|auto_generated|sbit_w[61]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[61]~76_combout\ = (IR(2) & (IR(4) & (AC(15)))) # (!IR(2) & (((\shifter|auto_generated|sbit_w[45]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(4),
	datab => AC(15),
	datac => IR(2),
	datad => \shifter|auto_generated|sbit_w[45]~47_combout\,
	combout => \shifter|auto_generated|sbit_w[61]~76_combout\);

-- Location: LCCOMB_X55_Y3_N30
\shifter|auto_generated|sbit_w[61]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[61]~77_combout\ = (\shifter|auto_generated|sbit_w[61]~76_combout\) # ((IR(2) & (\shifter|auto_generated|sbit_w[41]~52_combout\ & !IR(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(2),
	datab => \shifter|auto_generated|sbit_w[41]~52_combout\,
	datac => IR(4),
	datad => \shifter|auto_generated|sbit_w[61]~76_combout\,
	combout => \shifter|auto_generated|sbit_w[61]~77_combout\);

-- Location: IOIBUF_X38_Y0_N1
\IO_DATA[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(5),
	o => \IO_DATA[5]~input_o\);

-- Location: LCCOMB_X52_Y5_N22
\Selector22~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector22~3_combout\ = (\IO_DATA[5]~input_o\ & ((\state.ex_in~q\) # ((IR(5) & \state.ex_loadi~q\)))) # (!\IO_DATA[5]~input_o\ & (IR(5) & ((\state.ex_loadi~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IO_DATA[5]~input_o\,
	datab => IR(5),
	datac => \state.ex_in~q\,
	datad => \state.ex_loadi~q\,
	combout => \Selector22~3_combout\);

-- Location: LCCOMB_X56_Y5_N8
\Selector22~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector22~4_combout\ = (\altsyncram_component|auto_generated|q_a\(5) & (((!AC(5) & \state.ex_xor~q\)) # (!\Selector26~0_combout\))) # (!\altsyncram_component|auto_generated|q_a\(5) & (AC(5) & (\state.ex_xor~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AC(5),
	datab => \state.ex_xor~q\,
	datac => \altsyncram_component|auto_generated|q_a\(5),
	datad => \Selector26~0_combout\,
	combout => \Selector22~4_combout\);

-- Location: LCCOMB_X56_Y5_N6
\Selector22~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector22~5_combout\ = (\Selector22~3_combout\) # ((\Selector22~4_combout\) # ((\AC[13]~0_combout\ & \Add1~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AC[13]~0_combout\,
	datab => \Selector22~3_combout\,
	datac => \Selector22~4_combout\,
	datad => \Add1~36_combout\,
	combout => \Selector22~5_combout\);

-- Location: LCCOMB_X56_Y5_N20
\Selector22~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector22~6_combout\ = (\Selector22~2_combout\) # ((\Selector22~5_combout\) # ((\Selector27~7_combout\ & \shifter|auto_generated|sbit_w[61]~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector22~2_combout\,
	datab => \Selector27~7_combout\,
	datac => \shifter|auto_generated|sbit_w[61]~77_combout\,
	datad => \Selector22~5_combout\,
	combout => \Selector22~6_combout\);

-- Location: LCCOMB_X56_Y5_N12
\Selector22~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector22~7_combout\ = (\Selector22~6_combout\) # ((\state.ex_shift~q\ & (\shifter|auto_generated|sbit_w[53]~80_combout\ & !IR(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_shift~q\,
	datab => \shifter|auto_generated|sbit_w[53]~80_combout\,
	datac => IR(3),
	datad => \Selector22~6_combout\,
	combout => \Selector22~7_combout\);

-- Location: FF_X56_Y5_N13
\AC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector22~7_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(5));

-- Location: LCCOMB_X56_Y3_N24
\shifter|auto_generated|sbit_w[21]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[21]~34_combout\ = (IR(0) & ((IR(4) & (AC(6))) # (!IR(4) & ((AC(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(0),
	datab => IR(4),
	datac => AC(6),
	datad => AC(4),
	combout => \shifter|auto_generated|sbit_w[21]~34_combout\);

-- Location: LCCOMB_X56_Y3_N10
\shifter|auto_generated|sbit_w[21]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[21]~35_combout\ = (\shifter|auto_generated|sbit_w[21]~34_combout\) # ((!IR(0) & AC(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(0),
	datab => AC(5),
	datad => \shifter|auto_generated|sbit_w[21]~34_combout\,
	combout => \shifter|auto_generated|sbit_w[21]~35_combout\);

-- Location: LCCOMB_X59_Y3_N28
\shifter|auto_generated|sbit_w[35]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[35]~71_combout\ = (IR(1) & ((IR(4) & (\shifter|auto_generated|sbit_w[21]~35_combout\)) # (!IR(4) & ((\shifter|auto_generated|sbit_w[17]~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(1),
	datab => IR(4),
	datac => \shifter|auto_generated|sbit_w[21]~35_combout\,
	datad => \shifter|auto_generated|sbit_w[17]~38_combout\,
	combout => \shifter|auto_generated|sbit_w[35]~71_combout\);

-- Location: LCCOMB_X59_Y3_N30
\Selector24~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector24~6_combout\ = (!IR(2) & ((\shifter|auto_generated|sbit_w[35]~71_combout\) # ((!IR(1) & \shifter|auto_generated|sbit_w[19]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(1),
	datab => \shifter|auto_generated|sbit_w[19]~32_combout\,
	datac => IR(2),
	datad => \shifter|auto_generated|sbit_w[35]~71_combout\,
	combout => \Selector24~6_combout\);

-- Location: LCCOMB_X56_Y6_N26
\Selector24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (\Selector27~7_combout\ & ((\shifter|auto_generated|sbit_w[59]~67_combout\) # ((!IR(2) & \shifter|auto_generated|sbit_w[43]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(2),
	datab => \shifter|auto_generated|sbit_w[59]~67_combout\,
	datac => \Selector27~7_combout\,
	datad => \shifter|auto_generated|sbit_w[43]~70_combout\,
	combout => \Selector24~0_combout\);

-- Location: LCCOMB_X56_Y6_N4
\Selector24~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector24~1_combout\ = (AC(3) & (((\state.ex_and~q\ & \altsyncram_component|auto_generated|q_a\(3))) # (!\Selector27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector27~0_combout\,
	datab => AC(3),
	datac => \state.ex_and~q\,
	datad => \altsyncram_component|auto_generated|q_a\(3),
	combout => \Selector24~1_combout\);

-- Location: IOIBUF_X56_Y0_N8
\IO_DATA[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(3),
	o => \IO_DATA[3]~input_o\);

-- Location: LCCOMB_X56_Y4_N28
\Selector24~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector24~2_combout\ = (\state.ex_in~q\ & ((\IO_DATA[3]~input_o\) # ((\state.ex_loadi~q\ & IR(3))))) # (!\state.ex_in~q\ & (((\state.ex_loadi~q\ & IR(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_in~q\,
	datab => \IO_DATA[3]~input_o\,
	datac => \state.ex_loadi~q\,
	datad => IR(3),
	combout => \Selector24~2_combout\);

-- Location: LCCOMB_X56_Y6_N14
\Selector24~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector24~3_combout\ = (\altsyncram_component|auto_generated|q_a\(3) & (((\state.ex_xor~q\ & !AC(3))) # (!\Selector26~0_combout\))) # (!\altsyncram_component|auto_generated|q_a\(3) & (\state.ex_xor~q\ & (AC(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_xor~q\,
	datab => AC(3),
	datac => \Selector26~0_combout\,
	datad => \altsyncram_component|auto_generated|q_a\(3),
	combout => \Selector24~3_combout\);

-- Location: LCCOMB_X56_Y6_N24
\Selector24~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector24~4_combout\ = (\Selector24~2_combout\) # ((\Selector24~3_combout\) # ((\AC[13]~0_combout\ & \Add1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector24~2_combout\,
	datab => \AC[13]~0_combout\,
	datac => \Selector24~3_combout\,
	datad => \Add1~24_combout\,
	combout => \Selector24~4_combout\);

-- Location: LCCOMB_X56_Y6_N2
\Selector24~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector24~5_combout\ = (\Selector24~1_combout\) # ((\Selector24~4_combout\) # ((\shifter|auto_generated|sbit_w[39]~66_combout\ & \Selector25~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|auto_generated|sbit_w[39]~66_combout\,
	datab => \Selector25~0_combout\,
	datac => \Selector24~1_combout\,
	datad => \Selector24~4_combout\,
	combout => \Selector24~5_combout\);

-- Location: LCCOMB_X56_Y6_N16
\Selector24~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector24~7_combout\ = (\Selector24~0_combout\) # ((\Selector24~5_combout\) # ((\Selector26~1_combout\ & \Selector24~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector26~1_combout\,
	datab => \Selector24~6_combout\,
	datac => \Selector24~0_combout\,
	datad => \Selector24~5_combout\,
	combout => \Selector24~7_combout\);

-- Location: FF_X56_Y6_N17
\AC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector24~7_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(3));

-- Location: LCCOMB_X59_Y3_N8
\shifter|auto_generated|sbit_w[19]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[19]~32_combout\ = (\shifter|auto_generated|sbit_w[19]~31_combout\) # ((!IR(0) & AC(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(0),
	datac => \shifter|auto_generated|sbit_w[19]~31_combout\,
	datad => AC(3),
	combout => \shifter|auto_generated|sbit_w[19]~32_combout\);

-- Location: LCCOMB_X59_Y3_N14
\shifter|auto_generated|sbit_w[35]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[35]~85_combout\ = (\shifter|auto_generated|sbit_w[35]~71_combout\) # ((!IR(1) & \shifter|auto_generated|sbit_w[19]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(1),
	datac => \shifter|auto_generated|sbit_w[19]~32_combout\,
	datad => \shifter|auto_generated|sbit_w[35]~71_combout\,
	combout => \shifter|auto_generated|sbit_w[35]~85_combout\);

-- Location: LCCOMB_X57_Y4_N30
\shifter|auto_generated|sbit_w[55]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[55]~86_combout\ = (IR(2) & ((IR(4) & ((\shifter|auto_generated|sbit_w[43]~70_combout\))) # (!IR(4) & (\shifter|auto_generated|sbit_w[35]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(2),
	datab => \shifter|auto_generated|sbit_w[35]~85_combout\,
	datac => \shifter|auto_generated|sbit_w[43]~70_combout\,
	datad => IR(4),
	combout => \shifter|auto_generated|sbit_w[55]~86_combout\);

-- Location: LCCOMB_X56_Y4_N6
\Selector20~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector20~2_combout\ = (\Selector26~1_combout\ & ((\shifter|auto_generated|sbit_w[55]~86_combout\) # ((!IR(2) & \shifter|auto_generated|sbit_w[39]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|auto_generated|sbit_w[55]~86_combout\,
	datab => IR(2),
	datac => \Selector26~1_combout\,
	datad => \shifter|auto_generated|sbit_w[39]~66_combout\,
	combout => \Selector20~2_combout\);

-- Location: IOIBUF_X51_Y0_N22
\IO_DATA[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(7),
	o => \IO_DATA[7]~input_o\);

-- Location: LCCOMB_X51_Y4_N20
\Selector20~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector20~3_combout\ = (\IO_DATA[7]~input_o\ & ((\state.ex_in~q\) # ((\state.ex_loadi~q\ & IR(7))))) # (!\IO_DATA[7]~input_o\ & (\state.ex_loadi~q\ & ((IR(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IO_DATA[7]~input_o\,
	datab => \state.ex_loadi~q\,
	datac => \state.ex_in~q\,
	datad => IR(7),
	combout => \Selector20~3_combout\);

-- Location: LCCOMB_X52_Y4_N8
\Selector20~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector20~5_combout\ = (\altsyncram_component|auto_generated|q_a\(7) & (((\state.ex_and~q\)) # (!\Selector26~0_combout\))) # (!\altsyncram_component|auto_generated|q_a\(7) & (((\state.ex_xor~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector26~0_combout\,
	datab => \state.ex_and~q\,
	datac => \state.ex_xor~q\,
	datad => \altsyncram_component|auto_generated|q_a\(7),
	combout => \Selector20~5_combout\);

-- Location: LCCOMB_X52_Y4_N28
\Selector20~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector20~9_combout\ = (\altsyncram_component|auto_generated|q_a\(7) & ((\state.ex_xor~q\) # ((\state.ex_load~q\) # (\state.ex_or~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_xor~q\,
	datab => \state.ex_load~q\,
	datac => \state.ex_or~q\,
	datad => \altsyncram_component|auto_generated|q_a\(7),
	combout => \Selector20~9_combout\);

-- Location: LCCOMB_X52_Y4_N18
\Selector20~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector20~6_combout\ = (AC(7) & (((\Selector20~5_combout\)) # (!\Selector27~0_combout\))) # (!AC(7) & (((\Selector20~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AC(7),
	datab => \Selector27~0_combout\,
	datac => \Selector20~5_combout\,
	datad => \Selector20~9_combout\,
	combout => \Selector20~6_combout\);

-- Location: LCCOMB_X56_Y4_N24
\Selector20~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector20~7_combout\ = (\Selector20~3_combout\) # ((\Selector20~4_combout\) # (\Selector20~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector20~3_combout\,
	datac => \Selector20~4_combout\,
	datad => \Selector20~6_combout\,
	combout => \Selector20~7_combout\);

-- Location: LCCOMB_X56_Y4_N4
\Selector20~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector20~8_combout\ = (\Selector20~2_combout\) # ((\Selector20~7_combout\) # ((\AC[13]~0_combout\ & \Add1~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector20~2_combout\,
	datab => \AC[13]~0_combout\,
	datac => \Add1~48_combout\,
	datad => \Selector20~7_combout\,
	combout => \Selector20~8_combout\);

-- Location: FF_X56_Y4_N5
\AC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector20~8_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(7));

-- Location: LCCOMB_X55_Y3_N18
\shifter|auto_generated|sbit_w[24]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[24]~14_combout\ = (IR(4) & (AC(9))) # (!IR(4) & ((AC(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(4),
	datac => AC(9),
	datad => AC(7),
	combout => \shifter|auto_generated|sbit_w[24]~14_combout\);

-- Location: LCCOMB_X55_Y3_N4
\shifter|auto_generated|sbit_w[24]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[24]~54_combout\ = (IR(0) & ((\shifter|auto_generated|sbit_w[24]~14_combout\))) # (!IR(0) & (AC(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => AC(8),
	datac => IR(0),
	datad => \shifter|auto_generated|sbit_w[24]~14_combout\,
	combout => \shifter|auto_generated|sbit_w[24]~54_combout\);

-- Location: LCCOMB_X57_Y3_N18
\shifter|auto_generated|sbit_w[42]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[42]~62_combout\ = (IR(1) & ((IR(4) & ((\shifter|auto_generated|sbit_w[28]~26_combout\))) # (!IR(4) & (\shifter|auto_generated|sbit_w[24]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(1),
	datab => IR(4),
	datac => \shifter|auto_generated|sbit_w[24]~54_combout\,
	datad => \shifter|auto_generated|sbit_w[28]~26_combout\,
	combout => \shifter|auto_generated|sbit_w[42]~62_combout\);

-- Location: LCCOMB_X58_Y3_N8
\shifter|auto_generated|sbit_w[26]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[26]~18_combout\ = (IR(0) & ((IR(4) & ((AC(11)))) # (!IR(4) & (AC(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(4),
	datab => AC(9),
	datac => AC(11),
	datad => IR(0),
	combout => \shifter|auto_generated|sbit_w[26]~18_combout\);

-- Location: LCCOMB_X58_Y3_N18
\shifter|auto_generated|sbit_w[26]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[26]~19_combout\ = (\shifter|auto_generated|sbit_w[26]~18_combout\) # ((AC(10) & !IR(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AC(10),
	datac => \shifter|auto_generated|sbit_w[26]~18_combout\,
	datad => IR(0),
	combout => \shifter|auto_generated|sbit_w[26]~19_combout\);

-- Location: LCCOMB_X57_Y3_N0
\shifter|auto_generated|sbit_w[42]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[42]~63_combout\ = (\shifter|auto_generated|sbit_w[42]~62_combout\) # ((!IR(1) & \shifter|auto_generated|sbit_w[26]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shifter|auto_generated|sbit_w[42]~62_combout\,
	datac => IR(1),
	datad => \shifter|auto_generated|sbit_w[26]~19_combout\,
	combout => \shifter|auto_generated|sbit_w[42]~63_combout\);

-- Location: LCCOMB_X57_Y3_N10
\shifter|auto_generated|sbit_w[54]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[54]~83_combout\ = (IR(4) & ((\shifter|auto_generated|sbit_w[42]~63_combout\))) # (!IR(4) & (\shifter|auto_generated|sbit_w[34]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => IR(4),
	datac => \shifter|auto_generated|sbit_w[34]~56_combout\,
	datad => \shifter|auto_generated|sbit_w[42]~63_combout\,
	combout => \shifter|auto_generated|sbit_w[54]~83_combout\);

-- Location: LCCOMB_X56_Y3_N18
\shifter|auto_generated|sbit_w[20]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[20]~11_combout\ = (IR(0) & ((IR(4) & (AC(5))) # (!IR(4) & ((AC(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(0),
	datab => IR(4),
	datac => AC(5),
	datad => AC(3),
	combout => \shifter|auto_generated|sbit_w[20]~11_combout\);

-- Location: LCCOMB_X56_Y3_N16
\shifter|auto_generated|sbit_w[20]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[20]~12_combout\ = (\shifter|auto_generated|sbit_w[20]~11_combout\) # ((!IR(0) & AC(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(0),
	datab => \shifter|auto_generated|sbit_w[20]~11_combout\,
	datad => AC(4),
	combout => \shifter|auto_generated|sbit_w[20]~12_combout\);

-- Location: LCCOMB_X56_Y3_N0
\shifter|auto_generated|sbit_w[38]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[38]~55_combout\ = (IR(1) & ((IR(4) & (\shifter|auto_generated|sbit_w[24]~54_combout\)) # (!IR(4) & ((\shifter|auto_generated|sbit_w[20]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(1),
	datab => IR(4),
	datac => \shifter|auto_generated|sbit_w[24]~54_combout\,
	datad => \shifter|auto_generated|sbit_w[20]~12_combout\,
	combout => \shifter|auto_generated|sbit_w[38]~55_combout\);

-- Location: LCCOMB_X57_Y4_N16
\shifter|auto_generated|sbit_w[38]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[38]~60_combout\ = (\shifter|auto_generated|sbit_w[38]~55_combout\) # ((!IR(1) & \shifter|auto_generated|sbit_w[22]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => IR(1),
	datac => \shifter|auto_generated|sbit_w[38]~55_combout\,
	datad => \shifter|auto_generated|sbit_w[22]~9_combout\,
	combout => \shifter|auto_generated|sbit_w[38]~60_combout\);

-- Location: LCCOMB_X56_Y4_N16
\shifter|auto_generated|sbit_w[54]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[54]~84_combout\ = (IR(2) & (\shifter|auto_generated|sbit_w[54]~83_combout\)) # (!IR(2) & ((\shifter|auto_generated|sbit_w[38]~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => IR(2),
	datac => \shifter|auto_generated|sbit_w[54]~83_combout\,
	datad => \shifter|auto_generated|sbit_w[38]~60_combout\,
	combout => \shifter|auto_generated|sbit_w[54]~84_combout\);

-- Location: LCCOMB_X52_Y5_N18
\Selector21~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector21~2_combout\ = (AC(6) & (((\state.ex_and~q\ & \altsyncram_component|auto_generated|q_a\(6))) # (!\Selector27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_and~q\,
	datab => \altsyncram_component|auto_generated|q_a\(6),
	datac => AC(6),
	datad => \Selector27~0_combout\,
	combout => \Selector21~2_combout\);

-- Location: IOIBUF_X69_Y0_N15
\IO_DATA[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(6),
	o => \IO_DATA[6]~input_o\);

-- Location: LCCOMB_X54_Y5_N26
\Selector21~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector21~3_combout\ = (\state.ex_in~q\ & ((\IO_DATA[6]~input_o\) # ((IR(6) & \state.ex_loadi~q\)))) # (!\state.ex_in~q\ & (IR(6) & (\state.ex_loadi~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_in~q\,
	datab => IR(6),
	datac => \state.ex_loadi~q\,
	datad => \IO_DATA[6]~input_o\,
	combout => \Selector21~3_combout\);

-- Location: LCCOMB_X52_Y5_N26
\Selector21~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector21~4_combout\ = (\altsyncram_component|auto_generated|q_a\(6) & (((!AC(6) & \state.ex_xor~q\)) # (!\Selector26~0_combout\))) # (!\altsyncram_component|auto_generated|q_a\(6) & (((AC(6) & \state.ex_xor~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector26~0_combout\,
	datab => \altsyncram_component|auto_generated|q_a\(6),
	datac => AC(6),
	datad => \state.ex_xor~q\,
	combout => \Selector21~4_combout\);

-- Location: LCCOMB_X55_Y5_N0
\Selector21~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector21~5_combout\ = (\Selector21~3_combout\) # ((\Selector21~4_combout\) # ((\AC[13]~0_combout\ & \Add1~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector21~3_combout\,
	datab => \AC[13]~0_combout\,
	datac => \Add1~42_combout\,
	datad => \Selector21~4_combout\,
	combout => \Selector21~5_combout\);

-- Location: LCCOMB_X55_Y5_N2
\Selector21~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector21~6_combout\ = (\Selector21~2_combout\) # ((\Selector21~5_combout\) # ((\Selector27~7_combout\ & \shifter|auto_generated|sbit_w[62]~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector27~7_combout\,
	datab => \shifter|auto_generated|sbit_w[62]~82_combout\,
	datac => \Selector21~2_combout\,
	datad => \Selector21~5_combout\,
	combout => \Selector21~6_combout\);

-- Location: LCCOMB_X55_Y5_N4
\Selector21~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector21~7_combout\ = (\Selector21~6_combout\) # ((!IR(3) & (\state.ex_shift~q\ & \shifter|auto_generated|sbit_w[54]~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(3),
	datab => \state.ex_shift~q\,
	datac => \shifter|auto_generated|sbit_w[54]~84_combout\,
	datad => \Selector21~6_combout\,
	combout => \Selector21~7_combout\);

-- Location: FF_X55_Y5_N5
\AC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector21~7_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(6));

-- Location: LCCOMB_X56_Y3_N28
\shifter|auto_generated|sbit_w[22]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[22]~8_combout\ = (IR(0) & ((IR(4) & (AC(7))) # (!IR(4) & ((AC(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(0),
	datab => IR(4),
	datac => AC(7),
	datad => AC(5),
	combout => \shifter|auto_generated|sbit_w[22]~8_combout\);

-- Location: LCCOMB_X57_Y3_N6
\shifter|auto_generated|sbit_w[22]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[22]~9_combout\ = (\shifter|auto_generated|sbit_w[22]~8_combout\) # ((!IR(0) & AC(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(0),
	datac => AC(6),
	datad => \shifter|auto_generated|sbit_w[22]~8_combout\,
	combout => \shifter|auto_generated|sbit_w[22]~9_combout\);

-- Location: LCCOMB_X57_Y4_N10
\Selector25~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector25~1_combout\ = (\Selector25~0_combout\ & ((\shifter|auto_generated|sbit_w[38]~55_combout\) # ((\shifter|auto_generated|sbit_w[22]~9_combout\ & !IR(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector25~0_combout\,
	datab => \shifter|auto_generated|sbit_w[22]~9_combout\,
	datac => \shifter|auto_generated|sbit_w[38]~55_combout\,
	datad => IR(1),
	combout => \Selector25~1_combout\);

-- Location: LCCOMB_X57_Y4_N18
\shifter|auto_generated|sbit_w[58]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[58]~61_combout\ = (IR(2) & ((IR(4) & (\shifter|auto_generated|sbit_w[46]~59_combout\)) # (!IR(4) & ((\shifter|auto_generated|sbit_w[38]~60_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|auto_generated|sbit_w[46]~59_combout\,
	datab => IR(4),
	datac => IR(2),
	datad => \shifter|auto_generated|sbit_w[38]~60_combout\,
	combout => \shifter|auto_generated|sbit_w[58]~61_combout\);

-- Location: LCCOMB_X56_Y4_N22
\shifter|auto_generated|sbit_w[58]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[58]~64_combout\ = (\shifter|auto_generated|sbit_w[58]~61_combout\) # ((!IR(2) & \shifter|auto_generated|sbit_w[42]~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => IR(2),
	datac => \shifter|auto_generated|sbit_w[42]~63_combout\,
	datad => \shifter|auto_generated|sbit_w[58]~61_combout\,
	combout => \shifter|auto_generated|sbit_w[58]~64_combout\);

-- Location: LCCOMB_X55_Y6_N26
\Selector25~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector25~2_combout\ = (AC(2) & (((\altsyncram_component|auto_generated|q_a\(2) & \state.ex_and~q\)) # (!\Selector27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector27~0_combout\,
	datab => AC(2),
	datac => \altsyncram_component|auto_generated|q_a\(2),
	datad => \state.ex_and~q\,
	combout => \Selector25~2_combout\);

-- Location: IOIBUF_X56_Y0_N1
\IO_DATA[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(2),
	o => \IO_DATA[2]~input_o\);

-- Location: LCCOMB_X56_Y4_N0
\Selector25~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector25~3_combout\ = (\state.ex_loadi~q\ & ((IR(2)) # ((\IO_DATA[2]~input_o\ & \state.ex_in~q\)))) # (!\state.ex_loadi~q\ & (\IO_DATA[2]~input_o\ & (\state.ex_in~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_loadi~q\,
	datab => \IO_DATA[2]~input_o\,
	datac => \state.ex_in~q\,
	datad => IR(2),
	combout => \Selector25~3_combout\);

-- Location: LCCOMB_X55_Y6_N8
\Selector25~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector25~4_combout\ = (\altsyncram_component|auto_generated|q_a\(2) & (((\state.ex_xor~q\ & !AC(2))) # (!\Selector26~0_combout\))) # (!\altsyncram_component|auto_generated|q_a\(2) & (\state.ex_xor~q\ & ((AC(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_xor~q\,
	datab => \altsyncram_component|auto_generated|q_a\(2),
	datac => \Selector26~0_combout\,
	datad => AC(2),
	combout => \Selector25~4_combout\);

-- Location: LCCOMB_X55_Y6_N10
\Selector25~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector25~5_combout\ = (\Selector25~3_combout\) # ((\Selector25~4_combout\) # ((\AC[13]~0_combout\ & \Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AC[13]~0_combout\,
	datab => \Selector25~3_combout\,
	datac => \Selector25~4_combout\,
	datad => \Add1~18_combout\,
	combout => \Selector25~5_combout\);

-- Location: LCCOMB_X55_Y6_N16
\Selector25~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector25~7_combout\ = (\Selector25~2_combout\) # ((\Selector25~5_combout\) # ((\Selector25~6_combout\ & \Selector26~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector25~6_combout\,
	datab => \Selector26~1_combout\,
	datac => \Selector25~2_combout\,
	datad => \Selector25~5_combout\,
	combout => \Selector25~7_combout\);

-- Location: LCCOMB_X55_Y6_N4
\Selector25~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector25~8_combout\ = (\Selector25~1_combout\) # ((\Selector25~7_combout\) # ((\Selector27~7_combout\ & \shifter|auto_generated|sbit_w[58]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector25~1_combout\,
	datab => \Selector27~7_combout\,
	datac => \shifter|auto_generated|sbit_w[58]~64_combout\,
	datad => \Selector25~7_combout\,
	combout => \Selector25~8_combout\);

-- Location: FF_X55_Y6_N5
\AC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector25~8_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(2));

-- Location: LCCOMB_X56_Y3_N30
\shifter|auto_generated|sbit_w[18]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[18]~5_combout\ = (IR(0) & ((IR(4) & ((AC(3)))) # (!IR(4) & (AC(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(0),
	datab => AC(1),
	datac => IR(4),
	datad => AC(3),
	combout => \shifter|auto_generated|sbit_w[18]~5_combout\);

-- Location: LCCOMB_X56_Y3_N6
\shifter|auto_generated|sbit_w[18]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[18]~6_combout\ = (\shifter|auto_generated|sbit_w[18]~5_combout\) # ((AC(2) & !IR(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => AC(2),
	datac => \shifter|auto_generated|sbit_w[18]~5_combout\,
	datad => IR(0),
	combout => \shifter|auto_generated|sbit_w[18]~6_combout\);

-- Location: LCCOMB_X57_Y3_N28
\shifter|auto_generated|sbit_w[32]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[32]~3_combout\ = (AC(0) & !IR(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => AC(0),
	datad => IR(0),
	combout => \shifter|auto_generated|sbit_w[32]~3_combout\);

-- Location: LCCOMB_X57_Y3_N14
\shifter|auto_generated|sbit_w[34]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[34]~56_combout\ = (IR(1) & (!IR(4) & ((\shifter|auto_generated|sbit_w[32]~3_combout\)))) # (!IR(1) & (((\shifter|auto_generated|sbit_w[18]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(1),
	datab => IR(4),
	datac => \shifter|auto_generated|sbit_w[18]~6_combout\,
	datad => \shifter|auto_generated|sbit_w[32]~3_combout\,
	combout => \shifter|auto_generated|sbit_w[34]~56_combout\);

-- Location: LCCOMB_X57_Y3_N4
\Selector25~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector25~6_combout\ = (!IR(2) & ((\shifter|auto_generated|sbit_w[34]~56_combout\) # ((\shifter|auto_generated|sbit_w[36]~4_combout\ & \shifter|auto_generated|sbit_w[20]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|auto_generated|sbit_w[36]~4_combout\,
	datab => \shifter|auto_generated|sbit_w[34]~56_combout\,
	datac => \shifter|auto_generated|sbit_w[20]~12_combout\,
	datad => IR(2),
	combout => \Selector25~6_combout\);

-- Location: LCCOMB_X56_Y6_N22
\Selector17~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector17~2_combout\ = (\Selector27~9_combout\ & ((IR(4) & (AC(15))) # (!IR(4) & ((\Selector25~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AC(15),
	datab => \Selector27~9_combout\,
	datac => IR(4),
	datad => \Selector25~6_combout\,
	combout => \Selector17~2_combout\);

-- Location: LCCOMB_X56_Y4_N8
\Selector17~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector17~3_combout\ = (\Selector26~1_combout\ & ((\shifter|auto_generated|sbit_w[58]~61_combout\) # ((!IR(2) & \shifter|auto_generated|sbit_w[42]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(2),
	datab => \Selector26~1_combout\,
	datac => \shifter|auto_generated|sbit_w[42]~63_combout\,
	datad => \shifter|auto_generated|sbit_w[58]~61_combout\,
	combout => \Selector17~3_combout\);

-- Location: LCCOMB_X55_Y6_N12
\Selector17~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector17~4_combout\ = (\altsyncram_component|auto_generated|q_a\(10) & (((\state.ex_xor~q\ & !AC(10))) # (!\Selector26~0_combout\))) # (!\altsyncram_component|auto_generated|q_a\(10) & (\state.ex_xor~q\ & (AC(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_xor~q\,
	datab => AC(10),
	datac => \Selector26~0_combout\,
	datad => \altsyncram_component|auto_generated|q_a\(10),
	combout => \Selector17~4_combout\);

-- Location: LCCOMB_X55_Y6_N14
\Selector17~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector17~5_combout\ = (\Selector17~1_combout\) # ((\Selector17~2_combout\) # ((\Selector17~3_combout\) # (\Selector17~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector17~1_combout\,
	datab => \Selector17~2_combout\,
	datac => \Selector17~3_combout\,
	datad => \Selector17~4_combout\,
	combout => \Selector17~5_combout\);

-- Location: LCCOMB_X55_Y6_N2
\Selector17~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector17~6_combout\ = (\Selector17~0_combout\) # ((\Selector17~5_combout\) # ((\AC[13]~0_combout\ & \Add1~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AC[13]~0_combout\,
	datab => \Selector17~0_combout\,
	datac => \Selector17~5_combout\,
	datad => \Add1~65_combout\,
	combout => \Selector17~6_combout\);

-- Location: FF_X55_Y6_N3
\AC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector17~6_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(10));

-- Location: LCCOMB_X55_Y3_N20
\shifter|auto_generated|sbit_w[25]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[25]~50_combout\ = (IR(0) & ((IR(4) & ((AC(10)))) # (!IR(4) & (AC(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(4),
	datab => AC(8),
	datac => AC(10),
	datad => IR(0),
	combout => \shifter|auto_generated|sbit_w[25]~50_combout\);

-- Location: LCCOMB_X55_Y3_N6
\shifter|auto_generated|sbit_w[25]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[25]~51_combout\ = (\shifter|auto_generated|sbit_w[25]~50_combout\) # ((AC(9) & !IR(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shifter|auto_generated|sbit_w[25]~50_combout\,
	datac => AC(9),
	datad => IR(0),
	combout => \shifter|auto_generated|sbit_w[25]~51_combout\);

-- Location: LCCOMB_X55_Y3_N2
\shifter|auto_generated|sbit_w[41]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[41]~49_combout\ = (IR(1) & ((IR(4) & (\shifter|auto_generated|sbit_w[27]~46_combout\)) # (!IR(4) & ((\shifter|auto_generated|sbit_w[23]~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(4),
	datab => IR(1),
	datac => \shifter|auto_generated|sbit_w[27]~46_combout\,
	datad => \shifter|auto_generated|sbit_w[23]~30_combout\,
	combout => \shifter|auto_generated|sbit_w[41]~49_combout\);

-- Location: LCCOMB_X55_Y3_N0
\shifter|auto_generated|sbit_w[41]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[41]~52_combout\ = (\shifter|auto_generated|sbit_w[41]~49_combout\) # ((\shifter|auto_generated|sbit_w[25]~51_combout\ & !IR(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|auto_generated|sbit_w[25]~51_combout\,
	datab => IR(1),
	datad => \shifter|auto_generated|sbit_w[41]~49_combout\,
	combout => \shifter|auto_generated|sbit_w[41]~52_combout\);

-- Location: LCCOMB_X59_Y3_N6
\shifter|auto_generated|sbit_w[57]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[57]~48_combout\ = (IR(2) & ((IR(4) & ((\shifter|auto_generated|sbit_w[45]~47_combout\))) # (!IR(4) & (\shifter|auto_generated|sbit_w[37]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(2),
	datab => IR(4),
	datac => \shifter|auto_generated|sbit_w[37]~36_combout\,
	datad => \shifter|auto_generated|sbit_w[45]~47_combout\,
	combout => \shifter|auto_generated|sbit_w[57]~48_combout\);

-- Location: LCCOMB_X55_Y3_N22
\shifter|auto_generated|sbit_w[57]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[57]~53_combout\ = (\shifter|auto_generated|sbit_w[57]~48_combout\) # ((!IR(2) & \shifter|auto_generated|sbit_w[41]~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(2),
	datab => \shifter|auto_generated|sbit_w[41]~52_combout\,
	datad => \shifter|auto_generated|sbit_w[57]~48_combout\,
	combout => \shifter|auto_generated|sbit_w[57]~53_combout\);

-- Location: LCCOMB_X52_Y4_N26
\Selector18~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector18~11_combout\ = (!\state.ex_or~q\ & (!\state.ex_load~q\ & ((!\state.ex_and~q\) # (!AC(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_or~q\,
	datab => \state.ex_load~q\,
	datac => AC(9),
	datad => \state.ex_and~q\,
	combout => \Selector18~11_combout\);

-- Location: LCCOMB_X52_Y7_N4
\Selector18~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector18~6_combout\ = (AC(9) & (((\state.ex_xor~q\ & !\altsyncram_component|auto_generated|q_a\(9))) # (!\Selector27~0_combout\))) # (!AC(9) & (\state.ex_xor~q\ & ((\altsyncram_component|auto_generated|q_a\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AC(9),
	datab => \state.ex_xor~q\,
	datac => \Selector27~0_combout\,
	datad => \altsyncram_component|auto_generated|q_a\(9),
	combout => \Selector18~6_combout\);

-- Location: LCCOMB_X52_Y7_N14
\Selector18~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector18~7_combout\ = (\Selector20~4_combout\) # ((\Selector18~6_combout\) # ((!\Selector18~11_combout\ & \altsyncram_component|auto_generated|q_a\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector18~11_combout\,
	datab => \Selector20~4_combout\,
	datac => \Selector18~6_combout\,
	datad => \altsyncram_component|auto_generated|q_a\(9),
	combout => \Selector18~7_combout\);

-- Location: LCCOMB_X56_Y4_N2
\Selector18~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector18~10_combout\ = (IR(3) & (\state.ex_shift~q\ & (!IR(4) & \shifter|auto_generated|sbit_w[49]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(3),
	datab => \state.ex_shift~q\,
	datac => IR(4),
	datad => \shifter|auto_generated|sbit_w[49]~40_combout\,
	combout => \Selector18~10_combout\);

-- Location: LCCOMB_X55_Y4_N22
\Selector18~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector18~8_combout\ = (\Selector18~7_combout\) # ((\Selector18~10_combout\) # ((\AC[13]~0_combout\ & \Add1~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AC[13]~0_combout\,
	datab => \Selector18~7_combout\,
	datac => \Add1~60_combout\,
	datad => \Selector18~10_combout\,
	combout => \Selector18~8_combout\);

-- Location: LCCOMB_X56_Y4_N30
\Selector18~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector18~9_combout\ = (\Selector18~4_combout\) # ((\Selector18~8_combout\) # ((\shifter|auto_generated|sbit_w[57]~53_combout\ & \Selector26~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector18~4_combout\,
	datab => \shifter|auto_generated|sbit_w[57]~53_combout\,
	datac => \Selector26~1_combout\,
	datad => \Selector18~8_combout\,
	combout => \Selector18~9_combout\);

-- Location: FF_X56_Y4_N31
\AC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector18~9_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(9));

-- Location: M9K_X53_Y7_N0
\altsyncram_component|auto_generated|ram_block1a8\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000B00000FFF000880B888888F88008800880800F8888",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "SimpleDemo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_dtr3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 11,
	port_b_data_width => 4,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MW~q\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: FF_X54_Y7_N27
\IR[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \altsyncram_component|auto_generated|q_a\(10),
	sload => VCC,
	ena => \IR[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(10));

-- Location: LCCOMB_X52_Y6_N28
\Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\state.fetch~q\ & ((\WideNor0~combout\ & ((\altsyncram_component|auto_generated|q_a\(10)))) # (!\WideNor0~combout\ & (IR(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~combout\,
	datab => IR(10),
	datac => \state.fetch~q\,
	datad => \altsyncram_component|auto_generated|q_a\(10),
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X52_Y6_N30
\Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\Selector1~0_combout\) # ((\state.fetch~q\ & \Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.fetch~q\,
	datac => \Add0~20_combout\,
	datad => \Selector1~0_combout\,
	combout => \Selector1~1_combout\);

-- Location: LCCOMB_X51_Y6_N14
\Selector1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (\state.ex_return~q\ & (\PC_stack[0][10]~q\)) # (!\state.ex_return~q\ & (((\state.init~q\ & \Selector1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[0][10]~q\,
	datab => \state.init~q\,
	datac => \Selector1~1_combout\,
	datad => \state.ex_return~q\,
	combout => \Selector1~2_combout\);

-- Location: FF_X51_Y6_N15
\PC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector1~2_combout\,
	ena => \PC[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(10));

-- Location: LCCOMB_X52_Y6_N0
\next_mem_addr[10]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_mem_addr[10]~10_combout\ = (\Selector1~0_combout\) # ((PC(10) & \state.fetch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(10),
	datac => \state.fetch~q\,
	datad => \Selector1~0_combout\,
	combout => \next_mem_addr[10]~10_combout\);

-- Location: FF_X54_Y7_N5
\IR[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \altsyncram_component|auto_generated|q_a\(9),
	sload => VCC,
	ena => \IR[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(9));

-- Location: LCCOMB_X52_Y7_N20
\Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!\state.fetch~q\ & ((\WideNor0~combout\ & ((\altsyncram_component|auto_generated|q_a\(9)))) # (!\WideNor0~combout\ & (IR(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.fetch~q\,
	datab => \WideNor0~combout\,
	datac => IR(9),
	datad => \altsyncram_component|auto_generated|q_a\(9),
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X52_Y6_N24
\Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\Selector2~0_combout\) # ((\state.fetch~q\ & \Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.fetch~q\,
	datac => \Selector2~0_combout\,
	datad => \Add0~18_combout\,
	combout => \Selector2~1_combout\);

-- Location: LCCOMB_X51_Y6_N28
\Selector2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = (\state.ex_return~q\ & (\PC_stack[0][9]~q\)) # (!\state.ex_return~q\ & (((\state.init~q\ & \Selector2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[0][9]~q\,
	datab => \state.ex_return~q\,
	datac => \state.init~q\,
	datad => \Selector2~1_combout\,
	combout => \Selector2~2_combout\);

-- Location: FF_X51_Y6_N29
\PC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector2~2_combout\,
	ena => \PC[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(9));

-- Location: LCCOMB_X52_Y7_N18
\next_mem_addr[9]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_mem_addr[9]~9_combout\ = (\Selector2~0_combout\) # ((\state.fetch~q\ & PC(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.fetch~q\,
	datac => PC(9),
	datad => \Selector2~0_combout\,
	combout => \next_mem_addr[9]~9_combout\);

-- Location: FF_X54_Y4_N13
\IR[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \altsyncram_component|auto_generated|q_a\(8),
	sload => VCC,
	ena => \IR[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(8));

-- Location: LCCOMB_X52_Y7_N8
\Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (!\state.fetch~q\ & ((\WideNor0~combout\ & ((\altsyncram_component|auto_generated|q_a\(8)))) # (!\WideNor0~combout\ & (IR(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.fetch~q\,
	datab => \WideNor0~combout\,
	datac => IR(8),
	datad => \altsyncram_component|auto_generated|q_a\(8),
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X49_Y5_N16
\Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\Selector3~0_combout\) # ((\Add0~16_combout\ & \state.fetch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~16_combout\,
	datac => \state.fetch~q\,
	datad => \Selector3~0_combout\,
	combout => \Selector3~1_combout\);

-- Location: LCCOMB_X49_Y5_N22
\Selector3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~2_combout\ = (\state.ex_return~q\ & (\PC_stack[0][8]~q\)) # (!\state.ex_return~q\ & (((\state.init~q\ & \Selector3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[0][8]~q\,
	datab => \state.init~q\,
	datac => \state.ex_return~q\,
	datad => \Selector3~1_combout\,
	combout => \Selector3~2_combout\);

-- Location: FF_X49_Y5_N23
\PC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector3~2_combout\,
	ena => \PC[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(8));

-- Location: LCCOMB_X52_Y7_N6
\next_mem_addr[8]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_mem_addr[8]~8_combout\ = (\Selector3~0_combout\) # ((PC(8) & \state.fetch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(8),
	datac => \Selector3~0_combout\,
	datad => \state.fetch~q\,
	combout => \next_mem_addr[8]~8_combout\);

-- Location: M9K_X53_Y4_N0
\altsyncram_component|auto_generated|ram_block1a4\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000EF0000FFF00012F3110101F1E111010222022F0211",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "SimpleDemo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_dtr3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 11,
	port_b_data_width => 4,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MW~q\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: LCCOMB_X51_Y4_N2
\Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (!\state.fetch~q\ & ((\WideNor0~combout\ & (\altsyncram_component|auto_generated|q_a\(7))) # (!\WideNor0~combout\ & ((IR(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.fetch~q\,
	datab => \WideNor0~combout\,
	datac => \altsyncram_component|auto_generated|q_a\(7),
	datad => IR(7),
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X51_Y7_N18
\Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\Selector4~0_combout\) # ((\state.fetch~q\ & \Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.fetch~q\,
	datac => \Add0~14_combout\,
	datad => \Selector4~0_combout\,
	combout => \Selector4~1_combout\);

-- Location: LCCOMB_X51_Y7_N6
\Selector4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~2_combout\ = (\state.ex_return~q\ & (\PC_stack[0][7]~q\)) # (!\state.ex_return~q\ & (((\state.init~q\ & \Selector4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[0][7]~q\,
	datab => \state.ex_return~q\,
	datac => \state.init~q\,
	datad => \Selector4~1_combout\,
	combout => \Selector4~2_combout\);

-- Location: FF_X51_Y7_N7
\PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector4~2_combout\,
	ena => \PC[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(7));

-- Location: LCCOMB_X51_Y4_N4
\next_mem_addr[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_mem_addr[7]~7_combout\ = (\Selector4~0_combout\) # ((PC(7) & \state.fetch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(7),
	datab => \Selector4~0_combout\,
	datad => \state.fetch~q\,
	combout => \next_mem_addr[7]~7_combout\);

-- Location: LCCOMB_X52_Y3_N16
\Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (!\state.fetch~q\ & ((\WideNor0~combout\ & (\altsyncram_component|auto_generated|q_a\(6))) # (!\WideNor0~combout\ & ((IR(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~combout\,
	datab => \state.fetch~q\,
	datac => \altsyncram_component|auto_generated|q_a\(6),
	datad => IR(6),
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X51_Y7_N2
\Selector5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\Selector5~0_combout\) # ((\Add0~12_combout\ & \state.fetch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datac => \state.fetch~q\,
	datad => \Selector5~0_combout\,
	combout => \Selector5~1_combout\);

-- Location: LCCOMB_X51_Y7_N20
\Selector5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~2_combout\ = (\state.ex_return~q\ & (((\PC_stack[0][6]~q\)))) # (!\state.ex_return~q\ & (\state.init~q\ & ((\Selector5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.init~q\,
	datab => \PC_stack[0][6]~q\,
	datac => \state.ex_return~q\,
	datad => \Selector5~1_combout\,
	combout => \Selector5~2_combout\);

-- Location: FF_X51_Y7_N21
\PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector5~2_combout\,
	ena => \PC[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(6));

-- Location: LCCOMB_X52_Y3_N6
\next_mem_addr[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_mem_addr[6]~6_combout\ = (\Selector5~0_combout\) # ((PC(6) & \state.fetch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(6),
	datab => \state.fetch~q\,
	datad => \Selector5~0_combout\,
	combout => \next_mem_addr[6]~6_combout\);

-- Location: M9K_X53_Y5_N0
\altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000EF8421DEF321C9F71A1101F1E311044868030B52FE",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "SimpleDemo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_dtr3:auto_generated|ALTSYNCRAM",
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
	portawe => \MW~q\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: FF_X54_Y5_N13
\IR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \altsyncram_component|auto_generated|q_a\(1),
	sload => VCC,
	ena => \IR[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(1));

-- Location: LCCOMB_X57_Y3_N26
\shifter|auto_generated|sbit_w[36]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[36]~4_combout\ = (IR(1) & IR(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => IR(1),
	datad => IR(4),
	combout => \shifter|auto_generated|sbit_w[36]~4_combout\);

-- Location: LCCOMB_X55_Y3_N12
\shifter|auto_generated|sbit_w[40]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[40]~15_combout\ = (!IR(1) & ((IR(0) & ((\shifter|auto_generated|sbit_w[24]~14_combout\))) # (!IR(0) & (AC(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(0),
	datab => AC(8),
	datac => \shifter|auto_generated|sbit_w[24]~14_combout\,
	datad => IR(1),
	combout => \shifter|auto_generated|sbit_w[40]~15_combout\);

-- Location: LCCOMB_X57_Y3_N12
\shifter|auto_generated|sbit_w[22]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[22]~16_combout\ = (AC(6) & !IR(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => AC(6),
	datad => IR(0),
	combout => \shifter|auto_generated|sbit_w[22]~16_combout\);

-- Location: LCCOMB_X57_Y3_N30
\shifter|auto_generated|sbit_w[40]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[40]~17_combout\ = (!IR(4) & (IR(1) & ((\shifter|auto_generated|sbit_w[22]~16_combout\) # (\shifter|auto_generated|sbit_w[22]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|auto_generated|sbit_w[22]~16_combout\,
	datab => IR(4),
	datac => IR(1),
	datad => \shifter|auto_generated|sbit_w[22]~8_combout\,
	combout => \shifter|auto_generated|sbit_w[40]~17_combout\);

-- Location: LCCOMB_X57_Y3_N8
\shifter|auto_generated|sbit_w[40]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[40]~20_combout\ = (\shifter|auto_generated|sbit_w[40]~15_combout\) # ((\shifter|auto_generated|sbit_w[40]~17_combout\) # ((\shifter|auto_generated|sbit_w[36]~4_combout\ & \shifter|auto_generated|sbit_w[26]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|auto_generated|sbit_w[36]~4_combout\,
	datab => \shifter|auto_generated|sbit_w[40]~15_combout\,
	datac => \shifter|auto_generated|sbit_w[40]~17_combout\,
	datad => \shifter|auto_generated|sbit_w[26]~19_combout\,
	combout => \shifter|auto_generated|sbit_w[40]~20_combout\);

-- Location: LCCOMB_X57_Y5_N2
\shifter|auto_generated|sbit_w[60]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[60]~74_combout\ = (IR(2) & ((IR(4) & (AC(15))) # (!IR(4) & ((\shifter|auto_generated|sbit_w[40]~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AC(15),
	datab => IR(4),
	datac => IR(2),
	datad => \shifter|auto_generated|sbit_w[40]~20_combout\,
	combout => \shifter|auto_generated|sbit_w[60]~74_combout\);

-- Location: LCCOMB_X58_Y3_N30
\shifter|auto_generated|sbit_w[30]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[30]~23_combout\ = (\shifter|auto_generated|sbit_w[30]~22_combout\) # ((!IR(0) & AC(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(0),
	datab => AC(14),
	datad => \shifter|auto_generated|sbit_w[30]~22_combout\,
	combout => \shifter|auto_generated|sbit_w[30]~23_combout\);

-- Location: LCCOMB_X58_Y3_N4
\shifter|auto_generated|sbit_w[44]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[44]~24_combout\ = (IR(1) & ((IR(4) & (\shifter|auto_generated|sbit_w[30]~23_combout\)) # (!IR(4) & ((\shifter|auto_generated|sbit_w[26]~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(4),
	datab => IR(1),
	datac => \shifter|auto_generated|sbit_w[30]~23_combout\,
	datad => \shifter|auto_generated|sbit_w[26]~19_combout\,
	combout => \shifter|auto_generated|sbit_w[44]~24_combout\);

-- Location: LCCOMB_X58_Y3_N26
\shifter|auto_generated|sbit_w[44]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[44]~27_combout\ = (\shifter|auto_generated|sbit_w[44]~24_combout\) # ((!IR(1) & \shifter|auto_generated|sbit_w[28]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => IR(1),
	datac => \shifter|auto_generated|sbit_w[44]~24_combout\,
	datad => \shifter|auto_generated|sbit_w[28]~26_combout\,
	combout => \shifter|auto_generated|sbit_w[44]~27_combout\);

-- Location: LCCOMB_X57_Y5_N4
\shifter|auto_generated|sbit_w[60]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[60]~75_combout\ = (\shifter|auto_generated|sbit_w[60]~74_combout\) # ((!IR(2) & \shifter|auto_generated|sbit_w[44]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shifter|auto_generated|sbit_w[60]~74_combout\,
	datac => IR(2),
	datad => \shifter|auto_generated|sbit_w[44]~27_combout\,
	combout => \shifter|auto_generated|sbit_w[60]~75_combout\);

-- Location: LCCOMB_X56_Y3_N4
\shifter|auto_generated|sbit_w[32]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[32]~2_combout\ = (AC(1) & (IR(4) & (!IR(1) & IR(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AC(1),
	datab => IR(4),
	datac => IR(1),
	datad => IR(0),
	combout => \shifter|auto_generated|sbit_w[32]~2_combout\);

-- Location: LCCOMB_X56_Y3_N22
\shifter|auto_generated|sbit_w[32]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[32]~87_combout\ = (\shifter|auto_generated|sbit_w[32]~2_combout\) # ((!IR(0) & (!IR(1) & AC(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(0),
	datab => \shifter|auto_generated|sbit_w[32]~2_combout\,
	datac => IR(1),
	datad => AC(0),
	combout => \shifter|auto_generated|sbit_w[32]~87_combout\);

-- Location: LCCOMB_X57_Y3_N16
\shifter|auto_generated|sbit_w[52]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[52]~72_combout\ = (IR(2) & ((IR(4) & (\shifter|auto_generated|sbit_w[40]~20_combout\)) # (!IR(4) & ((\shifter|auto_generated|sbit_w[32]~87_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(2),
	datab => IR(4),
	datac => \shifter|auto_generated|sbit_w[40]~20_combout\,
	datad => \shifter|auto_generated|sbit_w[32]~87_combout\,
	combout => \shifter|auto_generated|sbit_w[52]~72_combout\);

-- Location: LCCOMB_X57_Y3_N20
\shifter|auto_generated|sbit_w[36]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[36]~10_combout\ = (IR(1) & ((IR(4) & ((\shifter|auto_generated|sbit_w[22]~9_combout\))) # (!IR(4) & (\shifter|auto_generated|sbit_w[18]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(1),
	datab => IR(4),
	datac => \shifter|auto_generated|sbit_w[18]~6_combout\,
	datad => \shifter|auto_generated|sbit_w[22]~9_combout\,
	combout => \shifter|auto_generated|sbit_w[36]~10_combout\);

-- Location: LCCOMB_X57_Y3_N2
\shifter|auto_generated|sbit_w[36]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[36]~13_combout\ = (\shifter|auto_generated|sbit_w[36]~10_combout\) # ((!IR(1) & \shifter|auto_generated|sbit_w[20]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(1),
	datac => \shifter|auto_generated|sbit_w[20]~12_combout\,
	datad => \shifter|auto_generated|sbit_w[36]~10_combout\,
	combout => \shifter|auto_generated|sbit_w[36]~13_combout\);

-- Location: LCCOMB_X57_Y5_N24
\shifter|auto_generated|sbit_w[52]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[52]~73_combout\ = (\shifter|auto_generated|sbit_w[52]~72_combout\) # ((!IR(2) & \shifter|auto_generated|sbit_w[36]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => IR(2),
	datac => \shifter|auto_generated|sbit_w[52]~72_combout\,
	datad => \shifter|auto_generated|sbit_w[36]~13_combout\,
	combout => \shifter|auto_generated|sbit_w[52]~73_combout\);

-- Location: LCCOMB_X56_Y5_N30
\Selector23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (AC(4) & (((\altsyncram_component|auto_generated|q_a\(4) & \state.ex_and~q\)) # (!\Selector27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AC(4),
	datab => \altsyncram_component|auto_generated|q_a\(4),
	datac => \Selector27~0_combout\,
	datad => \state.ex_and~q\,
	combout => \Selector23~0_combout\);

-- Location: IOIBUF_X51_Y0_N8
\IO_DATA[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(4),
	o => \IO_DATA[4]~input_o\);

-- Location: LCCOMB_X52_Y5_N10
\Selector23~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector23~1_combout\ = (\state.ex_loadi~q\ & ((IR(4)) # ((\IO_DATA[4]~input_o\ & \state.ex_in~q\)))) # (!\state.ex_loadi~q\ & (\IO_DATA[4]~input_o\ & (\state.ex_in~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_loadi~q\,
	datab => \IO_DATA[4]~input_o\,
	datac => \state.ex_in~q\,
	datad => IR(4),
	combout => \Selector23~1_combout\);

-- Location: LCCOMB_X52_Y5_N20
\Selector23~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector23~2_combout\ = (\altsyncram_component|auto_generated|q_a\(4) & (((\state.ex_xor~q\ & !AC(4))) # (!\Selector26~0_combout\))) # (!\altsyncram_component|auto_generated|q_a\(4) & (\state.ex_xor~q\ & (AC(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_xor~q\,
	datab => AC(4),
	datac => \Selector26~0_combout\,
	datad => \altsyncram_component|auto_generated|q_a\(4),
	combout => \Selector23~2_combout\);

-- Location: LCCOMB_X55_Y5_N14
\Selector23~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector23~3_combout\ = (\Selector23~1_combout\) # ((\Selector23~2_combout\) # ((\AC[13]~0_combout\ & \Add1~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector23~1_combout\,
	datab => \AC[13]~0_combout\,
	datac => \Add1~30_combout\,
	datad => \Selector23~2_combout\,
	combout => \Selector23~3_combout\);

-- Location: LCCOMB_X56_Y5_N24
\Selector23~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector23~4_combout\ = (\Selector23~0_combout\) # ((\Selector23~3_combout\) # ((\Selector26~1_combout\ & \shifter|auto_generated|sbit_w[52]~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector26~1_combout\,
	datab => \shifter|auto_generated|sbit_w[52]~73_combout\,
	datac => \Selector23~0_combout\,
	datad => \Selector23~3_combout\,
	combout => \Selector23~4_combout\);

-- Location: LCCOMB_X56_Y5_N26
\Selector23~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector23~5_combout\ = (\Selector23~4_combout\) # ((\shifter|auto_generated|sbit_w[60]~75_combout\ & \Selector27~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|auto_generated|sbit_w[60]~75_combout\,
	datab => \Selector27~7_combout\,
	datad => \Selector23~4_combout\,
	combout => \Selector23~5_combout\);

-- Location: FF_X56_Y5_N27
\AC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector23~5_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(4));

-- Location: LCCOMB_X52_Y3_N0
\Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (!\state.fetch~q\ & ((\WideNor0~combout\ & (\altsyncram_component|auto_generated|q_a\(5))) # (!\WideNor0~combout\ & ((IR(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~combout\,
	datab => \state.fetch~q\,
	datac => \altsyncram_component|auto_generated|q_a\(5),
	datad => IR(5),
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X52_Y3_N12
\Selector6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\Selector6~0_combout\) # ((\state.fetch~q\ & \Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.fetch~q\,
	datac => \Add0~10_combout\,
	datad => \Selector6~0_combout\,
	combout => \Selector6~1_combout\);

-- Location: LCCOMB_X51_Y3_N8
\Selector6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~2_combout\ = (\state.ex_return~q\ & (\PC_stack[0][5]~q\)) # (!\state.ex_return~q\ & (((\Selector6~1_combout\ & \state.init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_return~q\,
	datab => \PC_stack[0][5]~q\,
	datac => \Selector6~1_combout\,
	datad => \state.init~q\,
	combout => \Selector6~2_combout\);

-- Location: FF_X51_Y3_N9
\PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector6~2_combout\,
	ena => \PC[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(5));

-- Location: LCCOMB_X52_Y3_N22
\next_mem_addr[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_mem_addr[5]~5_combout\ = (\Selector6~0_combout\) # ((PC(5) & \state.fetch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(5),
	datab => \state.fetch~q\,
	datad => \Selector6~0_combout\,
	combout => \next_mem_addr[5]~5_combout\);

-- Location: FF_X54_Y5_N21
\IR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \altsyncram_component|auto_generated|q_a\(3),
	sload => VCC,
	ena => \IR[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(3));

-- Location: LCCOMB_X57_Y4_N28
\Selector12~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector12~6_combout\ = (\state.ex_shift~q\ & (!IR(3) & !IR(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_shift~q\,
	datac => IR(3),
	datad => IR(4),
	combout => \Selector12~6_combout\);

-- Location: LCCOMB_X58_Y3_N0
\Selector12~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector12~7_combout\ = (IR(1) & (((\shifter|auto_generated|sbit_w[29]~68_combout\)))) # (!IR(1) & (IR(0) & (AC(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(0),
	datab => AC(14),
	datac => IR(1),
	datad => \shifter|auto_generated|sbit_w[29]~68_combout\,
	combout => \Selector12~7_combout\);

-- Location: LCCOMB_X57_Y4_N6
\Selector12~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector12~8_combout\ = (\Selector12~6_combout\ & ((IR(2) & (\shifter|auto_generated|sbit_w[43]~70_combout\)) # (!IR(2) & ((\Selector12~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(2),
	datab => \Selector12~6_combout\,
	datac => \shifter|auto_generated|sbit_w[43]~70_combout\,
	datad => \Selector12~7_combout\,
	combout => \Selector12~8_combout\);

-- Location: IOIBUF_X58_Y0_N1
\IO_DATA[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(15),
	o => \IO_DATA[15]~input_o\);

-- Location: LCCOMB_X57_Y4_N14
\Selector12~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector12~5_combout\ = (\state.ex_in~q\ & ((\IO_DATA[15]~input_o\) # ((IR(10) & \state.ex_loadi~q\)))) # (!\state.ex_in~q\ & (((IR(10) & \state.ex_loadi~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_in~q\,
	datab => \IO_DATA[15]~input_o\,
	datac => IR(10),
	datad => \state.ex_loadi~q\,
	combout => \Selector12~5_combout\);

-- Location: LCCOMB_X56_Y4_N26
\Selector12~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector12~9_combout\ = (\Selector18~5_combout\ & ((\shifter|auto_generated|sbit_w[55]~86_combout\) # ((!IR(2) & \shifter|auto_generated|sbit_w[39]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(2),
	datab => \Selector18~5_combout\,
	datac => \shifter|auto_generated|sbit_w[55]~86_combout\,
	datad => \shifter|auto_generated|sbit_w[39]~66_combout\,
	combout => \Selector12~9_combout\);

-- Location: LCCOMB_X57_Y4_N4
\Selector12~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector12~4_combout\ = (\altsyncram_component|auto_generated|q_a\(15) & (((\state.ex_xor~q\ & !AC(15))) # (!\Selector26~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector26~0_combout\,
	datab => \state.ex_xor~q\,
	datac => AC(15),
	datad => \altsyncram_component|auto_generated|q_a\(15),
	combout => \Selector12~4_combout\);

-- Location: LCCOMB_X56_Y4_N20
\Selector12~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector12~10_combout\ = (\Selector12~8_combout\) # ((\Selector12~5_combout\) # ((\Selector12~9_combout\) # (\Selector12~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~8_combout\,
	datab => \Selector12~5_combout\,
	datac => \Selector12~9_combout\,
	datad => \Selector12~4_combout\,
	combout => \Selector12~10_combout\);

-- Location: LCCOMB_X57_Y5_N18
\Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (!IR(0) & (!IR(2) & (!IR(3) & !IR(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(0),
	datab => IR(2),
	datac => IR(3),
	datad => IR(1),
	combout => \Selector12~0_combout\);

-- Location: LCCOMB_X56_Y6_N30
\Selector12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector12~1_combout\ = (\state.ex_shift~q\ & ((IR(4)) # (\Selector12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.ex_shift~q\,
	datac => IR(4),
	datad => \Selector12~0_combout\,
	combout => \Selector12~1_combout\);

-- Location: LCCOMB_X55_Y6_N18
\Selector12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector12~2_combout\ = (\altsyncram_component|auto_generated|q_a\(15) & ((\state.ex_and~q\))) # (!\altsyncram_component|auto_generated|q_a\(15) & (\state.ex_xor~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_xor~q\,
	datab => \state.ex_and~q\,
	datad => \altsyncram_component|auto_generated|q_a\(15),
	combout => \Selector12~2_combout\);

-- Location: LCCOMB_X55_Y6_N20
\Selector12~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector12~3_combout\ = (AC(15) & (((\Selector12~1_combout\) # (\Selector12~2_combout\)) # (!\Selector27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector27~0_combout\,
	datab => AC(15),
	datac => \Selector12~1_combout\,
	datad => \Selector12~2_combout\,
	combout => \Selector12~3_combout\);

-- Location: LCCOMB_X51_Y4_N10
\Add1~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~89_combout\ = (AC(15) & ((\state.ex_sub~q\) # ((\state.ex_addi~q\) # (\state.ex_add~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AC(15),
	datab => \state.ex_sub~q\,
	datac => \state.ex_addi~q\,
	datad => \state.ex_add~q\,
	combout => \Add1~89_combout\);

-- Location: LCCOMB_X54_Y7_N10
\Add1~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~87_combout\ = (\state.ex_sub~q\ & ((!\altsyncram_component|auto_generated|q_a\(15)))) # (!\state.ex_sub~q\ & (\state.ex_add~q\ & \altsyncram_component|auto_generated|q_a\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_sub~q\,
	datab => \state.ex_add~q\,
	datad => \altsyncram_component|auto_generated|q_a\(15),
	combout => \Add1~87_combout\);

-- Location: LCCOMB_X54_Y7_N18
\Add1~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~88_combout\ = (IR(10) & ((\Add1~57_combout\) # ((\WideOr3~3_combout\ & \Add1~87_combout\)))) # (!IR(10) & (((\WideOr3~3_combout\ & \Add1~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(10),
	datab => \Add1~57_combout\,
	datac => \WideOr3~3_combout\,
	datad => \Add1~87_combout\,
	combout => \Add1~88_combout\);

-- Location: LCCOMB_X55_Y4_N16
\Add1~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~90_combout\ = \Add1~89_combout\ $ (\Add1~86\ $ (!\Add1~88_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~89_combout\,
	datad => \Add1~88_combout\,
	cin => \Add1~86\,
	combout => \Add1~90_combout\);

-- Location: LCCOMB_X55_Y4_N20
\Selector12~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector12~11_combout\ = (\Selector12~10_combout\) # ((\Selector12~3_combout\) # ((\AC[13]~0_combout\ & \Add1~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~10_combout\,
	datab => \Selector12~3_combout\,
	datac => \AC[13]~0_combout\,
	datad => \Add1~90_combout\,
	combout => \Selector12~11_combout\);

-- Location: FF_X55_Y4_N21
\AC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector12~11_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(15));

-- Location: LCCOMB_X51_Y5_N8
\Selector28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (\state.init~q\ & !\state.fetch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.init~q\,
	datad => \state.fetch~q\,
	combout => \Selector28~0_combout\);

-- Location: LCCOMB_X54_Y6_N24
\state~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~51_combout\ = (!\altsyncram_component|auto_generated|q_a\(11) & (!\altsyncram_component|auto_generated|q_a\(12) & (!\altsyncram_component|auto_generated|q_a\(13) & \state~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|q_a\(11),
	datab => \altsyncram_component|auto_generated|q_a\(12),
	datac => \altsyncram_component|auto_generated|q_a\(13),
	datad => \state~35_combout\,
	combout => \state~51_combout\);

-- Location: FF_X54_Y6_N25
\state.ex_jzero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~51_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_jzero~q\);

-- Location: LCCOMB_X51_Y4_N28
\state~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~54_combout\ = (!\altsyncram_component|auto_generated|q_a\(14) & (\altsyncram_component|auto_generated|q_a\(13) & \Selector29~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altsyncram_component|auto_generated|q_a\(14),
	datac => \altsyncram_component|auto_generated|q_a\(13),
	datad => \Selector29~1_combout\,
	combout => \state~54_combout\);

-- Location: FF_X51_Y4_N29
\state.ex_jump\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~54_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_jump~q\);

-- Location: LCCOMB_X54_Y6_N6
\state~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~52_combout\ = (!\altsyncram_component|auto_generated|q_a\(14) & (\altsyncram_component|auto_generated|q_a\(12) & (\altsyncram_component|auto_generated|q_a\(13) & \Selector29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|q_a\(14),
	datab => \altsyncram_component|auto_generated|q_a\(12),
	datac => \altsyncram_component|auto_generated|q_a\(13),
	datad => \Selector29~0_combout\,
	combout => \state~52_combout\);

-- Location: FF_X54_Y6_N7
\state.ex_jpos\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~52_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_jpos~q\);

-- Location: LCCOMB_X51_Y6_N16
\WideOr2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (\state.ex_jump~q\) # ((\state.ex_call~q\) # ((\state.ex_jpos~q\) # (\state.ex_return~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_jump~q\,
	datab => \state.ex_call~q\,
	datac => \state.ex_jpos~q\,
	datad => \state.ex_return~q\,
	combout => \WideOr2~0_combout\);

-- Location: LCCOMB_X51_Y6_N18
\WideOr2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr2~1_combout\ = (\state.ex_jneg~q\) # (((\state.ex_jzero~q\) # (\WideOr2~0_combout\)) # (!\Selector28~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_jneg~q\,
	datab => \Selector28~0_combout\,
	datac => \state.ex_jzero~q\,
	datad => \WideOr2~0_combout\,
	combout => \WideOr2~1_combout\);

-- Location: LCCOMB_X51_Y6_N12
\PC[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC[0]~0_combout\ = (\resetn~input_o\ & (\WideOr2~1_combout\ & ((AC(15)) # (!\state.ex_jneg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_jneg~q\,
	datab => AC(15),
	datac => \resetn~input_o\,
	datad => \WideOr2~1_combout\,
	combout => \PC[0]~0_combout\);

-- Location: LCCOMB_X58_Y3_N22
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!AC(12) & (!AC(14) & (!AC(15) & !AC(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AC(12),
	datab => AC(14),
	datac => AC(15),
	datad => AC(13),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X56_Y3_N14
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!AC(4) & (!AC(5) & (!AC(7) & !AC(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AC(4),
	datab => AC(5),
	datac => AC(7),
	datad => AC(6),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X56_Y3_N8
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!AC(1) & (!AC(3) & (!AC(2) & !AC(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AC(1),
	datab => AC(3),
	datac => AC(2),
	datad => AC(0),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X55_Y3_N8
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!AC(9) & (!AC(8) & (!AC(10) & !AC(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AC(9),
	datab => AC(8),
	datac => AC(10),
	datad => AC(11),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X55_Y3_N26
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~2_combout\ & (\Equal0~3_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X51_Y6_N6
\PC[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC[4]~1_combout\ = (\state.ex_jneg~q\ & (AC(15))) # (!\state.ex_jneg~q\ & ((\state.ex_jzero~q\ & ((\Equal0~4_combout\))) # (!\state.ex_jzero~q\ & (!AC(15) & !\Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_jneg~q\,
	datab => AC(15),
	datac => \state.ex_jzero~q\,
	datad => \Equal0~4_combout\,
	combout => \PC[4]~1_combout\);

-- Location: LCCOMB_X51_Y6_N0
\PC[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC[0]~2_combout\ = (\PC[0]~0_combout\ & ((\PC[4]~1_combout\) # ((!\state.ex_jpos~q\ & !\state.ex_jzero~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[0]~0_combout\,
	datab => \state.ex_jpos~q\,
	datac => \state.ex_jzero~q\,
	datad => \PC[4]~1_combout\,
	combout => \PC[0]~2_combout\);

-- Location: FF_X49_Y5_N1
\PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector7~2_combout\,
	ena => \PC[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(4));

-- Location: LCCOMB_X52_Y5_N6
\next_mem_addr[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_mem_addr[4]~4_combout\ = (\Selector7~0_combout\) # ((\state.fetch~q\ & PC(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.fetch~q\,
	datac => PC(4),
	datad => \Selector7~0_combout\,
	combout => \next_mem_addr[4]~4_combout\);

-- Location: LCCOMB_X52_Y3_N28
\Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (!\state.fetch~q\ & ((\WideNor0~combout\ & (\altsyncram_component|auto_generated|q_a\(0))) # (!\WideNor0~combout\ & ((IR(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|q_a\(0),
	datab => IR(0),
	datac => \WideNor0~combout\,
	datad => \state.fetch~q\,
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X52_Y3_N24
\Selector11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector11~1_combout\ = (\Selector11~0_combout\) # ((\state.fetch~q\ & \Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.fetch~q\,
	datac => \Add0~0_combout\,
	datad => \Selector11~0_combout\,
	combout => \Selector11~1_combout\);

-- Location: LCCOMB_X51_Y3_N16
\Selector11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector11~2_combout\ = (\state.ex_return~q\ & (\PC_stack[0][0]~q\)) # (!\state.ex_return~q\ & (((\state.init~q\ & \Selector11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[0][0]~q\,
	datab => \state.init~q\,
	datac => \state.ex_return~q\,
	datad => \Selector11~1_combout\,
	combout => \Selector11~2_combout\);

-- Location: FF_X51_Y3_N17
\PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector11~2_combout\,
	ena => \PC[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(0));

-- Location: LCCOMB_X52_Y6_N4
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (PC(1) & (!\Add0~1\)) # (!PC(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!PC(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X52_Y6_N6
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (PC(2) & (\Add0~3\ $ (GND))) # (!PC(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((PC(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X49_Y6_N22
\Selector9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = (\Selector9~0_combout\) # ((\state.fetch~q\ & \Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.fetch~q\,
	datac => \Add0~4_combout\,
	datad => \Selector9~0_combout\,
	combout => \Selector9~1_combout\);

-- Location: LCCOMB_X50_Y6_N26
\PC_stack[9][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC_stack[9][2]~feeder_combout\ = \PC_stack[8][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC_stack[8][2]~q\,
	combout => \PC_stack[9][2]~feeder_combout\);

-- Location: FF_X50_Y6_N27
\PC_stack[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC_stack[9][2]~feeder_combout\,
	ena => \PC_stack[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[9][2]~q\);

-- Location: LCCOMB_X49_Y6_N8
\Selector127~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector127~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[9][2]~q\))) # (!\state.ex_return~q\ & (\PC_stack[7][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[7][2]~q\,
	datab => \PC_stack[9][2]~q\,
	datac => \state.ex_return~q\,
	combout => \Selector127~0_combout\);

-- Location: FF_X49_Y6_N9
\PC_stack[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector127~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[8][2]~q\);

-- Location: LCCOMB_X49_Y6_N6
\Selector116~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector116~0_combout\ = (\state.ex_return~q\ & (\PC_stack[8][2]~q\)) # (!\state.ex_return~q\ & ((\PC_stack[6][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_return~q\,
	datac => \PC_stack[8][2]~q\,
	datad => \PC_stack[6][2]~q\,
	combout => \Selector116~0_combout\);

-- Location: FF_X49_Y6_N7
\PC_stack[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector116~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[7][2]~q\);

-- Location: LCCOMB_X49_Y6_N4
\Selector105~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector105~0_combout\ = (\state.ex_return~q\ & (\PC_stack[7][2]~q\)) # (!\state.ex_return~q\ & ((\PC_stack[5][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[7][2]~q\,
	datab => \PC_stack[5][2]~q\,
	datac => \state.ex_return~q\,
	combout => \Selector105~0_combout\);

-- Location: FF_X49_Y6_N5
\PC_stack[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector105~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[6][2]~q\);

-- Location: LCCOMB_X49_Y6_N18
\Selector94~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector94~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[6][2]~q\))) # (!\state.ex_return~q\ & (\PC_stack[4][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_stack[4][2]~q\,
	datac => \state.ex_return~q\,
	datad => \PC_stack[6][2]~q\,
	combout => \Selector94~0_combout\);

-- Location: FF_X49_Y6_N19
\PC_stack[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector94~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[5][2]~q\);

-- Location: LCCOMB_X49_Y6_N0
\Selector83~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector83~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[5][2]~q\))) # (!\state.ex_return~q\ & (\PC_stack[3][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_stack[3][2]~q\,
	datac => \state.ex_return~q\,
	datad => \PC_stack[5][2]~q\,
	combout => \Selector83~0_combout\);

-- Location: FF_X49_Y6_N1
\PC_stack[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector83~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[4][2]~q\);

-- Location: LCCOMB_X49_Y6_N2
\Selector72~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector72~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[4][2]~q\))) # (!\state.ex_return~q\ & (\PC_stack[2][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_stack[2][2]~q\,
	datac => \state.ex_return~q\,
	datad => \PC_stack[4][2]~q\,
	combout => \Selector72~0_combout\);

-- Location: FF_X49_Y6_N3
\PC_stack[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector72~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[3][2]~q\);

-- Location: LCCOMB_X49_Y6_N14
\Selector61~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector61~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[3][2]~q\))) # (!\state.ex_return~q\ & (\PC_stack[1][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[1][2]~q\,
	datab => \PC_stack[3][2]~q\,
	datac => \state.ex_return~q\,
	combout => \Selector61~0_combout\);

-- Location: FF_X49_Y6_N15
\PC_stack[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector61~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[2][2]~q\);

-- Location: LCCOMB_X49_Y6_N30
\Selector50~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector50~0_combout\ = (\state.ex_return~q\ & (\PC_stack[2][2]~q\)) # (!\state.ex_return~q\ & ((\PC_stack[0][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_stack[2][2]~q\,
	datac => \state.ex_return~q\,
	datad => \PC_stack[0][2]~q\,
	combout => \Selector50~0_combout\);

-- Location: FF_X49_Y6_N31
\PC_stack[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector50~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[1][2]~q\);

-- Location: LCCOMB_X49_Y6_N16
\Selector39~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector39~0_combout\ = (\state.ex_return~q\ & (\PC_stack[1][2]~q\)) # (!\state.ex_return~q\ & ((PC(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[1][2]~q\,
	datab => PC(2),
	datac => \state.ex_return~q\,
	combout => \Selector39~0_combout\);

-- Location: FF_X49_Y6_N17
\PC_stack[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector39~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[0][2]~q\);

-- Location: LCCOMB_X49_Y6_N20
\Selector9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector9~2_combout\ = (\state.ex_return~q\ & (((\PC_stack[0][2]~q\)))) # (!\state.ex_return~q\ & (\Selector9~1_combout\ & ((\state.init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector9~1_combout\,
	datab => \PC_stack[0][2]~q\,
	datac => \state.ex_return~q\,
	datad => \state.init~q\,
	combout => \Selector9~2_combout\);

-- Location: FF_X49_Y6_N21
\PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector9~2_combout\,
	ena => \PC[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(2));

-- Location: LCCOMB_X52_Y5_N0
\Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (!\state.fetch~q\ & ((\WideNor0~combout\ & ((\altsyncram_component|auto_generated|q_a\(3)))) # (!\WideNor0~combout\ & (IR(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.fetch~q\,
	datab => IR(3),
	datac => \WideNor0~combout\,
	datad => \altsyncram_component|auto_generated|q_a\(3),
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X52_Y6_N26
\Selector8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (\Selector8~0_combout\) # ((\state.fetch~q\ & \Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.fetch~q\,
	datac => \Add0~6_combout\,
	datad => \Selector8~0_combout\,
	combout => \Selector8~1_combout\);

-- Location: LCCOMB_X49_Y6_N26
\Selector8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector8~2_combout\ = (\state.ex_return~q\ & (\PC_stack[0][3]~q\)) # (!\state.ex_return~q\ & (((\state.init~q\ & \Selector8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[0][3]~q\,
	datab => \state.init~q\,
	datac => \state.ex_return~q\,
	datad => \Selector8~1_combout\,
	combout => \Selector8~2_combout\);

-- Location: FF_X49_Y6_N27
\PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector8~2_combout\,
	ena => \PC[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(3));

-- Location: LCCOMB_X52_Y5_N30
\next_mem_addr[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_mem_addr[3]~3_combout\ = (\Selector8~0_combout\) # ((PC(3) & \state.fetch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(3),
	datac => \state.fetch~q\,
	datad => \Selector8~0_combout\,
	combout => \next_mem_addr[3]~3_combout\);

-- Location: LCCOMB_X52_Y3_N8
\Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (!\state.fetch~q\ & ((\WideNor0~combout\ & (\altsyncram_component|auto_generated|q_a\(2))) # (!\WideNor0~combout\ & ((IR(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~combout\,
	datab => \state.fetch~q\,
	datac => \altsyncram_component|auto_generated|q_a\(2),
	datad => IR(2),
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X52_Y3_N26
\next_mem_addr[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_mem_addr[2]~2_combout\ = (\Selector9~0_combout\) # ((\state.fetch~q\ & PC(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.fetch~q\,
	datac => \Selector9~0_combout\,
	datad => PC(2),
	combout => \next_mem_addr[2]~2_combout\);

-- Location: M9K_X53_Y6_N0
\altsyncram_component|auto_generated|ram_block1a12\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000A00000FFF000205B23B3B3B2B433B66545B2266110",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "SimpleDemo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_dtr3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 11,
	port_b_data_width => 4,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MW~q\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\);

-- Location: LCCOMB_X51_Y5_N18
\state~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~32_combout\ = (\state.decode~q\ & (!\altsyncram_component|auto_generated|q_a\(13) & !\altsyncram_component|auto_generated|q_a\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.decode~q\,
	datab => \altsyncram_component|auto_generated|q_a\(13),
	datad => \altsyncram_component|auto_generated|q_a\(14),
	combout => \state~32_combout\);

-- Location: LCCOMB_X51_Y5_N6
\state~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~49_combout\ = (\altsyncram_component|auto_generated|q_a\(15) & (!\altsyncram_component|auto_generated|q_a\(12) & (\altsyncram_component|auto_generated|q_a\(11) & \state~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|q_a\(15),
	datab => \altsyncram_component|auto_generated|q_a\(12),
	datac => \altsyncram_component|auto_generated|q_a\(11),
	datad => \state~32_combout\,
	combout => \state~49_combout\);

-- Location: FF_X51_Y5_N7
\state.ex_return\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~49_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_return~q\);

-- Location: LCCOMB_X50_Y6_N20
\PC_stack[9][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC_stack[9][1]~feeder_combout\ = \PC_stack[8][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC_stack[8][1]~q\,
	combout => \PC_stack[9][1]~feeder_combout\);

-- Location: FF_X50_Y6_N21
\PC_stack[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC_stack[9][1]~feeder_combout\,
	ena => \PC_stack[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[9][1]~q\);

-- Location: LCCOMB_X50_Y6_N0
\Selector128~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector128~0_combout\ = (\state.ex_return~q\ & (\PC_stack[9][1]~q\)) # (!\state.ex_return~q\ & ((\PC_stack[7][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_stack[9][1]~q\,
	datac => \state.ex_return~q\,
	datad => \PC_stack[7][1]~q\,
	combout => \Selector128~0_combout\);

-- Location: FF_X50_Y6_N1
\PC_stack[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector128~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[8][1]~q\);

-- Location: LCCOMB_X50_Y6_N16
\Selector117~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector117~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[8][1]~q\))) # (!\state.ex_return~q\ & (\PC_stack[6][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_stack[6][1]~q\,
	datac => \state.ex_return~q\,
	datad => \PC_stack[8][1]~q\,
	combout => \Selector117~0_combout\);

-- Location: FF_X50_Y6_N17
\PC_stack[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector117~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[7][1]~q\);

-- Location: LCCOMB_X50_Y6_N8
\Selector106~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector106~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[7][1]~q\))) # (!\state.ex_return~q\ & (\PC_stack[5][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_stack[5][1]~q\,
	datac => \state.ex_return~q\,
	datad => \PC_stack[7][1]~q\,
	combout => \Selector106~0_combout\);

-- Location: FF_X50_Y6_N9
\PC_stack[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector106~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[6][1]~q\);

-- Location: LCCOMB_X50_Y6_N4
\Selector95~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector95~0_combout\ = (\state.ex_return~q\ & ((\PC_stack[6][1]~q\))) # (!\state.ex_return~q\ & (\PC_stack[4][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[4][1]~q\,
	datab => \PC_stack[6][1]~q\,
	datac => \state.ex_return~q\,
	combout => \Selector95~0_combout\);

-- Location: FF_X50_Y6_N5
\PC_stack[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector95~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[5][1]~q\);

-- Location: LCCOMB_X50_Y6_N12
\Selector84~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector84~0_combout\ = (\state.ex_return~q\ & (\PC_stack[5][1]~q\)) # (!\state.ex_return~q\ & ((\PC_stack[3][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_stack[5][1]~q\,
	datac => \state.ex_return~q\,
	datad => \PC_stack[3][1]~q\,
	combout => \Selector84~0_combout\);

-- Location: FF_X50_Y6_N13
\PC_stack[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector84~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[4][1]~q\);

-- Location: LCCOMB_X50_Y6_N24
\Selector73~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector73~0_combout\ = (\state.ex_return~q\ & (\PC_stack[4][1]~q\)) # (!\state.ex_return~q\ & ((\PC_stack[2][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[4][1]~q\,
	datab => \PC_stack[2][1]~q\,
	datac => \state.ex_return~q\,
	combout => \Selector73~0_combout\);

-- Location: FF_X50_Y6_N25
\PC_stack[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector73~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[3][1]~q\);

-- Location: LCCOMB_X51_Y3_N12
\Selector62~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector62~0_combout\ = (\state.ex_return~q\ & (\PC_stack[3][1]~q\)) # (!\state.ex_return~q\ & ((\PC_stack[1][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[3][1]~q\,
	datab => \PC_stack[1][1]~q\,
	datac => \state.ex_return~q\,
	combout => \Selector62~0_combout\);

-- Location: FF_X51_Y3_N13
\PC_stack[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector62~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[2][1]~q\);

-- Location: LCCOMB_X51_Y3_N28
\Selector51~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector51~0_combout\ = (\state.ex_return~q\ & (\PC_stack[2][1]~q\)) # (!\state.ex_return~q\ & ((\PC_stack[0][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_stack[2][1]~q\,
	datab => \PC_stack[0][1]~q\,
	datac => \state.ex_return~q\,
	combout => \Selector51~0_combout\);

-- Location: FF_X51_Y3_N29
\PC_stack[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector51~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[1][1]~q\);

-- Location: LCCOMB_X51_Y3_N20
\Selector40~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = (\state.ex_return~q\ & (\PC_stack[1][1]~q\)) # (!\state.ex_return~q\ & ((PC(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_return~q\,
	datab => \PC_stack[1][1]~q\,
	datac => PC(1),
	combout => \Selector40~0_combout\);

-- Location: FF_X51_Y3_N21
\PC_stack[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector40~0_combout\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[0][1]~q\);

-- Location: LCCOMB_X52_Y3_N20
\Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (!\state.fetch~q\ & ((\WideNor0~combout\ & ((\altsyncram_component|auto_generated|q_a\(1)))) # (!\WideNor0~combout\ & (IR(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(1),
	datab => \state.fetch~q\,
	datac => \WideNor0~combout\,
	datad => \altsyncram_component|auto_generated|q_a\(1),
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X52_Y3_N18
\Selector10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = (\Selector10~0_combout\) # ((\state.fetch~q\ & \Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.fetch~q\,
	datac => \Add0~2_combout\,
	datad => \Selector10~0_combout\,
	combout => \Selector10~1_combout\);

-- Location: LCCOMB_X51_Y3_N18
\Selector10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector10~2_combout\ = (\state.ex_return~q\ & (\PC_stack[0][1]~q\)) # (!\state.ex_return~q\ & (((\state.init~q\ & \Selector10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_return~q\,
	datab => \PC_stack[0][1]~q\,
	datac => \state.init~q\,
	datad => \Selector10~1_combout\,
	combout => \Selector10~2_combout\);

-- Location: FF_X51_Y3_N19
\PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector10~2_combout\,
	ena => \PC[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(1));

-- Location: LCCOMB_X52_Y3_N30
\next_mem_addr[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_mem_addr[1]~1_combout\ = (\Selector10~0_combout\) # ((\state.fetch~q\ & PC(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.fetch~q\,
	datac => PC(1),
	datad => \Selector10~0_combout\,
	combout => \next_mem_addr[1]~1_combout\);

-- Location: LCCOMB_X51_Y5_N10
\state~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~34_combout\ = (\altsyncram_component|auto_generated|q_a\(15) & (\altsyncram_component|auto_generated|q_a\(12) & (!\altsyncram_component|auto_generated|q_a\(11) & \state~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|q_a\(15),
	datab => \altsyncram_component|auto_generated|q_a\(12),
	datac => \altsyncram_component|auto_generated|q_a\(11),
	datad => \state~32_combout\,
	combout => \state~34_combout\);

-- Location: FF_X51_Y5_N9
\state.ex_in\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \state~34_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_in~q\);

-- Location: LCCOMB_X51_Y5_N24
\WideOr5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr5~0_combout\ = (\state.ex_store~q\) # ((\state.ex_iload~q\) # ((\state.ex_istore~q\) # (\state.decode~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_store~q\,
	datab => \state.ex_iload~q\,
	datac => \state.ex_istore~q\,
	datad => \state.decode~q\,
	combout => \WideOr5~0_combout\);

-- Location: LCCOMB_X51_Y5_N4
\state~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~33_combout\ = (\altsyncram_component|auto_generated|q_a\(15) & (\altsyncram_component|auto_generated|q_a\(12) & (\altsyncram_component|auto_generated|q_a\(11) & \state~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|q_a\(15),
	datab => \altsyncram_component|auto_generated|q_a\(12),
	datac => \altsyncram_component|auto_generated|q_a\(11),
	datad => \state~32_combout\,
	combout => \state~33_combout\);

-- Location: FF_X51_Y5_N5
\state.ex_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~33_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_out~q\);

-- Location: LCCOMB_X51_Y5_N20
WideOr5 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr5~combout\ = (!\state.ex_in~q\ & (!\WideOr5~0_combout\ & (!\state.fetch~q\ & !\state.ex_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_in~q\,
	datab => \WideOr5~0_combout\,
	datac => \state.fetch~q\,
	datad => \state.ex_out~q\,
	combout => \WideOr5~combout\);

-- Location: FF_X51_Y5_N21
\state.fetch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \WideOr5~combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.fetch~q\);

-- Location: LCCOMB_X52_Y3_N14
\next_mem_addr[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_mem_addr[0]~0_combout\ = (\Selector11~0_combout\) # ((\state.fetch~q\ & PC(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.fetch~q\,
	datac => PC(0),
	datad => \Selector11~0_combout\,
	combout => \next_mem_addr[0]~0_combout\);

-- Location: LCCOMB_X54_Y6_N26
\state~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~48_combout\ = (\altsyncram_component|auto_generated|q_a\(14) & (\altsyncram_component|auto_generated|q_a\(12) & (!\altsyncram_component|auto_generated|q_a\(13) & \Selector29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|q_a\(14),
	datab => \altsyncram_component|auto_generated|q_a\(12),
	datac => \altsyncram_component|auto_generated|q_a\(13),
	datad => \Selector29~0_combout\,
	combout => \state~48_combout\);

-- Location: FF_X54_Y6_N27
\state.ex_xor\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~48_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_xor~q\);

-- Location: LCCOMB_X54_Y3_N6
\Selector19~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector19~4_combout\ = (\state.ex_xor~q\ & (AC(8) $ (\altsyncram_component|auto_generated|q_a\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => AC(8),
	datac => \state.ex_xor~q\,
	datad => \altsyncram_component|auto_generated|q_a\(8),
	combout => \Selector19~4_combout\);

-- Location: LCCOMB_X57_Y3_N24
\shifter|auto_generated|sbit_w[48]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[48]~7_combout\ = (!IR(2) & ((\shifter|auto_generated|sbit_w[32]~87_combout\) # ((\shifter|auto_generated|sbit_w[36]~4_combout\ & \shifter|auto_generated|sbit_w[18]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|auto_generated|sbit_w[36]~4_combout\,
	datab => \shifter|auto_generated|sbit_w[18]~6_combout\,
	datac => IR(2),
	datad => \shifter|auto_generated|sbit_w[32]~87_combout\,
	combout => \shifter|auto_generated|sbit_w[48]~7_combout\);

-- Location: LCCOMB_X56_Y6_N20
\Selector19~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector19~6_combout\ = (\Selector27~9_combout\ & ((IR(4) & (AC(15))) # (!IR(4) & ((\shifter|auto_generated|sbit_w[48]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AC(15),
	datab => \Selector27~9_combout\,
	datac => IR(4),
	datad => \shifter|auto_generated|sbit_w[48]~7_combout\,
	combout => \Selector19~6_combout\);

-- Location: IOIBUF_X54_Y0_N1
\IO_DATA[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(8),
	o => \IO_DATA[8]~input_o\);

-- Location: LCCOMB_X54_Y4_N4
\Selector19~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector19~5_combout\ = (IR(8) & ((\state.ex_loadi~q\) # ((\IO_DATA[8]~input_o\ & \state.ex_in~q\)))) # (!IR(8) & (\IO_DATA[8]~input_o\ & (\state.ex_in~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(8),
	datab => \IO_DATA[8]~input_o\,
	datac => \state.ex_in~q\,
	datad => \state.ex_loadi~q\,
	combout => \Selector19~5_combout\);

-- Location: LCCOMB_X54_Y3_N30
\Selector19~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector19~9_combout\ = (\Selector19~5_combout\) # ((\altsyncram_component|auto_generated|q_a\(8) & ((\state.ex_load~q\) # (\state.ex_or~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_load~q\,
	datab => \Selector19~5_combout\,
	datac => \state.ex_or~q\,
	datad => \altsyncram_component|auto_generated|q_a\(8),
	combout => \Selector19~9_combout\);

-- Location: LCCOMB_X54_Y3_N28
\Selector19~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector19~3_combout\ = (AC(8) & (((\state.ex_and~q\ & \altsyncram_component|auto_generated|q_a\(8))) # (!\Selector27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_and~q\,
	datab => AC(8),
	datac => \Selector27~0_combout\,
	datad => \altsyncram_component|auto_generated|q_a\(8),
	combout => \Selector19~3_combout\);

-- Location: LCCOMB_X54_Y3_N24
\Selector19~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector19~7_combout\ = (\Selector19~4_combout\) # ((\Selector19~6_combout\) # ((\Selector19~9_combout\) # (\Selector19~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector19~4_combout\,
	datab => \Selector19~6_combout\,
	datac => \Selector19~9_combout\,
	datad => \Selector19~3_combout\,
	combout => \Selector19~7_combout\);

-- Location: LCCOMB_X57_Y5_N6
\Selector19~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector19~2_combout\ = (\Selector26~1_combout\ & ((\shifter|auto_generated|sbit_w[56]~28_combout\) # ((\shifter|auto_generated|sbit_w[40]~20_combout\ & !IR(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|auto_generated|sbit_w[40]~20_combout\,
	datab => IR(2),
	datac => \Selector26~1_combout\,
	datad => \shifter|auto_generated|sbit_w[56]~28_combout\,
	combout => \Selector19~2_combout\);

-- Location: LCCOMB_X55_Y3_N28
\Selector19~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector19~8_combout\ = (\Selector19~7_combout\) # ((\Selector19~2_combout\) # ((\AC[13]~0_combout\ & \Add1~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AC[13]~0_combout\,
	datab => \Selector19~7_combout\,
	datac => \Selector19~2_combout\,
	datad => \Add1~54_combout\,
	combout => \Selector19~8_combout\);

-- Location: FF_X55_Y3_N29
\AC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector19~8_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(8));

-- Location: LCCOMB_X54_Y6_N2
\state~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~42_combout\ = (!\altsyncram_component|auto_generated|q_a\(11) & (!\altsyncram_component|auto_generated|q_a\(12) & \state~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altsyncram_component|auto_generated|q_a\(11),
	datac => \altsyncram_component|auto_generated|q_a\(12),
	datad => \state~41_combout\,
	combout => \state~42_combout\);

-- Location: FF_X54_Y6_N3
\state.ex_sub\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~42_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_sub~q\);

-- Location: LCCOMB_X54_Y6_N8
\AC[13]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AC[13]~0_combout\ = (\state.ex_sub~q\) # ((\state.ex_addi~q\) # (\state.ex_add~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.ex_sub~q\,
	datac => \state.ex_addi~q\,
	datad => \state.ex_add~q\,
	combout => \AC[13]~0_combout\);

-- Location: IOIBUF_X58_Y0_N29
\IO_DATA[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(12),
	o => \IO_DATA[12]~input_o\);

-- Location: LCCOMB_X57_Y4_N12
\Selector15~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector15~4_combout\ = (\altsyncram_component|auto_generated|q_a\(12) & (((\state.ex_xor~q\ & !AC(12))) # (!\Selector26~0_combout\))) # (!\altsyncram_component|auto_generated|q_a\(12) & (((\state.ex_xor~q\ & AC(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector26~0_combout\,
	datab => \state.ex_xor~q\,
	datac => \altsyncram_component|auto_generated|q_a\(12),
	datad => AC(12),
	combout => \Selector15~4_combout\);

-- Location: LCCOMB_X57_Y4_N22
\Selector15~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector15~5_combout\ = ((\Selector15~4_combout\) # ((\state.ex_in~q\ & \IO_DATA[12]~input_o\))) # (!\Selector15~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_in~q\,
	datab => \IO_DATA[12]~input_o\,
	datac => \Selector15~3_combout\,
	datad => \Selector15~4_combout\,
	combout => \Selector15~5_combout\);

-- Location: LCCOMB_X56_Y5_N2
\Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (AC(12) & (((\state.ex_and~q\ & \altsyncram_component|auto_generated|q_a\(12))) # (!\Selector27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_and~q\,
	datab => AC(12),
	datac => \Selector27~0_combout\,
	datad => \altsyncram_component|auto_generated|q_a\(12),
	combout => \Selector15~0_combout\);

-- Location: LCCOMB_X57_Y5_N8
\Selector15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector15~1_combout\ = (\Selector26~1_combout\ & ((\shifter|auto_generated|sbit_w[60]~74_combout\) # ((!IR(2) & \shifter|auto_generated|sbit_w[44]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector26~1_combout\,
	datab => \shifter|auto_generated|sbit_w[60]~74_combout\,
	datac => IR(2),
	datad => \shifter|auto_generated|sbit_w[44]~27_combout\,
	combout => \Selector15~1_combout\);

-- Location: LCCOMB_X56_Y5_N28
\Selector15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector15~2_combout\ = (\Selector15~0_combout\) # ((\Selector15~1_combout\) # ((\Selector18~5_combout\ & \shifter|auto_generated|sbit_w[52]~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector18~5_combout\,
	datab => \Selector15~0_combout\,
	datac => \Selector15~1_combout\,
	datad => \shifter|auto_generated|sbit_w[52]~73_combout\,
	combout => \Selector15~2_combout\);

-- Location: LCCOMB_X55_Y4_N30
\Selector15~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector15~6_combout\ = (\Selector15~5_combout\) # ((\Selector15~2_combout\) # ((\AC[13]~0_combout\ & \Add1~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AC[13]~0_combout\,
	datab => \Selector15~5_combout\,
	datac => \Selector15~2_combout\,
	datad => \Add1~75_combout\,
	combout => \Selector15~6_combout\);

-- Location: FF_X55_Y4_N31
\AC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector15~6_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(12));

-- Location: LCCOMB_X51_Y5_N22
\state~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~37_combout\ = (!\altsyncram_component|auto_generated|q_a\(15) & (\altsyncram_component|auto_generated|q_a\(12) & (!\altsyncram_component|auto_generated|q_a\(11) & \state~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|q_a\(15),
	datab => \altsyncram_component|auto_generated|q_a\(12),
	datac => \altsyncram_component|auto_generated|q_a\(11),
	datad => \state~32_combout\,
	combout => \state~37_combout\);

-- Location: FF_X51_Y5_N23
\state.ex_store\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~37_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_store~q\);

-- Location: FF_X51_Y5_N13
\state.ex_store2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \state.ex_store~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_store2~q\);

-- Location: LCCOMB_X51_Y5_N12
\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\MW~q\ & (\state.init~q\ & (!\state.ex_store2~q\ & !\state.ex_istore2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MW~q\,
	datab => \state.init~q\,
	datac => \state.ex_store2~q\,
	datad => \state.ex_istore2~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X51_Y5_N2
\Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\Selector0~0_combout\) # ((\state.ex_istore~q\) # (\state.ex_store~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector0~0_combout\,
	datac => \state.ex_istore~q\,
	datad => \state.ex_store~q\,
	combout => \Selector0~1_combout\);

-- Location: FF_X51_Y5_N3
MW : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector0~1_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MW~q\);

-- Location: FF_X56_Y3_N31
\IR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \altsyncram_component|auto_generated|q_a\(4),
	sload => VCC,
	ena => \IR[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(4));

-- Location: LCCOMB_X57_Y5_N10
\shifter|auto_generated|sbit_w[56]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[56]~28_combout\ = (IR(2) & ((IR(4) & (\shifter|auto_generated|sbit_w[44]~27_combout\)) # (!IR(4) & ((\shifter|auto_generated|sbit_w[36]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(4),
	datab => \shifter|auto_generated|sbit_w[44]~27_combout\,
	datac => IR(2),
	datad => \shifter|auto_generated|sbit_w[36]~13_combout\,
	combout => \shifter|auto_generated|sbit_w[56]~28_combout\);

-- Location: LCCOMB_X57_Y5_N0
\shifter|auto_generated|sbit_w[56]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shifter|auto_generated|sbit_w[56]~21_combout\ = (!IR(2) & \shifter|auto_generated|sbit_w[40]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => IR(2),
	datad => \shifter|auto_generated|sbit_w[40]~20_combout\,
	combout => \shifter|auto_generated|sbit_w[56]~21_combout\);

-- Location: LCCOMB_X57_Y5_N16
\Selector27~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector27~5_combout\ = (\shifter|auto_generated|sbit_w[48]~7_combout\) # ((IR(2) & (IR(4) & \shifter|auto_generated|sbit_w[36]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(2),
	datab => \shifter|auto_generated|sbit_w[48]~7_combout\,
	datac => IR(4),
	datad => \shifter|auto_generated|sbit_w[36]~13_combout\,
	combout => \Selector27~5_combout\);

-- Location: LCCOMB_X57_Y5_N26
\Selector27~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector27~1_combout\ = (AC(0) & (((\state.ex_and~q\ & \altsyncram_component|auto_generated|q_a\(0))) # (!\Selector27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector27~0_combout\,
	datab => AC(0),
	datac => \state.ex_and~q\,
	datad => \altsyncram_component|auto_generated|q_a\(0),
	combout => \Selector27~1_combout\);

-- Location: IOIBUF_X78_Y3_N8
\IO_DATA[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(0),
	o => \IO_DATA[0]~input_o\);

-- Location: LCCOMB_X57_Y5_N12
\Selector27~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector27~2_combout\ = (IR(0) & ((\state.ex_loadi~q\) # ((\IO_DATA[0]~input_o\ & \state.ex_in~q\)))) # (!IR(0) & (\IO_DATA[0]~input_o\ & (\state.ex_in~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(0),
	datab => \IO_DATA[0]~input_o\,
	datac => \state.ex_in~q\,
	datad => \state.ex_loadi~q\,
	combout => \Selector27~2_combout\);

-- Location: LCCOMB_X57_Y5_N14
\Selector27~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector27~3_combout\ = (\altsyncram_component|auto_generated|q_a\(0) & (((!AC(0) & \state.ex_xor~q\)) # (!\Selector26~0_combout\))) # (!\altsyncram_component|auto_generated|q_a\(0) & (((AC(0) & \state.ex_xor~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector26~0_combout\,
	datab => AC(0),
	datac => \state.ex_xor~q\,
	datad => \altsyncram_component|auto_generated|q_a\(0),
	combout => \Selector27~3_combout\);

-- Location: LCCOMB_X56_Y5_N14
\Selector27~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector27~4_combout\ = (\Selector27~2_combout\) # ((\Selector27~3_combout\) # ((\AC[13]~0_combout\ & \Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AC[13]~0_combout\,
	datab => \Selector27~2_combout\,
	datac => \Selector27~3_combout\,
	datad => \Add1~6_combout\,
	combout => \Selector27~4_combout\);

-- Location: LCCOMB_X57_Y5_N28
\Selector27~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector27~6_combout\ = (\Selector27~1_combout\) # ((\Selector27~4_combout\) # ((\Selector26~1_combout\ & \Selector27~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector26~1_combout\,
	datab => \Selector27~5_combout\,
	datac => \Selector27~1_combout\,
	datad => \Selector27~4_combout\,
	combout => \Selector27~6_combout\);

-- Location: LCCOMB_X57_Y5_N20
\Selector27~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector27~8_combout\ = (\Selector27~6_combout\) # ((\Selector27~7_combout\ & ((\shifter|auto_generated|sbit_w[56]~28_combout\) # (\shifter|auto_generated|sbit_w[56]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|auto_generated|sbit_w[56]~28_combout\,
	datab => \shifter|auto_generated|sbit_w[56]~21_combout\,
	datac => \Selector27~7_combout\,
	datad => \Selector27~6_combout\,
	combout => \Selector27~8_combout\);

-- Location: FF_X57_Y5_N21
\AC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector27~8_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(0));

-- Location: LCCOMB_X51_Y5_N28
\Selector28~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector28~1_combout\ = (\state~33_combout\) # ((\IO_WRITE_int~q\ & ((\state.decode~q\) # (\Selector28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.decode~q\,
	datab => \state~33_combout\,
	datac => \IO_WRITE_int~q\,
	datad => \Selector28~0_combout\,
	combout => \Selector28~1_combout\);

-- Location: FF_X51_Y5_N29
IO_WRITE_int : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector28~1_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IO_WRITE_int~q\);

-- Location: FF_X51_Y5_N19
\state.ex_in2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \state.ex_in~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_in2~q\);

-- Location: FF_X51_Y5_N15
\state.ex_out2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \state.ex_out~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_out2~q\);

-- Location: LCCOMB_X51_Y5_N14
\Selector30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (\IO_CYCLE~reg0_q\ & ((\state.decode~q\) # ((!\state.ex_in2~q\ & !\state.ex_out2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.decode~q\,
	datab => \state.ex_in2~q\,
	datac => \state.ex_out2~q\,
	datad => \IO_CYCLE~reg0_q\,
	combout => \Selector30~0_combout\);

-- Location: LCCOMB_X51_Y5_N30
\Selector30~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector30~1_combout\ = (\state.ex_out~q\) # ((\state~34_combout\) # (\Selector30~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ex_out~q\,
	datac => \state~34_combout\,
	datad => \Selector30~0_combout\,
	combout => \Selector30~1_combout\);

-- Location: FF_X51_Y5_N31
\IO_CYCLE~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector30~1_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IO_CYCLE~reg0_q\);

-- Location: FF_X54_Y7_N29
\IR[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \altsyncram_component|auto_generated|q_a\(11),
	sload => VCC,
	ena => \IR[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(11));

-- Location: FF_X54_Y7_N11
\IR[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \altsyncram_component|auto_generated|q_a\(12),
	sload => VCC,
	ena => \IR[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(12));

-- Location: FF_X54_Y7_N1
\IR[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \altsyncram_component|auto_generated|q_a\(13),
	sload => VCC,
	ena => \IR[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(13));

-- Location: LCCOMB_X51_Y4_N14
\IR[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR[14]~feeder_combout\ = \altsyncram_component|auto_generated|q_a\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \altsyncram_component|auto_generated|q_a\(14),
	combout => \IR[14]~feeder_combout\);

-- Location: FF_X51_Y4_N15
\IR[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IR[14]~feeder_combout\,
	ena => \IR[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(14));

-- Location: LCCOMB_X51_Y4_N8
\IR[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR[15]~feeder_combout\ = \altsyncram_component|auto_generated|q_a\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \altsyncram_component|auto_generated|q_a\(15),
	combout => \IR[15]~feeder_combout\);

-- Location: FF_X51_Y4_N9
\IR[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IR[15]~feeder_combout\,
	ena => \IR[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(15));

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

ww_IO_WRITE <= \IO_WRITE~output_o\;

ww_IO_CYCLE <= \IO_CYCLE~output_o\;

ww_IO_ADDR(0) <= \IO_ADDR[0]~output_o\;

ww_IO_ADDR(1) <= \IO_ADDR[1]~output_o\;

ww_IO_ADDR(2) <= \IO_ADDR[2]~output_o\;

ww_IO_ADDR(3) <= \IO_ADDR[3]~output_o\;

ww_IO_ADDR(4) <= \IO_ADDR[4]~output_o\;

ww_IO_ADDR(5) <= \IO_ADDR[5]~output_o\;

ww_IO_ADDR(6) <= \IO_ADDR[6]~output_o\;

ww_IO_ADDR(7) <= \IO_ADDR[7]~output_o\;

ww_IO_ADDR(8) <= \IO_ADDR[8]~output_o\;

ww_IO_ADDR(9) <= \IO_ADDR[9]~output_o\;

ww_IO_ADDR(10) <= \IO_ADDR[10]~output_o\;

ww_dbg_FETCH <= \dbg_FETCH~output_o\;

ww_dbg_AC(0) <= \dbg_AC[0]~output_o\;

ww_dbg_AC(1) <= \dbg_AC[1]~output_o\;

ww_dbg_AC(2) <= \dbg_AC[2]~output_o\;

ww_dbg_AC(3) <= \dbg_AC[3]~output_o\;

ww_dbg_AC(4) <= \dbg_AC[4]~output_o\;

ww_dbg_AC(5) <= \dbg_AC[5]~output_o\;

ww_dbg_AC(6) <= \dbg_AC[6]~output_o\;

ww_dbg_AC(7) <= \dbg_AC[7]~output_o\;

ww_dbg_AC(8) <= \dbg_AC[8]~output_o\;

ww_dbg_AC(9) <= \dbg_AC[9]~output_o\;

ww_dbg_AC(10) <= \dbg_AC[10]~output_o\;

ww_dbg_AC(11) <= \dbg_AC[11]~output_o\;

ww_dbg_AC(12) <= \dbg_AC[12]~output_o\;

ww_dbg_AC(13) <= \dbg_AC[13]~output_o\;

ww_dbg_AC(14) <= \dbg_AC[14]~output_o\;

ww_dbg_AC(15) <= \dbg_AC[15]~output_o\;

ww_dbg_PC(0) <= \dbg_PC[0]~output_o\;

ww_dbg_PC(1) <= \dbg_PC[1]~output_o\;

ww_dbg_PC(2) <= \dbg_PC[2]~output_o\;

ww_dbg_PC(3) <= \dbg_PC[3]~output_o\;

ww_dbg_PC(4) <= \dbg_PC[4]~output_o\;

ww_dbg_PC(5) <= \dbg_PC[5]~output_o\;

ww_dbg_PC(6) <= \dbg_PC[6]~output_o\;

ww_dbg_PC(7) <= \dbg_PC[7]~output_o\;

ww_dbg_PC(8) <= \dbg_PC[8]~output_o\;

ww_dbg_PC(9) <= \dbg_PC[9]~output_o\;

ww_dbg_PC(10) <= \dbg_PC[10]~output_o\;

ww_dbg_MA(0) <= \dbg_MA[0]~output_o\;

ww_dbg_MA(1) <= \dbg_MA[1]~output_o\;

ww_dbg_MA(2) <= \dbg_MA[2]~output_o\;

ww_dbg_MA(3) <= \dbg_MA[3]~output_o\;

ww_dbg_MA(4) <= \dbg_MA[4]~output_o\;

ww_dbg_MA(5) <= \dbg_MA[5]~output_o\;

ww_dbg_MA(6) <= \dbg_MA[6]~output_o\;

ww_dbg_MA(7) <= \dbg_MA[7]~output_o\;

ww_dbg_MA(8) <= \dbg_MA[8]~output_o\;

ww_dbg_MA(9) <= \dbg_MA[9]~output_o\;

ww_dbg_MA(10) <= \dbg_MA[10]~output_o\;

ww_dbg_MD(0) <= \dbg_MD[0]~output_o\;

ww_dbg_MD(1) <= \dbg_MD[1]~output_o\;

ww_dbg_MD(2) <= \dbg_MD[2]~output_o\;

ww_dbg_MD(3) <= \dbg_MD[3]~output_o\;

ww_dbg_MD(4) <= \dbg_MD[4]~output_o\;

ww_dbg_MD(5) <= \dbg_MD[5]~output_o\;

ww_dbg_MD(6) <= \dbg_MD[6]~output_o\;

ww_dbg_MD(7) <= \dbg_MD[7]~output_o\;

ww_dbg_MD(8) <= \dbg_MD[8]~output_o\;

ww_dbg_MD(9) <= \dbg_MD[9]~output_o\;

ww_dbg_MD(10) <= \dbg_MD[10]~output_o\;

ww_dbg_MD(11) <= \dbg_MD[11]~output_o\;

ww_dbg_MD(12) <= \dbg_MD[12]~output_o\;

ww_dbg_MD(13) <= \dbg_MD[13]~output_o\;

ww_dbg_MD(14) <= \dbg_MD[14]~output_o\;

ww_dbg_MD(15) <= \dbg_MD[15]~output_o\;

ww_dbg_IR(0) <= \dbg_IR[0]~output_o\;

ww_dbg_IR(1) <= \dbg_IR[1]~output_o\;

ww_dbg_IR(2) <= \dbg_IR[2]~output_o\;

ww_dbg_IR(3) <= \dbg_IR[3]~output_o\;

ww_dbg_IR(4) <= \dbg_IR[4]~output_o\;

ww_dbg_IR(5) <= \dbg_IR[5]~output_o\;

ww_dbg_IR(6) <= \dbg_IR[6]~output_o\;

ww_dbg_IR(7) <= \dbg_IR[7]~output_o\;

ww_dbg_IR(8) <= \dbg_IR[8]~output_o\;

ww_dbg_IR(9) <= \dbg_IR[9]~output_o\;

ww_dbg_IR(10) <= \dbg_IR[10]~output_o\;

ww_dbg_IR(11) <= \dbg_IR[11]~output_o\;

ww_dbg_IR(12) <= \dbg_IR[12]~output_o\;

ww_dbg_IR(13) <= \dbg_IR[13]~output_o\;

ww_dbg_IR(14) <= \dbg_IR[14]~output_o\;

ww_dbg_IR(15) <= \dbg_IR[15]~output_o\;

IO_DATA(0) <= \IO_DATA[0]~output_o\;

IO_DATA(1) <= \IO_DATA[1]~output_o\;

IO_DATA(2) <= \IO_DATA[2]~output_o\;

IO_DATA(3) <= \IO_DATA[3]~output_o\;

IO_DATA(4) <= \IO_DATA[4]~output_o\;

IO_DATA(5) <= \IO_DATA[5]~output_o\;

IO_DATA(6) <= \IO_DATA[6]~output_o\;

IO_DATA(7) <= \IO_DATA[7]~output_o\;

IO_DATA(8) <= \IO_DATA[8]~output_o\;

IO_DATA(9) <= \IO_DATA[9]~output_o\;

IO_DATA(10) <= \IO_DATA[10]~output_o\;

IO_DATA(11) <= \IO_DATA[11]~output_o\;

IO_DATA(12) <= \IO_DATA[12]~output_o\;

IO_DATA(13) <= \IO_DATA[13]~output_o\;

IO_DATA(14) <= \IO_DATA[14]~output_o\;

IO_DATA(15) <= \IO_DATA[15]~output_o\;
END structure;


