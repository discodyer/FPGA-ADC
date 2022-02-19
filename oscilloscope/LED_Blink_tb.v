`timescale 1ns / 100ps
module LED_shining_tb;
 
parameter CLK_PERIOD = 10; 
 
reg clk;
initial clk = 1'b0;
always #(CLK_PERIOD/2) clk = ~clk;
 
reg rst_n;  //active low
initial begin
    rst_n = 1'b0;
    #20;
    rst_n = 1'b1;
end
 
wire led1,led2;
LED_shining #(.CNT_1S ( 19 )) u_LED_shining (
    .clk                     ( clk     ),
    .rst_n                   ( rst_n   ),
 
    .led1                    ( led1    ),
    .led2                    ( led2    )
);
 
endmodule