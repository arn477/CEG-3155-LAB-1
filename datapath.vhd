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
    SIGNAL lmask_en, rmask_en, display_en: STD_LOGIC;

    COMPONENT eightbitmux21
    PORT ( s: IN STD_LOGIC ;
           x0, x1: IN STD_LOGIC_VECTOR(7 downto 0) ;
           y: OUT STD_LOGIC_VECTOR(7 downto 0) ) ;
    END COMPONENT ;

    COMPONENT eightbitmux41
    PORT ( s: IN STD_LOGIC_VECTOR(1 downto 0) ;
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
    -- Left Mask
    lMaskMux: eightbitmux21 
    PORT MAP ( 
        s => lmask_en, 
        x0 => lmask_shifted, 
        x1 => "00000001", 
        y => lmask_in 
        );

    lMaskReg: eightbitregister
    PORT MAP (
        i_resetBar => greset, 
        i_load => lmask_en, 
        i_clock => i_clock, 
        i_Value => lmask_in, 
        o_Value => lmask_out
        );
    
    lmaskShift: shiftleft1
    PORT MAP (
        data_in => lmask_out, 
        data_out => lmask_shifted
        );

    
    lmask_en <= left or greset;

    -- Right Mask
    rMaskMux: eightbitmux21 
    PORT MAP ( 
        s => lmask_en, 
        x0 => lmask_shifted, 
        x1 => "00000001", 
        y => lmask_in 
        );

    rMaskReg: eightbitregister
    PORT MAP (
        i_resetBar => greset, 
        i_load => lmask_en, 
        i_clock => i_clock, 
        i_Value => lmask_in, 
        o_Value => lmask_out
        );
    
    rmaskShift: shiftleft1
    PORT MAP (
        data_in => lmask_out, 
        data_out => lmask_shifted
        );

    
    rmask_en <= right or greset;

END rtl ;