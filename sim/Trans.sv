class trans;

bit          HRESP;  // Responce from Slave
bit          HREADY;
           
bit   [2:0]  HSIZE;   // Data Size   
bit   [2:0]  HBURST; // Type of Burst
logic [1:0]  HTRANS; 
 
bit          HSEL; // As only one slave so always be one

bit	     HWRITE;  // If HWRITE is one/ true then Write otherwise Read 

logic [3:0]  HPROT;

rand bit   [31:0] HWDATA;
rand bit   [7:0] HADDR;

function new(bit[7:0] HADDR,bit[31:0]HWDATA);
this.HADDR=HADDR;
this.HWDATA=HWDATA;
endfunction

endclass
