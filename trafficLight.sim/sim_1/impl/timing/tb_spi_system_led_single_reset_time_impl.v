// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
// Date        : Fri Feb 21 12:06:01 2025
// Host        : LAPTOP-FMPURMC8 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               {C:/Users/himan/OneDrive/Desktop/finaYRpro/trafficLight -
//               Copy/trafficLight.sim/sim_1/impl/timing/tb_spi_system_led_single_reset_time_impl.v}
// Design      : spi_system
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module spi_master_2cycle
   (sclk,
    cs0,
    cs1,
    cs2,
    mosi,
    E,
    \shift_reg_reg[7]_0 ,
    \bit_count_reg[3] ,
    \shift_reg_reg[7]_1 ,
    \bit_count_reg[3]_0 ,
    SR,
    \bit_count_reg[3]_1 ,
    \bit_count_reg[3]_2 ,
    \shift_reg_reg[0]_0 ,
    \shift_reg_reg[0]_1 ,
    clk_IBUF_BUFG,
    rst_IBUF,
    sclk_prev,
    cs_prev,
    cs_prev_0,
    cs_prev_1,
    data2_IBUF,
    data1_IBUF,
    data0_IBUF);
  output sclk;
  output cs0;
  output cs1;
  output cs2;
  output mosi;
  output [0:0]E;
  output \shift_reg_reg[7]_0 ;
  output [0:0]\bit_count_reg[3] ;
  output \shift_reg_reg[7]_1 ;
  output [0:0]\bit_count_reg[3]_0 ;
  output [0:0]SR;
  output [0:0]\bit_count_reg[3]_1 ;
  output [0:0]\bit_count_reg[3]_2 ;
  output \shift_reg_reg[0]_0 ;
  output \shift_reg_reg[0]_1 ;
  input clk_IBUF_BUFG;
  input rst_IBUF;
  input sclk_prev;
  input cs_prev;
  input cs_prev_0;
  input cs_prev_1;
  input [7:0]data2_IBUF;
  input [7:0]data1_IBUF;
  input [7:0]data0_IBUF;

  wire [0:0]E;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire [0:0]SR;
  wire \bit_cnt[0]_i_1_n_0 ;
  wire \bit_cnt[1]_i_1_n_0 ;
  wire \bit_cnt[2]_i_1_n_0 ;
  wire \bit_cnt_reg_n_0_[0] ;
  wire \bit_cnt_reg_n_0_[1] ;
  wire \bit_cnt_reg_n_0_[2] ;
  wire [0:0]\bit_count_reg[3] ;
  wire [0:0]\bit_count_reg[3]_0 ;
  wire [0:0]\bit_count_reg[3]_1 ;
  wire [0:0]\bit_count_reg[3]_2 ;
  wire clk_IBUF_BUFG;
  wire cs0;
  wire cs0_i_1_n_0;
  wire cs0_i_2_n_0;
  wire cs0_i_3_n_0;
  wire cs1;
  wire cs1_i_1_n_0;
  wire cs1_i_2_n_0;
  wire cs2;
  wire cs2_i_1_n_0;
  wire cs2_i_2_n_0;
  wire cs_prev;
  wire cs_prev_0;
  wire cs_prev_1;
  wire [7:0]data0_IBUF;
  wire [7:0]data1_IBUF;
  wire [7:0]data2_IBUF;
  wire mosi;
  wire mosi_i_1_n_0;
  wire mosi_i_3_n_0;
  wire mosi_i_4_n_0;
  wire mosi_i_5_n_0;
  wire mosi_reg_i_2_n_0;
  wire rst_IBUF;
  wire sclk;
  wire sclk_i_1_n_0;
  wire sclk_i_2_n_0;
  wire sclk_prev;
  wire shift_reg;
  wire \shift_reg[0]_i_1_n_0 ;
  wire \shift_reg[1]_i_1_n_0 ;
  wire \shift_reg[2]_i_1_n_0 ;
  wire \shift_reg[3]_i_1_n_0 ;
  wire \shift_reg[4]_i_1_n_0 ;
  wire \shift_reg[5]_i_1_n_0 ;
  wire \shift_reg[6]_i_1_n_0 ;
  wire \shift_reg[7]_i_2_n_0 ;
  wire \shift_reg_reg[0]_0 ;
  wire \shift_reg_reg[0]_1 ;
  wire \shift_reg_reg[7]_0 ;
  wire \shift_reg_reg[7]_1 ;
  wire \shift_reg_reg_n_0_[0] ;
  wire \shift_reg_reg_n_0_[1] ;
  wire \shift_reg_reg_n_0_[2] ;
  wire \shift_reg_reg_n_0_[3] ;
  wire \shift_reg_reg_n_0_[4] ;
  wire \shift_reg_reg_n_0_[5] ;
  wire \shift_reg_reg_n_0_[6] ;
  wire \shift_reg_reg_n_0_[7] ;
  wire \slave_index[0]_i_1_n_0 ;
  wire \slave_index[1]_i_1_n_0 ;
  wire \slave_index[1]_i_2_n_0 ;
  wire \slave_index_reg_n_0_[0] ;
  wire \slave_index_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire [2:0]state;

  LUT4 #(
    .INIT(16'hA4C4)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[0]),
        .I1(\FSM_sequential_state[0]_i_2_n_0 ),
        .I2(state[2]),
        .I3(state[1]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFDF)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(state[0]),
        .I1(\bit_cnt_reg_n_0_[0] ),
        .I2(\slave_index_reg_n_0_[1] ),
        .I3(\bit_cnt_reg_n_0_[2] ),
        .I4(\bit_cnt_reg_n_0_[1] ),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF488)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[0]),
        .I1(\FSM_sequential_state[1]_i_2_n_0 ),
        .I2(state[2]),
        .I3(state[1]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(\slave_index_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[0] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\bit_cnt_reg_n_0_[2] ),
        .I4(state[2]),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFF01F00)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(\FSM_sequential_state[2]_i_3_n_0 ),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(\bit_cnt_reg_n_0_[0] ),
        .I1(\slave_index_reg_n_0_[1] ),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]));
  LUT6 #(
    .INIT(64'hBB55BB51FF00FF00)) 
    \bit_cnt[0]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(\bit_cnt_reg_n_0_[2] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(\bit_cnt_reg_n_0_[1] ),
        .I5(state[0]),
        .O(\bit_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBB1151FFFF0000)) 
    \bit_cnt[1]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(\bit_cnt_reg_n_0_[2] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(\bit_cnt_reg_n_0_[1] ),
        .I5(state[0]),
        .O(\bit_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF1F1F1B1F0F0F0F0)) 
    \bit_cnt[2]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(\bit_cnt_reg_n_0_[2] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(\bit_cnt_reg_n_0_[1] ),
        .I5(state[0]),
        .O(\bit_cnt[2]_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \bit_cnt_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\bit_cnt[0]_i_1_n_0 ),
        .PRE(rst_IBUF),
        .Q(\bit_cnt_reg_n_0_[0] ));
  FDPE #(
    .INIT(1'b1)) 
    \bit_cnt_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\bit_cnt[1]_i_1_n_0 ),
        .PRE(rst_IBUF),
        .Q(\bit_cnt_reg_n_0_[1] ));
  FDPE #(
    .INIT(1'b1)) 
    \bit_cnt_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\bit_cnt[2]_i_1_n_0 ),
        .PRE(rst_IBUF),
        .Q(\bit_cnt_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h4500)) 
    \bit_count[3]_i_1 
       (.I0(cs2),
        .I1(sclk_prev),
        .I2(sclk),
        .I3(cs_prev_0),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h4500)) 
    \bit_count[3]_i_1__0 
       (.I0(cs1),
        .I1(sclk_prev),
        .I2(sclk),
        .I3(cs_prev),
        .O(\bit_count_reg[3]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h4500)) 
    \bit_count[3]_i_1__1 
       (.I0(cs0),
        .I1(sclk_prev),
        .I2(sclk),
        .I3(cs_prev_1),
        .O(\bit_count_reg[3]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \bit_count[3]_i_2 
       (.I0(sclk_prev),
        .I1(sclk),
        .I2(cs0),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \bit_count[3]_i_2__0 
       (.I0(sclk_prev),
        .I1(sclk),
        .I2(cs1),
        .O(\bit_count_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \bit_count[3]_i_2__1 
       (.I0(sclk_prev),
        .I1(sclk),
        .I2(cs2),
        .O(\bit_count_reg[3]_0 ));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    cs0_i_1
       (.I0(cs0_i_2_n_0),
        .I1(state[1]),
        .I2(state[0]),
        .I3(cs0_i_3_n_0),
        .I4(cs0),
        .O(cs0_i_1_n_0));
  LUT4 #(
    .INIT(16'h5554)) 
    cs0_i_2
       (.I0(state[1]),
        .I1(\slave_index_reg_n_0_[0] ),
        .I2(\slave_index_reg_n_0_[1] ),
        .I3(state[2]),
        .O(cs0_i_2_n_0));
  LUT6 #(
    .INIT(64'h000000FF00FF01FF)) 
    cs0_i_3
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .I2(\bit_cnt_reg_n_0_[0] ),
        .I3(state[2]),
        .I4(\slave_index_reg_n_0_[0] ),
        .I5(\slave_index_reg_n_0_[1] ),
        .O(cs0_i_3_n_0));
  FDPE #(
    .INIT(1'b1)) 
    cs0_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(cs0_i_1_n_0),
        .PRE(rst_IBUF),
        .Q(cs0));
  LUT6 #(
    .INIT(64'hFBFFFFFF0B000000)) 
    cs1_i_1
       (.I0(state[2]),
        .I1(\slave_index_reg_n_0_[0] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(cs1_i_2_n_0),
        .I5(cs1),
        .O(cs1_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000FF01FF00FF)) 
    cs1_i_2
       (.I0(\bit_cnt_reg_n_0_[0] ),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .I2(\bit_cnt_reg_n_0_[2] ),
        .I3(state[2]),
        .I4(\slave_index_reg_n_0_[0] ),
        .I5(\slave_index_reg_n_0_[1] ),
        .O(cs1_i_2_n_0));
  FDPE #(
    .INIT(1'b1)) 
    cs1_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(cs1_i_1_n_0),
        .PRE(rst_IBUF),
        .Q(cs1));
  LUT6 #(
    .INIT(64'hFBFFFFFF0B000000)) 
    cs2_i_1
       (.I0(state[2]),
        .I1(\slave_index_reg_n_0_[1] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(cs2_i_2_n_0),
        .I5(cs2),
        .O(cs2_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000000002FFFF)) 
    cs2_i_2
       (.I0(\slave_index_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[0] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\bit_cnt_reg_n_0_[2] ),
        .I4(state[2]),
        .I5(\slave_index_reg_n_0_[0] ),
        .O(cs2_i_2_n_0));
  FDPE #(
    .INIT(1'b1)) 
    cs2_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(cs2_i_1_n_0),
        .PRE(rst_IBUF),
        .Q(cs2));
  LUT6 #(
    .INIT(64'hF03FAF0F0000A000)) 
    mosi_i_1
       (.I0(mosi_reg_i_2_n_0),
        .I1(mosi_i_3_n_0),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .I5(mosi),
        .O(mosi_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h01)) 
    mosi_i_3
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[0] ),
        .I2(\bit_cnt_reg_n_0_[2] ),
        .O(mosi_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_i_4
       (.I0(\shift_reg_reg_n_0_[3] ),
        .I1(\shift_reg_reg_n_0_[2] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\shift_reg_reg_n_0_[1] ),
        .I4(\bit_cnt_reg_n_0_[0] ),
        .I5(\shift_reg_reg_n_0_[0] ),
        .O(mosi_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_i_5
       (.I0(\shift_reg_reg_n_0_[7] ),
        .I1(\shift_reg_reg_n_0_[6] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\shift_reg_reg_n_0_[5] ),
        .I4(\bit_cnt_reg_n_0_[0] ),
        .I5(\shift_reg_reg_n_0_[4] ),
        .O(mosi_i_5_n_0));
  FDCE #(
    .INIT(1'b0)) 
    mosi_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(mosi_i_1_n_0),
        .Q(mosi));
  MUXF7 mosi_reg_i_2
       (.I0(mosi_i_4_n_0),
        .I1(mosi_i_5_n_0),
        .O(mosi_reg_i_2_n_0),
        .S(\bit_cnt_reg_n_0_[2] ));
  LUT6 #(
    .INIT(64'h9999DDD500004444)) 
    sclk_i_1
       (.I0(state[0]),
        .I1(state[2]),
        .I2(sclk_i_2_n_0),
        .I3(\bit_cnt_reg_n_0_[1] ),
        .I4(state[1]),
        .I5(sclk),
        .O(sclk_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    sclk_i_2
       (.I0(\bit_cnt_reg_n_0_[2] ),
        .I1(\bit_cnt_reg_n_0_[0] ),
        .O(sclk_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    sclk_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(sclk_i_1_n_0),
        .Q(sclk));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \shift_reg[0]_i_1 
       (.I0(data2_IBUF[0]),
        .I1(data1_IBUF[0]),
        .I2(\slave_index_reg_n_0_[0] ),
        .I3(data0_IBUF[0]),
        .I4(\slave_index_reg_n_0_[1] ),
        .O(\shift_reg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \shift_reg[1]_i_1 
       (.I0(data2_IBUF[1]),
        .I1(data1_IBUF[1]),
        .I2(\slave_index_reg_n_0_[0] ),
        .I3(data0_IBUF[1]),
        .I4(\slave_index_reg_n_0_[1] ),
        .O(\shift_reg[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \shift_reg[2]_i_1 
       (.I0(data2_IBUF[2]),
        .I1(data1_IBUF[2]),
        .I2(\slave_index_reg_n_0_[0] ),
        .I3(data0_IBUF[2]),
        .I4(\slave_index_reg_n_0_[1] ),
        .O(\shift_reg[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \shift_reg[3]_i_1 
       (.I0(data2_IBUF[3]),
        .I1(data1_IBUF[3]),
        .I2(\slave_index_reg_n_0_[0] ),
        .I3(data0_IBUF[3]),
        .I4(\slave_index_reg_n_0_[1] ),
        .O(\shift_reg[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \shift_reg[4]_i_1 
       (.I0(data2_IBUF[4]),
        .I1(data1_IBUF[4]),
        .I2(\slave_index_reg_n_0_[0] ),
        .I3(data0_IBUF[4]),
        .I4(\slave_index_reg_n_0_[1] ),
        .O(\shift_reg[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \shift_reg[5]_i_1 
       (.I0(data2_IBUF[5]),
        .I1(data1_IBUF[5]),
        .I2(\slave_index_reg_n_0_[0] ),
        .I3(data0_IBUF[5]),
        .I4(\slave_index_reg_n_0_[1] ),
        .O(\shift_reg[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \shift_reg[6]_i_1 
       (.I0(data2_IBUF[6]),
        .I1(data1_IBUF[6]),
        .I2(\slave_index_reg_n_0_[0] ),
        .I3(data0_IBUF[6]),
        .I4(\slave_index_reg_n_0_[1] ),
        .O(\shift_reg[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00101010)) 
    \shift_reg[7]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(\slave_index_reg_n_0_[0] ),
        .I4(\slave_index_reg_n_0_[1] ),
        .O(shift_reg));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2202)) 
    \shift_reg[7]_i_1__1 
       (.I0(cs_prev),
        .I1(cs1),
        .I2(sclk),
        .I3(sclk_prev),
        .O(\shift_reg_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2202)) 
    \shift_reg[7]_i_1__2 
       (.I0(cs_prev_0),
        .I1(cs2),
        .I2(sclk),
        .I3(sclk_prev),
        .O(\shift_reg_reg[0]_1 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \shift_reg[7]_i_2 
       (.I0(data2_IBUF[7]),
        .I1(data1_IBUF[7]),
        .I2(\slave_index_reg_n_0_[0] ),
        .I3(data0_IBUF[7]),
        .I4(\slave_index_reg_n_0_[1] ),
        .O(\shift_reg[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00BA)) 
    \shift_reg[7]_i_2__1 
       (.I0(cs_prev),
        .I1(sclk_prev),
        .I2(sclk),
        .I3(cs1),
        .O(\shift_reg_reg[7]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h00BA)) 
    \shift_reg[7]_i_2__2 
       (.I0(cs_prev_0),
        .I1(sclk_prev),
        .I2(sclk),
        .I3(cs2),
        .O(\shift_reg_reg[7]_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(shift_reg),
        .CLR(rst_IBUF),
        .D(\shift_reg[0]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(shift_reg),
        .CLR(rst_IBUF),
        .D(\shift_reg[1]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(shift_reg),
        .CLR(rst_IBUF),
        .D(\shift_reg[2]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(shift_reg),
        .CLR(rst_IBUF),
        .D(\shift_reg[3]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(shift_reg),
        .CLR(rst_IBUF),
        .D(\shift_reg[4]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(shift_reg),
        .CLR(rst_IBUF),
        .D(\shift_reg[5]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(shift_reg),
        .CLR(rst_IBUF),
        .D(\shift_reg[6]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(shift_reg),
        .CLR(rst_IBUF),
        .D(\shift_reg[7]_i_2_n_0 ),
        .Q(\shift_reg_reg_n_0_[7] ));
  LUT4 #(
    .INIT(16'hFC02)) 
    \slave_index[0]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(\slave_index[1]_i_2_n_0 ),
        .I3(\slave_index_reg_n_0_[0] ),
        .O(\slave_index[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF40008)) 
    \slave_index[1]_i_1 
       (.I0(\slave_index_reg_n_0_[0] ),
        .I1(state[2]),
        .I2(state[1]),
        .I3(\slave_index[1]_i_2_n_0 ),
        .I4(\slave_index_reg_n_0_[1] ),
        .O(\slave_index[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFF0000)) 
    \slave_index[1]_i_2 
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\slave_index_reg_n_0_[1] ),
        .I2(\bit_cnt_reg_n_0_[2] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(state[0]),
        .I5(state[2]),
        .O(\slave_index[1]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \slave_index_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\slave_index[0]_i_1_n_0 ),
        .Q(\slave_index_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \slave_index_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\slave_index[1]_i_1_n_0 ),
        .Q(\slave_index_reg_n_0_[1] ));
endmodule

module spi_slave_led
   (cs_prev,
    sclk_prev,
    led0_OBUF,
    cs0,
    clk_IBUF_BUFG,
    sclk,
    mosi,
    SR,
    E);
  output cs_prev;
  output sclk_prev;
  output led0_OBUF;
  input cs0;
  input clk_IBUF_BUFG;
  input sclk;
  input mosi;
  input [0:0]SR;
  input [0:0]E;

  wire [0:0]E;
  wire [0:0]SR;
  wire [3:0]bit_count_reg__0;
  wire clk_IBUF_BUFG;
  wire cs0;
  wire cs_prev;
  wire display_index;
  wire display_index0;
  wire \display_index[0]_i_1_n_0 ;
  wire [3:0]display_index_reg__0;
  wire led0_OBUF;
  wire led_i_3_n_0;
  wire led_i_4_n_0;
  wire led_reg_i_2_n_0;
  wire mosi;
  wire [3:1]p_0_in;
  wire [3:0]p_0_in__0;
  wire \pattern_reg_n_0_[0] ;
  wire \pattern_reg_n_0_[1] ;
  wire \pattern_reg_n_0_[2] ;
  wire \pattern_reg_n_0_[3] ;
  wire \pattern_reg_n_0_[4] ;
  wire \pattern_reg_n_0_[5] ;
  wire \pattern_reg_n_0_[6] ;
  wire \pattern_reg_n_0_[7] ;
  wire pattern_valid;
  wire pattern_valid_i_1_n_0;
  wire pattern_valid_reg_n_0;
  wire sclk;
  wire sclk_prev;
  wire [7:0]shift_reg;
  wire \shift_reg[7]_i_1__0_n_0 ;
  wire \shift_reg[7]_i_2__0_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \bit_count[0]_i_1 
       (.I0(bit_count_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bit_count[1]_i_1 
       (.I0(bit_count_reg__0[1]),
        .I1(bit_count_reg__0[0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \bit_count[2]_i_1 
       (.I0(bit_count_reg__0[2]),
        .I1(bit_count_reg__0[1]),
        .I2(bit_count_reg__0[0]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \bit_count[3]_i_3 
       (.I0(bit_count_reg__0[3]),
        .I1(bit_count_reg__0[1]),
        .I2(bit_count_reg__0[0]),
        .I3(bit_count_reg__0[2]),
        .O(p_0_in__0[3]));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in__0[0]),
        .Q(bit_count_reg__0[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in__0[1]),
        .Q(bit_count_reg__0[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in__0[2]),
        .Q(bit_count_reg__0[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in__0[3]),
        .Q(bit_count_reg__0[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    cs_prev_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(cs0),
        .Q(cs_prev),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \display_index[0]_i_1 
       (.I0(display_index_reg__0[0]),
        .O(\display_index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \display_index[1]_i_1 
       (.I0(display_index_reg__0[1]),
        .I1(display_index_reg__0[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \display_index[2]_i_1 
       (.I0(display_index_reg__0[2]),
        .I1(display_index_reg__0[1]),
        .I2(display_index_reg__0[0]),
        .O(p_0_in[2]));
  LUT4 #(
    .INIT(16'h2030)) 
    \display_index[3]_i_1 
       (.I0(display_index_reg__0[3]),
        .I1(cs0),
        .I2(cs_prev),
        .I3(pattern_valid_reg_n_0),
        .O(display_index));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \display_index[3]_i_2 
       (.I0(display_index_reg__0[3]),
        .I1(display_index_reg__0[1]),
        .I2(display_index_reg__0[0]),
        .I3(display_index_reg__0[2]),
        .O(p_0_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \display_index_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(display_index0),
        .D(\display_index[0]_i_1_n_0 ),
        .Q(display_index_reg__0[0]),
        .R(display_index));
  FDRE #(
    .INIT(1'b0)) 
    \display_index_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(display_index0),
        .D(p_0_in[1]),
        .Q(display_index_reg__0[1]),
        .R(display_index));
  FDRE #(
    .INIT(1'b0)) 
    \display_index_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(display_index0),
        .D(p_0_in[2]),
        .Q(display_index_reg__0[2]),
        .R(display_index));
  FDRE #(
    .INIT(1'b0)) 
    \display_index_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(display_index0),
        .D(p_0_in[3]),
        .Q(display_index_reg__0[3]),
        .R(display_index));
  LUT2 #(
    .INIT(4'h2)) 
    led_i_1
       (.I0(pattern_valid_reg_n_0),
        .I1(display_index_reg__0[3]),
        .O(display_index0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    led_i_3
       (.I0(\pattern_reg_n_0_[4] ),
        .I1(\pattern_reg_n_0_[5] ),
        .I2(display_index_reg__0[1]),
        .I3(\pattern_reg_n_0_[6] ),
        .I4(display_index_reg__0[0]),
        .I5(\pattern_reg_n_0_[7] ),
        .O(led_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    led_i_4
       (.I0(\pattern_reg_n_0_[0] ),
        .I1(\pattern_reg_n_0_[1] ),
        .I2(display_index_reg__0[1]),
        .I3(\pattern_reg_n_0_[2] ),
        .I4(display_index_reg__0[0]),
        .I5(\pattern_reg_n_0_[3] ),
        .O(led_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    led_reg
       (.C(clk_IBUF_BUFG),
        .CE(display_index0),
        .D(led_reg_i_2_n_0),
        .Q(led0_OBUF),
        .R(1'b0));
  MUXF7 led_reg_i_2
       (.I0(led_i_3_n_0),
        .I1(led_i_4_n_0),
        .O(led_reg_i_2_n_0),
        .S(display_index_reg__0[2]));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \pattern[7]_i_1 
       (.I0(bit_count_reg__0[2]),
        .I1(bit_count_reg__0[0]),
        .I2(cs0),
        .I3(cs_prev),
        .I4(bit_count_reg__0[1]),
        .I5(bit_count_reg__0[3]),
        .O(pattern_valid));
  FDRE #(
    .INIT(1'b0)) 
    \pattern_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(pattern_valid),
        .D(shift_reg[0]),
        .Q(\pattern_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pattern_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(pattern_valid),
        .D(shift_reg[1]),
        .Q(\pattern_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pattern_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(pattern_valid),
        .D(shift_reg[2]),
        .Q(\pattern_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pattern_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(pattern_valid),
        .D(shift_reg[3]),
        .Q(\pattern_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pattern_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(pattern_valid),
        .D(shift_reg[4]),
        .Q(\pattern_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pattern_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(pattern_valid),
        .D(shift_reg[5]),
        .Q(\pattern_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pattern_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(pattern_valid),
        .D(shift_reg[6]),
        .Q(\pattern_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pattern_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(pattern_valid),
        .D(shift_reg[7]),
        .Q(\pattern_reg_n_0_[7] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFD0)) 
    pattern_valid_i_1
       (.I0(cs_prev),
        .I1(cs0),
        .I2(pattern_valid_reg_n_0),
        .I3(pattern_valid),
        .O(pattern_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pattern_valid_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pattern_valid_i_1_n_0),
        .Q(pattern_valid_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sclk_prev_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(sclk),
        .Q(sclk_prev),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h2202)) 
    \shift_reg[7]_i_1__0 
       (.I0(cs_prev),
        .I1(cs0),
        .I2(sclk),
        .I3(sclk_prev),
        .O(\shift_reg[7]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h00BA)) 
    \shift_reg[7]_i_2__0 
       (.I0(cs_prev),
        .I1(sclk_prev),
        .I2(sclk),
        .I3(cs0),
        .O(\shift_reg[7]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_reg[7]_i_2__0_n_0 ),
        .D(mosi),
        .Q(shift_reg[0]),
        .R(\shift_reg[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_reg[7]_i_2__0_n_0 ),
        .D(shift_reg[0]),
        .Q(shift_reg[1]),
        .R(\shift_reg[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_reg[7]_i_2__0_n_0 ),
        .D(shift_reg[1]),
        .Q(shift_reg[2]),
        .R(\shift_reg[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_reg[7]_i_2__0_n_0 ),
        .D(shift_reg[2]),
        .Q(shift_reg[3]),
        .R(\shift_reg[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_reg[7]_i_2__0_n_0 ),
        .D(shift_reg[3]),
        .Q(shift_reg[4]),
        .R(\shift_reg[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_reg[7]_i_2__0_n_0 ),
        .D(shift_reg[4]),
        .Q(shift_reg[5]),
        .R(\shift_reg[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_reg[7]_i_2__0_n_0 ),
        .D(shift_reg[5]),
        .Q(shift_reg[6]),
        .R(\shift_reg[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_reg[7]_i_2__0_n_0 ),
        .D(shift_reg[6]),
        .Q(shift_reg[7]),
        .R(\shift_reg[7]_i_1__0_n_0 ));
endmodule

(* ORIG_REF_NAME = "spi_slave_led" *) 
module spi_slave_led_0
   (cs_prev,
    led1_OBUF,
    cs1,
    clk_IBUF_BUFG,
    cs_prev_reg_0,
    cs_prev_reg_1,
    mosi,
    SR,
    E);
  output cs_prev;
  output led1_OBUF;
  input cs1;
  input clk_IBUF_BUFG;
  input cs_prev_reg_0;
  input cs_prev_reg_1;
  input mosi;
  input [0:0]SR;
  input [0:0]E;

  wire [0:0]E;
  wire [0:0]SR;
  wire [3:0]bit_count_reg__0;
  wire clk_IBUF_BUFG;
  wire cs1;
  wire cs_prev;
  wire cs_prev_reg_0;
  wire cs_prev_reg_1;
  wire display_index;
  wire display_index0;
  wire \display_index[0]_i_1__0_n_0 ;
  wire [3:0]display_index_reg__0;
  wire led1_OBUF;
  wire led_i_3__0_n_0;
  wire led_i_4__0_n_0;
  wire led_reg_i_2__0_n_0;
  wire mosi;
  wire [3:1]p_0_in__1;
  wire [3:0]p_0_in__2;
  wire \pattern_reg_n_0_[0] ;
  wire \pattern_reg_n_0_[1] ;
  wire \pattern_reg_n_0_[2] ;
  wire \pattern_reg_n_0_[3] ;
  wire \pattern_reg_n_0_[4] ;
  wire \pattern_reg_n_0_[5] ;
  wire \pattern_reg_n_0_[6] ;
  wire \pattern_reg_n_0_[7] ;
  wire pattern_valid;
  wire pattern_valid_i_1__0_n_0;
  wire pattern_valid_reg_n_0;
  wire \shift_reg_reg_n_0_[0] ;
  wire \shift_reg_reg_n_0_[1] ;
  wire \shift_reg_reg_n_0_[2] ;
  wire \shift_reg_reg_n_0_[3] ;
  wire \shift_reg_reg_n_0_[4] ;
  wire \shift_reg_reg_n_0_[5] ;
  wire \shift_reg_reg_n_0_[6] ;
  wire \shift_reg_reg_n_0_[7] ;

  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \bit_count[0]_i_1__0 
       (.I0(bit_count_reg__0[0]),
        .O(p_0_in__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bit_count[1]_i_1__0 
       (.I0(bit_count_reg__0[1]),
        .I1(bit_count_reg__0[0]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \bit_count[2]_i_1__0 
       (.I0(bit_count_reg__0[2]),
        .I1(bit_count_reg__0[1]),
        .I2(bit_count_reg__0[0]),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \bit_count[3]_i_3__0 
       (.I0(bit_count_reg__0[3]),
        .I1(bit_count_reg__0[1]),
        .I2(bit_count_reg__0[0]),
        .I3(bit_count_reg__0[2]),
        .O(p_0_in__2[3]));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in__2[0]),
        .Q(bit_count_reg__0[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in__2[1]),
        .Q(bit_count_reg__0[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in__2[2]),
        .Q(bit_count_reg__0[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in__2[3]),
        .Q(bit_count_reg__0[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    cs_prev_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(cs1),
        .Q(cs_prev),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \display_index[0]_i_1__0 
       (.I0(display_index_reg__0[0]),
        .O(\display_index[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \display_index[1]_i_1__0 
       (.I0(display_index_reg__0[1]),
        .I1(display_index_reg__0[0]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \display_index[2]_i_1__0 
       (.I0(display_index_reg__0[2]),
        .I1(display_index_reg__0[1]),
        .I2(display_index_reg__0[0]),
        .O(p_0_in__1[2]));
  LUT4 #(
    .INIT(16'h2030)) 
    \display_index[3]_i_1__0 
       (.I0(display_index_reg__0[3]),
        .I1(cs1),
        .I2(cs_prev),
        .I3(pattern_valid_reg_n_0),
        .O(display_index));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \display_index[3]_i_2__0 
       (.I0(display_index_reg__0[3]),
        .I1(display_index_reg__0[1]),
        .I2(display_index_reg__0[0]),
        .I3(display_index_reg__0[2]),
        .O(p_0_in__1[3]));
  FDRE #(
    .INIT(1'b0)) 
    \display_index_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(display_index0),
        .D(\display_index[0]_i_1__0_n_0 ),
        .Q(display_index_reg__0[0]),
        .R(display_index));
  FDRE #(
    .INIT(1'b0)) 
    \display_index_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(display_index0),
        .D(p_0_in__1[1]),
        .Q(display_index_reg__0[1]),
        .R(display_index));
  FDRE #(
    .INIT(1'b0)) 
    \display_index_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(display_index0),
        .D(p_0_in__1[2]),
        .Q(display_index_reg__0[2]),
        .R(display_index));
  FDRE #(
    .INIT(1'b0)) 
    \display_index_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(display_index0),
        .D(p_0_in__1[3]),
        .Q(display_index_reg__0[3]),
        .R(display_index));
  LUT2 #(
    .INIT(4'h2)) 
    led_i_1__0
       (.I0(pattern_valid_reg_n_0),
        .I1(display_index_reg__0[3]),
        .O(display_index0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    led_i_3__0
       (.I0(\pattern_reg_n_0_[4] ),
        .I1(\pattern_reg_n_0_[5] ),
        .I2(display_index_reg__0[1]),
        .I3(\pattern_reg_n_0_[6] ),
        .I4(display_index_reg__0[0]),
        .I5(\pattern_reg_n_0_[7] ),
        .O(led_i_3__0_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    led_i_4__0
       (.I0(\pattern_reg_n_0_[0] ),
        .I1(\pattern_reg_n_0_[1] ),
        .I2(display_index_reg__0[1]),
        .I3(\pattern_reg_n_0_[2] ),
        .I4(display_index_reg__0[0]),
        .I5(\pattern_reg_n_0_[3] ),
        .O(led_i_4__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    led_reg
       (.C(clk_IBUF_BUFG),
        .CE(display_index0),
        .D(led_reg_i_2__0_n_0),
        .Q(led1_OBUF),
        .R(1'b0));
  MUXF7 led_reg_i_2__0
       (.I0(led_i_3__0_n_0),
        .I1(led_i_4__0_n_0),
        .O(led_reg_i_2__0_n_0),
        .S(display_index_reg__0[2]));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \pattern[7]_i_1__0 
       (.I0(bit_count_reg__0[2]),
        .I1(bit_count_reg__0[0]),
        .I2(cs1),
        .I3(cs_prev),
        .I4(bit_count_reg__0[1]),
        .I5(bit_count_reg__0[3]),
        .O(pattern_valid));
  FDRE #(
    .INIT(1'b0)) 
    \pattern_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(pattern_valid),
        .D(\shift_reg_reg_n_0_[0] ),
        .Q(\pattern_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pattern_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(pattern_valid),
        .D(\shift_reg_reg_n_0_[1] ),
        .Q(\pattern_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pattern_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(pattern_valid),
        .D(\shift_reg_reg_n_0_[2] ),
        .Q(\pattern_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pattern_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(pattern_valid),
        .D(\shift_reg_reg_n_0_[3] ),
        .Q(\pattern_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pattern_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(pattern_valid),
        .D(\shift_reg_reg_n_0_[4] ),
        .Q(\pattern_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pattern_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(pattern_valid),
        .D(\shift_reg_reg_n_0_[5] ),
        .Q(\pattern_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pattern_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(pattern_valid),
        .D(\shift_reg_reg_n_0_[6] ),
        .Q(\pattern_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pattern_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(pattern_valid),
        .D(\shift_reg_reg_n_0_[7] ),
        .Q(\pattern_reg_n_0_[7] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFD0)) 
    pattern_valid_i_1__0
       (.I0(cs_prev),
        .I1(cs1),
        .I2(pattern_valid_reg_n_0),
        .I3(pattern_valid),
        .O(pattern_valid_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pattern_valid_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pattern_valid_i_1__0_n_0),
        .Q(pattern_valid_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(cs_prev_reg_1),
        .D(mosi),
        .Q(\shift_reg_reg_n_0_[0] ),
        .R(cs_prev_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(cs_prev_reg_1),
        .D(\shift_reg_reg_n_0_[0] ),
        .Q(\shift_reg_reg_n_0_[1] ),
        .R(cs_prev_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(cs_prev_reg_1),
        .D(\shift_reg_reg_n_0_[1] ),
        .Q(\shift_reg_reg_n_0_[2] ),
        .R(cs_prev_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(cs_prev_reg_1),
        .D(\shift_reg_reg_n_0_[2] ),
        .Q(\shift_reg_reg_n_0_[3] ),
        .R(cs_prev_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(cs_prev_reg_1),
        .D(\shift_reg_reg_n_0_[3] ),
        .Q(\shift_reg_reg_n_0_[4] ),
        .R(cs_prev_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(cs_prev_reg_1),
        .D(\shift_reg_reg_n_0_[4] ),
        .Q(\shift_reg_reg_n_0_[5] ),
        .R(cs_prev_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(cs_prev_reg_1),
        .D(\shift_reg_reg_n_0_[5] ),
        .Q(\shift_reg_reg_n_0_[6] ),
        .R(cs_prev_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(cs_prev_reg_1),
        .D(\shift_reg_reg_n_0_[6] ),
        .Q(\shift_reg_reg_n_0_[7] ),
        .R(cs_prev_reg_0));
endmodule

(* ORIG_REF_NAME = "spi_slave_led" *) 
module spi_slave_led_1
   (cs_prev,
    led2_OBUF,
    cs2,
    clk_IBUF_BUFG,
    cs_prev_reg_0,
    cs_prev_reg_1,
    mosi,
    SR,
    E);
  output cs_prev;
  output led2_OBUF;
  input cs2;
  input clk_IBUF_BUFG;
  input cs_prev_reg_0;
  input cs_prev_reg_1;
  input mosi;
  input [0:0]SR;
  input [0:0]E;

  wire [0:0]E;
  wire [0:0]SR;
  wire [3:0]bit_count_reg__0;
  wire clk_IBUF_BUFG;
  wire cs2;
  wire cs_prev;
  wire cs_prev_reg_0;
  wire cs_prev_reg_1;
  wire display_index;
  wire display_index0;
  wire \display_index[0]_i_1__1_n_0 ;
  wire [3:0]display_index_reg__0;
  wire led2_OBUF;
  wire led_i_3__1_n_0;
  wire led_i_4__1_n_0;
  wire led_reg_i_2__1_n_0;
  wire mosi;
  wire [3:1]p_0_in__3;
  wire [3:0]p_0_in__4;
  wire \pattern_reg_n_0_[0] ;
  wire \pattern_reg_n_0_[1] ;
  wire \pattern_reg_n_0_[2] ;
  wire \pattern_reg_n_0_[3] ;
  wire \pattern_reg_n_0_[4] ;
  wire \pattern_reg_n_0_[5] ;
  wire \pattern_reg_n_0_[6] ;
  wire \pattern_reg_n_0_[7] ;
  wire pattern_valid;
  wire pattern_valid_i_1__1_n_0;
  wire pattern_valid_reg_n_0;
  wire \shift_reg_reg_n_0_[0] ;
  wire \shift_reg_reg_n_0_[1] ;
  wire \shift_reg_reg_n_0_[2] ;
  wire \shift_reg_reg_n_0_[3] ;
  wire \shift_reg_reg_n_0_[4] ;
  wire \shift_reg_reg_n_0_[5] ;
  wire \shift_reg_reg_n_0_[6] ;
  wire \shift_reg_reg_n_0_[7] ;

  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \bit_count[0]_i_1__1 
       (.I0(bit_count_reg__0[0]),
        .O(p_0_in__4[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bit_count[1]_i_1__1 
       (.I0(bit_count_reg__0[1]),
        .I1(bit_count_reg__0[0]),
        .O(p_0_in__4[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \bit_count[2]_i_1__1 
       (.I0(bit_count_reg__0[2]),
        .I1(bit_count_reg__0[1]),
        .I2(bit_count_reg__0[0]),
        .O(p_0_in__4[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \bit_count[3]_i_3__1 
       (.I0(bit_count_reg__0[3]),
        .I1(bit_count_reg__0[1]),
        .I2(bit_count_reg__0[0]),
        .I3(bit_count_reg__0[2]),
        .O(p_0_in__4[3]));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in__4[0]),
        .Q(bit_count_reg__0[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in__4[1]),
        .Q(bit_count_reg__0[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in__4[2]),
        .Q(bit_count_reg__0[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in__4[3]),
        .Q(bit_count_reg__0[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    cs_prev_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(cs2),
        .Q(cs_prev),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \display_index[0]_i_1__1 
       (.I0(display_index_reg__0[0]),
        .O(\display_index[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \display_index[1]_i_1__1 
       (.I0(display_index_reg__0[1]),
        .I1(display_index_reg__0[0]),
        .O(p_0_in__3[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \display_index[2]_i_1__1 
       (.I0(display_index_reg__0[2]),
        .I1(display_index_reg__0[1]),
        .I2(display_index_reg__0[0]),
        .O(p_0_in__3[2]));
  LUT4 #(
    .INIT(16'h2030)) 
    \display_index[3]_i_1__1 
       (.I0(display_index_reg__0[3]),
        .I1(cs2),
        .I2(cs_prev),
        .I3(pattern_valid_reg_n_0),
        .O(display_index));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \display_index[3]_i_2__1 
       (.I0(display_index_reg__0[3]),
        .I1(display_index_reg__0[1]),
        .I2(display_index_reg__0[0]),
        .I3(display_index_reg__0[2]),
        .O(p_0_in__3[3]));
  FDRE #(
    .INIT(1'b0)) 
    \display_index_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(display_index0),
        .D(\display_index[0]_i_1__1_n_0 ),
        .Q(display_index_reg__0[0]),
        .R(display_index));
  FDRE #(
    .INIT(1'b0)) 
    \display_index_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(display_index0),
        .D(p_0_in__3[1]),
        .Q(display_index_reg__0[1]),
        .R(display_index));
  FDRE #(
    .INIT(1'b0)) 
    \display_index_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(display_index0),
        .D(p_0_in__3[2]),
        .Q(display_index_reg__0[2]),
        .R(display_index));
  FDRE #(
    .INIT(1'b0)) 
    \display_index_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(display_index0),
        .D(p_0_in__3[3]),
        .Q(display_index_reg__0[3]),
        .R(display_index));
  LUT2 #(
    .INIT(4'h2)) 
    led_i_1__1
       (.I0(pattern_valid_reg_n_0),
        .I1(display_index_reg__0[3]),
        .O(display_index0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    led_i_3__1
       (.I0(\pattern_reg_n_0_[4] ),
        .I1(\pattern_reg_n_0_[5] ),
        .I2(display_index_reg__0[1]),
        .I3(\pattern_reg_n_0_[6] ),
        .I4(display_index_reg__0[0]),
        .I5(\pattern_reg_n_0_[7] ),
        .O(led_i_3__1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    led_i_4__1
       (.I0(\pattern_reg_n_0_[0] ),
        .I1(\pattern_reg_n_0_[1] ),
        .I2(display_index_reg__0[1]),
        .I3(\pattern_reg_n_0_[2] ),
        .I4(display_index_reg__0[0]),
        .I5(\pattern_reg_n_0_[3] ),
        .O(led_i_4__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    led_reg
       (.C(clk_IBUF_BUFG),
        .CE(display_index0),
        .D(led_reg_i_2__1_n_0),
        .Q(led2_OBUF),
        .R(1'b0));
  MUXF7 led_reg_i_2__1
       (.I0(led_i_3__1_n_0),
        .I1(led_i_4__1_n_0),
        .O(led_reg_i_2__1_n_0),
        .S(display_index_reg__0[2]));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \pattern[7]_i_1__1 
       (.I0(bit_count_reg__0[2]),
        .I1(bit_count_reg__0[0]),
        .I2(cs2),
        .I3(cs_prev),
        .I4(bit_count_reg__0[1]),
        .I5(bit_count_reg__0[3]),
        .O(pattern_valid));
  FDRE #(
    .INIT(1'b0)) 
    \pattern_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(pattern_valid),
        .D(\shift_reg_reg_n_0_[0] ),
        .Q(\pattern_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pattern_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(pattern_valid),
        .D(\shift_reg_reg_n_0_[1] ),
        .Q(\pattern_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pattern_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(pattern_valid),
        .D(\shift_reg_reg_n_0_[2] ),
        .Q(\pattern_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pattern_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(pattern_valid),
        .D(\shift_reg_reg_n_0_[3] ),
        .Q(\pattern_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pattern_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(pattern_valid),
        .D(\shift_reg_reg_n_0_[4] ),
        .Q(\pattern_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pattern_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(pattern_valid),
        .D(\shift_reg_reg_n_0_[5] ),
        .Q(\pattern_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pattern_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(pattern_valid),
        .D(\shift_reg_reg_n_0_[6] ),
        .Q(\pattern_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pattern_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(pattern_valid),
        .D(\shift_reg_reg_n_0_[7] ),
        .Q(\pattern_reg_n_0_[7] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFD0)) 
    pattern_valid_i_1__1
       (.I0(cs_prev),
        .I1(cs2),
        .I2(pattern_valid_reg_n_0),
        .I3(pattern_valid),
        .O(pattern_valid_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pattern_valid_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pattern_valid_i_1__1_n_0),
        .Q(pattern_valid_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(cs_prev_reg_1),
        .D(mosi),
        .Q(\shift_reg_reg_n_0_[0] ),
        .R(cs_prev_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(cs_prev_reg_1),
        .D(\shift_reg_reg_n_0_[0] ),
        .Q(\shift_reg_reg_n_0_[1] ),
        .R(cs_prev_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(cs_prev_reg_1),
        .D(\shift_reg_reg_n_0_[1] ),
        .Q(\shift_reg_reg_n_0_[2] ),
        .R(cs_prev_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(cs_prev_reg_1),
        .D(\shift_reg_reg_n_0_[2] ),
        .Q(\shift_reg_reg_n_0_[3] ),
        .R(cs_prev_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(cs_prev_reg_1),
        .D(\shift_reg_reg_n_0_[3] ),
        .Q(\shift_reg_reg_n_0_[4] ),
        .R(cs_prev_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(cs_prev_reg_1),
        .D(\shift_reg_reg_n_0_[4] ),
        .Q(\shift_reg_reg_n_0_[5] ),
        .R(cs_prev_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(cs_prev_reg_1),
        .D(\shift_reg_reg_n_0_[5] ),
        .Q(\shift_reg_reg_n_0_[6] ),
        .R(cs_prev_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(cs_prev_reg_1),
        .D(\shift_reg_reg_n_0_[6] ),
        .Q(\shift_reg_reg_n_0_[7] ),
        .R(cs_prev_reg_0));
endmodule

(* ECO_CHECKSUM = "410be11d" *) 
(* NotValidForBitStream *)
module spi_system
   (clk,
    rst,
    data0,
    data1,
    data2,
    led0,
    led1,
    led2);
  input clk;
  input rst;
  input [7:0]data0;
  input [7:0]data1;
  input [7:0]data2;
  output led0;
  output led1;
  output led2;

  wire bit_count;
  wire bit_count03_out;
  wire bit_count03_out_2;
  wire bit_count03_out_3;
  wire bit_count_0;
  wire bit_count_1;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire cs0;
  wire cs1;
  wire cs2;
  wire cs_prev;
  wire cs_prev_4;
  wire cs_prev_5;
  wire [7:0]data0;
  wire [7:0]data0_IBUF;
  wire [7:0]data1;
  wire [7:0]data1_IBUF;
  wire [7:0]data2;
  wire [7:0]data2_IBUF;
  wire led0;
  wire led0_OBUF;
  wire led1;
  wire led1_OBUF;
  wire led2;
  wire led2_OBUF;
  wire master_inst_n_13;
  wire master_inst_n_14;
  wire master_inst_n_6;
  wire master_inst_n_8;
  wire mosi;
  wire rst;
  wire rst_IBUF;
  wire sclk;
  wire sclk_prev;

initial begin
 $sdf_annotate("tb_spi_system_led_single_reset_time_impl.sdf",,,,"tool_control");
end
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF \data0_IBUF[0]_inst 
       (.I(data0[0]),
        .O(data0_IBUF[0]));
  IBUF \data0_IBUF[1]_inst 
       (.I(data0[1]),
        .O(data0_IBUF[1]));
  IBUF \data0_IBUF[2]_inst 
       (.I(data0[2]),
        .O(data0_IBUF[2]));
  IBUF \data0_IBUF[3]_inst 
       (.I(data0[3]),
        .O(data0_IBUF[3]));
  IBUF \data0_IBUF[4]_inst 
       (.I(data0[4]),
        .O(data0_IBUF[4]));
  IBUF \data0_IBUF[5]_inst 
       (.I(data0[5]),
        .O(data0_IBUF[5]));
  IBUF \data0_IBUF[6]_inst 
       (.I(data0[6]),
        .O(data0_IBUF[6]));
  IBUF \data0_IBUF[7]_inst 
       (.I(data0[7]),
        .O(data0_IBUF[7]));
  IBUF \data1_IBUF[0]_inst 
       (.I(data1[0]),
        .O(data1_IBUF[0]));
  IBUF \data1_IBUF[1]_inst 
       (.I(data1[1]),
        .O(data1_IBUF[1]));
  IBUF \data1_IBUF[2]_inst 
       (.I(data1[2]),
        .O(data1_IBUF[2]));
  IBUF \data1_IBUF[3]_inst 
       (.I(data1[3]),
        .O(data1_IBUF[3]));
  IBUF \data1_IBUF[4]_inst 
       (.I(data1[4]),
        .O(data1_IBUF[4]));
  IBUF \data1_IBUF[5]_inst 
       (.I(data1[5]),
        .O(data1_IBUF[5]));
  IBUF \data1_IBUF[6]_inst 
       (.I(data1[6]),
        .O(data1_IBUF[6]));
  IBUF \data1_IBUF[7]_inst 
       (.I(data1[7]),
        .O(data1_IBUF[7]));
  IBUF \data2_IBUF[0]_inst 
       (.I(data2[0]),
        .O(data2_IBUF[0]));
  IBUF \data2_IBUF[1]_inst 
       (.I(data2[1]),
        .O(data2_IBUF[1]));
  IBUF \data2_IBUF[2]_inst 
       (.I(data2[2]),
        .O(data2_IBUF[2]));
  IBUF \data2_IBUF[3]_inst 
       (.I(data2[3]),
        .O(data2_IBUF[3]));
  IBUF \data2_IBUF[4]_inst 
       (.I(data2[4]),
        .O(data2_IBUF[4]));
  IBUF \data2_IBUF[5]_inst 
       (.I(data2[5]),
        .O(data2_IBUF[5]));
  IBUF \data2_IBUF[6]_inst 
       (.I(data2[6]),
        .O(data2_IBUF[6]));
  IBUF \data2_IBUF[7]_inst 
       (.I(data2[7]),
        .O(data2_IBUF[7]));
  OBUF led0_OBUF_inst
       (.I(led0_OBUF),
        .O(led0));
  OBUF led1_OBUF_inst
       (.I(led1_OBUF),
        .O(led1));
  OBUF led2_OBUF_inst
       (.I(led2_OBUF),
        .O(led2));
  spi_master_2cycle master_inst
       (.E(bit_count03_out_3),
        .SR(bit_count_1),
        .\bit_count_reg[3] (bit_count03_out_2),
        .\bit_count_reg[3]_0 (bit_count03_out),
        .\bit_count_reg[3]_1 (bit_count_0),
        .\bit_count_reg[3]_2 (bit_count),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .cs0(cs0),
        .cs1(cs1),
        .cs2(cs2),
        .cs_prev(cs_prev_4),
        .cs_prev_0(cs_prev_5),
        .cs_prev_1(cs_prev),
        .data0_IBUF(data0_IBUF),
        .data1_IBUF(data1_IBUF),
        .data2_IBUF(data2_IBUF),
        .mosi(mosi),
        .rst_IBUF(rst_IBUF),
        .sclk(sclk),
        .sclk_prev(sclk_prev),
        .\shift_reg_reg[0]_0 (master_inst_n_13),
        .\shift_reg_reg[0]_1 (master_inst_n_14),
        .\shift_reg_reg[7]_0 (master_inst_n_6),
        .\shift_reg_reg[7]_1 (master_inst_n_8));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  spi_slave_led slave0_inst
       (.E(bit_count03_out_3),
        .SR(bit_count),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .cs0(cs0),
        .cs_prev(cs_prev),
        .led0_OBUF(led0_OBUF),
        .mosi(mosi),
        .sclk(sclk),
        .sclk_prev(sclk_prev));
  spi_slave_led_0 slave1_inst
       (.E(bit_count03_out_2),
        .SR(bit_count_0),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .cs1(cs1),
        .cs_prev(cs_prev_4),
        .cs_prev_reg_0(master_inst_n_13),
        .cs_prev_reg_1(master_inst_n_6),
        .led1_OBUF(led1_OBUF),
        .mosi(mosi));
  spi_slave_led_1 slave2_inst
       (.E(bit_count03_out),
        .SR(bit_count_1),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .cs2(cs2),
        .cs_prev(cs_prev_5),
        .cs_prev_reg_0(master_inst_n_14),
        .cs_prev_reg_1(master_inst_n_8),
        .led2_OBUF(led2_OBUF),
        .mosi(mosi));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
