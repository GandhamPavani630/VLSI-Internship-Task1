module tb_alu;

reg [7:0] A;
reg [7:0] B;
reg [2:0] opcode;

wire [7:0] result;

alu uut (
    .A(A),
    .B(B),
    .opcode(opcode),
    .result(result)
);

initial begin

    $dumpfile("alu.vcd");
    $dumpvars(0, tb_alu);

    A = 8'd10;
    B = 8'd5;

    opcode = 3'b000; #10;
    opcode = 3'b001; #10;
    opcode = 3'b010; #10;
    opcode = 3'b011; #10;
    opcode = 3'b100; #10;

    $finish;

end

endmodule