RM_ALU:

begin

case (ID_EX_IR[31:26])             //"opcode"
ADDI:EX MEN ALUOut <=#2 ID_EX_A + ID_EX_Imm; 


SUBI:EX MEN ALUOut <=#2 ID_EX_A - ID_EX_Imm;

SLTI:EX MEN ALUOut <=#2 ID_EX_A < ID_EX_Imm;


default: EX_MEM_ALUOut <= #2 32'xxxxxxxx;

endcase

end