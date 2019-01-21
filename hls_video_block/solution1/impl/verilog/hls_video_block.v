// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="hls_video_block,hls_ip_2018_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu9eg-ffvb1156-2-i,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=3.676000,HLS_SYN_LAT=782643,HLS_SYN_TPT=782644,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=465,HLS_SYN_LUT=1124,HLS_VERSION=2018_2}" *)

module hls_video_block (
        INPUT_STREAM_TDATA,
        INPUT_STREAM_TKEEP,
        INPUT_STREAM_TSTRB,
        INPUT_STREAM_TUSER,
        INPUT_STREAM_TLAST,
        INPUT_STREAM_TID,
        INPUT_STREAM_TDEST,
        OUTPUT_STREAM_TDATA,
        OUTPUT_STREAM_TKEEP,
        OUTPUT_STREAM_TSTRB,
        OUTPUT_STREAM_TUSER,
        OUTPUT_STREAM_TLAST,
        OUTPUT_STREAM_TID,
        OUTPUT_STREAM_TDEST,
        ap_clk,
        ap_rst_n,
        INPUT_STREAM_TVALID,
        INPUT_STREAM_TREADY,
        OUTPUT_STREAM_TVALID,
        OUTPUT_STREAM_TREADY,
        ap_done,
        ap_start,
        ap_ready,
        ap_idle
);


input  [31:0] INPUT_STREAM_TDATA;
input  [3:0] INPUT_STREAM_TKEEP;
input  [3:0] INPUT_STREAM_TSTRB;
input  [0:0] INPUT_STREAM_TUSER;
input  [0:0] INPUT_STREAM_TLAST;
input  [0:0] INPUT_STREAM_TID;
input  [0:0] INPUT_STREAM_TDEST;
output  [31:0] OUTPUT_STREAM_TDATA;
output  [3:0] OUTPUT_STREAM_TKEEP;
output  [3:0] OUTPUT_STREAM_TSTRB;
output  [0:0] OUTPUT_STREAM_TUSER;
output  [0:0] OUTPUT_STREAM_TLAST;
output  [0:0] OUTPUT_STREAM_TID;
output  [0:0] OUTPUT_STREAM_TDEST;
input   ap_clk;
input   ap_rst_n;
input   INPUT_STREAM_TVALID;
output   INPUT_STREAM_TREADY;
output   OUTPUT_STREAM_TVALID;
input   OUTPUT_STREAM_TREADY;
output   ap_done;
input   ap_start;
output   ap_ready;
output   ap_idle;

 reg    ap_rst_n_inv;
