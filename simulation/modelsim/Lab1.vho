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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "10/02/2024 07:21:13"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	eightbitmux41 IS
    PORT (
	s : IN std_logic_vector(1 DOWNTO 0);
	x0 : IN std_logic_vector(7 DOWNTO 0);
	x1 : IN std_logic_vector(7 DOWNTO 0);
	x2 : IN std_logic_vector(7 DOWNTO 0);
	x3 : IN std_logic_vector(7 DOWNTO 0);
	y : OUT std_logic_vector(7 DOWNTO 0)
	);
END eightbitmux41;

-- Design Ports Information
-- y[0]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x2[0]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[0]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[0]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0[0]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x3[0]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[1]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x2[1]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0[1]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x3[1]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x2[2]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[2]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0[2]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x3[2]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[3]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x2[3]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x3[3]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x2[4]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[4]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0[4]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x3[4]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[5]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x2[5]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0[5]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x3[5]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x2[6]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[6]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0[6]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x3[6]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[7]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x2[7]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0[7]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x3[7]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF eightbitmux41 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_s : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_x0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_x1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_x2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_x3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(7 DOWNTO 0);
SIGNAL \x2[7]~input_o\ : std_logic;
SIGNAL \y[0]~output_o\ : std_logic;
SIGNAL \y[1]~output_o\ : std_logic;
SIGNAL \y[2]~output_o\ : std_logic;
SIGNAL \y[3]~output_o\ : std_logic;
SIGNAL \y[4]~output_o\ : std_logic;
SIGNAL \y[5]~output_o\ : std_logic;
SIGNAL \y[6]~output_o\ : std_logic;
SIGNAL \y[7]~output_o\ : std_logic;
SIGNAL \x3[0]~input_o\ : std_logic;
SIGNAL \x2[0]~input_o\ : std_logic;
SIGNAL \s[1]~input_o\ : std_logic;
SIGNAL \x1[0]~input_o\ : std_logic;
SIGNAL \x0[0]~input_o\ : std_logic;
SIGNAL \muxfinal|b0|y~0_combout\ : std_logic;
SIGNAL \muxfinal|b0|y~1_combout\ : std_logic;
SIGNAL \x3[1]~input_o\ : std_logic;
SIGNAL \x1[1]~input_o\ : std_logic;
SIGNAL \s[0]~input_o\ : std_logic;
SIGNAL \x0[1]~input_o\ : std_logic;
SIGNAL \x2[1]~input_o\ : std_logic;
SIGNAL \muxfinal|b1|y~0_combout\ : std_logic;
SIGNAL \muxfinal|b1|y~1_combout\ : std_logic;
SIGNAL \x3[2]~input_o\ : std_logic;
SIGNAL \x1[2]~input_o\ : std_logic;
SIGNAL \x0[2]~input_o\ : std_logic;
SIGNAL \muxfinal|b2|y~0_combout\ : std_logic;
SIGNAL \x2[2]~input_o\ : std_logic;
SIGNAL \muxfinal|b2|y~1_combout\ : std_logic;
SIGNAL \x1[3]~input_o\ : std_logic;
SIGNAL \x0[3]~input_o\ : std_logic;
SIGNAL \x2[3]~input_o\ : std_logic;
SIGNAL \muxfinal|b3|y~0_combout\ : std_logic;
SIGNAL \x3[3]~input_o\ : std_logic;
SIGNAL \muxfinal|b3|y~1_combout\ : std_logic;
SIGNAL \x3[4]~input_o\ : std_logic;
SIGNAL \x2[4]~input_o\ : std_logic;
SIGNAL \x1[4]~input_o\ : std_logic;
SIGNAL \x0[4]~input_o\ : std_logic;
SIGNAL \muxfinal|b4|y~0_combout\ : std_logic;
SIGNAL \muxfinal|b4|y~1_combout\ : std_logic;
SIGNAL \x0[5]~input_o\ : std_logic;
SIGNAL \x2[5]~input_o\ : std_logic;
SIGNAL \muxfinal|b5|y~0_combout\ : std_logic;
SIGNAL \x3[5]~input_o\ : std_logic;
SIGNAL \x1[5]~input_o\ : std_logic;
SIGNAL \muxfinal|b5|y~1_combout\ : std_logic;
SIGNAL \x3[6]~input_o\ : std_logic;
SIGNAL \x2[6]~input_o\ : std_logic;
SIGNAL \x0[6]~input_o\ : std_logic;
SIGNAL \x1[6]~input_o\ : std_logic;
SIGNAL \muxfinal|b6|y~0_combout\ : std_logic;
SIGNAL \muxfinal|b6|y~1_combout\ : std_logic;
SIGNAL \x3[7]~input_o\ : std_logic;
SIGNAL \x0[7]~input_o\ : std_logic;
SIGNAL \muxfinal|b7|y~0_combout\ : std_logic;
SIGNAL \x1[7]~input_o\ : std_logic;
SIGNAL \muxfinal|b7|y~1_combout\ : std_logic;

