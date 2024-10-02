LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY eightbitmux21 IS
PORT ( s: IN STD_LOGIC ;
       x0, x1: IN STD_LOGIC_VECTOR(7 downto 0) ;
       y: OUT STD_LOGIC_VECTOR(7 downto 0) ) ;
END eightbitmux21 ;

ARCHITECTURE structural OF eightbitmux21 is
    COMPONENT mux21
    PORT ( s, x0, x1: IN STD_LOGIC ;
           y: OUT STD_LOGIC ) ;
    END COMPONENT ;
    
BEGIN 
    b0: mux21 PORT MAP ( s, x0(0), x1(0), y(0) ) ;
    b1: mux21 PORT MAP ( s, x0(1), x1(1), y(1) ) ;
    b2: mux21 PORT MAP ( s, x0(2), x1(2), y(2) ) ;
    b3: mux21 PORT MAP ( s, x0(3), x1(3), y(3) ) ;
    b4: mux21 PORT MAP ( s, x0(4), x1(4), y(4) ) ;
    b5: mux21 PORT MAP ( s, x0(5), x1(5), y(5) ) ;
    b6: mux21 PORT MAP ( s, x0(6), x1(6), y(6) ) ;
    b7: mux21 PORT MAP ( s, x0(7), x1(7), y(7) ) ;
END structural ;