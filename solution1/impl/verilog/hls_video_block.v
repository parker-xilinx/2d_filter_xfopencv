// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="hls_video_block,hls_ip_2018_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu7ev-ffvc1156-2-e,HLS_INPUT_CLOCK=3.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=2.700000,HLS_SYN_LAT=-1,HLS_SYN_TPT=-1,HLS_SYN_MEM=2,HLS_SYN_DSP=3,HLS_SYN_FF=1084,HLS_SYN_LUT=2202,HLS_VERSION=2018_2}" *)

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
        OUTPUT_STREAM_TREADY
);


input  [23:0] INPUT_STREAM_TDATA;
input  [2:0] INPUT_STREAM_TKEEP;
input  [2:0] INPUT_STREAM_TSTRB;
input  [0:0] INPUT_STREAM_TUSER;
input  [0:0] INPUT_STREAM_TLAST;
input  [0:0] INPUT_STREAM_TID;
input  [0:0] INPUT_STREAM_TDEST;
output  [23:0] OUTPUT_STREAM_TDATA;
output  [2:0] OUTPUT_STREAM_TKEEP;
output  [2:0] OUTPUT_STREAM_TSTRB;
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

 reg    ap_rst_n_inv;
wire    Block_proc_U0_ap_start;
wire    Block_proc_U0_ap_done;
wire    Block_proc_U0_ap_continue;
wire    Block_proc_U0_ap_idle;
wire    Block_proc_U0_ap_ready;
wire   [10:0] Block_proc_U0_input_mat_rows_V_out_din;
wire    Block_proc_U0_input_mat_rows_V_out_write;
wire   [11:0] Block_proc_U0_input_mat_cols_V_out_din;
wire    Block_proc_U0_input_mat_cols_V_out_write;
wire    AXIvideo2Mat_U0_ap_start;
wire    AXIvideo2Mat_U0_ap_done;
wire    AXIvideo2Mat_U0_ap_continue;
wire    AXIvideo2Mat_U0_ap_idle;
wire    AXIvideo2Mat_U0_ap_ready;
wire    AXIvideo2Mat_U0_start_out;
wire    AXIvideo2Mat_U0_start_write;
wire    AXIvideo2Mat_U0_INPUT_STREAM_TREADY;
wire    AXIvideo2Mat_U0_img_rows_V_read;
wire    AXIvideo2Mat_U0_img_cols_V_read;
wire   [7:0] AXIvideo2Mat_U0_img_data_stream_0_V_din;
wire    AXIvideo2Mat_U0_img_data_stream_0_V_write;
wire   [7:0] AXIvideo2Mat_U0_img_data_stream_1_V_din;
wire    AXIvideo2Mat_U0_img_data_stream_1_V_write;
wire   [7:0] AXIvideo2Mat_U0_img_data_stream_2_V_din;
wire    AXIvideo2Mat_U0_img_data_stream_2_V_write;
wire   [10:0] AXIvideo2Mat_U0_img_rows_V_out_din;
wire    AXIvideo2Mat_U0_img_rows_V_out_write;
wire   [11:0] AXIvideo2Mat_U0_img_cols_V_out_din;
wire    AXIvideo2Mat_U0_img_cols_V_out_write;
wire    CvtColor_U0_ap_start;
wire    CvtColor_U0_ap_done;
wire    CvtColor_U0_ap_continue;
wire    CvtColor_U0_ap_idle;
wire    CvtColor_U0_ap_ready;
wire    CvtColor_U0_start_out;
wire    CvtColor_U0_start_write;
wire    CvtColor_U0_p_src_rows_V_read;
wire    CvtColor_U0_p_src_cols_V_read;
wire    CvtColor_U0_p_src_data_stream_0_V_read;
wire    CvtColor_U0_p_src_data_stream_1_V_read;
wire    CvtColor_U0_p_src_data_stream_2_V_read;
wire   [7:0] CvtColor_U0_p_dst_data_stream_V_din;
wire    CvtColor_U0_p_dst_data_stream_V_write;
wire    hls_2DFilter_U0_ap_start;
wire    hls_2DFilter_U0_ap_done;
wire    hls_2DFilter_U0_ap_continue;
wire    hls_2DFilter_U0_ap_idle;
wire    hls_2DFilter_U0_ap_ready;
wire    hls_2DFilter_U0_start_out;
wire    hls_2DFilter_U0_start_write;
wire    hls_2DFilter_U0_input_mat_data_strea_read;
wire   [7:0] hls_2DFilter_U0_output_mat_data_stre_din;
wire    hls_2DFilter_U0_output_mat_data_stre_write;
wire    CvtColor_1_U0_ap_start;
wire    CvtColor_1_U0_ap_done;
wire    CvtColor_1_U0_ap_continue;
wire    CvtColor_1_U0_ap_idle;
wire    CvtColor_1_U0_ap_ready;
wire    CvtColor_1_U0_start_out;
wire    CvtColor_1_U0_start_write;
wire    CvtColor_1_U0_p_src_data_stream_V_read;
wire   [7:0] CvtColor_1_U0_p_dst_data_stream_0_V_din;
wire    CvtColor_1_U0_p_dst_data_stream_0_V_write;
wire   [7:0] CvtColor_1_U0_p_dst_data_stream_1_V_din;
wire    CvtColor_1_U0_p_dst_data_stream_1_V_write;
wire   [7:0] CvtColor_1_U0_p_dst_data_stream_2_V_din;
wire    CvtColor_1_U0_p_dst_data_stream_2_V_write;
wire    Mat2AXIvideo_U0_ap_start;
wire    Mat2AXIvideo_U0_ap_done;
wire    Mat2AXIvideo_U0_ap_continue;
wire    Mat2AXIvideo_U0_ap_idle;
wire    Mat2AXIvideo_U0_ap_ready;
wire    Mat2AXIvideo_U0_img_data_stream_0_V_read;
wire    Mat2AXIvideo_U0_img_data_stream_1_V_read;
wire    Mat2AXIvideo_U0_img_data_stream_2_V_read;
wire   [23:0] Mat2AXIvideo_U0_OUTPUT_STREAM_TDATA;
wire    Mat2AXIvideo_U0_OUTPUT_STREAM_TVALID;
wire   [2:0] Mat2AXIvideo_U0_OUTPUT_STREAM_TKEEP;
wire   [2:0] Mat2AXIvideo_U0_OUTPUT_STREAM_TSTRB;
wire   [0:0] Mat2AXIvideo_U0_OUTPUT_STREAM_TUSER;
wire   [0:0] Mat2AXIvideo_U0_OUTPUT_STREAM_TLAST;
wire   [0:0] Mat2AXIvideo_U0_OUTPUT_STREAM_TID;
wire   [0:0] Mat2AXIvideo_U0_OUTPUT_STREAM_TDEST;
wire    ap_sync_continue;
wire    input_mat_rows_V_c_full_n;
wire   [10:0] input_mat_rows_V_c_dout;
wire    input_mat_rows_V_c_empty_n;
wire    input_mat_cols_V_c_full_n;
wire   [11:0] input_mat_cols_V_c_dout;
wire    input_mat_cols_V_c_empty_n;
wire    input_mat_data_strea_full_n;
wire   [7:0] input_mat_data_strea_dout;
wire    input_mat_data_strea_empty_n;
wire    input_mat_data_strea_1_full_n;
wire   [7:0] input_mat_data_strea_1_dout;
wire    input_mat_data_strea_1_empty_n;
wire    input_mat_data_strea_2_full_n;
wire   [7:0] input_mat_data_strea_2_dout;
wire    input_mat_data_strea_2_empty_n;
wire    input_mat_rows_V_c10_full_n;
wire   [10:0] input_mat_rows_V_c10_dout;
wire    input_mat_rows_V_c10_empty_n;
wire    input_mat_cols_V_c11_full_n;
wire   [11:0] input_mat_cols_V_c11_dout;
wire    input_mat_cols_V_c11_empty_n;
wire    im_1_data_stream_0_s_full_n;
wire   [7:0] im_1_data_stream_0_s_dout;
wire    im_1_data_stream_0_s_empty_n;
wire    im_2_data_stream_0_s_full_n;
wire   [7:0] im_2_data_stream_0_s_dout;
wire    im_2_data_stream_0_s_empty_n;
wire    output_mat_data_stre_full_n;
wire   [7:0] output_mat_data_stre_dout;
wire    output_mat_data_stre_empty_n;
wire    output_mat_data_stre_1_full_n;
wire   [7:0] output_mat_data_stre_1_dout;
wire    output_mat_data_stre_1_empty_n;
wire    output_mat_data_stre_2_full_n;
wire   [7:0] output_mat_data_stre_2_dout;
wire    output_mat_data_stre_2_empty_n;
wire    Block_proc_U0_start_full_n;
wire    Block_proc_U0_start_write;
wire   [0:0] start_for_CvtColor_U0_din;
wire    start_for_CvtColor_U0_full_n;
wire   [0:0] start_for_CvtColor_U0_dout;
wire    start_for_CvtColor_U0_empty_n;
wire   [0:0] start_for_hls_2DFilter_U0_din;
wire    start_for_hls_2DFilter_U0_full_n;
wire   [0:0] start_for_hls_2DFilter_U0_dout;
wire    start_for_hls_2DFilter_U0_empty_n;
wire   [0:0] start_for_CvtColor_1_U0_din;
wire    start_for_CvtColor_1_U0_full_n;
wire   [0:0] start_for_CvtColor_1_U0_dout;
wire    start_for_CvtColor_1_U0_empty_n;
wire   [0:0] start_for_Mat2AXIvideo_U0_din;
wire    start_for_Mat2AXIvideo_U0_full_n;
wire   [0:0] start_for_Mat2AXIvideo_U0_dout;
wire    start_for_Mat2AXIvideo_U0_empty_n;
wire    Mat2AXIvideo_U0_start_full_n;
wire    Mat2AXIvideo_U0_start_write;

