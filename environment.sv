
class environment;
	generator gen;
	tlc_bfm bfm;
	tlc_cov cov;
	mailbox gen2bfm;
	virtual intf vif;
	event ended;
	
function new(virtual intf vif);
	this.vif = vif;
	gen2bfm = new();
	gen=new(gen2bfm,ended);
	bfm=new(vif,gen2bfm);
	cov=new();
endfunction

task pre_test;
	bfm.rst();
endtask

task test;
	fork
	gen.main();
	bfm.main();
	cov.main();
	join_any;
endtask

task post_test;
	wait(ended.triggered);
	wait(gen.repeat_count==bfm.no_transactions);
endtask

task run;
	pre_test();
	test();
	post_test();
	$finish;
endtask
endclass
