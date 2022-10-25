`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.10.2021 14:36:05
// Design Name: 
// Module Name: LS_REGISTER4BITTB
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


module LS_REGISTER4BITTB;


reg D,r,clock;
wire QA,QB,QC,QD;
LSREGISTER_4BIT uut(.d0(D),.q0(QD),.q1(QC),.q2(QB),.q3(QA),.RST(r),.CLK(clock));
 
 
 
 initial
     begin 
     clock <=0;
     end
     
   always #50 clock=~clock;
   initial
   begin 
   r=1;D=1;
   #200
   r=1;D=0;
   #100
   r=0;D=1;
   #70
   r=0;D=0;
   #200
   r=0;D=0;
   #150
   r=0;D=0;
   #100
   r=0;D=1;
   #200
   r=0;D=0;
end
endmodule
