module pren(
    input [2:0] d,
    output reg [1:0] y
);

always @(*) begin
    y = 2'b00;  

    if (d[2])
        y = 2'b10;
    else if (d[1])
        y = 2'b01;
    else if (d[0])
        y = 2'b00;
end 

endmodule
