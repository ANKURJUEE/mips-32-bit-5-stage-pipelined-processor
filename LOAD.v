LOAD, STORE:

begin

EX_MEM_ALUOut <= #2 ID_EX_A + ID_EX_Imm; 
EX_MEM_B <= #2 ID_EX_B; 
end

BRANCH:     begin
EX_MEM_ALUOut <= #2 ID_EX_NPC + ID_EX_Imm; 
EX_MEM_cond <= #2 (ID_EX_A ==0); 
end


endcase


end