wire    AXIvideo2Mat_U0_ap_start;
wire    AXIvideo2Mat_U0_ap_done;
wire    AXIvideo2Mat_U0_ap_continue;
wire    AXIvideo2Mat_U0_ap_idle;
wire    AXIvideo2Mat_U0_ap_ready;
wire    AXIvideo2Mat_U0_start_out;
wire    AXIvideo2Mat_U0_start_write;
wire    AXIvideo2Mat_U0_INPUT_STREAM_TREADY;
wire   [7:0] AXIvideo2Mat_U0_img_data_stream_0_V_din;
wire    AXIvideo2Mat_U0_img_data_stream_0_V_write;
wire   [7:0] AXIvideo2Mat_U0_img_data_stream_1_V_din;
wire    AXIvideo2Mat_U0_img_data_stream_1_V_write;
wire   [7:0] AXIvideo2Mat_U0_img_data_stream_2_V_din;
wire    AXIvideo2Mat_U0_img_data_stream_2_V_write;
wire    passthrough_U0_ap_start;
wire    passthrough_U0_ap_done;
wire    passthrough_U0_ap_continue;
wire    passthrough_U0_ap_idle;
wire    passthrough_U0_ap_ready;
wire    passthrough_U0_start_out;
wire    passthrough_U0_start_write;
wire    passthrough_U0_input_mat_data_strea_read;
wire    passthrough_U0_input_mat_data_strea_3_read;
wire    passthrough_U0_input_mat_data_strea_4_read;
wire   [7:0] passthrough_U0_output_mat_data_stre_din;
wire    passthrough_U0_output_mat_data_stre_write;
wire   [7:0] passthrough_U0_output_mat_data_stre_3_din;
wire    passthrough_U0_output_mat_data_stre_3_write;
wire   [7:0] passthrough_U0_output_mat_data_stre_4_din;
wire    passthrough_U0_output_mat_data_stre_4_write;
wire    Mat2AXIvideo_U0_ap_start;
wire    Mat2AXIvideo_U0_ap_done;
wire    Mat2AXIvideo_U0_ap_continue;
wire    Mat2AXIvideo_U0_ap_idle;
wire    Mat2AXIvideo_U0_ap_ready;
wire    Mat2AXIvideo_U0_img_data_stream_0_V_read;
wire    Mat2AXIvideo_U0_img_data_stream_1_V_read;
wire    Mat2AXIvideo_U0_img_data_stream_2_V_read;
wire   [31:0] Mat2AXIvideo_U0_OUTPUT_STREAM_TDATA;
wire    Mat2AXIvideo_U0_OUTPUT_STREAM_TVALID;
wire   [3:0] Mat2AXIvideo_U0_OUTPUT_STREAM_TKEEP;
wire   [3:0] Mat2AXIvideo_U0_OUTPUT_STREAM_TSTRB;
wire   [0:0] Mat2AXIvideo_U0_OUTPUT_STREAM_TUSER;
wire   [0:0] Mat2AXIvideo_U0_OUTPUT_STREAM_TLAST;
wire   [0:0] Mat2AXIvideo_U0_OUTPUT_STREAM_TID;
wire   [0:0] Mat2AXIvideo_U0_OUTPUT_STREAM_TDEST;
wire    ap_sync_continue;
wire    input_mat_data_strea_full_n;
wire   [7:0] input_mat_data_strea_dout;
wire    input_mat_data_strea_empty_n;
wire    input_mat_data_strea_5_full_n;
wire   [7:0] input_mat_data_strea_5_dout;
wire    input_mat_data_strea_5_empty_n;
wire    input_mat_data_strea_6_full_n;
wire   [7:0] input_mat_data_strea_6_dout;
wire    input_mat_data_strea_6_empty_n;
wire    output_mat_data_stre_full_n;
wire   [7:0] output_mat_data_stre_dout;
wire    output_mat_data_stre_empty_n;
wire    output_mat_data_stre_5_full_n;
wire   [7:0] output_mat_data_stre_5_dout;
wire    output_mat_data_stre_5_empty_n;
wire    output_mat_data_stre_6_full_n;
wire   [7:0] output_mat_data_stre_6_dout;
wire    output_mat_data_stre_6_empty_n;
wire    ap_sync_done;
wire    ap_sync_ready;
wire   [0:0] start_for_passthrough_U0_din;
wire    start_for_passthrough_U0_full_n;
wire   [0:0] start_for_passthrough_U0_dout;
wire    start_for_passthrough_U0_empty_n;
wire   [0:0] start_for_Mat2AXIvideo_U0_din;
wire    start_for_Mat2AXIvideo_U0_full_n;
wire   [0:0] start_for_Mat2AXIvideo_U0_dout;
wire    start_for_Mat2AXIvideo_U0_empty_n;
wire    Mat2AXIvideo_U0_start_full_n;
wire    Mat2AXIvideo_U0_start_write;

