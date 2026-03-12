module alu #(parameter N = 4)
    (input [N-1:0] a,b,
    input [2:0] operator,
    output reg [N-1:0] out,
    output carry);

    wire [N-1:0] andgate, orgate, sum, b_mod;
    wire cy_add, sub;

    assign sub = (operator==3'b101);
    assign b_mod = b^{N{sub}};
    
    para_four_bit_adder #(.N(N)) add1(.a(a),.b(b_mod),.cin(sub),.sum(sum),.cout(cy_add));
    assign carry = cy_add;
            
    always @(*) begin
        case (operator)
            3'b000:  out = a&b;
            3'b001:  out = a|b; 
            3'b010:  out = ~a;
            3'b011:  out = ~b;
            3'b100:  out = sum;
            3'b101:  out = sum;
            default: out = {N{1'bx}};
        endcase
        
    end
    
endmodule