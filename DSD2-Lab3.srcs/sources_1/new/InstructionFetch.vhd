----------------------------------------------------------------------------------
-- Company: RIT
-- Engineer: Frank Andes
-- 
-- Create Date: 02/26/2023 05:52:29 PM
-- Module Name: InstructionDecode - Behavioral
-- Revision:
-- Revision 0.01 - File Created
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity InstructionFetch is
    Port (
        clk : in STD_LOGIC;
        rst : in STD_LOGIC;
        instruction : out STD_LOGIC_VECTOR (31 downto 0)
    );
end InstructionFetch;

architecture Behavioral of InstructionFetch is
    signal pc : STD_LOGIC_VECTOR (31 downto 0);

begin

    Memory : entity work.InstructionMem
    port map (
        addr => pc(27 downto 0),
        d_out => instruction
    );

    process (clk, rst)
    begin
        if rst = '1' then
            pc <= (others => '0');
        elsif rising_edge(clk) then
            pc <= pc + 4;
        end if;
    end process;

end Behavioral;