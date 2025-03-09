
`timescale 1ns/1ps
module tb_spi_system_led_single_reset;

  reg         clk;
  reg         rst;
  reg  [7:0]  data0, data1, data2;
  wire        led0, led1, led2;

  
  spi_system uut (
    .clk(clk),
    .rst(rst),
    .data0(data0),
    .data1(data1),
    .data2(data2),
    .led0(led0),
    .led1(led1),
    .led2(led2)
  );

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end



  initial begin
    rst   = 1;
    data0 = 8'b10101010;
    data1 = 8'b11110010; 
    data2 = 8'b11000111; 
    #40;
    rst   = 0;

    #800;


  end

endmodule
