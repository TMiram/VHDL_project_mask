// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Fri Nov 19 15:13:16 2021
// Host        : g121-14 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top fifo_generator_0 -prefix
//               fifo_generator_0_ fifo_generator_0_stub.v
// Design      : fifo_generator_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_5,Vivado 2019.2" *)
module fifo_generator_0(clk, rst, din, wr_en, rd_en, prog_full_thresh, dout, 
  full, almost_full, empty, almost_empty, data_count, prog_full, wr_rst_busy, rd_rst_busy)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,din[8:0],wr_en,rd_en,prog_full_thresh[9:0],dout[8:0],full,almost_full,empty,almost_empty,data_count[9:0],prog_full,wr_rst_busy,rd_rst_busy" */;
  input clk;
  input rst;
  input [8:0]din;
  input wr_en;
  input rd_en;
  input [9:0]prog_full_thresh;
  output [8:0]dout;
  output full;
  output almost_full;
  output empty;
  output almost_empty;
  output [9:0]data_count;
  output prog_full;
  output wr_rst_busy;
  output rd_rst_busy;
endmodule
