LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY eightbitmux41 IS
PORT ( s: IN STD_LOGIC_VECTOR(1 downto 0) ;
       x0, x1, x2, x3: IN STD_LOGIC_VECTOR(7 downto 0) ;
       y: OUT STD_LOGIC_VECTOR(7 downto 0) ) ;
END eightbitmux41 ;

ARCHITECTURE structural OF eightbitmux41 is
    SIGNAL mux1out, mux2out: STD_LOGIC_VECTOR(7 downto 0) ;

    COMPONENT eightbitmux21
    PORT ( s: IN STD_LOGIC ;
           x0, x1: IN STD_LOGIC_VECTOR(7 downto 0) ;
           y: OUT STD_LOGIC_VECTOR(7 downto 0) ) ;
    END COMPONENT ;

BEGIN
    mux1: eightbitmux21 PORT MAP ( s(0), x0, x1, mux1out ) ;
    mux2: eightbitmux21 PORT MAP ( s(0), x2, x3, mux2out ) ;

    muxfinal: eightbitmux21 PORT MAP ( s(1), mux1out, mux2out, y ) ;
END structural ;