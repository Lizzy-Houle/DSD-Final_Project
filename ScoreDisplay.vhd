----------------------------------------------------------------------------------
-- Create Date: 11/28/2022 11:08:00 AM
-- Design Name: 
-- Module Name: ScoreDisplay - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Four_Digit_Display is
    Port ( CurrentScore : in STD_LOGIC_VECTOR (15 downto 0);
           Clk : in STD_LOGIC;
           Segments : out STD_LOGIC_VECTOR (6 downto 0);
           Digits : out STD_LOGIC_VECTOR (3 downto 0));
end Four_Digit_Display;

architecture Behavioral of Four_Digit_Display is

    component ClkDiv
    	port( ClkIn : in STD_LOGIC;
              ClkOut : out STD_LOGIC;
              Diviser : in STD_LOGIC_VECTOR (31 downto 0));
    end component;
    
    signal ClkRefresh : std_logic;
    
begin

    RefreshClock : ClkDiv 
        port map (ClkIn => Clk,
                  ClkOut => ClkRefresh,
                  Diviser => x"00032DCD"); -- 240 Hz Refresh Rate
    
    Display: process (ClkRefresh) is
        variable digit : unsigned (1 downto 0) := "00";
        variable digit1, digit2 : integer;
        variable number : unsigned (3 downto 0) := "0000";
        variable score : integer;
    begin
        score := to_integer(signed(CurrentScore));
        digit1 := score mod 10;
        digit2 := score / 10;


        if (rising_edge(ClkRefresh) ) then
            case (digit) is
                when "00" => 
                    Digits <= "1110";  
                    
                    case (digit1) is
                        when 0 => Segments <= "0000001"; --0
                        when 1 => Segments <= "1001111"; --1
                        when 2 => Segments <= "0010010"; --2
                        when 3 => Segments <= "0000110"; --3
                        when 4 => Segments <= "1001100"; --4
                        when 5 => Segments <= "0100100"; --5
                        when 6 => Segments <= "0100000"; --6
                        when 7 => Segments <= "0001111"; --7
                        when 8 => Segments <= "0000000"; --8
                        when 9 => Segments <= "0000100"; --9
                        when others => Segments <= "1111111";
                    end case;
                when "01" => 
                    Digits <= "1101"; 

                    case (digit2) is
                        when 0 => Segments <= "0000001"; --0
                        when 1 => Segments <= "1001111"; --1
                        when 2 => Segments <= "0010010"; --2
                        when 3 => Segments <= "0000110"; --3
                        when 4 => Segments <= "1001100"; --4
                        when 5 => Segments <= "0100100"; --5
                        when 6 => Segments <= "0100000"; --6
                        when 7 => Segments <= "0001111"; --7
                        when 8 => Segments <= "0000000"; --8
                        when 9 => Segments <= "0000100"; --9
                        when others => Segments <= "1111111";
                    end case;                    
                when "10" => 
                    Digits <= "1011"; 
                    Segments <= "1111111";                  
                when others => 
                    Digits <= "0111"; 
                    Segments <= "1111111";                 
            end case;
            digit := digit + 1;             
        end if;
    end process Display;

end Behavioral;
