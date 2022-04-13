`include "trans.sv"

class driver;
virtual memory a;
mailbox one;

/////////////////////Run Task////////////////
task run;
trans value;  		// trans class object "value"
one.get(value);		//get value from mailbox
@(posedge a.HCLK);
if (value.HWRITE == 1) begin   
write_send;
$display("Write Operation Performed");
end
else if (value.HWRITE == 0) begin
read_send; 
$display("Read Operation Performed");
end
endtask


//////////////Write Operation Task//////////////
task write_send;
	while (a.HRESET)
      	forever begin
        @(posedge a.HCLK);
        a.HREADY <= 1; 		//If slave is Ready
        a.HWRITE <= 1;		//HWRITE signal =1 indicate write transaction
        a.HADDR <= value.HADRR;
        @(posedge a.HCLK);
        a.HWDATA <= value.HWDATA;
end
  endtask

////////// Read Operation Task////////////////
task read_send; 
    	while (a.HRESET)
      	forever begin
        @(posedge a.HCLK);
         a.HWRITE <= 0; 			// Read Transaction
	a.HREADY <= 1;
        a.HADDR <= value.HADRR;
        @(posedge a.HCLK);
        a.HRDATA <= value.HWDATA;
end
  endtask      


endclass

