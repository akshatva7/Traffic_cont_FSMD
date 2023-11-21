interface intf(input logic clk,rst);
logic ta,tb;
logic [1:0]la;
logic [1:0]lb;

clocking bfm_cb @(posedge clk);
default input #1 output #1;
output ta;
output tb;
input la;
input lb;
endclocking

clocking monitor_cb @(posedge clk);
default input #1 output #1;
input ta;
input tb;
input la;
input lb;
endclocking

modport BFM(clocking bfm_cb, input clk,rst);
modport MONITOR(clocking monitor_cb, input clk,rst);
endinterface

