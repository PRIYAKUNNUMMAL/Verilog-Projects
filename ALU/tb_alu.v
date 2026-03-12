module tb_alu;

    reg [3:0] a,b;
    reg [2:0] operator ;

    wire [3:0] out;
    wire carry;

    alu #(.N(4)) alu1(.a(a),.b(b),.operator(operator),.out(out),.carry(carry));

    initial begin

        #1;
        $monitor("a=%b b=%b operator=%d out=%b carry=%b",a,b,operator,out,carry);

        a=4'b1010; b=4'b1000; operator = 3'b101; #5;
        a=4'b1010; b=4'b1100; operator = 3'b000; #5;
        a=4'b1001; operator = 3'b010; #5;

        $finish;

    end
    
endmodule