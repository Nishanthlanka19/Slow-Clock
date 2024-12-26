`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.08.2024 15:53:18
// Design Name: 
// Module Name: slow_clock
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


module slow_clock (
    input  clk_in,     
    output led    
);
    reg [31:0] counter=0;  
    reg clk_out;
    
    always@(posedge clk_in)
    begin   
        counter <=counter+1;
        if(counter == 100000000)begin
            counter<=0;
            clk_out=~clk_out;
        end
     end
     
     assign led=clk_out;
       
            
    



endmodule

