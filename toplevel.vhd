library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY toplevel IS

PORT(left, right, reset: IN STD_LOGIC; 
    i_clock: IN STD_LOGIC;
    displayOut: OUT STD_LOGIC_VECTOR(7 downto 0)
    );
END toplevel ;

ARCHITECTURE rtl OF toplevel IS
SIGNAL int_greset, int_ld_display: STD_LOGIC;

COMPONENT controlpath
PORT(left, right: IN STD_LOGIC; 
    reset: IN STD_LOGIC;
    i_clock: IN STD_LOGIC;
    ld_display, greset: OUT STD_LOGIC
    );
END COMPONENT;

COMPONENT datapath
PORT(left, right: IN STD_LOGIC; 
    greset, ldDisplay: IN STD_LOGIC;
    i_clock: IN STD_LOGIC;
    displayOut: OUT STD_LOGIC_VECTOR(7 downto 0)
    );
END COMPONENT;

BEGIN 
    controlpath1: controlpath
    PORT MAP (left => left, 
              right => right, 
              reset => reset, 
              i_clock => i_clock, 
              ld_display => int_ld_display, 
              greset => int_greset
              );

    datapath1: datapath
    PORT MAP (left => left, 
              right => right, 
              greset => int_greset, 
              ldDisplay => int_ld_display, 
              i_clock => i_clock, 
              displayOut => displayOut
              );

END rtl;