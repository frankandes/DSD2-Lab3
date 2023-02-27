----------------------------------------------------------------------------------
-- Company: RIT
-- Engineer: Frank Andes
-- 
-- Create Date: 02/26/2023 05:52:29 PM
-- Module Name: InstructionDecode - Behavioral
-- Description: byte addressable instruction memory
-- 1024 bytes of memory
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity InstructionMem is
    generic (
        addr_width : integer := 28;
        data_width : integer := 8;
        out_width : integer := 32
    );
    Port (
        addr : in STD_LOGIC_VECTOR (addr_width -1 downto 0);
        d_out : out STD_LOGIC_VECTOR (out_width -1 downto 0)
    );
end InstructionMem;

architecture Behavioral of InstructionMem is

    type mem_file is array (0 to 1023) of STD_LOGIC_VECTOR (data_width -1 downto 0);
    signal mem : mem_file := (x"11", x"00", x"00", x"00",
                              x"11", x"11", x"11", x"11",
                              x"22", x"22", x"22", x"22",
                              x"33", x"33", x"33", x"33",
                              x"44", x"44", x"44", x"44", 
                              x"80", x"60", x"40", x"20", 
                              x"10", x"10", x"10", x"10", 
                              others => x"00");

begin

    process (addr)    
    begin
        if (to_integer(unsigned(addr)) >= 0 and to_integer(unsigned(addr)) <= 1020) then
            d_out <= mem(to_integer(unsigned(addr))) & mem(to_integer(unsigned(addr)) + 1) 
            & mem(to_integer(unsigned(addr)) + 2) & mem(to_integer(unsigned(addr)) + 3);
        else
            d_out <= x"00000000";
        end if; 
    end process;

end Behavioral;