Block_proc Block_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(Block_proc_U0_ap_start),
    .ap_done(Block_proc_U0_ap_done),
    .ap_continue(Block_proc_U0_ap_continue),
    .ap_idle(Block_proc_U0_ap_idle),
    .ap_ready(Block_proc_U0_ap_ready),
    .input_mat_rows_V_out_din(Block_proc_U0_input_mat_rows_V_out_din),
    .input_mat_rows_V_out_full_n(input_mat_rows_V_c_full_n),
    .input_mat_rows_V_out_write(Block_proc_U0_input_mat_rows_V_out_write),
    .input_mat_cols_V_out_din(Block_proc_U0_input_mat_cols_V_out_din),
    .input_mat_cols_V_out_full_n(input_mat_cols_V_c_full_n),
    .input_mat_cols_V_out_write(Block_proc_U0_input_mat_cols_V_out_write)
);

AXIvideo2Mat AXIvideo2Mat_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(AXIvideo2Mat_U0_ap_start),
    .start_full_n(start_for_CvtColor_U0_full_n),
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
    .img_rows_V_dout(input_mat_rows_V_c_dout),
    .img_rows_V_empty_n(input_mat_rows_V_c_empty_n),
    .img_rows_V_read(AXIvideo2Mat_U0_img_rows_V_read),
    .img_cols_V_dout(input_mat_cols_V_c_dout),
    .img_cols_V_empty_n(input_mat_cols_V_c_empty_n),
    .img_cols_V_read(AXIvideo2Mat_U0_img_cols_V_read),
    .img_data_stream_0_V_din(AXIvideo2Mat_U0_img_data_stream_0_V_din),
    .img_data_stream_0_V_full_n(input_mat_data_strea_full_n),
    .img_data_stream_0_V_write(AXIvideo2Mat_U0_img_data_stream_0_V_write),
    .img_data_stream_1_V_din(AXIvideo2Mat_U0_img_data_stream_1_V_din),
    .img_data_stream_1_V_full_n(input_mat_data_strea_1_full_n),
    .img_data_stream_1_V_write(AXIvideo2Mat_U0_img_data_stream_1_V_write),
    .img_data_stream_2_V_din(AXIvideo2Mat_U0_img_data_stream_2_V_din),
    .img_data_stream_2_V_full_n(input_mat_data_strea_2_full_n),
    .img_data_stream_2_V_write(AXIvideo2Mat_U0_img_data_stream_2_V_write),
    .img_rows_V_out_din(AXIvideo2Mat_U0_img_rows_V_out_din),
    .img_rows_V_out_full_n(input_mat_rows_V_c10_full_n),
    .img_rows_V_out_write(AXIvideo2Mat_U0_img_rows_V_out_write),
    .img_cols_V_out_din(AXIvideo2Mat_U0_img_cols_V_out_din),
    .img_cols_V_out_full_n(input_mat_cols_V_c11_full_n),
    .img_cols_V_out_write(AXIvideo2Mat_U0_img_cols_V_out_write)
);

