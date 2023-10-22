module tb_des();
logic clk,rst,ta,tb;
logic [1:0]la,lb;
fsm_d uut(.clk(clk),.rst(rst),.ta(ta),.tb(tb),.la(la),.lb(lb));


always #5 clk=~clk;

initial begin
clk=0;
rst=1;
#20 rst=0;
#10 ta=0;tb=0;
#10 ta=0;tb=1;
#10 ta=1;tb=0;
#10 ta=1;tb=1;

#20 rst=1;
#10 ta=0;tb=0;
#10 ta=0;tb=1;
#10 ta=1;tb=0;
#10 ta=1;tb=1;

#20 rst=0;
#10 ta=1;tb=1;
#10 ta=1;tb=0;
#10 ta=0;tb=1;
#10 ta=0;tb=0;



#300 $finish;
end
endmodule