BEGIN

ww_s <= s;
ww_x0 <= x0;
ww_x1 <= x1;
ww_x2 <= x2;
ww_x3 <= x3;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOIBUF_X0_Y57_N22
\x2[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x2(7),
	o => \x2[7]~input_o\);

-- Location: IOOBUF_X0_Y68_N2
\y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxfinal|b0|y~1_combout\,
	devoe => ww_devoe,
	o => \y[0]~output_o\);

-- Location: IOOBUF_X0_Y60_N16
\y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxfinal|b1|y~1_combout\,
	devoe => ww_devoe,
	o => \y[1]~output_o\);

-- Location: IOOBUF_X0_Y67_N16
\y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxfinal|b2|y~1_combout\,
	devoe => ww_devoe,
	o => \y[2]~output_o\);

-- Location: IOOBUF_X0_Y69_N9
\y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxfinal|b3|y~1_combout\,
	devoe => ww_devoe,
	o => \y[3]~output_o\);

-- Location: IOOBUF_X0_Y65_N16
\y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxfinal|b4|y~1_combout\,
	devoe => ww_devoe,
	o => \y[4]~output_o\);

-- Location: IOOBUF_X0_Y57_N16
\y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxfinal|b5|y~1_combout\,
	devoe => ww_devoe,
	o => \y[5]~output_o\);

-- Location: IOOBUF_X0_Y68_N16
\y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxfinal|b6|y~1_combout\,
	devoe => ww_devoe,
	o => \y[6]~output_o\);

-- Location: IOOBUF_X1_Y73_N23
\y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxfinal|b7|y~1_combout\,
	devoe => ww_devoe,
	o => \y[7]~output_o\);

-- Location: IOIBUF_X0_Y52_N1
\x3[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x3(0),
	o => \x3[0]~input_o\);

-- Location: IOIBUF_X0_Y52_N15
\x2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x2(0),
	o => \x2[0]~input_o\);

-- Location: IOIBUF_X0_Y62_N15
\s[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(1),
	o => \s[1]~input_o\);

-- Location: IOIBUF_X0_Y54_N8
\x1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1(0),
	o => \x1[0]~input_o\);

-- Location: IOIBUF_X7_Y73_N15
\x0[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x0(0),
	o => \x0[0]~input_o\);

-- Location: LCCOMB_X1_Y65_N0
\muxfinal|b0|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxfinal|b0|y~0_combout\ = (\s[0]~input_o\ & ((\x1[0]~input_o\) # ((\s[1]~input_o\)))) # (!\s[0]~input_o\ & (((!\s[1]~input_o\ & \x0[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s[0]~input_o\,
	datab => \x1[0]~input_o\,
	datac => \s[1]~input_o\,
	datad => \x0[0]~input_o\,
	combout => \muxfinal|b0|y~0_combout\);

-- Location: LCCOMB_X1_Y65_N10
\muxfinal|b0|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxfinal|b0|y~1_combout\ = (\s[1]~input_o\ & ((\muxfinal|b0|y~0_combout\ & (\x3[0]~input_o\)) # (!\muxfinal|b0|y~0_combout\ & ((\x2[0]~input_o\))))) # (!\s[1]~input_o\ & (((\muxfinal|b0|y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x3[0]~input_o\,
	datab => \x2[0]~input_o\,
	datac => \s[1]~input_o\,
	datad => \muxfinal|b0|y~0_combout\,
	combout => \muxfinal|b0|y~1_combout\);

-- Location: IOIBUF_X3_Y73_N8
\x3[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x3(1),
	o => \x3[1]~input_o\);

-- Location: IOIBUF_X0_Y66_N15
\x1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1(1),
	o => \x1[1]~input_o\);

-- Location: IOIBUF_X0_Y55_N8
\s[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(0),
	o => \s[0]~input_o\);

-- Location: IOIBUF_X1_Y73_N8
\x0[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x0(1),
	o => \x0[1]~input_o\);

-- Location: IOIBUF_X3_Y73_N1
\x2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x2(1),
	o => \x2[1]~input_o\);

