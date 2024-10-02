LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY datapath IS
PORT(left, right: IN STD_LOGIC; 
    greset, ldDisplay: IN STD_LOGIC;
    i_clock: IN STD_LOGIC;
    displayOut: OUT STD_LOGIC_VECTOR(7 downto 0)
    );
END datapath ;

ARCHITECTURE rtl OF datapath IS
    SIGNAL lmask_in, lmask_out, lmask_shifted: STD_LOGIC_VECTOR(7 downto 0);
    SIGNAL rmask_in, rmask_out, rmask_shifted: STD_LOGIC_VECTOR(7 downto 0);
    SIGNAL disp_mux41, disp: STD_LOGIC_VECTOR(7 downto 0);
    SIGNAL lrmask : STD_LOGIC_VECTOR(7 downto 0);
    SIGNAL disp_mux_select: STD_LOGIC_VECTOR(1 downto 0);
    SIGNAL lmask_en, rmask_en, display_en: STD_LOGIC;

    COMPONENT eightbitmux21
    PORT ( s: IN STD_LOGIC ;
           x0, x1: IN STD_LOGIC_VECTOR(7 downto 0) ;
           y: OUT STD_LOGIC_VECTOR(7 downto 0) ) ;
    END COMPONENT ;

    COMPONENT eightbitmux41
    PORT ( s0, s1: IN STD_LOGIC ;
           x0, x1, x2, x3: IN STD_LOGIC_VECTOR(7 downto 0) ;
           y: OUT STD_LOGIC_VECTOR(7 downto 0) ) ;
    END COMPONENT ;

    COMPONENT shiftleft1 
    Port (
        data_in  : IN  STD_LOGIC_VECTOR(7 downto 0); 
        data_out : OUT STD_LOGIC_VECTOR(7 downto 0)  
    );
    END COMPONENT ;

    COMPONENT shiftright1
    Port (
        data_in  : in  STD_LOGIC_VECTOR(7 downto 0); 
        data_out : out STD_LOGIC_VECTOR(7 downto 0)  
    );
    END COMPONENT ;

    COMPONENT eightbitregister
    PORT(
		i_resetBar, i_load	: IN	STD_LOGIC;
		i_clock : IN	STD_LOGIC;
		i_Value	: IN	STD_LOGIC_VECTOR(7 downto 0);
		o_Value	: OUT	STD_LOGIC_VECTOR(7 downto 0));
    END COMPONENT ;

BEGIN
    lMaskMux: eightbitmux21 
    PORT MAP ( 
        s => greset, 
        x0 => lmask_shifted, 
        x1 => "00000001", 
        y => lmask_in 
        );

    rMaskMux: eightbitmux21 
    PORT MAP ( 
        s => greset, 
        x0 => rmask_shifted, 
        x1 => "10000000", 
        y => rmask_in 
        );

    displayResetMux: eightbitmux21
    PORT MAP (
        s => greset, 
        x0 => disp_mux41, 
        x1 => "00000000", 
        y => disp
        );

    displayMux: eightbitmux41
    PORT MAP (
        s0 => left, 
        s1 => right,
        x0 => "00000000", 
        x1 => lmask_out, 
        x2 => lrmask, 
        x3 => rmask_out, 
        y => disp_mux41
        );

    lMaskReg: eightbitregister
    PORT MAP (
        i_resetBar => '1', 
        i_load => lmask_en, 
        i_clock => i_clock, 
        i_Value => lmask_in, 
        o_Value => lmask_out
        );

    rMaskReg: eightbitregister
    PORT MAP (
        i_resetBar => '1', 
        i_load => lmask_en, 
        i_clock => i_clock, 
        i_Value => rmask_in, 
        o_Value => rmask_out
        );

    displayReg: eightbitregister
    PORT MAP (
        i_resetBar => '1', 
        i_load => display_en, 
        i_clock => i_clock, 
        i_Value => disp, 
        o_Value => displayOut
        );
    
    lmaskShift: shiftleft1
    PORT MAP (
        data_in => lmask_out, 
        data_out => lmask_shifted
        );

    rmaskShift: shiftright1
    PORT MAP (
        data_in => rmask_out, 
        data_out => rmask_shifted
        );

    lrmask <= lmask_out or rmask_out;
    
    lmask_en <= left or greset;
    rmask_en <= right or greset;
    display_en <= ldDisplay or greset;

END rtl ;