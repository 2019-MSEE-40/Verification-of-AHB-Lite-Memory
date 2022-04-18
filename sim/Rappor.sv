module wrapper (w,f);
    wrap w;
    intf f;
    assign w.HADDR = f.HADDR;
    assign w.HRDATA = f.HRDATA;
    assign w.HWDATA = f.HWDATA;
    assign w.HPROT = f.HPROT;
    assign w.HSIZE = f.HSIZE;
    assign w.HBURST = f.HBURST;
    assign w.HTRANS = f.HTRANS;
    assign w.HSEL = f.HSEL;
    assign w.HREADY = f.HREADY;
    assign w.HREADYOUT = f.HREADYOUT;
    assign w.HRESP = f.HRESP;
    assign w.HWRITE = f.HWRITE;
    assign w.HCLK = f.HCLK;
    assign w.HRESET = f.HRESET;
endmodule

interface wrap (input bit HCLK,HRESET);   
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
logic	     HREADYOUT;				
logic [3:0]  HPROT;
endinterface
