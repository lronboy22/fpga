`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/23 18:59:52
// Design Name: 
// Module Name: LED
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module led(
input sysclk,
output reg led
    );
    
 reg [31:0] cnt;
 
always@(posedge sysclk)
begin
    if ( cnt >= 32'd25_999_999)
        begin
        led <= ~led;
        cnt <= 32'd0;
        end
    else
        begin
        led <= led;
        cnt <= cnt + 32'd1;
        end
 end
endmodule