-- Location: LCCOMB_X1_Y65_N28
\muxfinal|b1|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxfinal|b1|y~0_combout\ = (\s[1]~input_o\ & (((\s[0]~input_o\) # (\x2[1]~input_o\)))) # (!\s[1]~input_o\ & (\x0[1]~input_o\ & (!\s[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s[1]~input_o\,
	datab => \x0[1]~input_o\,
	datac => \s[0]~input_o\,
	datad => \x2[1]~input_o\,
	combout => \muxfinal|b1|y~0_combout\);

-- Location: LCCOMB_X1_Y65_N30
\muxfinal|b1|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxfinal|b1|y~1_combout\ = (\s[0]~input_o\ & ((\muxfinal|b1|y~0_combout\ & (\x3[1]~input_o\)) # (!\muxfinal|b1|y~0_combout\ & ((\x1[1]~input_o\))))) # (!\s[0]~input_o\ & (((\muxfinal|b1|y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x3[1]~input_o\,
	datab => \x1[1]~input_o\,
	datac => \s[0]~input_o\,
	datad => \muxfinal|b1|y~0_combout\,
	combout => \muxfinal|b1|y~1_combout\);

-- Location: IOIBUF_X3_Y73_N22
\x3[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x3(2),
	o => \x3[2]~input_o\);

-- Location: IOIBUF_X0_Y63_N22
\x1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1(2),
	o => \x1[2]~input_o\);

-- Location: IOIBUF_X7_Y73_N22
\x0[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x0(2),
	o => \x0[2]~input_o\);

-- Location: LCCOMB_X1_Y65_N8
\muxfinal|b2|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxfinal|b2|y~0_combout\ = (\s[1]~input_o\ & (((\s[0]~input_o\)))) # (!\s[1]~input_o\ & ((\s[0]~input_o\ & (\x1[2]~input_o\)) # (!\s[0]~input_o\ & ((\x0[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s[1]~input_o\,
	datab => \x1[2]~input_o\,
	datac => \s[0]~input_o\,
	datad => \x0[2]~input_o\,
	combout => \muxfinal|b2|y~0_combout\);

-- Location: IOIBUF_X5_Y73_N1
\x2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x2(2),
	o => \x2[2]~input_o\);

-- Location: LCCOMB_X1_Y65_N26
\muxfinal|b2|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxfinal|b2|y~1_combout\ = (\muxfinal|b2|y~0_combout\ & ((\x3[2]~input_o\) # ((!\s[1]~input_o\)))) # (!\muxfinal|b2|y~0_combout\ & (((\s[1]~input_o\ & \x2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x3[2]~input_o\,
	datab => \muxfinal|b2|y~0_combout\,
	datac => \s[1]~input_o\,
	datad => \x2[2]~input_o\,
	combout => \muxfinal|b2|y~1_combout\);

-- Location: IOIBUF_X0_Y62_N22
\x1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1(3),
	o => \x1[3]~input_o\);

-- Location: IOIBUF_X0_Y63_N15
\x0[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x0(3),
	o => \x0[3]~input_o\);

-- Location: IOIBUF_X0_Y61_N22
\x2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x2(3),
	o => \x2[3]~input_o\);

