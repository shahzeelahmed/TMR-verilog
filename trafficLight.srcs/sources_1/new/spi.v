module spi_master_2cycle (
    input         clk,       
    input         rst,       
    input  [7:0]  data0,     
    input  [7:0]  data1,     
    input  [7:0]  data2,     
    output reg    sclk,     
    output reg    mosi,    
    output reg    cs0,       
    output reg    cs1,       
    output reg    cs2        
);

 
  localparam IDLE       = 3'd0,
             LOAD       = 3'd1,
             ASSERT_CS  = 3'd2,
             LOW_PHASE  = 3'd3,
             HIGH_PHASE = 3'd4,
             NEXT_BIT   = 3'd5,
             DONE       = 3'd6;

  reg [2:0]  state;
  reg [2:0]  bit_cnt;       
  reg [7:0]  shift_reg;
  reg [1:0]  slave_index;  

 
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      state       <= IDLE;
      sclk        <= 1'b0;
      mosi        <= 1'b0;
      cs0         <= 1'b1;
      cs1         <= 1'b1;
      cs2         <= 1'b1;
      bit_cnt     <= 3'd7;
      slave_index <= 2'd0;
      shift_reg   <= 8'd0;
    end
    else begin
      case (state)
        IDLE: begin
          slave_index <= 0;
          state       <= LOAD;
        end

        LOAD: begin
          case (slave_index)
            2'd0: begin
              shift_reg <= data0;
              cs0       <= 1'b0; 
              cs1       <= 1'b1;
              cs2       <= 1'b1;
            end
            2'd1: begin
              shift_reg <= data1;
              cs0       <= 1'b1;
              cs1       <= 1'b0;
              cs2       <= 1'b1; 
            end
            2'd2: begin
              shift_reg <= data2;
              cs0       <= 1'b1;
              cs1       <= 1'b1;
              cs2       <= 1'b0; 
            end
          endcase
          bit_cnt <= 3'd7;
          sclk    <= 1'b0;
          mosi    <= 1'b0;
          state   <= ASSERT_CS;
        end

        ASSERT_CS: begin
          state <= LOW_PHASE;
        end

        LOW_PHASE: begin
          sclk  <= 1'b0;
          mosi  <= shift_reg[bit_cnt];  
          state <= HIGH_PHASE;
        end

        HIGH_PHASE: begin
          sclk <= 1'b1;
          state <= NEXT_BIT;
        end

        NEXT_BIT: begin
          if (bit_cnt == 0) begin
            case (slave_index)
              2'd0: cs0 <= 1'b1;
              2'd1: cs1 <= 1'b1;
              2'd2: cs2 <= 1'b1;
            endcase
            if (slave_index < 2) begin
              slave_index <= slave_index + 1;
              state <= LOAD;
            end else begin
              state <= DONE;
            end
            sclk  <= 1'b0;
            mosi  <= 1'b0;
          end
          else begin
            bit_cnt   <= bit_cnt - 1;
            state     <= LOW_PHASE;  
            shift_reg <= shift_reg;  
          end
        end

        DONE: begin
          sclk <= 1'b0;
          mosi <= 1'b0;
        end

        default: state <= IDLE;
      endcase
    end
  end

endmodule

module spi_slave_led (
    input  clk,   // System clock (for LED output)
    input  sclk,  // SPI clock (for data capture)
    input  mosi,  // SPI data in
    input  cs,    // active-low chip select
    output reg led
);

  reg [3:0] bit_count;
  reg [7:0] shift_reg;
  reg [7:0] pattern;
  reg       pattern_valid;
  reg [3:0] display_index;

  
//  always @(negedge cs) begin
//    bit_count      <= 0;
//    shift_reg      <= 0;
//    pattern_valid  <= 0;
//    display_index  <= 0;
//  end

//  
//  always @(posedge sclk) begin
//    if (!cs) begin
//      shift_reg <= {shift_reg[6:0], mosi};
//      bit_count <= bit_count + 1;
//    end
//  end

//  
//  always @(posedge cs) begin
//    if (bit_count == 4'd8) begin
//      pattern       <= shift_reg;
//      pattern_valid <= 1;
//    end
//  end

//  
//  always @(posedge clk) begin
//    if (pattern_valid && display_index < 8) begin
//      led <= pattern[7 - display_index];
//      display_index <= display_index + 1;
//    end
//   
//  end

reg cs_prev, sclk_prev;

// Single always block triggered on posedge clk
always @(posedge clk) begin
  // Edge detection: Save current cs and sclk for next cycle
  cs_prev   <= cs;
  sclk_prev <= sclk;

  // Detect falling edge of cs: start of a new transaction
  if (cs_prev == 1 && cs == 0) begin
    bit_count     <= 0;
    shift_reg     <= 0;
    pattern_valid <= 0;
    display_index <= 0;
  end

  // If cs is low, detect rising edge of sclk: shift single bit
  if ((cs == 0) && (sclk_prev == 0) && (sclk == 1)) begin
    shift_reg <= {shift_reg[6:0], mosi};
    bit_count <= bit_count + 1;
  end

  // Detect rising edge of cs: transaction end and latch data if 8 bits received
  if (cs_prev == 0 && cs == 1) begin
    if (bit_count == 4'd8) begin
      pattern       <= shift_reg;
      pattern_valid <= 1;
    end
  end

  // Update LED output: once pattern is valid, output one bit per clock cycle (MSB first)
  if (pattern_valid && (display_index < 4'd8)) begin
    led <= pattern[7 - display_index];
    display_index <= display_index + 1;
  end
end


endmodule

  module spi_system (
      input         clk,   
      input         rst,  
      input  [7:0]  data0, 
      input  [7:0]  data1, 
      input  [7:0]  data2, 
      output        led0,
      output        led1,
      output        led2
  );
  
    wire sclk;
    wire mosi;
    wire cs0, cs1, cs2;
    wire miso; 
  
    spi_master_2cycle master_inst (
      .clk(clk),
      .rst(rst),
      .data0(data0),
      .data1(data1),
      .data2(data2),
      .sclk(sclk),
      .mosi(mosi),
      .cs0(cs0),
      .cs1(cs1),
      .cs2(cs2)
    );
  
    spi_slave_led slave0_inst (
      .clk(clk),
      .sclk(sclk),
      .mosi(mosi),
      .cs(cs0),
      .led(led0)
    );
  
    spi_slave_led slave1_inst (
      .clk(clk),
      .sclk(sclk),
      .mosi(mosi),
      .cs(cs1),
      .led(led1)
    );
  
    spi_slave_led slave2_inst (
      .clk(clk),
      .sclk(sclk),
      .mosi(mosi),
      .cs(cs2),
      .led(led2)
    );
  
  endmodule
