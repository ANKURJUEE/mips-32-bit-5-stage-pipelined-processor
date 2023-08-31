# mips 32 bit 5 stage pipelined processor




 The MIPS processor is a Reduced Instruction Set Computer (RISC) processor. MIPS stands for Microprocessor without Interlocked Pipelined Stages. MIPS processors were designed in 1984 by researchers at Stanford University. The first MIPS microprocessor, the R2000, was announced in 1985.
MIPS processors use a technique called pipelining to process instructions more efficiently. They use 32 registers, each 32 bits wide. The MIPS instruction set consists of about 111 total instructions, each represented in 32 bits.
MIPS processors are different from CISC (Complex Instruction Set Computer) processors, such as the Intel Pentium processors. RISC processors typically support fewer and much simpler instructions.
MIPS processors can have up to four coprocessors. Each coprocessor can have up to 8 banks of 32 registers each.






MIPS processors have several advantages, including:
High clock speed and a large number of cores, making them suitable for high-performance computing applications
Scalable, cost-effective, and require less power than other microprocessors
Lower power consumption and smaller silicon area than other CPUs
MIPS MT architecture provides additional options for tackling performance challenges
Known for their reliability and stability
Can be used for highly-parallel tasks requiring cost and power optimization
MIPS processors are commonly used in safety-critical applications, such as aerospace and defense, where failure is not an option.


The MIPS processor has a 32-bit architecture with 32-bit instructions, data, and addresses. It has 32 registers, each 32-bit, to load data from memory and store the results of operations executed in the ALU. The 5 pipeline stages are:
1)Instruction Fetch (IF)
2)Instruction Decoder (ID)
3)Execute (EX)
4)Memory Access (MEM)
5)Write Back (WB)
The 5 stages execute consecutive instructions simultaneously. The MIPS processor supports most MIPS instructions and solves every hazard with stall.



TESTBENCH:
The first example is a very simple
one, this says that we add 3 numbers 10, 20 and 30 in decimal, they are all stored in
processor registers.
