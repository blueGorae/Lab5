`include "opcodes.v"

module ID_EX(clk, reset_n, PC_in, r_data1_in, r_data2_in, imm_in, opcode_in, rd_in, PCSrc_in, ALUOp_in, ALUSrcB_in, MemRead_in, MemWrite_in, B_OP_in, RegWrite_in, MemtoReg_in, is_wwd_in, is_done_in, PC_out, r_data1_out, r_data2_out, imm_out, opcode_out, rd_out, PCSrc_out, ALUOp_out, ALUSrcB_out, MemRead_out, MemWrite_out, B_OP_out, RegWrite_out, MemtoReg_out, is_wwd_out, is_done_out);
    input clk, reset_n;

    input [`WORD_SIZE-1:0] PC_in;
    input [`WORD_SIZE-1:0] r_data1_in, r_data2_in, imm_in;
    input [3:0] opcode_in;
    input [1:0] rd_in;
    input [1:0] PCSrc_in;
    input [2:0] ALUOp_in;
    input ALUSrcB_in;
    input MemRead_in, MemWrite_in;
    input B_OP_in;
    input RegWrite_in;
    input MemtoReg_in;
    input is_wwd_in;
    input is_done_in;

    output [`WORD_SIZE-1:0] PC_out;
    output [`WORD_SIZE-1:0] r_data1_out, r_data2_out, imm_out;
    output [3:0] opcode_out;
    output [1:0] rd_out;
    output [1:0] PCSrc_out;
    output [2:0] ALUOp_out;
    output ALUSrcB_out;
    output MemRead_out, MemWrite_out;
    output B_OP_out;
    output RegWrite_out;
    output MemtoReg_out;
    output is_wwd_out;
    output is_done_out;

    reg [`WORD_SIZE-1:0] PC_out;
    reg [`WORD_SIZE-1:0] r_data1_out, r_data2_out, imm_out;
    reg [3:0] opcode_out;
    reg [1:0] rd_out;
    reg [1:0] PCSrc_out;
    reg [2:0] ALUOp_out;
    reg ALUSrcB_out;
    reg MemRead_out, MemWrite_out;
    reg B_OP_out;
    reg RegWrite_out;
    reg MemtoReg_out;
    reg is_wwd_out;
    reg is_done+_out;

    // reg [`WORD_SIZE-1:0] PC_reg;
    // reg [`WORD_SIZE-1:0] r_data1_reg, r_data2_reg, imm_reg;
    // reg [3:0] opcode_reg;
    // reg [1:0] rd_reg;
    // reg [1:0] PCSrc_reg;
    // reg [2:0] ALUOp_reg;
    // reg [1:0] ALUSrcB_reg;
    // reg MemRead_reg;
    // reg MemWrite_reg;
    // reg B_OP_reg;
    // reg RegWrite_reg;
    // reg MemtoReg_reg;
    // reg is_wwd_reg;

    integer i;

    initial begin
        i = 0;
        PC_out = `WORD_SIZE'bz;
        r_data1_out = `WORD_SIZE'bz;
        r_data2_out = `WORD_SIZE'bz;
        imm_out = `WORD_SIZE'bz;
        opcode_out = 4'bz;
        rd_out = 2'bz;
        PCSrc_out = 2'b00;
        ALUOp_out = 3'bz;
        ALUSrcB_out = 2'b0;
        MemRead_out = 1'b0;
        MemWrite_out = 1'b0;
        B_OP_out = 1'b0;
        RegWrite_out = 1'b0;
        MemtoReg_out = 2'b0;
        is_wwd_out = 1'b0;
        is_done_out = 1'b0;

        // PC_out = PC_reg;
        // r_data1_out = r_data1_reg;
        // r_data2_out = r_data2_reg;
        // imm_out = imm_reg;
        // opcode_out = opcode_reg;
        // rd_out = rd_reg;
        // PCSrc_out = PCSrc_reg;
        // ALUOp_out = ALUOp_reg;
        // ALUSrcB_out = ALUSrcB_reg;
        // MemRead_out = MemRead_reg;
        // MemWrite_out = MemWrite_reg;
        // B_OP_out = B_OP_reg;
        // RegWrite_out = RegWrite_reg;
        // MemtoReg_out = MemtoReg_reg;  
        // is_wwd_out = is_wwd_reg;
    end

    always @(negedge reset_n) begin
        i = 0;
        PC_out = `WORD_SIZE'bz;
        r_data1_out = `WORD_SIZE'bz;
        r_data2_out = `WORD_SIZE'bz;
        imm_out = `WORD_SIZE'bz;
        opcode_out = 4'bz;
        rd_out = 2'bz;
        PCSrc_out = 2'b00;
        ALUOp_out = 3'bz;
        ALUSrcB_out = 2'b0;
        MemRead_out = 1'b0;
        MemWrite_out = 1'b0;
        B_OP_out = 1'b0;
        RegWrite_out = 1'b0;
        MemtoReg_out = 2'b0;
        is_wwd_out = 1'b0;
        is_done_out = 1'b0;

        // PC_out = PC_reg;
        // r_data1_out = r_data1_reg;
        // r_data2_out = r_data2_reg;
        // imm_out = imm_reg;
        // opcode_out = opcode_reg;
        // rd_out = rd_reg;
        // PCSrc_out = PCSrc_reg;
        // ALUOp_out = ALUOp_reg;
        // ALUSrcB_out = ALUSrcB_reg;
        // MemRead_out = MemRead_reg;
        // MemWrite_out = MemWrite_reg;
        // B_OP_out = B_OP_reg;
        // RegWrite_out = RegWrite_reg;
        // MemtoReg_out = MemtoReg_reg;
        // is_wwd_out = is_wwd_reg;  
    end

    always @(posedge clk) begin
        if(reset_n &&  i >= 1)begin
            PC_out = PC_in;
            r_data1_out = r_data1_in;
            r_data2_out = r_data2_in;
            imm_out = imm_in;
            opcode_out = opcode_in;
            rd_out = rd_in;
            PCSrc_out = PCSrc_in;
            ALUOp_out = ALUOp_in;
            ALUSrcB_out = ALUSrcB_in;
            MemRead_out = MemRead_in;
            MemWrite_out = MemWrite_in;
            B_OP_out = B_OP_in;
            RegWrite_out = RegWrite_in;
            MemtoReg_out = MemtoReg_in; 
            is_wwd_out = is_wwd_in; 
            is_done_out = is_done_in;
    
            // PC_reg = PC_in;
            // r_data1_reg = r_data1_in;
            // r_data2_reg = r_data2_in;
            // imm_reg = imm_in;
            // opcode_reg = opcode_in;
            // rd_reg = rd_in;
            // PCSrc_reg = PCSrc_in;
            // ALUOp_reg = ALUOp_in;
            // ALUSrcB_reg = ALUSrcB_in;
            // MemRead_reg = MemRead_in;
            // MemWrite_reg = MemWrite_in;
            // B_OP_reg = B_OP_in;
            // RegWrite_reg = RegWrite_in;
            // MemtoReg_reg = MemtoReg_in;
            // is_wwd_reg = is_wwd_in; 
        end
        else if(reset_n) begin
            i = i + 1;
        end
    end
endmodule