always @ (posedge clk1)           // EX Stage

if (HALTED==0)
begin
EX_MEM_type <= #2 ID_EX_type;
EX_MEM_IR <= #2 ID_EX_ID;
TAKEN_BRANCH <= #2 0;

case (ID_EX_type)

RR_ALU: begin

case (ID EX_IR[31:26])             //"opcode"

ADD:EX_MEM_ALUout <= #2 ID_EX_A + ID_EX_B;

SUB:EX_MEM_ALUout <= #2 ID_EX_A - ID_EX_B;

AND:EX_MEM_ALUout <= #2 ID_EX_A & ID_EX_B;

OR:EX_MEM_ALUout <= #2 ID_EX_A | ID_EX_B;

SLT:EX_MEM_ALUout <= #2 ID_EX_A < ID_EX_B;

MUL:EX_MEM_ALUout <= #2 ID_EX_A * ID_EX_B;

default: EX_MEM_ALUout <= #2 32'hxxxxxxxx;


endcase

end