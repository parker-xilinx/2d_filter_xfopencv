// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module strm2mat (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        INPUT_STREAM_TDATA,
        INPUT_STREAM_TVALID,
        INPUT_STREAM_TREADY,
        INPUT_STREAM_TKEEP,
        INPUT_STREAM_TSTRB,
        INPUT_STREAM_TUSER,
        INPUT_STREAM_TLAST,
        INPUT_STREAM_TID,
        INPUT_STREAM_TDEST,
        OUT_size_read,
        OUT_data_V_din,
        OUT_data_V_full_n,
        OUT_data_V_write
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
input  [23:0] INPUT_STREAM_TDATA;
input   INPUT_STREAM_TVALID;
output   INPUT_STREAM_TREADY;
input  [2:0] INPUT_STREAM_TKEEP;
input  [2:0] INPUT_STREAM_TSTRB;
input  [0:0] INPUT_STREAM_TUSER;
input  [0:0] INPUT_STREAM_TLAST;
input  [0:0] INPUT_STREAM_TID;
input  [0:0] INPUT_STREAM_TDEST;
input  [20:0] OUT_size_read;
output  [23:0] OUT_data_V_din;
input   OUT_data_V_full_n;
output   OUT_data_V_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg OUT_data_V_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg   [23:0] IN_V_data_V_0_data_out;
wire    IN_V_data_V_0_vld_in;
wire    IN_V_data_V_0_vld_out;
wire    IN_V_data_V_0_ack_in;
reg    IN_V_data_V_0_ack_out;
reg   [23:0] IN_V_data_V_0_payload_A;
reg   [23:0] IN_V_data_V_0_payload_B;
reg    IN_V_data_V_0_sel_rd;
reg    IN_V_data_V_0_sel_wr;
wire    IN_V_data_V_0_sel;
wire    IN_V_data_V_0_load_A;
wire    IN_V_data_V_0_load_B;
reg   [1:0] IN_V_data_V_0_state;
wire    IN_V_data_V_0_state_cmp_full;
wire    IN_V_dest_V_0_vld_in;
reg    IN_V_dest_V_0_ack_out;
reg   [1:0] IN_V_dest_V_0_state;
reg    INPUT_STREAM_TDATA_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] tmp_fu_102_p2;
reg    OUT_data_V_blk_n;
reg    ap_block_state1;
wire   [19:0] i_1_fu_107_p2;
reg    ap_block_state2;
reg   [19:0] i_reg_87;
wire   [20:0] i_cast_fu_98_p1;
reg   [1:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
#0 IN_V_data_V_0_sel_rd = 1'b0;
#0 IN_V_data_V_0_sel_wr = 1'b0;
#0 IN_V_data_V_0_state = 2'd0;
#0 IN_V_dest_V_0_state = 2'd0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        IN_V_data_V_0_sel_rd <= 1'b0;
    end else begin
        if (((1'b1 == IN_V_data_V_0_ack_out) & (1'b1 == IN_V_data_V_0_vld_out))) begin
            IN_V_data_V_0_sel_rd <= ~IN_V_data_V_0_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        IN_V_data_V_0_sel_wr <= 1'b0;
    end else begin
        if (((1'b1 == IN_V_data_V_0_ack_in) & (1'b1 == IN_V_data_V_0_vld_in))) begin
            IN_V_data_V_0_sel_wr <= ~IN_V_data_V_0_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        IN_V_data_V_0_state <= 2'd0;
    end else begin
        if ((((2'd2 == IN_V_data_V_0_state) & (1'b0 == IN_V_data_V_0_vld_in)) | ((2'd3 == IN_V_data_V_0_state) & (1'b0 == IN_V_data_V_0_vld_in) & (1'b1 == IN_V_data_V_0_ack_out)))) begin
            IN_V_data_V_0_state <= 2'd2;
        end else if ((((2'd1 == IN_V_data_V_0_state) & (1'b0 == IN_V_data_V_0_ack_out)) | ((2'd3 == IN_V_data_V_0_state) & (1'b0 == IN_V_data_V_0_ack_out) & (1'b1 == IN_V_data_V_0_vld_in)))) begin
            IN_V_data_V_0_state <= 2'd1;
        end else if (((~((1'b0 == IN_V_data_V_0_vld_in) & (1'b1 == IN_V_data_V_0_ack_out)) & ~((1'b0 == IN_V_data_V_0_ack_out) & (1'b1 == IN_V_data_V_0_vld_in)) & (2'd3 == IN_V_data_V_0_state)) | ((2'd1 == IN_V_data_V_0_state) & (1'b1 == IN_V_data_V_0_ack_out)) | ((2'd2 == IN_V_data_V_0_state) & (1'b1 == IN_V_data_V_0_vld_in)))) begin
            IN_V_data_V_0_state <= 2'd3;
        end else begin
            IN_V_data_V_0_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        IN_V_dest_V_0_state <= 2'd0;
    end else begin
        if ((((2'd2 == IN_V_dest_V_0_state) & (1'b0 == IN_V_dest_V_0_vld_in)) | ((2'd3 == IN_V_dest_V_0_state) & (1'b0 == IN_V_dest_V_0_vld_in) & (1'b1 == IN_V_dest_V_0_ack_out)))) begin
            IN_V_dest_V_0_state <= 2'd2;
        end else if ((((2'd1 == IN_V_dest_V_0_state) & (1'b0 == IN_V_dest_V_0_ack_out)) | ((2'd3 == IN_V_dest_V_0_state) & (1'b0 == IN_V_dest_V_0_ack_out) & (1'b1 == IN_V_dest_V_0_vld_in)))) begin
            IN_V_dest_V_0_state <= 2'd1;
        end else if (((~((1'b0 == IN_V_dest_V_0_vld_in) & (1'b1 == IN_V_dest_V_0_ack_out)) & ~((1'b0 == IN_V_dest_V_0_ack_out) & (1'b1 == IN_V_dest_V_0_vld_in)) & (2'd3 == IN_V_dest_V_0_state)) | ((2'd1 == IN_V_dest_V_0_state) & (1'b1 == IN_V_dest_V_0_ack_out)) | ((2'd2 == IN_V_dest_V_0_state) & (1'b1 == IN_V_dest_V_0_vld_in)))) begin
            IN_V_dest_V_0_state <= 2'd3;
        end else begin
            IN_V_dest_V_0_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((~(((tmp_fu_102_p2 == 1'd1) & (1'b0 == OUT_data_V_full_n)) | ((tmp_fu_102_p2 == 1'd1) & (1'b0 == IN_V_data_V_0_vld_out))) & (tmp_fu_102_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~(((tmp_fu_102_p2 == 1'd1) & (1'b0 == OUT_data_V_full_n)) | ((tmp_fu_102_p2 == 1'd1) & (1'b0 == IN_V_data_V_0_vld_out))) & (tmp_fu_102_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        i_reg_87 <= i_1_fu_107_p2;
    end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_reg_87 <= 20'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == IN_V_data_V_0_load_A)) begin
        IN_V_data_V_0_payload_A <= INPUT_STREAM_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == IN_V_data_V_0_load_B)) begin
        IN_V_data_V_0_payload_B <= INPUT_STREAM_TDATA;
    end
end

always @ (*) begin
    if (((tmp_fu_102_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        INPUT_STREAM_TDATA_blk_n = IN_V_data_V_0_state[1'd0];
    end else begin
        INPUT_STREAM_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((tmp_fu_102_p2 == 1'd1) & (1'b0 == OUT_data_V_full_n)) | ((tmp_fu_102_p2 == 1'd1) & (1'b0 == IN_V_data_V_0_vld_out))) & (tmp_fu_102_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        IN_V_data_V_0_ack_out = 1'b1;
    end else begin
        IN_V_data_V_0_ack_out = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == IN_V_data_V_0_sel)) begin
        IN_V_data_V_0_data_out = IN_V_data_V_0_payload_B;
    end else begin
        IN_V_data_V_0_data_out = IN_V_data_V_0_payload_A;
    end
end

always @ (*) begin
    if ((~(((tmp_fu_102_p2 == 1'd1) & (1'b0 == OUT_data_V_full_n)) | ((tmp_fu_102_p2 == 1'd1) & (1'b0 == IN_V_data_V_0_vld_out))) & (tmp_fu_102_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        IN_V_dest_V_0_ack_out = 1'b1;
    end else begin
        IN_V_dest_V_0_ack_out = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_fu_102_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        OUT_data_V_blk_n = OUT_data_V_full_n;
    end else begin
        OUT_data_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((tmp_fu_102_p2 == 1'd1) & (1'b0 == OUT_data_V_full_n)) | ((tmp_fu_102_p2 == 1'd1) & (1'b0 == IN_V_data_V_0_vld_out))) & (tmp_fu_102_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        OUT_data_V_write = 1'b1;
    end else begin
        OUT_data_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((~(((tmp_fu_102_p2 == 1'd1) & (1'b0 == OUT_data_V_full_n)) | ((tmp_fu_102_p2 == 1'd1) & (1'b0 == IN_V_data_V_0_vld_out))) & (tmp_fu_102_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((~(((tmp_fu_102_p2 == 1'd1) & (1'b0 == OUT_data_V_full_n)) | ((tmp_fu_102_p2 == 1'd1) & (1'b0 == IN_V_data_V_0_vld_out))) & (tmp_fu_102_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((start_full_n == 1'b0) & (start_once_reg == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if ((~(((tmp_fu_102_p2 == 1'd1) & (1'b0 == OUT_data_V_full_n)) | ((tmp_fu_102_p2 == 1'd1) & (1'b0 == IN_V_data_V_0_vld_out))) & (tmp_fu_102_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if ((~(((tmp_fu_102_p2 == 1'd1) & (1'b0 == OUT_data_V_full_n)) | ((tmp_fu_102_p2 == 1'd1) & (1'b0 == IN_V_data_V_0_vld_out))) & (tmp_fu_102_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign INPUT_STREAM_TREADY = IN_V_dest_V_0_state[1'd1];

assign IN_V_data_V_0_ack_in = IN_V_data_V_0_state[1'd1];

assign IN_V_data_V_0_load_A = (~IN_V_data_V_0_sel_wr & IN_V_data_V_0_state_cmp_full);

assign IN_V_data_V_0_load_B = (IN_V_data_V_0_state_cmp_full & IN_V_data_V_0_sel_wr);

assign IN_V_data_V_0_sel = IN_V_data_V_0_sel_rd;

assign IN_V_data_V_0_state_cmp_full = ((IN_V_data_V_0_state != 2'd1) ? 1'b1 : 1'b0);

assign IN_V_data_V_0_vld_in = INPUT_STREAM_TVALID;

assign IN_V_data_V_0_vld_out = IN_V_data_V_0_state[1'd0];

assign IN_V_dest_V_0_vld_in = INPUT_STREAM_TVALID;

assign OUT_data_V_din = IN_V_data_V_0_data_out;

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

always @ (*) begin
    ap_block_state1 = ((real_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state2 = (((tmp_fu_102_p2 == 1'd1) & (1'b0 == OUT_data_V_full_n)) | ((tmp_fu_102_p2 == 1'd1) & (1'b0 == IN_V_data_V_0_vld_out)));
end

assign ap_ready = internal_ap_ready;

assign i_1_fu_107_p2 = (i_reg_87 + 20'd1);

assign i_cast_fu_98_p1 = i_reg_87;

assign start_out = real_start;

assign tmp_fu_102_p2 = (($signed(i_cast_fu_98_p1) < $signed(OUT_size_read)) ? 1'b1 : 1'b0);

endmodule //strm2mat