CvtColor CvtColor_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(CvtColor_U0_ap_start),
    .start_full_n(start_for_hls_2DFilter_U0_full_n),
    .ap_done(CvtColor_U0_ap_done),
    .ap_continue(CvtColor_U0_ap_continue),
    .ap_idle(CvtColor_U0_ap_idle),
    .ap_ready(CvtColor_U0_ap_ready),
    .start_out(CvtColor_U0_start_out),
    .start_write(CvtColor_U0_start_write),
    .p_src_rows_V_dout(input_mat_rows_V_c10_dout),
    .p_src_rows_V_empty_n(input_mat_rows_V_c10_empty_n),
    .p_src_rows_V_read(CvtColor_U0_p_src_rows_V_read),
    .p_src_cols_V_dout(input_mat_cols_V_c11_dout),
    .p_src_cols_V_empty_n(input_mat_cols_V_c11_empty_n),
    .p_src_cols_V_read(CvtColor_U0_p_src_cols_V_read),
    .p_src_data_stream_0_V_dout(input_mat_data_strea_dout),
    .p_src_data_stream_0_V_empty_n(input_mat_data_strea_empty_n),
    .p_src_data_stream_0_V_read(CvtColor_U0_p_src_data_stream_0_V_read),
    .p_src_data_stream_1_V_dout(input_mat_data_strea_1_dout),
    .p_src_data_stream_1_V_empty_n(input_mat_data_strea_1_empty_n),
    .p_src_data_stream_1_V_read(CvtColor_U0_p_src_data_stream_1_V_read),
    .p_src_data_stream_2_V_dout(input_mat_data_strea_2_dout),
    .p_src_data_stream_2_V_empty_n(input_mat_data_strea_2_empty_n),
    .p_src_data_stream_2_V_read(CvtColor_U0_p_src_data_stream_2_V_read),
    .p_dst_data_stream_V_din(CvtColor_U0_p_dst_data_stream_V_din),
    .p_dst_data_stream_V_full_n(im_1_data_stream_0_s_full_n),
    .p_dst_data_stream_V_write(CvtColor_U0_p_dst_data_stream_V_write)
);