AXIvideo2Mat AXIvideo2Mat_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(AXIvideo2Mat_U0_ap_start),
    .start_full_n(start_for_passthrough_U0_full_n),
    .ap_done(AXIvideo2Mat_U0_ap_done),
    .ap_continue(AXIvideo2Mat_U0_ap_continue),
    .ap_idle(AXIvideo2Mat_U0_ap_idle),
    .ap_ready(AXIvideo2Mat_U0_ap_ready),
    .start_out(AXIvideo2Mat_U0_start_out),
    .start_write(AXIvideo2Mat_U0_start_write),
    .INPUT_STREAM_TDATA(INPUT_STREAM_TDATA),
    .INPUT_STREAM_TVALID(INPUT_STREAM_TVALID),
    .INPUT_STREAM_TREADY(AXIvideo2Mat_U0_INPUT_STREAM_TREADY),
    .INPUT_STREAM_TKEEP(INPUT_STREAM_TKEEP),
    .INPUT_STREAM_TSTRB(INPUT_STREAM_TSTRB),
    .INPUT_STREAM_TUSER(INPUT_STREAM_TUSER),
    .INPUT_STREAM_TLAST(INPUT_STREAM_TLAST),
    .INPUT_STREAM_TID(INPUT_STREAM_TID),
    .INPUT_STREAM_TDEST(INPUT_STREAM_TDEST),
    .img_data_stream_0_V_din(AXIvideo2Mat_U0_img_data_stream_0_V_din),
    .img_data_stream_0_V_full_n(input_mat_data_strea_full_n),
    .img_data_stream_0_V_write(AXIvideo2Mat_U0_img_data_stream_0_V_write),
    .img_data_stream_1_V_din(AXIvideo2Mat_U0_img_data_stream_1_V_din),
    .img_data_stream_1_V_full_n(input_mat_data_strea_5_full_n),
    .img_data_stream_1_V_write(AXIvideo2Mat_U0_img_data_stream_1_V_write),
    .img_data_stream_2_V_din(AXIvideo2Mat_U0_img_data_stream_2_V_din),
    .img_data_stream_2_V_full_n(input_mat_data_strea_6_full_n),
    .img_data_stream_2_V_write(AXIvideo2Mat_U0_img_data_stream_2_V_write)
);

passthrough passthrough_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(passthrough_U0_ap_start),
    .start_full_n(start_for_Mat2AXIvideo_U0_full_n),
    .ap_done(passthrough_U0_ap_done),
    .ap_continue(passthrough_U0_ap_continue),
    .ap_idle(passthrough_U0_ap_idle),
    .ap_ready(passthrough_U0_ap_ready),
    .start_out(passthrough_U0_start_out),
    .start_write(passthrough_U0_start_write),
    .input_mat_data_strea_dout(input_mat_data_strea_dout),
    .input_mat_data_strea_empty_n(input_mat_data_strea_empty_n),
    .input_mat_data_strea_read(passthrough_U0_input_mat_data_strea_read),
    .input_mat_data_strea_3_dout(input_mat_data_strea_5_dout),
    .input_mat_data_strea_3_empty_n(input_mat_data_strea_5_empty_n),
    .input_mat_data_strea_3_read(passthrough_U0_input_mat_data_strea_3_read),
    .input_mat_data_strea_4_dout(input_mat_data_strea_6_dout),
    .input_mat_data_strea_4_empty_n(input_mat_data_strea_6_empty_n),
    .input_mat_data_strea_4_read(passthrough_U0_input_mat_data_strea_4_read),
    .output_mat_data_stre_din(passthrough_U0_output_mat_data_stre_din),
    .output_mat_data_stre_full_n(output_mat_data_stre_full_n),
    .output_mat_data_stre_write(passthrough_U0_output_mat_data_stre_write),
    .output_mat_data_stre_3_din(passthrough_U0_output_mat_data_stre_3_din),
    .output_mat_data_stre_3_full_n(output_mat_data_stre_5_full_n),
    .output_mat_data_stre_3_write(passthrough_U0_output_mat_data_stre_3_write),
    .output_mat_data_stre_4_din(passthrough_U0_output_mat_data_stre_4_din),
    .output_mat_data_stre_4_full_n(output_mat_data_stre_6_full_n),
    .output_mat_data_stre_4_write(passthrough_U0_output_mat_data_stre_4_write)
);

