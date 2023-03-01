----------------------------------------------------------------------------------
-- Company: RIT
-- Engineer: Frank Andes
-- 
-- Create Date: 02/13/2023 03:19:27 PM
-- Module Name: RegisterFile - Behavioral

-- Revision:
-- Revision 0.01 - File Created
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity RegisterFile is
    Generic (
        LOG_PORT_DEPTH : integer := 5; --log2 of number of registers
        BIT_WIDTH : integer := 32 --number of bits in each register
    );
    Port (
        clk_n : in STD_LOGIC;
        we : in STD_LOGIC;
        addr1 : in STD_LOGIC_VECTOR(LOG_PORT_DEPTH - 1 downto 0); --addresses of which registers to read from
        addr2 : in STD_LOGIC_VECTOR(LOG_PORT_DEPTH - 1 downto 0); --^
        addr3 : in STD_LOGIC_VECTOR(LOG_PORT_DEPTH - 1 downto 0); --address of which register to write to
        wd : in STD_LOGIC_VECTOR(BIT_WIDTH - 1 downto 0); --data to write to register
        rd1 : out STD_LOGIC_VECTOR(BIT_WIDTH - 1 downto 0); --Parallel output of data from register
        rd2 : out STD_LOGIC_VECTOR(BIT_WIDTH - 1 downto 0) --^
    );
end RegisterFile;

architecture Behavioral of RegisterFile is

    type reg_file_arr is array (0 to 2**LOG_PORT_DEPTH - 1) of STD_LOGIC_VECTOR(BIT_WIDTH - 1 downto 0);
    signal reg_file : reg_file_arr := (others => (others => '0'));

begin
    main_proc : process (all) is begin      
        if (falling_edge(clk_n)) then
            if (we = '1' and unsigned(addr3) /= 0) then
                reg_file(to_integer(unsigned(addr3))) <= wd;
            end if;
        end if;
        rd1 <= reg_file(to_integer(unsigned(addr1)));
        rd2 <= reg_file(to_integer(unsigned(addr2)));
    end process;
end Behavioral;