hls_2DFilter hls_2DFilter_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(hls_2DFilter_U0_ap_start),
    .start_full_n(start_for_CvtColor_1_U0_full_n),
    .ap_done(hls_2DFilter_U0_ap_done),
    .ap_continue(hls_2DFilter_U0_ap_continue),
    .ap_idle(hls_2DFilter_U0_ap_idle),
    .ap_ready(hls_2DFilter_U0_ap_ready),
    .start_out(hls_2DFilter_U0_start_out),
    .start_write(hls_2DFilter_U0_start_write),
    .input_mat_data_strea_dout(im_1_data_stream_0_s_dout),
    .input_mat_data_strea_empty_n(im_1_data_stream_0_s_empty_n),
    .input_mat_data_strea_read(hls_2DFilter_U0_input_mat_data_strea_read),
    .output_mat_data_stre_din(hls_2DFilter_U0_output_mat_data_stre_din),
    .output_mat_data_stre_full_n(im_2_data_stream_0_s_full_n),
    .output_mat_data_stre_write(hls_2DFilter_U0_output_mat_data_stre_write)
);

CvtColor_1 CvtColor_1_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(CvtColor_1_U0_ap_start),
    .start_full_n(start_for_Mat2AXIvideo_U0_full_n),
    .ap_done(CvtColor_1_U0_ap_done),
    .ap_continue(CvtColor_1_U0_ap_continue),
    .ap_idle(CvtColor_1_U0_ap_idle),
    .ap_ready(CvtColor_1_U0_ap_ready),
    .start_out(CvtColor_1_U0_start_out),
    .start_write(CvtColor_1_U0_start_write),
    .p_src_data_stream_V_dout(im_2_data_stream_0_s_dout),
    .p_src_data_stream_V_empty_n(im_2_data_stream_0_s_empty_n),
    .p_src_data_stream_V_read(CvtColor_1_U0_p_src_data_stream_V_read),
    .p_dst_data_stream_0_V_din(CvtColor_1_U0_p_dst_data_stream_0_V_din),
    .p_dst_data_stream_0_V_full_n(output_mat_data_stre_full_n),
    .p_dst_data_stream_0_V_write(CvtColor_1_U0_p_dst_data_stream_0_V_write),
    .p_dst_data_stream_1_V_din(CvtColor_1_U0_p_dst_data_stream_1_V_din),
    .p_dst_data_stream_1_V_full_n(output_mat_data_stre_1_full_n),
    .p_dst_data_stream_1_V_write(CvtColor_1_U0_p_dst_data_stream_1_V_write),
    .p_dst_data_stream_2_V_din(CvtColor_1_U0_p_dst_data_stream_2_V_din),
    .p_dst_data_stream_2_V_full_n(output_mat_data_stre_2_full_n),
    .p_dst_data_stream_2_V_write(CvtColor_1_U0_p_dst_data_stream_2_V_write)
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
    .img_data_stream_1_V_dout(output_mat_data_stre_1_dout),
    .img_data_stream_1_V_empty_n(output_mat_data_stre_1_empty_n),
    .img_data_stream_1_V_read(Mat2AXIvideo_U0_img_data_stream_1_V_read),
    .img_data_stream_2_V_dout(output_mat_data_stre_2_dout),
    .img_data_stream_2_V_empty_n(output_mat_data_stre_2_empty_n),
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

