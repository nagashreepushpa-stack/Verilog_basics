`timescale 1ns/1ps

module full_adder_tb;

reg a;
reg b;
reg cin;
wire sum;
wire cout;

full_adder uut (
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
);

initial begin
    $monitor("a=%b b=%b cin=%b sum=%b cout=%b", 
              a, b, cin, sum, cout);

    repeat (8) begin
        {a, b, cin} = $random;
        #10;
    end

    $finish;
end

endmodule
