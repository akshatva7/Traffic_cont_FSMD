
module fsm_d(ta,tb,clk,rst,la,lb);

    input wire ta,tb,clk,rst;
    output reg la,lb;

     localparam [1:0]
        s0=2'b00,
        s1=2'b01,
        s2=2'b10,
        s3=2'b11;

    localparam [1:0]
        green=2'b11,
        yellow=2'b01,
        red=2'b00;
    

    reg [1:0] state,next_state;
    reg [1:0] counter;


    always @(posedge clk) begin
        if(!rst)
            state<=next_state;
        else 
            state<=s0;
    end

    always @* begin
        next_state=state;
        counter=2'b00;

        case(state) 
            s0: begin
                la=green;lb=red;
                if(ta==0) 
		begin
                    counter=2'b11;
                    next_state=s1;
        
                	end 
		else 
                    next_state=s0;
                end    
            
            s1: begin
                la=yellow;lb=red;
                while(counter!=0) 
		begin
                    counter=counter-1;
                end  
                    next_state=s2;
                end
            
            s2: begin
                la=red;lb=green;
                if(tb==0) 
		begin
                    counter=2'b11;
                    next_state=s3;
        
                end 
		else 
                    next_state=s2;
            	end
            s3: begin
                la=red;lb=yellow;
                while(counter!=0) 
		begin
                    counter=counter-1;
		end 
                    next_state=s0;
            	end
        endcase
        
    end

endmodule

