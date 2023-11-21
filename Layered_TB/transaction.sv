class transaction;
	rand bit ta;
	rand bit tb;
	rand bit [1:0]la;
	rand bit [1:0]lb;
	
	function void display (string name);
	$display("------------------------------------------------");
	$display("INPUTS");
	$display("\t ta=%0h, \t tb=%0h", ta,tb);
	$display("OUTPUTS");
	$display("\t la=%0h, \t lb=%0h", la,lb);
	$display("------------------------------------------------");
endfunction
endclass
