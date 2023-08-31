always @(posedge clk2)              // MEM stage

if (HALTED == 0)
begin

MEM_WB_type<=  EX_MEM_type;
MEM_WB_IR <= #2 EX_MEM_IR;
Case (EX_MEM_type)

RR_ALU, RM_ALU:

MEM_WB_ALUOut <=#2 EX_MEM_ALUOut;



LOAD:MEM_WB_LMD <=#2 MEM[EX_MEM_ALUOut];




STORE: if (TAKEN_BRANCH == 0)            // Disable write
 Mem[EX_MEM_ALUOut] <= #2 EX_MEM_B  ;    


endcase

end