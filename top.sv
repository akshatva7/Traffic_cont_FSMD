module top;
	bit clk;
	bit rst;
	intf vif(clk,rst);
	test t1(vif);
	fsm_d dut(.clk(vif.clk),
	.rst(vif.rst),
	.ta(vif.ta),
	.tb(vif.tb),
	.la(vif.la),
	.lb(vif.lb)
	);

always #5 clk = ~clk;
initial begin
clk=0;
rst=1;
#20 rst=0;
#10 vif.ta=0;vif.tb=0;
#10 vif.ta=0;vif.tb=1;
#10 vif.ta=1;vif.tb=0;
#10 vif.ta=1;vif.tb=1;

#20 rst=1;
#10 vif.ta=0;vif.tb=0;
#10 vif.ta=0;vif.tb=1;
#10 vif.ta=1;vif.tb=0;
#10 vif.ta=1;vif.tb=1;

#20 rst=0;
#10 vif.ta=1;vif.tb=1;
#10 vif.ta=1;vif.tb=0;
#10 vif.ta=0;vif.tb=1;
#10 vif.ta=0;vif.tb=0;

#300 $finish;
end
endmodule