Mat2AXIvideo Mat2AXIvideo_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(Mat2AXIvideo_U0_ap_start),
    .ap_done(Mat2AXIvideo_U0_ap_done),
    .ap_continue(Mat2AXIvideo_U0_ap_continue),
    .ap_idle(Mat2AXIvideo_U0_ap_idle),
    .ap_ready(Mat2AXIvideo_U0_ap_ready),
    .img_data_stream_0_V_dout(output_mat_data_stre_dout),
    .img_data_stream_0_V_empty_n(output_mat_data_stre_empty_n),
    .img_data_stream_0_V_read(Mat2AXIvideo_U0_img_data_stream_0_V_read),
    .img_data_stream_1_V_dout(output_mat_data_stre_5_dout),
    .img_data_stream_1_V_empty_n(output_mat_data_stre_5_empty_n),
    .img_data_stream_1_V_read(Mat2AXIvideo_U0_img_data_stream_1_V_read),
    .img_data_stream_2_V_dout(output_mat_data_stre_6_dout),
    .img_data_stream_2_V_empty_n(output_mat_data_stre_6_empty_n),
    .img_data_stream_2_V_read(Mat2AXIvideo_U0_img_data_stream_2_V_read),
    .OUTPUT_STREAM_TDATA(Mat2AXIvideo_U0_OUTPUT_STREAM_TDATA),
    .OUTPUT_STREAM_TVALID(Mat2AXIvideo_U0_OUTPUT_STREAM_TVALID),
    .OUTPUT_STREAM_TREADY(OUTPUT_STREAM_TREADY),
    .OUTPUT_STREAM_TKEEP(Mat2AXIvideo_U0_OUTPUT_STREAM_TKEEP),
    .OUTPUT_STREAM_TSTRB(Mat2AXIvideo_U0_OUTPUT_STREAM_TSTRB),
    .OUTPUT_STREAM_TUSER(Mat2AXIvideo_U0_OUTPUT_STREAM_TUSER),
    .OUTPUT_STREAM_TLAST(Mat2AXIvideo_U0_OUTPUT_STREAM_TLAST),
    .OUTPUT_STREAM_TID(Mat2AXIvideo_U0_OUTPUT_STREAM_TID),
    .OUTPUT_STREAM_TDEST(Mat2AXIvideo_U0_OUTPUT_STREAM_TDEST)
);

fifo_w8_d2_A input_mat_data_strea_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIvideo2Mat_U0_img_data_stream_0_V_din),
    .if_full_n(input_mat_data_strea_full_n),
    .if_write(AXIvideo2Mat_U0_img_data_stream_0_V_write),
    .if_dout(input_mat_data_strea_dout),
    .if_empty_n(input_mat_data_strea_empty_n),
    .if_read(passthrough_U0_input_mat_data_strea_read)
);

fifo_w8_d2_A input_mat_data_strea_5_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIvideo2Mat_U0_img_data_stream_1_V_din),
    .if_full_n(input_mat_data_strea_5_full_n),
    .if_write(AXIvideo2Mat_U0_img_data_stream_1_V_write),
    .if_dout(input_mat_data_strea_5_dout),
    .if_empty_n(input_mat_data_strea_5_empty_n),
    .if_read(passthrough_U0_input_mat_data_strea_3_read)
);

fifo_w8_d2_A input_mat_data_strea_6_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIvideo2Mat_U0_img_data_stream_2_V_din),
    .if_full_n(input_mat_data_strea_6_full_n),
    .if_write(AXIvideo2Mat_U0_img_data_stream_2_V_write),
    .if_dout(input_mat_data_strea_6_dout),
    .if_empty_n(input_mat_data_strea_6_empty_n),
    .if_read(passthrough_U0_input_mat_data_strea_4_read)
);

fifo_w8_d2_A output_mat_data_stre_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(passthrough_U0_output_mat_data_stre_din),
    .if_full_n(output_mat_data_stre_full_n),
    .if_write(passthrough_U0_output_mat_data_stre_write),
    .if_dout(output_mat_data_stre_dout),
    .if_empty_n(output_mat_data_stre_empty_n),
    .if_read(Mat2AXIvideo_U0_img_data_stream_0_V_read)
);

