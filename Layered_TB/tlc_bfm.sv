class tlc_bfm;
	mailbox gen2bfm;
	virtual intf vif;
	int no_transactions;
	
	function new(virtual intf vif, mailbox gen2bfm);
		this.vif=vif;
		this.gen2bfm=gen2bfm;
	endfunction
	
	task rst;
		wait(vif.rst);
		$display("Reset started");
		vif.bfm_cb.ta <= 0;
		vif.bfm_cb.tb <= 0;
		wait(!vif.rst);
		$display("Reset ended");
	endtask
	
	task main;
		forever begin
			transaction trans;
			gen2bfm.get(trans);
			$display("Transaction no = %0h", no_transactions);
			vif.bfm_cb.ta <= trans.ta;
			vif.bfm_cb.tb <= trans.tb;
			repeat(2)@(posedge vif.clk);
			trans.la=vif.bfm_cb.la;
			trans.lb=vif.bfm_cb.lb;
			trans.display("OUTPUT");
			@(posedge vif.clk);
			no_transactions++;
		end
	endtask
endclass
