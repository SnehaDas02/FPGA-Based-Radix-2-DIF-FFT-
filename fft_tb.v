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
module butterfly8_tb;

  // Inputs
  reg [31:0] a_real[7:0];
  reg [31:0] a_imag[7:0];

  // Outputs
  wire [31:0] c_real[7:0];
  wire [31:0] c_imag[7:0];

  // Instantiate the butterfly4 module
  butterfly8 uut (
    .a_real0(a_real[0]),
    .a_real1(a_real[1]),
    .a_real2(a_real[2]),
    .a_real3(a_real[3]),
    .a_real4(a_real[4]),
    .a_real5(a_real[5]),
    .a_real6(a_real[6]),
    .a_real7(a_real[7]),
    .a_imag0(a_imag[0]),
    .a_imag1(a_imag[1]),
    .a_imag2(a_imag[2]),
    .a_imag3(a_imag[3]),
    .a_imag4(a_imag[4]),
    .a_imag5(a_imag[5]),
    .a_imag6(a_imag[6]),
    .a_imag7(a_imag[7]),
    .c_real0(c_real[0]),
    .c_real1(c_real[1]),
    .c_real2(c_real[2]),
    .c_real3(c_real[3]),
    .c_real4(c_real[4]),
    .c_real5(c_real[5]),
    .c_real6(c_real[6]),
    .c_real7(c_real[7]),
    .c_imag0(c_imag[0]),
    .c_imag1(c_imag[1]),
    .c_imag2(c_imag[2]),
    .c_imag3(c_imag[3]),
    .c_imag4(c_imag[4]),
    .c_imag5(c_imag[5]),
    .c_imag6(c_imag[6]),
    .c_imag7(c_imag[7])
  );
  
  // Simulation parameters
  

  // Initialize input values (provide your own test input data)
  initial begin
    a_real[0] = 1;
    a_real[1] = 2;
    a_real[2] = 3;
    a_real[3] = 4;
    a_real[4] = 5;
    a_real[5] = 6;
    a_real[6] = 7;
    a_real[7] = 8;
    
    a_imag[0] = 10 ;
    a_imag[1] = 11 ;
    a_imag[2] = 12;
    a_imag[3] = 13;
    a_imag[4] = 14;
    a_imag[5] = 15;
    a_imag[6] = 16;
    a_imag[7] = 17;
    
    // Calculate and assign the expected output values
    
    
    // Monitor the outputs
    //$monitor("Output: c_real[0]=%h, c_real[1]=%h, c_real[2]=%h, c_real[3]=%h, c_real[4]=%h, c_real[5]=%h, c_real[6]=%h, c_real[7]=%h", c_real[0], c_real[1], c_real[2], c_real[3], c_real[4], c_real[5], c_real[6], c_real[7]);
    //$monitor("Output: c_imag[0]=%h, c_imag[1]=%h, c_imag[2]=%h, c_imag[3]=%h, c_imag[4]=%h, c_imag[5]=%h, c_imag[6]=%h, c_imag[7]=%h", c_imag[0], c_imag[1], c_imag[2], c_imag[3], c_imag[4], c_imag[5], c_imag[6], c_imag[7]);

    // Finish simulation after a delay
    #10;
    $finish;
  end

endmodule
