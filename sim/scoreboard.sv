class scoreboard;
mailbox two;
trans value;
int transaction_count;

task run()
forever begin
two.get(value)
if (value.HWRITE) begin
memory [value.HADDR] = value.HWDATA;
transaction_count= transaction_count+1;
end else begin
$display ("Mismatch") end
endclass
