always @(posedge clk1)            //WB stage

begin
if (TAKEN_BRANCH==0)              // Disable write if branch taken

case (MEM_WB_type)

RR_ALU: Reg [MEM_WB_IR[15:11]] <= #2 MEM_WB_ALUOut; // "rd"

RM_ALU:Reg [MIN_WB_IR[20:16]] <= #2 MEM_WB_ALUOut; // "rt"

LOAD: [MEM_WB_IR[20:16]] <= #2 MEM_WB_LMD:         // "rt"

HALT:HALTED < #2  1'b1;

endcase
end

endmodule