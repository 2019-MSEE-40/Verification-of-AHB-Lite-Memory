interface intf(input bit HCLK,HRESETn);

logic [31:0] HWDATA;		//Write Data Bus
logic [31:0] HRDATA;		//Read Data Bus
logic [7:0]  HADDR;
logic 	     HWRITE;

logic [2:0] HSIZE;
logic [2:0] HBURST;
logic [1:0] HTRANS;

logic	     HREADY;
logic	     HRESP;

logic	     HSEL;		//Always one as only one slave
logic	     HMASTLOCK;
logic	     HREADYOUT;				
logic [3:0]  HPROT;

modport master (input HRESETn,HCLK,HRDATA,HREADY,HRESP,output HSEL,HADDR,HWDATA,HWRITE,HSIZE,HBURST,HPROT,HTRANS,HMASTLOCK );
modport slave (input HRESETn,HCLK,HSEL,HADDR,HWDATA,HWRITE,HSIZE,HBURST,HPROT,HTRANS,HMASTLOCK,HREADY,output HREADYOUT,HRESP,HRDATA);
  	    
endinterface
