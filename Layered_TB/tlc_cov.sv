class tlc_cov;
	transaction trans=new();
	
	covergroup cov_inst;
	option.per_instance=1;
	ta:coverpoint trans.ta{bins ta={0,1};}
	tb:coverpoint trans.tb{bins tb={0,1};}
	la:coverpoint trans.la{bins la={2'b00,2'b01,2'b10,2'b11};}
	lb:coverpoint trans.lb{bins lb={2'b00,2'b01,2'b10,2'b11};}
	endgroup
	
	function new();
		cov_inst=new;
	endfunction
	
	task main;
		cov_inst.sample();
	endtask
	
endclass 
