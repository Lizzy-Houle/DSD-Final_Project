----------------------------------------------------------------------------------
-- Create Date: 11/28/2022 11:10:51 AM
-- Design Name: 
-- Module Name: GameLogic - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity GameLogic is
    Port ( GameClk : in STD_LOGIC;
           Start : in STD_LOGIC;
           Switch : in STD_LOGIC_VECTOR (15 downto 0);
           RandomNumber : in STD_LOGIC_VECTOR (3 downto 0);
           LED : out STD_LOGIC_VECTOR (15 downto 0);
           Score : out STD_LOGIC_VECTOR(15 downto 0));
end GameLogic;

architecture Behavioral of GameLogic is
 
    signal Q, currentscore  : STD_LOGIC_VECTOR (15 downto 0) := x"0000";

begin

    LED <= Q;
                                               
    process (GameClk) is
        variable count : unsigned (1 downto 0) := "00";
        variable moles : std_logic_vector (15 downto 0) := x"0000";
        variable rand : integer;
        variable gamescore : unsigned (15 downto 0) := x"0000";
        variable gamestarted : std_logic := '0';
        
    begin
    
        if (rising_edge(GameClk)) then
            if(Start = '1') then
                moles := x"0000";
                gamescore := x"0000";
                gamestarted := '1';
            end if;
            
            if (gamestarted = '1') then
            
            if (count = "00") then
                rand := to_integer(unsigned(RandomNumber));
                moles := x"0000";
                moles(rand) := '1';

            end if;
            
                if (count = "01") then
                rand := to_integer(unsigned(RandomNumber));
                moles(rand) := '1';
                
            end if;

            if (count = "10") then
                rand := to_integer(unsigned(RandomNumber));
                moles(rand) := '1';
                
            end if;
                
           for i in 0 to 15 loop
                if((switch(i) = '1') and (moles(i) = '1') ) then
                    moles(i) := '0';
                    gamescore := gamescore + 1;

                end if;
           end loop;
           
           end if;
        
        Q <= moles;
        currentscore <= std_logic_vector(gamescore);
        Score <= currentscore;
        count := count + 1;
        end if;
           
    end process;
end Behavioral;
