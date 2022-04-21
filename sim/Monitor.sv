class monitor
mailbox # (trans) two;
trans value;

function new (mailbox # (trans) two) 
this.two=two;
endfunction

task run()
forever begin
if (HWRITE) begin
@ (posedge HCLK)
value.HWDATA <= HWDATA;

end task

endclass
