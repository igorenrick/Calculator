-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "06/21/2023 23:30:12"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Calculator IS
    PORT (
	op_a : IN std_logic_vector(7 DOWNTO 0);
	op_b : IN std_logic_vector(7 DOWNTO 0);
	clk : IN std_logic;
	reset : IN std_logic;
	result : OUT std_logic_vector(7 DOWNTO 0)
	);
END Calculator;

-- Design Ports Information
-- result[0]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[4]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[5]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[6]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[7]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_b[0]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_a[0]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_b[1]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_a[1]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_b[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_a[2]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_b[3]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_a[3]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_b[4]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_a[4]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_b[5]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_a[5]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_b[6]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_a[6]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_b[7]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_a[7]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Calculator IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_op_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_op_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_result : std_logic_vector(7 DOWNTO 0);
SIGNAL \alu|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \alu|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \alu|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \alu|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \alu|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \alu|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \alu|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \alu|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \alu|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \alu|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \alu|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \alu|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \alu|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \result[2]~output_o\ : std_logic;
SIGNAL \result[3]~output_o\ : std_logic;
SIGNAL \result[4]~output_o\ : std_logic;
SIGNAL \result[5]~output_o\ : std_logic;
SIGNAL \result[6]~output_o\ : std_logic;
SIGNAL \result[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ctrl|state.WAIT~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ctrl|state.WAIT~q\ : std_logic;
SIGNAL \ctrl|state.ADD~0_combout\ : std_logic;
SIGNAL \ctrl|state.ADD~q\ : std_logic;
SIGNAL \ctrl|state.SUBTRACT~feeder_combout\ : std_logic;
SIGNAL \ctrl|state.SUBTRACT~q\ : std_logic;
SIGNAL \ctrl|state.MULTIPLY~feeder_combout\ : std_logic;
SIGNAL \ctrl|state.MULTIPLY~q\ : std_logic;
SIGNAL \op_a[0]~input_o\ : std_logic;
SIGNAL \op_b[0]~input_o\ : std_logic;
SIGNAL \alu|Add0~0_combout\ : std_logic;
SIGNAL \alu|Add0~2_cout\ : std_logic;
SIGNAL \alu|Add0~3_combout\ : std_logic;
SIGNAL \op_a[1]~input_o\ : std_logic;
SIGNAL \op_a[2]~input_o\ : std_logic;
SIGNAL \op_a[3]~input_o\ : std_logic;
SIGNAL \op_a[4]~input_o\ : std_logic;
SIGNAL \op_a[5]~input_o\ : std_logic;
SIGNAL \op_a[6]~input_o\ : std_logic;
SIGNAL \op_a[7]~input_o\ : std_logic;
SIGNAL \op_b[1]~input_o\ : std_logic;
SIGNAL \op_b[2]~input_o\ : std_logic;
SIGNAL \op_b[3]~input_o\ : std_logic;
SIGNAL \op_b[4]~input_o\ : std_logic;
SIGNAL \op_b[5]~input_o\ : std_logic;
SIGNAL \op_b[6]~input_o\ : std_logic;
SIGNAL \op_b[7]~input_o\ : std_logic;
SIGNAL \alu|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \alu|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \alu|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \alu|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \alu|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \alu|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \alu|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \alu|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \alu|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \alu|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \alu|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \alu|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \alu|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \alu|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \alu|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \alu|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \alu|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \alu|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \alu|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \alu|Add0~5_combout\ : std_logic;
SIGNAL \alu|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \alu|Add0~6_combout\ : std_logic;
SIGNAL \alu|Add0~4\ : std_logic;
SIGNAL \alu|Add0~7_combout\ : std_logic;
SIGNAL \alu|Add0~9_combout\ : std_logic;
SIGNAL \alu|Add0~10_combout\ : std_logic;
SIGNAL \alu|Add0~8\ : std_logic;
SIGNAL \alu|Add0~11_combout\ : std_logic;
SIGNAL \alu|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \alu|Add0~13_combout\ : std_logic;
SIGNAL \alu|Add0~14_combout\ : std_logic;
SIGNAL \alu|Add0~12\ : std_logic;
SIGNAL \alu|Add0~15_combout\ : std_logic;
SIGNAL \alu|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \alu|Add0~17_combout\ : std_logic;
SIGNAL \alu|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \alu|Add0~18_combout\ : std_logic;
SIGNAL \alu|Add0~16\ : std_logic;
SIGNAL \alu|Add0~19_combout\ : std_logic;
SIGNAL \alu|Add0~21_combout\ : std_logic;
SIGNAL \alu|Add0~22_combout\ : std_logic;
SIGNAL \alu|Add0~20\ : std_logic;
SIGNAL \alu|Add0~23_combout\ : std_logic;
SIGNAL \alu|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \alu|Add0~25_combout\ : std_logic;
SIGNAL \alu|Add0~26_combout\ : std_logic;
SIGNAL \alu|Add0~24\ : std_logic;
SIGNAL \alu|Add0~27_combout\ : std_logic;
SIGNAL \alu|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \alu|Add0~29_combout\ : std_logic;
SIGNAL \alu|Add0~30_combout\ : std_logic;
SIGNAL \alu|Add0~28\ : std_logic;
SIGNAL \alu|Add0~31_combout\ : std_logic;
SIGNAL \alu|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \alu|Add0~33_combout\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_op_a <= op_a;
ww_op_b <= op_b;
ww_clk <= clk;
ww_reset <= reset;
result <= ww_result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\alu|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\alu|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \alu|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \alu|Mult0|auto_generated|mac_mult1~DATAOUT13\ & \alu|Mult0|auto_generated|mac_mult1~DATAOUT12\ & 
\alu|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \alu|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \alu|Mult0|auto_generated|mac_mult1~DATAOUT9\ & \alu|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \alu|Mult0|auto_generated|mac_mult1~DATAOUT7\ & 
\alu|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \alu|Mult0|auto_generated|mac_mult1~DATAOUT5\ & \alu|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \alu|Mult0|auto_generated|mac_mult1~DATAOUT3\ & \alu|Mult0|auto_generated|mac_mult1~DATAOUT2\ & 
\alu|Mult0|auto_generated|mac_mult1~DATAOUT1\ & \alu|Mult0|auto_generated|mac_mult1~dataout\ & \alu|Mult0|auto_generated|mac_mult1~1\ & \alu|Mult0|auto_generated|mac_mult1~0\);

\alu|Mult0|auto_generated|mac_out2~0\ <= \alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\alu|Mult0|auto_generated|mac_out2~1\ <= \alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\alu|Mult0|auto_generated|mac_out2~dataout\ <= \alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\alu|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\alu|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\alu|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\alu|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\alu|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\alu|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\alu|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\alu|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\alu|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\alu|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\alu|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\alu|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\alu|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\alu|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\alu|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);

