module top;
bit clk;
bit reset;

initial 
begin
forever 
#50 clk = ~clk;
end




endmodule