fifo_w11_d2_A input_mat_rows_V_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_proc_U0_input_mat_rows_V_out_din),
    .if_full_n(input_mat_rows_V_c_full_n),
    .if_write(Block_proc_U0_input_mat_rows_V_out_write),
    .if_dout(input_mat_rows_V_c_dout),
    .if_empty_n(input_mat_rows_V_c_empty_n),
    .if_read(AXIvideo2Mat_U0_img_rows_V_read)
);

fifo_w12_d2_A input_mat_cols_V_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_proc_U0_input_mat_cols_V_out_din),
    .if_full_n(input_mat_cols_V_c_full_n),
    .if_write(Block_proc_U0_input_mat_cols_V_out_write),
    .if_dout(input_mat_cols_V_c_dout),
    .if_empty_n(input_mat_cols_V_c_empty_n),
    .if_read(AXIvideo2Mat_U0_img_cols_V_read)
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
    .if_read(CvtColor_U0_p_src_data_stream_0_V_read)
);

fifo_w8_d2_A input_mat_data_strea_1_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIvideo2Mat_U0_img_data_stream_1_V_din),
    .if_full_n(input_mat_data_strea_1_full_n),
    .if_write(AXIvideo2Mat_U0_img_data_stream_1_V_write),
    .if_dout(input_mat_data_strea_1_dout),
    .if_empty_n(input_mat_data_strea_1_empty_n),
    .if_read(CvtColor_U0_p_src_data_stream_1_V_read)
);

fifo_w8_d2_A input_mat_data_strea_2_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIvideo2Mat_U0_img_data_stream_2_V_din),
    .if_full_n(input_mat_data_strea_2_full_n),
    .if_write(AXIvideo2Mat_U0_img_data_stream_2_V_write),
    .if_dout(input_mat_data_strea_2_dout),
    .if_empty_n(input_mat_data_strea_2_empty_n),
    .if_read(CvtColor_U0_p_src_data_stream_2_V_read)
);

fifo_w11_d2_A input_mat_rows_V_c10_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIvideo2Mat_U0_img_rows_V_out_din),
    .if_full_n(input_mat_rows_V_c10_full_n),
    .if_write(AXIvideo2Mat_U0_img_rows_V_out_write),
    .if_dout(input_mat_rows_V_c10_dout),
    .if_empty_n(input_mat_rows_V_c10_empty_n),
    .if_read(CvtColor_U0_p_src_rows_V_read)
);

fifo_w12_d2_A input_mat_cols_V_c11_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIvideo2Mat_U0_img_cols_V_out_din),
    .if_full_n(input_mat_cols_V_c11_full_n),
    .if_write(AXIvideo2Mat_U0_img_cols_V_out_write),
    .if_dout(input_mat_cols_V_c11_dout),
    .if_empty_n(input_mat_cols_V_c11_empty_n),
    .if_read(CvtColor_U0_p_src_cols_V_read)
);

fifo_w8_d2_A im_1_data_stream_0_s_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(CvtColor_U0_p_dst_data_stream_V_din),
    .if_full_n(im_1_data_stream_0_s_full_n),
    .if_write(CvtColor_U0_p_dst_data_stream_V_write),
    .if_dout(im_1_data_stream_0_s_dout),
    .if_empty_n(im_1_data_stream_0_s_empty_n),
    .if_read(hls_2DFilter_U0_input_mat_data_strea_read)
);

fifo_w8_d2_A im_2_data_stream_0_s_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(hls_2DFilter_U0_output_mat_data_stre_din),
    .if_full_n(im_2_data_stream_0_s_full_n),
    .if_write(hls_2DFilter_U0_output_mat_data_stre_write),
    .if_dout(im_2_data_stream_0_s_dout),
    .if_empty_n(im_2_data_stream_0_s_empty_n),
    .if_read(CvtColor_1_U0_p_src_data_stream_V_read)
);

