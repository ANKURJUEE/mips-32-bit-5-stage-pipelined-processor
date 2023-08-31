always@(posedge clk1)           //IF Stage

if (HALTED==0)


begin

if ((EX_MEM_IR[31:26]==BEQZ) && (EX_MEM_cond==1) ||
   ((EX_MEM_IR[31:26]==BNEQZ) && (EX_MEM_cond==0)))

begin

IF_ID_IR <= #2 Mem [EX_MEM_ALUout];
TAKEN BRANCH  <= #2 1'bi;
IF_ID_NPC  <= #2 EX_MEM_ALUout + 1;
PC        <= #2 EX_MEM_ALUout + 1;

end

else

begin

IF_ID_IR <= #2 Mem [PC];
IF_ID_NPC <= #2 PC + 1;
PC <= #2 PC + 1;

end

end