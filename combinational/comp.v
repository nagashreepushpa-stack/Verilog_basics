module comp(
input [1:0] a,b,
output reg gt, eq, lt);
always @(*) begin
    gt = 0; eq = 0; lt = 0;
    if (a > b)
        gt = 1;
    else if (a == b)
        eq = 1;
    else 
        lt = 1;
end 
endmodule
