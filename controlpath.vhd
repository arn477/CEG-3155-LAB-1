LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY controlpath IS
PORT(left, right: IN STD_LOGIC; 
    greset, ldDisplay: IN STD_LOGIC;
    i_clock: IN STD_LOGIC;
    displayOut: OUT STD_LOGIC_VECTOR(7 downto 0)
    );
END controlpath;

ARCHITECTURE rtl OF controlpath is
    COMPONENT enARdFF_2
    PORT(
        i_resetBar  : IN  STD_LOGIC;
        i_d     : IN  STD_LOGIC;
        i_enable    : IN  STD_LOGIC;
        i_clock     : IN  STD_LOGIC;
        o_q, o_qBar : OUT STD_LOGIC);
    END COMPONENT;

    