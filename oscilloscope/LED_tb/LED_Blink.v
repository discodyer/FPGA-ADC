module template (
input clk,      //clk = 12mhz
input rst_n,    //rst_n, active low
output led1,    //led1 output
output led2     //led2 output
);
 
parameter CNT_1S = 'd12_000_000 - 1;
parameter CNT_05S = CNT_1S>>1; 
reg [23:0] cnt; 
 
always @(posedge clk or negedge rst_n) begin
  if (!rst_n) cnt <= 1'b0;
  else if (cnt >= CNT_1S) 
	  cnt <= 1'b0;
  else cnt <= cnt + 1'b1;
end
 
wire clkdiv = (cnt>CNT_05S)? 1'b1 : 1'b0;
 
assign led1 = clkdiv; assign led2 = ~clkdiv;
 
endmodule