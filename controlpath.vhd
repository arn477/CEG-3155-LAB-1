LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY controlpath IS
PORT(left, right: IN STD_LOGIC; 
    reset: IN STD_LOGIC;
    i_clock: IN STD_LOGIC;
    ld_display, greset: OUT STD_LOGIC
    );
END controlpath;

ARCHITECTURE rtl OF controlpath is
    SIGNAL s_in: STD_LOGIC_VECTOR (4 downto 0);
    SIGNAL s_out: STD_LOGIC_VECTOR (4 downto 0);
    SIGNAL not_left, not_right, control_reset: STD_LOGIC;

    COMPONENT enARdFF_2
    PORT(
        i_resetBar  : IN  STD_LOGIC;
        i_d     : IN  STD_LOGIC;
        i_enable    : IN  STD_LOGIC;
        i_clock     : IN  STD_LOGIC;
        o_q, o_qBar : OUT STD_LOGIC);
    END COMPONENT;

BEGIN 

s0: enARdFF_2
    PORT MAP (i_resetBar => '1',
              i_d => reset, 
              i_enable => '1',
              i_clock => i_clock,
              o_q => s_out(0)
            );

s1: enARdFF_2
    PORT MAP (i_resetBar => control_reset,
              i_d => s_in(1), 
              i_enable => '1',
              i_clock => i_clock,
              o_q => s_out(1)
            );

s2: enARdFF_2
    PORT MAP (i_resetBar => control_reset,
              i_d => s_in(2), 
              i_enable => '1',
              i_clock => i_clock,
              o_q => s_out(2)
            );

s3 : enARdFF_2
    PORT MAP (i_resetBar => control_reset,
              i_d => s_in(3), 
              i_enable => '1',
              i_clock => i_clock,
              o_q => s_out(3)
            );

s4: enARdFF_2
    PORT MAP (i_resetBar => control_reset,
              i_d => s_in(4), 
              i_enable => '1',
              i_clock => i_clock,
              o_q => s_out(4)
            );

not_left <= not left;
not_right <= not right;

s_in(1) <= not_left and not_right;
s_in(2) <= left and right;
s_in(3) <= not_left and right;
s_in(4) <= left and not_right;

greset <= s_out(0);
control_reset <= not s_out(0);
ld_display <= s_out(1) or s_out(2) or s_out(3) or s_out(4);

END rtl;