\alu|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\op_a[7]~input_o\ & \op_a[6]~input_o\ & \op_a[5]~input_o\ & \op_a[4]~input_o\ & \op_a[3]~input_o\ & \op_a[2]~input_o\ & \op_a[1]~input_o\ & \op_a[0]~input_o\ & gnd);

\alu|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\op_b[7]~input_o\ & \op_b[6]~input_o\ & \op_b[5]~input_o\ & \op_b[4]~input_o\ & \op_b[3]~input_o\ & \op_b[2]~input_o\ & \op_b[1]~input_o\ & \op_b[0]~input_o\ & gnd);

\alu|Mult0|auto_generated|mac_mult1~0\ <= \alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\alu|Mult0|auto_generated|mac_mult1~1\ <= \alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\alu|Mult0|auto_generated|mac_mult1~dataout\ <= \alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\alu|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\alu|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\alu|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\alu|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\alu|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\alu|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\alu|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\alu|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\alu|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\alu|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\alu|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\alu|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\alu|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\alu|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\alu|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X14_Y0_N2
\result[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu|Add0~5_combout\,
	devoe => ww_devoe,
	o => \result[0]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\result[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu|Add0~9_combout\,
	devoe => ww_devoe,
	o => \result[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\result[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu|Add0~13_combout\,
	devoe => ww_devoe,
	o => \result[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\result[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu|Add0~17_combout\,
	devoe => ww_devoe,
	o => \result[3]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\result[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu|Add0~21_combout\,
	devoe => ww_devoe,
	o => \result[4]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\result[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu|Add0~25_combout\,
	devoe => ww_devoe,
	o => \result[5]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\result[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu|Add0~29_combout\,
	devoe => ww_devoe,
	o => \result[6]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\result[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu|Add0~33_combout\,
	devoe => ww_devoe,
	o => \result[7]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X16_Y2_N0
\ctrl|state.WAIT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctrl|state.WAIT~0_combout\ = !\ctrl|state.MULTIPLY~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl|state.MULTIPLY~q\,
	combout => \ctrl|state.WAIT~0_combout\);

-- Location: IOIBUF_X0_Y14_N8
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G2
\reset~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X16_Y2_N1
\ctrl|state.WAIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctrl|state.WAIT~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|state.WAIT~q\);

-- Location: LCCOMB_X16_Y2_N10
\ctrl|state.ADD~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctrl|state.ADD~0_combout\ = !\ctrl|state.WAIT~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl|state.WAIT~q\,
	combout => \ctrl|state.ADD~0_combout\);

-- Location: FF_X16_Y2_N11
\ctrl|state.ADD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctrl|state.ADD~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|state.ADD~q\);

-- Location: LCCOMB_X16_Y2_N28
\ctrl|state.SUBTRACT~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctrl|state.SUBTRACT~feeder_combout\ = \ctrl|state.ADD~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl|state.ADD~q\,
	combout => \ctrl|state.SUBTRACT~feeder_combout\);

-- Location: FF_X16_Y2_N29
\ctrl|state.SUBTRACT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctrl|state.SUBTRACT~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|state.SUBTRACT~q\);

-- Location: LCCOMB_X16_Y2_N12
\ctrl|state.MULTIPLY~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctrl|state.MULTIPLY~feeder_combout\ = \ctrl|state.SUBTRACT~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl|state.SUBTRACT~q\,
	combout => \ctrl|state.MULTIPLY~feeder_combout\);

-- Location: FF_X16_Y2_N13
\ctrl|state.MULTIPLY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctrl|state.MULTIPLY~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|state.MULTIPLY~q\);

-- Location: IOIBUF_X16_Y0_N22
\op_a[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_a(0),
	o => \op_a[0]~input_o\);

-- Location: IOIBUF_X19_Y0_N22
\op_b[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_b(0),
	o => \op_b[0]~input_o\);

-- Location: LCCOMB_X16_Y2_N18
\alu|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu|Add0~0_combout\ = \op_b[0]~input_o\ $ (\ctrl|state.SUBTRACT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op_b[0]~input_o\,
	datad => \ctrl|state.SUBTRACT~q\,
	combout => \alu|Add0~0_combout\);

-- Location: LCCOMB_X17_Y2_N10
\alu|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu|Add0~2_cout\ = CARRY(\ctrl|state.SUBTRACT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctrl|state.SUBTRACT~q\,
	datad => VCC,
	cout => \alu|Add0~2_cout\);

-- Location: LCCOMB_X17_Y2_N12
\alu|Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu|Add0~3_combout\ = (\op_a[0]~input_o\ & ((\alu|Add0~0_combout\ & (\alu|Add0~2_cout\ & VCC)) # (!\alu|Add0~0_combout\ & (!\alu|Add0~2_cout\)))) # (!\op_a[0]~input_o\ & ((\alu|Add0~0_combout\ & (!\alu|Add0~2_cout\)) # (!\alu|Add0~0_combout\ & 
-- ((\alu|Add0~2_cout\) # (GND)))))
-- \alu|Add0~4\ = CARRY((\op_a[0]~input_o\ & (!\alu|Add0~0_combout\ & !\alu|Add0~2_cout\)) # (!\op_a[0]~input_o\ & ((!\alu|Add0~2_cout\) # (!\alu|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op_a[0]~input_o\,
	datab => \alu|Add0~0_combout\,
	datad => VCC,
	cin => \alu|Add0~2_cout\,
	combout => \alu|Add0~3_combout\,
	cout => \alu|Add0~4\);

-- Location: IOIBUF_X23_Y0_N22
\op_a[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_a(1),
	o => \op_a[1]~input_o\);

-- Location: IOIBUF_X19_Y0_N15
\op_a[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_a(2),
	o => \op_a[2]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\op_a[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_a(3),
	o => \op_a[3]~input_o\);

-- Location: IOIBUF_X23_Y0_N1
\op_a[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_a(4),
	o => \op_a[4]~input_o\);

-- Location: IOIBUF_X19_Y0_N29
\op_a[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_a(5),
	o => \op_a[5]~input_o\);

-- Location: IOIBUF_X19_Y0_N1
\op_a[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_a(6),
	o => \op_a[6]~input_o\);

-- Location: IOIBUF_X21_Y0_N29
\op_a[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_a(7),
	o => \op_a[7]~input_o\);

-- Location: IOIBUF_X23_Y0_N29
\op_b[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_b(1),
	o => \op_b[1]~input_o\);

-- Location: IOIBUF_X16_Y29_N1
\op_b[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_b(2),
	o => \op_b[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\op_b[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_b(3),
	o => \op_b[3]~input_o\);

-- Location: IOIBUF_X14_Y0_N15
\op_b[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_b(4),
	o => \op_b[4]~input_o\);

-- Location: IOIBUF_X19_Y0_N8
\op_b[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_b(5),
	o => \op_b[5]~input_o\);

-- Location: IOIBUF_X14_Y0_N22
\op_b[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_b(6),
	o => \op_b[6]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\op_b[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_b(7),
	o => \op_b[7]~input_o\);

-- Location: DSPMULT_X18_Y2_N0
\alu|Mult0|auto_generated|mac_mult1\ : cycloneiii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 9,
	datab_clock => "none",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	dataa => \alu|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \alu|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X18_Y2_N2
\alu|Mult0|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X16_Y2_N26
\alu|Add0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu|Add0~5_combout\ = (\ctrl|state.MULTIPLY~q\ & ((\alu|Mult0|auto_generated|mac_out2~dataout\))) # (!\ctrl|state.MULTIPLY~q\ & (\alu|Add0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctrl|state.MULTIPLY~q\,
	datac => \alu|Add0~3_combout\,
	datad => \alu|Mult0|auto_generated|mac_out2~dataout\,
	combout => \alu|Add0~5_combout\);

-- Location: LCCOMB_X17_Y2_N0
\alu|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu|Add0~6_combout\ = \ctrl|state.SUBTRACT~q\ $ (\op_b[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctrl|state.SUBTRACT~q\,
	datad => \op_b[1]~input_o\,
	combout => \alu|Add0~6_combout\);

-- Location: LCCOMB_X17_Y2_N14
\alu|Add0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu|Add0~7_combout\ = ((\op_a[1]~input_o\ $ (\alu|Add0~6_combout\ $ (!\alu|Add0~4\)))) # (GND)
-- \alu|Add0~8\ = CARRY((\op_a[1]~input_o\ & ((\alu|Add0~6_combout\) # (!\alu|Add0~4\))) # (!\op_a[1]~input_o\ & (\alu|Add0~6_combout\ & !\alu|Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op_a[1]~input_o\,
	datab => \alu|Add0~6_combout\,
	datad => VCC,
	cin => \alu|Add0~4\,
	combout => \alu|Add0~7_combout\,
	cout => \alu|Add0~8\);

-- Location: LCCOMB_X16_Y2_N20
\alu|Add0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu|Add0~9_combout\ = (\ctrl|state.MULTIPLY~q\ & (\alu|Mult0|auto_generated|mac_out2~DATAOUT1\)) # (!\ctrl|state.MULTIPLY~q\ & ((\alu|Add0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mult0|auto_generated|mac_out2~DATAOUT1\,
	datab => \ctrl|state.MULTIPLY~q\,
	datac => \alu|Add0~7_combout\,
	combout => \alu|Add0~9_combout\);

-- Location: LCCOMB_X16_Y2_N22
\alu|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu|Add0~10_combout\ = \op_b[2]~input_o\ $ (\ctrl|state.SUBTRACT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op_b[2]~input_o\,
	datad => \ctrl|state.SUBTRACT~q\,
	combout => \alu|Add0~10_combout\);

-- Location: LCCOMB_X17_Y2_N16
\alu|Add0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu|Add0~11_combout\ = (\op_a[2]~input_o\ & ((\alu|Add0~10_combout\ & (\alu|Add0~8\ & VCC)) # (!\alu|Add0~10_combout\ & (!\alu|Add0~8\)))) # (!\op_a[2]~input_o\ & ((\alu|Add0~10_combout\ & (!\alu|Add0~8\)) # (!\alu|Add0~10_combout\ & ((\alu|Add0~8\) # 
-- (GND)))))
-- \alu|Add0~12\ = CARRY((\op_a[2]~input_o\ & (!\alu|Add0~10_combout\ & !\alu|Add0~8\)) # (!\op_a[2]~input_o\ & ((!\alu|Add0~8\) # (!\alu|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op_a[2]~input_o\,
	datab => \alu|Add0~10_combout\,
	datad => VCC,
	cin => \alu|Add0~8\,
	combout => \alu|Add0~11_combout\,
	cout => \alu|Add0~12\);

-- Location: LCCOMB_X17_Y2_N2
\alu|Add0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu|Add0~13_combout\ = (\ctrl|state.MULTIPLY~q\ & ((\alu|Mult0|auto_generated|mac_out2~DATAOUT2\))) # (!\ctrl|state.MULTIPLY~q\ & (\alu|Add0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|state.MULTIPLY~q\,
	datab => \alu|Add0~11_combout\,
	datad => \alu|Mult0|auto_generated|mac_out2~DATAOUT2\,
	combout => \alu|Add0~13_combout\);

-- Location: LCCOMB_X16_Y2_N4
\alu|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu|Add0~14_combout\ = \ctrl|state.SUBTRACT~q\ $ (\op_b[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctrl|state.SUBTRACT~q\,
	datad => \op_b[3]~input_o\,
	combout => \alu|Add0~14_combout\);

-- Location: LCCOMB_X17_Y2_N18
\alu|Add0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu|Add0~15_combout\ = ((\op_a[3]~input_o\ $ (\alu|Add0~14_combout\ $ (!\alu|Add0~12\)))) # (GND)
-- \alu|Add0~16\ = CARRY((\op_a[3]~input_o\ & ((\alu|Add0~14_combout\) # (!\alu|Add0~12\))) # (!\op_a[3]~input_o\ & (\alu|Add0~14_combout\ & !\alu|Add0~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op_a[3]~input_o\,
	datab => \alu|Add0~14_combout\,
	datad => VCC,
	cin => \alu|Add0~12\,
	combout => \alu|Add0~15_combout\,
	cout => \alu|Add0~16\);

-- Location: LCCOMB_X17_Y2_N28
\alu|Add0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu|Add0~17_combout\ = (\ctrl|state.MULTIPLY~q\ & ((\alu|Mult0|auto_generated|mac_out2~DATAOUT3\))) # (!\ctrl|state.MULTIPLY~q\ & (\alu|Add0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|state.MULTIPLY~q\,
	datab => \alu|Add0~15_combout\,
	datad => \alu|Mult0|auto_generated|mac_out2~DATAOUT3\,
	combout => \alu|Add0~17_combout\);

-- Location: LCCOMB_X16_Y2_N30
\alu|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu|Add0~18_combout\ = \op_b[4]~input_o\ $ (\ctrl|state.SUBTRACT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op_b[4]~input_o\,
	datad => \ctrl|state.SUBTRACT~q\,
	combout => \alu|Add0~18_combout\);

-- Location: LCCOMB_X17_Y2_N20
\alu|Add0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu|Add0~19_combout\ = (\op_a[4]~input_o\ & ((\alu|Add0~18_combout\ & (\alu|Add0~16\ & VCC)) # (!\alu|Add0~18_combout\ & (!\alu|Add0~16\)))) # (!\op_a[4]~input_o\ & ((\alu|Add0~18_combout\ & (!\alu|Add0~16\)) # (!\alu|Add0~18_combout\ & ((\alu|Add0~16\) 
-- # (GND)))))
-- \alu|Add0~20\ = CARRY((\op_a[4]~input_o\ & (!\alu|Add0~18_combout\ & !\alu|Add0~16\)) # (!\op_a[4]~input_o\ & ((!\alu|Add0~16\) # (!\alu|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op_a[4]~input_o\,
	datab => \alu|Add0~18_combout\,
	datad => VCC,
	cin => \alu|Add0~16\,
	combout => \alu|Add0~19_combout\,
	cout => \alu|Add0~20\);

-- Location: LCCOMB_X17_Y2_N6
\alu|Add0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu|Add0~21_combout\ = (\ctrl|state.MULTIPLY~q\ & (\alu|Mult0|auto_generated|mac_out2~DATAOUT4\)) # (!\ctrl|state.MULTIPLY~q\ & ((\alu|Add0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|state.MULTIPLY~q\,
	datac => \alu|Mult0|auto_generated|mac_out2~DATAOUT4\,
	datad => \alu|Add0~19_combout\,
	combout => \alu|Add0~21_combout\);

-- Location: LCCOMB_X17_Y2_N4
\alu|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu|Add0~22_combout\ = \ctrl|state.SUBTRACT~q\ $ (\op_b[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctrl|state.SUBTRACT~q\,
	datad => \op_b[5]~input_o\,
	combout => \alu|Add0~22_combout\);

-- Location: LCCOMB_X17_Y2_N22
\alu|Add0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu|Add0~23_combout\ = ((\op_a[5]~input_o\ $ (\alu|Add0~22_combout\ $ (!\alu|Add0~20\)))) # (GND)
-- \alu|Add0~24\ = CARRY((\op_a[5]~input_o\ & ((\alu|Add0~22_combout\) # (!\alu|Add0~20\))) # (!\op_a[5]~input_o\ & (\alu|Add0~22_combout\ & !\alu|Add0~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op_a[5]~input_o\,
	datab => \alu|Add0~22_combout\,
	datad => VCC,
	cin => \alu|Add0~20\,
	combout => \alu|Add0~23_combout\,
	cout => \alu|Add0~24\);

-- Location: LCCOMB_X17_Y2_N8
\alu|Add0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu|Add0~25_combout\ = (\ctrl|state.MULTIPLY~q\ & ((\alu|Mult0|auto_generated|mac_out2~DATAOUT5\))) # (!\ctrl|state.MULTIPLY~q\ & (\alu|Add0~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|state.MULTIPLY~q\,
	datac => \alu|Add0~23_combout\,
	datad => \alu|Mult0|auto_generated|mac_out2~DATAOUT5\,
	combout => \alu|Add0~25_combout\);

-- Location: LCCOMB_X16_Y2_N16
\alu|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu|Add0~26_combout\ = \ctrl|state.SUBTRACT~q\ $ (\op_b[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctrl|state.SUBTRACT~q\,
	datad => \op_b[6]~input_o\,
	combout => \alu|Add0~26_combout\);

-- Location: LCCOMB_X17_Y2_N24
\alu|Add0~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu|Add0~27_combout\ = (\alu|Add0~26_combout\ & ((\op_a[6]~input_o\ & (\alu|Add0~24\ & VCC)) # (!\op_a[6]~input_o\ & (!\alu|Add0~24\)))) # (!\alu|Add0~26_combout\ & ((\op_a[6]~input_o\ & (!\alu|Add0~24\)) # (!\op_a[6]~input_o\ & ((\alu|Add0~24\) # 
-- (GND)))))
-- \alu|Add0~28\ = CARRY((\alu|Add0~26_combout\ & (!\op_a[6]~input_o\ & !\alu|Add0~24\)) # (!\alu|Add0~26_combout\ & ((!\alu|Add0~24\) # (!\op_a[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Add0~26_combout\,
	datab => \op_a[6]~input_o\,
	datad => VCC,
	cin => \alu|Add0~24\,
	combout => \alu|Add0~27_combout\,
	cout => \alu|Add0~28\);

-- Location: LCCOMB_X17_Y2_N30
\alu|Add0~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu|Add0~29_combout\ = (\ctrl|state.MULTIPLY~q\ & ((\alu|Mult0|auto_generated|mac_out2~DATAOUT6\))) # (!\ctrl|state.MULTIPLY~q\ & (\alu|Add0~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|state.MULTIPLY~q\,
	datab => \alu|Add0~27_combout\,
	datad => \alu|Mult0|auto_generated|mac_out2~DATAOUT6\,
	combout => \alu|Add0~29_combout\);

-- Location: LCCOMB_X16_Y2_N14
\alu|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu|Add0~30_combout\ = \ctrl|state.SUBTRACT~q\ $ (\op_b[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctrl|state.SUBTRACT~q\,
	datad => \op_b[7]~input_o\,
	combout => \alu|Add0~30_combout\);

-- Location: LCCOMB_X17_Y2_N26
\alu|Add0~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu|Add0~31_combout\ = \alu|Add0~30_combout\ $ (\alu|Add0~28\ $ (!\op_a[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Add0~30_combout\,
	datad => \op_a[7]~input_o\,
	cin => \alu|Add0~28\,
	combout => \alu|Add0~31_combout\);

-- Location: LCCOMB_X16_Y2_N24
\alu|Add0~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu|Add0~33_combout\ = (\ctrl|state.MULTIPLY~q\ & ((\alu|Mult0|auto_generated|mac_out2~DATAOUT7\))) # (!\ctrl|state.MULTIPLY~q\ & (\alu|Add0~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|Add0~31_combout\,
	datac => \ctrl|state.MULTIPLY~q\,
	datad => \alu|Mult0|auto_generated|mac_out2~DATAOUT7\,
	combout => \alu|Add0~33_combout\);

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;

ww_result(4) <= \result[4]~output_o\;

ww_result(5) <= \result[5]~output_o\;

ww_result(6) <= \result[6]~output_o\;

ww_result(7) <= \result[7]~output_o\;
END structure;