fifo_w8_d2_A output_mat_data_stre_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(CvtColor_1_U0_p_dst_data_stream_0_V_din),
    .if_full_n(output_mat_data_stre_full_n),
    .if_write(CvtColor_1_U0_p_dst_data_stream_0_V_write),
    .if_dout(output_mat_data_stre_dout),
    .if_empty_n(output_mat_data_stre_empty_n),
    .if_read(Mat2AXIvideo_U0_img_data_stream_0_V_read)
);

fifo_w8_d2_A output_mat_data_stre_1_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(CvtColor_1_U0_p_dst_data_stream_1_V_din),
    .if_full_n(output_mat_data_stre_1_full_n),
    .if_write(CvtColor_1_U0_p_dst_data_stream_1_V_write),
    .if_dout(output_mat_data_stre_1_dout),
    .if_empty_n(output_mat_data_stre_1_empty_n),
    .if_read(Mat2AXIvideo_U0_img_data_stream_1_V_read)
);

fifo_w8_d2_A output_mat_data_stre_2_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(CvtColor_1_U0_p_dst_data_stream_2_V_din),
    .if_full_n(output_mat_data_stre_2_full_n),
    .if_write(CvtColor_1_U0_p_dst_data_stream_2_V_write),
    .if_dout(output_mat_data_stre_2_dout),
    .if_empty_n(output_mat_data_stre_2_empty_n),
    .if_read(Mat2AXIvideo_U0_img_data_stream_2_V_read)
);

start_for_CvtColog8j start_for_CvtColog8j_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_CvtColor_U0_din),
    .if_full_n(start_for_CvtColor_U0_full_n),
    .if_write(AXIvideo2Mat_U0_start_write),
    .if_dout(start_for_CvtColor_U0_dout),
    .if_empty_n(start_for_CvtColor_U0_empty_n),
    .if_read(CvtColor_U0_ap_ready)
);

start_for_hls_2DFhbi start_for_hls_2DFhbi_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_hls_2DFilter_U0_din),
    .if_full_n(start_for_hls_2DFilter_U0_full_n),
    .if_write(CvtColor_U0_start_write),
    .if_dout(start_for_hls_2DFilter_U0_dout),
    .if_empty_n(start_for_hls_2DFilter_U0_empty_n),
    .if_read(hls_2DFilter_U0_ap_ready)
);

start_for_CvtColoibs start_for_CvtColoibs_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_CvtColor_1_U0_din),
    .if_full_n(start_for_CvtColor_1_U0_full_n),
    .if_write(hls_2DFilter_U0_start_write),
    .if_dout(start_for_CvtColor_1_U0_dout),
    .if_empty_n(start_for_CvtColor_1_U0_empty_n),
    .if_read(CvtColor_1_U0_ap_ready)
);

start_for_Mat2AXIjbC start_for_Mat2AXIjbC_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_Mat2AXIvideo_U0_din),
    .if_full_n(start_for_Mat2AXIvideo_U0_full_n),
    .if_write(CvtColor_1_U0_start_write),
    .if_dout(start_for_Mat2AXIvideo_U0_dout),
    .if_empty_n(start_for_Mat2AXIvideo_U0_empty_n),
    .if_read(Mat2AXIvideo_U0_ap_ready)
);

assign AXIvideo2Mat_U0_ap_continue = 1'b1;

assign AXIvideo2Mat_U0_ap_start = 1'b1;

assign Block_proc_U0_ap_continue = 1'b1;

assign Block_proc_U0_ap_start = 1'b1;

assign Block_proc_U0_start_full_n = 1'b1;

assign Block_proc_U0_start_write = 1'b0;

assign CvtColor_1_U0_ap_continue = 1'b1;

assign CvtColor_1_U0_ap_start = start_for_CvtColor_1_U0_empty_n;

assign CvtColor_U0_ap_continue = 1'b1;

assign CvtColor_U0_ap_start = start_for_CvtColor_U0_empty_n;

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

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign ap_sync_continue = 1'b0;

assign hls_2DFilter_U0_ap_continue = 1'b1;

assign hls_2DFilter_U0_ap_start = start_for_hls_2DFilter_U0_empty_n;

assign start_for_CvtColor_1_U0_din = 1'b1;

assign start_for_CvtColor_U0_din = 1'b1;

assign start_for_Mat2AXIvideo_U0_din = 1'b1;

assign start_for_hls_2DFilter_U0_din = 1'b1;

endmodule //hls_video_block