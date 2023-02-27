----------------------------------------------------------------------------------
-- Company: RIT
-- Engineer: Frank Andes
-- 
-- Create Date: 02/26/2023 05:52:29 PM
-- Module Name: InstructionDecode - Behavioral
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity InstructionDecode is
    Port (
        clk : in STD_LOGIC;
        Instruction : in STD_LOGIC_VECTOR (31 downto 0);
        RegWriteAddr : in STD_LOGIC_VECTOR (4 downto 0);
        RegWriteData : in STD_LOGIC_VECTOR (31 downto 0);
        RegWriteEn : in STD_LOGIC;
        RegWrite : out STD_LOGIC;
        MemtoReg : out STD_LOGIC;
        MemWrite : out STD_LOGIC;
        ALUControl : out STD_LOGIC_VECTOR (3 downto 0);
        ALUSrc : out STD_LOGIC;
        RegDst : out STD_LOGIC;
        RD1 : out STD_LOGIC_VECTOR (31 downto 0);
        RD2 : out STD_LOGIC_VECTOR (31 downto 0);
        RtDest : out STD_LOGIC_VECTOR (4 downto 0);
        RdDest : out STD_LOGIC_VECTOR (4 downto 0);
        ImmOut : out STD_LOGIC_VECTOR (31 downto 0);
    );
end InstructionDecode;

architecture Behavioral of InstructionDecode is

begin
    
end Behavioral;
