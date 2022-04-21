+`include "trans.sv"
`include "generator1.sv"
`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"

class environment
mailbox one;
mailbox two;

generator1 gen;
driver dri;
monitor mon;
scoreboard sco;

virtual interface intf;

function new (virtual interface intf);
this.intf = intf;
this.one= new ();
this.two= new();
this.gen = new (one);
this.dri= new (one, intf);
this.mon= new (intf, two);
this.scb= new(two);
end function

task run()
fork
gen.run();
dri.run();
mon.run();
scb.run();
join
endtask

endclass
