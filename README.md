# mips 32 bit 5 stage pipelined processor



![5-Stage-Pipelined-MIPS](https://github.com/ANKURJUEE/mips-32-bit-5-stage-pipelined-processor/assets/143562100/1e5171a7-c186-4411-9b56-a993e622ab7f)

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
![86129a66-36c7-4b47-91ba-03bff3c19d0e](https://github.com/ANKURJUEE/mips-32-bit-5-stage-pipelined-processor/assets/143562100/6b7a00ae-b0cc-4604-bb96-26568fb661ed)
![e23bc2d0-6162-44c8-bf23-14e45c027abf](https://github.com/ANKURJUEE/mips-32-bit-5-stage-pipelined-processor/assets/143562100/5010d890-a9fe-4553-8cf5-363c723d1f7c)
![9fcf4118-3f31-4603-be6e-a723bc47e4d4](https://github.com/ANKURJUEE/mips-32-bit-5-stage-pipelined-processor/assets/143562100/42f1fcda-ea0b-4fc1-a595-6548a2ebcbf0)
