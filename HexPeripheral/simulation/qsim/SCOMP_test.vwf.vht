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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/13/2020 01:54:56"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          SCOMP_System
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY SCOMP_System_vhd_vec_tst IS
END SCOMP_System_vhd_vec_tst;
ARCHITECTURE SCOMP_System_arch OF SCOMP_System_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock_50 : STD_LOGIC;
SIGNAL DP : STD_LOGIC_VECTOR(0 DOWNTO 0);
SIGNAL GSENSOR_CS_n : STD_LOGIC;
SIGNAL GSENSOR_SCLK : STD_LOGIC;
SIGNAL GSENSOR_SDI : STD_LOGIC;
SIGNAL GSENSOR_SDO : STD_LOGIC;
SIGNAL HEX0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX5 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL KEY0 : STD_LOGIC;
SIGNAL LEDR : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL SW : STD_LOGIC_VECTOR(9 DOWNTO 0);
COMPONENT SCOMP_System
	PORT (
	clock_50 : IN STD_LOGIC;
	DP : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
	GSENSOR_CS_n : OUT STD_LOGIC;
	GSENSOR_SCLK : INOUT STD_LOGIC;
	GSENSOR_SDI : INOUT STD_LOGIC;
	GSENSOR_SDO : OUT STD_LOGIC;
	HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX4 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	KEY0 : IN STD_LOGIC;
	LEDR : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	SW : IN STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : SCOMP_System
	PORT MAP (
-- list connections between master ports and signals
	clock_50 => clock_50,
	DP => DP,
	GSENSOR_CS_n => GSENSOR_CS_n,
	GSENSOR_SCLK => GSENSOR_SCLK,
	GSENSOR_SDI => GSENSOR_SDI,
	GSENSOR_SDO => GSENSOR_SDO,
	HEX0 => HEX0,
	HEX1 => HEX1,
	HEX2 => HEX2,
	HEX3 => HEX3,
	HEX4 => HEX4,
	HEX5 => HEX5,
	KEY0 => KEY0,
	LEDR => LEDR,
	SW => SW
	);
END SCOMP_System_arch;
