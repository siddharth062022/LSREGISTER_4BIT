`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.10.2021 14:11:51
// Design Name: 
// Module Name: LSREGISTER_4BIT
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
module LSREGISTER_4BIT( input d0,
                        output q0,q1,q2,q3,
                        input CLK,
                        input RST);
                        

    wire Q0,Q1,Q2,Q3;
    D_FLIPFLOP D00(.d(Q2),.q(q3),.rst(RST),.clk(CLK));
    D_FLIPFLOP D01(.d(Q1),.q(q2),.rst(RST),.clk(CLK));
    D_FLIPFLOP D10(.d(Q0),.q(q1),.rst(RST),.clk(CLK));
    D_FLIPFLOP D11(.d(d0),.q(q0),.rst(RST),.clk(CLK));
    assign Q0=q0; 
    assign Q1=q1;
    assign Q2=q2;
    assign Q3=q3;
    endmodule
