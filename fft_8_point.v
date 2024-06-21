`timescale 1ns / 1fs
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2024 12:59:15
// Design Name: 
// Module Name: 8_phase
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

module butterfly8(
  input  [31:0] a_real0,a_real1,a_real2,a_real3,a_real4,a_real5,a_real6,a_real7,
  input  [31:0] a_imag0,a_imag1,a_imag2,a_imag3,a_imag4,a_imag5,a_imag6,a_imag7,
  
  output [31:0] c_real0,c_real1,c_real2,c_real3,c_real4,c_real5,c_real6,c_real7,
  output [31:0] c_imag0,c_imag1,c_imag2,c_imag3,c_imag4,c_imag5,c_imag6,c_imag7
  
  
);
  
  wire [31:0] i_real[0:7];
  wire [31:0] i_imag[0:7];
  wire [31:0] j_real[0:7];
  wire [31:0] j_imag[0:7];
  


  butterfly4 b0(a_real0, a_real4, a_real2, a_real6, a_imag0, a_imag4, a_imag2, a_imag6, i_real[0], i_real[1], i_real[2], i_real[3], i_imag[0], i_imag[1], i_imag[2], i_imag[3]);
  butterfly4 b1(a_real1, a_real5, a_real3, a_real7, a_imag1, a_imag5, a_imag3, a_imag7, i_real[4], i_real[5], i_real[6], i_real[7], i_imag[4], i_imag[5], i_imag[6], i_imag[7]);

  twiddle_factor4 t2(i_real[5],i_real[6],i_real[7],i_imag[5],i_imag[6],i_imag[7],j_real[5],j_real[6],i_real[7],i_imag[5],j_imag[6],j_imag[7]);
  
  //$monitor("valu of i %h %h j %h %h",i_real[3],i_imag[3],j_real[3],j_imag[3]);
  

  butterfly2  b2(i_real[0], i_real[4], i_imag[0], i_imag[4], c_real0, c_real4, c_imag0, c_imag4);
  butterfly2  b3(i_real[1], j_real[5], i_imag[1], j_imag[5], c_real1, c_real5, c_imag1, c_imag5);

  butterfly2  b4(i_real[2], j_real[6], i_imag[2], j_imag[6], c_real2, c_real6, c_imag2, c_imag6);
  butterfly2  b5(i_real[3], j_real[7], i_imag[3], j_imag[7], c_real3, c_real7, c_imag3, c_imag7);

endmodule
