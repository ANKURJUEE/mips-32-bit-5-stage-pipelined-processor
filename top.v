module pipe_MIPS32 (clk1, clk2);

input clk1, clk2;   // Two-phase clock



reg [31:0] PC, IF_ID_IR, IF_ID_NPC;
reg [31:0] ID_EX IR, ID_EX_NPC, ID_EX_A, ID_EX_B, ID_EX_Imm:

reg [2:0] ID_EX_type, EX_MEM_type, MEM_WB_type:;
reg [31:0] EX_MEM_IR,EX_MEM_ALUOut, EX_MEM_B;
reg          EX_MEM_cond;
reg [31:0] MEM_WB_IR, MEM_WB_ALUout, MEM_WB_LMD;

reg [31:0] Reg [0:31];

reg [31:0] Mem [0:1023];
// Register bank (32 x 32) // 1024 x 32 memory reg [31.0) Mam 10: 10231)

parameter ADD=6'b000000, SUB-6'b000001, AND-6'b000010, OR-6'b000011,
          SLT=6'b000100, MUL=6'b000101, HLT=6'b111111, LW=6'b001000, 
          SW=6'b001001, ADDI=6'b001010, SUBI=6'b001011, SLTI=6'b001100, 
          BNEQZ=6'b001101, BEQZ=6'b001110;



parameter RR_ALU=3'b000, RM_ALU=3'b001 , LOAD=3'b010, STORE=3'b011,BRANCH-3'b100,HALT-3'b101;

reg HALTED;

// set after HLT instruction is completed (in WB stage)


reg TAKEN_BRANCH;

// Required to disable instructions after branch