-- Location: LCCOMB_X1_Y65_N20
\muxfinal|b3|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxfinal|b3|y~0_combout\ = (\s[0]~input_o\ & (((\s[1]~input_o\)))) # (!\s[0]~input_o\ & ((\s[1]~input_o\ & ((\x2[3]~input_o\))) # (!\s[1]~input_o\ & (\x0[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s[0]~input_o\,
	datab => \x0[3]~input_o\,
	datac => \s[1]~input_o\,
	datad => \x2[3]~input_o\,
	combout => \muxfinal|b3|y~0_combout\);

-- Location: IOIBUF_X1_Y73_N1
\x3[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x3(3),
	o => \x3[3]~input_o\);

-- Location: LCCOMB_X1_Y65_N22
\muxfinal|b3|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxfinal|b3|y~1_combout\ = (\muxfinal|b3|y~0_combout\ & (((\x3[3]~input_o\) # (!\s[0]~input_o\)))) # (!\muxfinal|b3|y~0_combout\ & (\x1[3]~input_o\ & (\s[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x1[3]~input_o\,
	datab => \muxfinal|b3|y~0_combout\,
	datac => \s[0]~input_o\,
	datad => \x3[3]~input_o\,
	combout => \muxfinal|b3|y~1_combout\);

-- Location: IOIBUF_X0_Y66_N22
\x3[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x3(4),
	o => \x3[4]~input_o\);

-- Location: IOIBUF_X0_Y58_N15
\x2[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x2(4),
	o => \x2[4]~input_o\);

-- Location: IOIBUF_X0_Y64_N1
\x1[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1(4),
	o => \x1[4]~input_o\);

-- Location: IOIBUF_X9_Y73_N1
\x0[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x0(4),
	o => \x0[4]~input_o\);

-- Location: LCCOMB_X1_Y65_N24
\muxfinal|b4|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxfinal|b4|y~0_combout\ = (\s[1]~input_o\ & (((\s[0]~input_o\)))) # (!\s[1]~input_o\ & ((\s[0]~input_o\ & (\x1[4]~input_o\)) # (!\s[0]~input_o\ & ((\x0[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s[1]~input_o\,
	datab => \x1[4]~input_o\,
	datac => \s[0]~input_o\,
	datad => \x0[4]~input_o\,
	combout => \muxfinal|b4|y~0_combout\);

-- Location: LCCOMB_X1_Y65_N2
\muxfinal|b4|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxfinal|b4|y~1_combout\ = (\s[1]~input_o\ & ((\muxfinal|b4|y~0_combout\ & (\x3[4]~input_o\)) # (!\muxfinal|b4|y~0_combout\ & ((\x2[4]~input_o\))))) # (!\s[1]~input_o\ & (((\muxfinal|b4|y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x3[4]~input_o\,
	datab => \x2[4]~input_o\,
	datac => \s[1]~input_o\,
	datad => \muxfinal|b4|y~0_combout\,
	combout => \muxfinal|b4|y~1_combout\);

-- Location: IOIBUF_X0_Y59_N22
\x0[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x0(5),
	o => \x0[5]~input_o\);

-- Location: IOIBUF_X5_Y73_N8
\x2[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x2(5),
	o => \x2[5]~input_o\);

-- Location: LCCOMB_X1_Y65_N4
\muxfinal|b5|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxfinal|b5|y~0_combout\ = (\s[0]~input_o\ & (((\s[1]~input_o\)))) # (!\s[0]~input_o\ & ((\s[1]~input_o\ & ((\x2[5]~input_o\))) # (!\s[1]~input_o\ & (\x0[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s[0]~input_o\,
	datab => \x0[5]~input_o\,
	datac => \s[1]~input_o\,
	datad => \x2[5]~input_o\,
	combout => \muxfinal|b5|y~0_combout\);

-- Location: IOIBUF_X0_Y53_N8
\x3[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x3(5),
	o => \x3[5]~input_o\);

-- Location: IOIBUF_X0_Y53_N1
\x1[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1(5),
	o => \x1[5]~input_o\);

-- Location: LCCOMB_X1_Y57_N16
\muxfinal|b5|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxfinal|b5|y~1_combout\ = (\muxfinal|b5|y~0_combout\ & ((\x3[5]~input_o\) # ((!\s[0]~input_o\)))) # (!\muxfinal|b5|y~0_combout\ & (((\x1[5]~input_o\ & \s[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxfinal|b5|y~0_combout\,
	datab => \x3[5]~input_o\,
	datac => \x1[5]~input_o\,
	datad => \s[0]~input_o\,
	combout => \muxfinal|b5|y~1_combout\);

-- Location: IOIBUF_X0_Y55_N15
\x3[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x3(6),
	o => \x3[6]~input_o\);

-- Location: IOIBUF_X0_Y55_N22
\x2[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x2(6),
	o => \x2[6]~input_o\);

-- Location: IOIBUF_X0_Y67_N22
\x0[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x0(6),
	o => \x0[6]~input_o\);

-- Location: IOIBUF_X0_Y59_N15
\x1[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1(6),
	o => \x1[6]~input_o\);

-- Location: LCCOMB_X1_Y65_N6
\muxfinal|b6|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxfinal|b6|y~0_combout\ = (\s[0]~input_o\ & (((\s[1]~input_o\) # (\x1[6]~input_o\)))) # (!\s[0]~input_o\ & (\x0[6]~input_o\ & (!\s[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s[0]~input_o\,
	datab => \x0[6]~input_o\,
	datac => \s[1]~input_o\,
	datad => \x1[6]~input_o\,
	combout => \muxfinal|b6|y~0_combout\);

-- Location: LCCOMB_X1_Y65_N16
\muxfinal|b6|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxfinal|b6|y~1_combout\ = (\s[1]~input_o\ & ((\muxfinal|b6|y~0_combout\ & (\x3[6]~input_o\)) # (!\muxfinal|b6|y~0_combout\ & ((\x2[6]~input_o\))))) # (!\s[1]~input_o\ & (((\muxfinal|b6|y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s[1]~input_o\,
	datab => \x3[6]~input_o\,
	datac => \x2[6]~input_o\,
	datad => \muxfinal|b6|y~0_combout\,
	combout => \muxfinal|b6|y~1_combout\);

-- Location: IOIBUF_X0_Y68_N8
\x3[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x3(7),
	o => \x3[7]~input_o\);

-- Location: IOIBUF_X5_Y73_N22
\x0[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x0(7),
	o => \x0[7]~input_o\);

-- Location: LCCOMB_X1_Y65_N18
\muxfinal|b7|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxfinal|b7|y~0_combout\ = (\s[1]~input_o\ & ((\x2[7]~input_o\) # ((\s[0]~input_o\)))) # (!\s[1]~input_o\ & (((!\s[0]~input_o\ & \x0[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x2[7]~input_o\,
	datab => \s[1]~input_o\,
	datac => \s[0]~input_o\,
	datad => \x0[7]~input_o\,
	combout => \muxfinal|b7|y~0_combout\);

-- Location: IOIBUF_X1_Y73_N15
\x1[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1(7),
	o => \x1[7]~input_o\);

-- Location: LCCOMB_X1_Y65_N12
\muxfinal|b7|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxfinal|b7|y~1_combout\ = (\muxfinal|b7|y~0_combout\ & ((\x3[7]~input_o\) # ((!\s[0]~input_o\)))) # (!\muxfinal|b7|y~0_combout\ & (((\s[0]~input_o\ & \x1[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x3[7]~input_o\,
	datab => \muxfinal|b7|y~0_combout\,
	datac => \s[0]~input_o\,
	datad => \x1[7]~input_o\,
	combout => \muxfinal|b7|y~1_combout\);

ww_y(0) <= \y[0]~output_o\;

ww_y(1) <= \y[1]~output_o\;

ww_y(2) <= \y[2]~output_o\;

ww_y(3) <= \y[3]~output_o\;

ww_y(4) <= \y[4]~output_o\;

ww_y(5) <= \y[5]~output_o\;

ww_y(6) <= \y[6]~output_o\;

ww_y(7) <= \y[7]~output_o\;
END structure;


