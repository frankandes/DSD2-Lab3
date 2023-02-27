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
        ImmOut : out STD_LOGIC_VECTOR (31 downto 0)
    );
end InstructionDecode;

architecture Behavioral of InstructionDecode is

    signal Opcode : STD_LOGIC_VECTOR (5 downto 0);
    signal Funct : STD_LOGIC_VECTOR (5 downto 0);
    signal Rs : STD_LOGIC_VECTOR (4 downto 0);
    signal Rt : STD_LOGIC_VECTOR (4 downto 0);
    signal Rd : STD_LOGIC_VECTOR (4 downto 0);
    signal Sh_amt : STD_LOGIC_VECTOR (4 downto 0);
    signal Imm : STD_LOGIC_VECTOR (15 downto 0);
    signal ImmExt : STD_LOGIC_VECTOR (31 downto 0);

begin
    -- split instruction into fields
    Opcode <= Instruction(31 downto 26);
    Funct <= Instruction(5 downto 0);
    Rs <= Instruction(25 downto 21);
    Rt <= Instruction(20 downto 16);
    Rd <= Instruction(15 downto 11);
    Sh_amt <= Instruction(10 downto 6);
    Imm <= Instruction(15 downto 0);

    -- map signals
    RtDest <= Rt;
    RdDest <= Rd;
    ImmOut <= ImmExt;

    -- instantiate control unit
    ControlUnit : entity work.ControlUnit
        port map (
            opcode => Opcode,
            funct => Funct,
            RegWrite => RegWrite,
            MemtoReg => MemtoReg,
            MemWrite => MemWrite,
            ALUControl => ALUControl,
            ALUSrc => ALUSrc,
            RegDst => RegDst
        );

    -- instantiate register file
    RegisterFile : entity work.RegisterFile
        port map (
            clk_n => clk,
            we => RegWriteEn,
            addr1 => Rs,
            addr2 => Rt,
            addr3 => RegWriteAddr,
            wd => RegWriteData,
            rd1 => RD1,
            rd2 => RD2
        );

    -- sign extend immediate
    SignExtend_proc : process(Imm) is begin
        if Imm(15) = '1' then
            ImmExt <= "1111111111111111" & Imm;
        else
            ImmExt <= "0000000000000000" & Imm;
        end if;
    end process;

end Behavioral;