fifo_w8_d2_A output_mat_data_stre_5_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(passthrough_U0_output_mat_data_stre_3_din),
    .if_full_n(output_mat_data_stre_5_full_n),
    .if_write(passthrough_U0_output_mat_data_stre_3_write),
    .if_dout(output_mat_data_stre_5_dout),
    .if_empty_n(output_mat_data_stre_5_empty_n),
    .if_read(Mat2AXIvideo_U0_img_data_stream_1_V_read)
);

fifo_w8_d2_A output_mat_data_stre_6_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(passthrough_U0_output_mat_data_stre_4_din),
    .if_full_n(output_mat_data_stre_6_full_n),
    .if_write(passthrough_U0_output_mat_data_stre_4_write),
    .if_dout(output_mat_data_stre_6_dout),
    .if_empty_n(output_mat_data_stre_6_empty_n),
    .if_read(Mat2AXIvideo_U0_img_data_stream_2_V_read)
);

start_for_passthrbkb start_for_passthrbkb_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_passthrough_U0_din),
    .if_full_n(start_for_passthrough_U0_full_n),
    .if_write(AXIvideo2Mat_U0_start_write),
    .if_dout(start_for_passthrough_U0_dout),
    .if_empty_n(start_for_passthrough_U0_empty_n),
    .if_read(passthrough_U0_ap_ready)
);

start_for_Mat2AXIcud start_for_Mat2AXIcud_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_Mat2AXIvideo_U0_din),
    .if_full_n(start_for_Mat2AXIvideo_U0_full_n),
    .if_write(passthrough_U0_start_write),
    .if_dout(start_for_Mat2AXIvideo_U0_dout),
    .if_empty_n(start_for_Mat2AXIvideo_U0_empty_n),
    .if_read(Mat2AXIvideo_U0_ap_ready)
);

assign AXIvideo2Mat_U0_ap_continue = 1'b1;

assign AXIvideo2Mat_U0_ap_start = ap_start;

assign INPUT_STREAM_TREADY = AXIvideo2Mat_U0_INPUT_STREAM_TREADY;

assign Mat2AXIvideo_U0_ap_continue = 1'b1;

assign Mat2AXIvideo_U0_ap_start = start_for_Mat2AXIvideo_U0_empty_n;

assign Mat2AXIvideo_U0_start_full_n = 1'b1;

assign Mat2AXIvideo_U0_start_write = 1'b0;

assign OUTPUT_STREAM_TDATA = Mat2AXIvideo_U0_OUTPUT_STREAM_TDATA;

assign OUTPUT_STREAM_TDEST = Mat2AXIvideo_U0_OUTPUT_STREAM_TDEST;

assign OUTPUT_STREAM_TID = Mat2AXIvideo_U0_OUTPUT_STREAM_TID;

assign OUTPUT_STREAM_TKEEP = Mat2AXIvideo_U0_OUTPUT_STREAM_TKEEP;

assign OUTPUT_STREAM_TLAST = Mat2AXIvideo_U0_OUTPUT_STREAM_TLAST;

assign OUTPUT_STREAM_TSTRB = Mat2AXIvideo_U0_OUTPUT_STREAM_TSTRB;

assign OUTPUT_STREAM_TUSER = Mat2AXIvideo_U0_OUTPUT_STREAM_TUSER;

assign OUTPUT_STREAM_TVALID = Mat2AXIvideo_U0_OUTPUT_STREAM_TVALID;

assign ap_done = Mat2AXIvideo_U0_ap_done;

assign ap_idle = (passthrough_U0_ap_idle & Mat2AXIvideo_U0_ap_idle & AXIvideo2Mat_U0_ap_idle);

assign ap_ready = AXIvideo2Mat_U0_ap_ready;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign ap_sync_continue = 1'b1;

assign ap_sync_done = Mat2AXIvideo_U0_ap_done;

assign ap_sync_ready = AXIvideo2Mat_U0_ap_ready;

assign passthrough_U0_ap_continue = 1'b1;

assign passthrough_U0_ap_start = start_for_passthrough_U0_empty_n;

assign start_for_Mat2AXIvideo_U0_din = 1'b1;

assign start_for_passthrough_U0_din = 1'b1;

endmodule //hls_video_block