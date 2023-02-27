----------------------------------------------------------------------------------
-- Company: RIT
-- Engineer: Frank Andes
--
-- Create Date: 02/27/2023 11:29:35 AM
-- Module Name: ControlUnit - Behavioral
-- Revision:
-- Revision 0.01 - File Created
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ControlUnit is
    port (
        Opcode : in STD_LOGIC_VECTOR (5 downto 0);
        Funct : in STD_LOGIC_VECTOR (5 downto 0);
        RegWrite : out STD_LOGIC;
        MemtoReg : out STD_LOGIC;
        MemWrite : out STD_LOGIC;
        ALUControl : out STD_LOGIC_VECTOR (3 downto 0);
        ALUSrc : out STD_LOGIC;
        RegDst : out STD_LOGIC
    );
end ControlUnit;

architecture Behavioral of ControlUnit is

    signal RegWrite_sig : STD_LOGIC;
    signal MemtoReg_sig : STD_LOGIC;
    signal MemWrite_sig : STD_LOGIC;
    signal ALUControl_sig : STD_LOGIC_VECTOR (3 downto 0);
    signal ALUSrc_sig : STD_LOGIC;
    signal RegDst_sig : STD_LOGIC;

    constant ADDop : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant SUBop : STD_LOGIC_VECTOR (5 downto 0) := "100010";
    constant ANDop : STD_LOGIC_VECTOR (5 downto 0) := "100100";
    constant ORop : STD_LOGIC_VECTOR (5 downto 0) := "100101";
    constant MULTUop : STD_LOGIC_VECTOR (5 downto 0) := "011001";
    constant SLLop : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant SRAop : STD_LOGIC_VECTOR (5 downto 0) := "000011";
    constant SRLop : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant XORop : STD_LOGIC_VECTOR (5 downto 0) := "100110";
    constant ADDIop : STD_LOGIC_VECTOR (5 downto 0) := "001000";
    constant ANDIop : STD_LOGIC_VECTOR (5 downto 0) := "001100";
    constant ORIop : STD_LOGIC_VECTOR (5 downto 0) := "001101";
    constant XORIop : STD_LOGIC_VECTOR (5 downto 0) := "001110";
    constant LWop : STD_LOGIC_VECTOR (5 downto 0) := "100011";
    constant SWop : STD_LOGIC_VECTOR (5 downto 0) := "101011";

begin

    -- RegWrite
    RegWrite_proc : process (Opcode, Funct) is begin
        case Opcode is
            when "000000" =>
                case Funct is
                    when ADDop | SUBop | ANDop | ORop | MULTUop | SLLop | SRAop | SRLop | XORop =>
                        RegWrite_sig <= '1';
                    when others =>
                        RegWrite_sig <= '0';
                end case;
            when ADDIop | ANDIop | ORIop | XORIop | LWop =>
                RegWrite_sig <= '1';
            when others =>
                RegWrite_sig <= '0';
        end case;
    end process RegWrite_proc;

    -- MemtoReg
    MemtoReg_proc : process (Opcode) is begin
        case Opcode is
            when LWop =>
                MemtoReg_sig <= '1';
            when others =>
                MemtoReg_sig <= '0';
        end case;
    end process MemtoReg_proc;
    

    -- MemWrite
    MemWrite_proc : process (Opcode) is begin
        case Opcode is
            when SWop =>
                MemWrite_sig <= '1';
            when others =>
                MemWrite_sig <= '0';
        end case;
    end process MemWrite_proc;

    -- ALUControl
    ALUControl_proc : process (Opcode, Funct) is begin
        case Opcode is
            when "000000" =>
                case Funct is
                    when ADDop =>
                        ALUControl_sig <= "0100";
                    when SUBop =>
                        ALUControl_sig <= "0101";
                    when ANDop =>
                        ALUControl_sig <= "1010";
                    when ORop =>
                        ALUControl_sig <= "1000";
                    when MULTUop =>
                        ALUControl_sig <= "0110";
                    when SLLop =>
                        ALUControl_sig <= "1100";
                    when SRAop =>
                        ALUControl_sig <= "1110";
                    when SRLop =>
                        ALUControl_sig <= "1101";
                    when XORop =>
                        ALUControl_sig <= "1011";
                    when others =>
                        ALUControl_sig <= "0000";
                end case;
            when ADDIop =>
                ALUControl_sig <= "0100";
            when ANDIop =>
                ALUControl_sig <= "1010";
            when ORIop =>
                ALUControl_sig <= "1000";
            when XORIop =>
                ALUControl_sig <= "1011";
            when others =>
                ALUControl_sig <= "0000";
        end case;
    end process ALUControl_proc;

    -- ALUSrc
    ALUSrc_proc : process (Opcode) is begin
        case Opcode is
            when ADDIop | ANDIop | ORIop | XORIop | LWop | SWop =>
                ALUSrc_sig <= '1';
            when others =>
                ALUSrc_sig <= '0';
        end case;
    end process ALUSrc_proc;

    -- RegDst
    RegDst_proc : process (Opcode) is begin
        case Opcode is
            when "000000" =>
                RegDst_sig <= '1';
            when ADDIop | ANDIop | ORIop | XORIop | LWop | SWop =>
                RegDst_sig <= '0';
            when others =>
                RegDst_sig <= '0';
        end case;
    end process RegDst_proc;

    -- Assign signals to ports
    RegWrite <= RegWrite_sig;
    MemtoReg <= MemtoReg_sig;
    MemWrite <= MemWrite_sig;
    ALUControl <= ALUControl_sig;
    ALUSrc <= ALUSrc_sig;
    RegDst <= RegDst_sig;

end Behavioral;
