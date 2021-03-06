// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _mat2strm_HH_
#define _mat2strm_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct mat2strm : public sc_module {
    // Port declarations 20
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<21> > IN_size_read;
    sc_in< sc_lv<17> > IN_data_V_dout;
    sc_in< sc_logic > IN_data_V_empty_n;
    sc_out< sc_logic > IN_data_V_read;
    sc_out< sc_lv<24> > OUTPUT_STREAM_TDATA;
    sc_out< sc_logic > OUTPUT_STREAM_TVALID;
    sc_in< sc_logic > OUTPUT_STREAM_TREADY;
    sc_out< sc_lv<3> > OUTPUT_STREAM_TKEEP;
    sc_out< sc_lv<3> > OUTPUT_STREAM_TSTRB;
    sc_out< sc_lv<1> > OUTPUT_STREAM_TUSER;
    sc_out< sc_lv<1> > OUTPUT_STREAM_TLAST;
    sc_out< sc_lv<1> > OUTPUT_STREAM_TID;
    sc_out< sc_lv<1> > OUTPUT_STREAM_TDEST;


    // Module declarations
    mat2strm(sc_module_name name);
    SC_HAS_PROCESS(mat2strm);

    ~mat2strm();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<24> > OUT_V_data_V_1_data_out;
    sc_signal< sc_logic > OUT_V_data_V_1_vld_in;
    sc_signal< sc_logic > OUT_V_data_V_1_vld_out;
    sc_signal< sc_logic > OUT_V_data_V_1_ack_in;
    sc_signal< sc_logic > OUT_V_data_V_1_ack_out;
    sc_signal< sc_lv<24> > OUT_V_data_V_1_payload_A;
    sc_signal< sc_lv<24> > OUT_V_data_V_1_payload_B;
    sc_signal< sc_logic > OUT_V_data_V_1_sel_rd;
    sc_signal< sc_logic > OUT_V_data_V_1_sel_wr;
    sc_signal< sc_logic > OUT_V_data_V_1_sel;
    sc_signal< sc_logic > OUT_V_data_V_1_load_A;
    sc_signal< sc_logic > OUT_V_data_V_1_load_B;
    sc_signal< sc_lv<2> > OUT_V_data_V_1_state;
    sc_signal< sc_logic > OUT_V_data_V_1_state_cmp_full;
    sc_signal< sc_lv<3> > OUT_V_keep_V_1_data_out;
    sc_signal< sc_logic > OUT_V_keep_V_1_vld_in;
    sc_signal< sc_logic > OUT_V_keep_V_1_vld_out;
    sc_signal< sc_logic > OUT_V_keep_V_1_ack_in;
    sc_signal< sc_logic > OUT_V_keep_V_1_ack_out;
    sc_signal< sc_logic > OUT_V_keep_V_1_sel_rd;
    sc_signal< sc_logic > OUT_V_keep_V_1_sel;
    sc_signal< sc_lv<2> > OUT_V_keep_V_1_state;
    sc_signal< sc_lv<3> > OUT_V_strb_V_1_data_out;
    sc_signal< sc_logic > OUT_V_strb_V_1_vld_in;
    sc_signal< sc_logic > OUT_V_strb_V_1_vld_out;
    sc_signal< sc_logic > OUT_V_strb_V_1_ack_in;
    sc_signal< sc_logic > OUT_V_strb_V_1_ack_out;
    sc_signal< sc_logic > OUT_V_strb_V_1_sel_rd;
    sc_signal< sc_logic > OUT_V_strb_V_1_sel;
    sc_signal< sc_lv<2> > OUT_V_strb_V_1_state;
    sc_signal< sc_lv<1> > OUT_V_user_V_1_data_out;
    sc_signal< sc_logic > OUT_V_user_V_1_vld_in;
    sc_signal< sc_logic > OUT_V_user_V_1_vld_out;
    sc_signal< sc_logic > OUT_V_user_V_1_ack_in;
    sc_signal< sc_logic > OUT_V_user_V_1_ack_out;
    sc_signal< sc_logic > OUT_V_user_V_1_sel_rd;
    sc_signal< sc_logic > OUT_V_user_V_1_sel;
    sc_signal< sc_lv<2> > OUT_V_user_V_1_state;
    sc_signal< sc_lv<1> > OUT_V_last_V_1_data_out;
    sc_signal< sc_logic > OUT_V_last_V_1_vld_in;
    sc_signal< sc_logic > OUT_V_last_V_1_vld_out;
    sc_signal< sc_logic > OUT_V_last_V_1_ack_in;
    sc_signal< sc_logic > OUT_V_last_V_1_ack_out;
    sc_signal< sc_logic > OUT_V_last_V_1_sel_rd;
    sc_signal< sc_logic > OUT_V_last_V_1_sel;
    sc_signal< sc_lv<2> > OUT_V_last_V_1_state;
    sc_signal< sc_lv<1> > OUT_V_id_V_1_data_out;
    sc_signal< sc_logic > OUT_V_id_V_1_vld_in;
    sc_signal< sc_logic > OUT_V_id_V_1_vld_out;
    sc_signal< sc_logic > OUT_V_id_V_1_ack_in;
    sc_signal< sc_logic > OUT_V_id_V_1_ack_out;
    sc_signal< sc_logic > OUT_V_id_V_1_sel_rd;
    sc_signal< sc_logic > OUT_V_id_V_1_sel;
    sc_signal< sc_lv<2> > OUT_V_id_V_1_state;
    sc_signal< sc_lv<1> > OUT_V_dest_V_1_data_out;
    sc_signal< sc_logic > OUT_V_dest_V_1_vld_in;
    sc_signal< sc_logic > OUT_V_dest_V_1_vld_out;
    sc_signal< sc_logic > OUT_V_dest_V_1_ack_in;
    sc_signal< sc_logic > OUT_V_dest_V_1_ack_out;
    sc_signal< sc_logic > OUT_V_dest_V_1_sel_rd;
    sc_signal< sc_logic > OUT_V_dest_V_1_sel;
    sc_signal< sc_lv<2> > OUT_V_dest_V_1_state;
    sc_signal< sc_logic > IN_data_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > tmp_fu_118_p2;
    sc_signal< sc_logic > OUTPUT_STREAM_TDATA_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<20> > i_2_fu_123_p2;
    sc_signal< sc_lv<20> > i_2_reg_142;
    sc_signal< bool > ap_block_state2;
    sc_signal< bool > ap_block_state2_io;
    sc_signal< sc_lv<24> > tmp_data_V_fu_129_p1;
    sc_signal< sc_lv<20> > i_reg_103;
    sc_signal< sc_lv<21> > i_cast_fu_114_p1;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_state2;
    static const sc_lv<3> ap_ST_fsm_state3;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<20> ap_const_lv20_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<20> ap_const_lv20_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_IN_data_V_blk_n();
    void thread_IN_data_V_read();
    void thread_OUTPUT_STREAM_TDATA();
    void thread_OUTPUT_STREAM_TDATA_blk_n();
    void thread_OUTPUT_STREAM_TDEST();
    void thread_OUTPUT_STREAM_TID();
    void thread_OUTPUT_STREAM_TKEEP();
    void thread_OUTPUT_STREAM_TLAST();
    void thread_OUTPUT_STREAM_TSTRB();
    void thread_OUTPUT_STREAM_TUSER();
    void thread_OUTPUT_STREAM_TVALID();
    void thread_OUT_V_data_V_1_ack_in();
    void thread_OUT_V_data_V_1_ack_out();
    void thread_OUT_V_data_V_1_data_out();
    void thread_OUT_V_data_V_1_load_A();
    void thread_OUT_V_data_V_1_load_B();
    void thread_OUT_V_data_V_1_sel();
    void thread_OUT_V_data_V_1_state_cmp_full();
    void thread_OUT_V_data_V_1_vld_in();
    void thread_OUT_V_data_V_1_vld_out();
    void thread_OUT_V_dest_V_1_ack_in();
    void thread_OUT_V_dest_V_1_ack_out();
    void thread_OUT_V_dest_V_1_data_out();
    void thread_OUT_V_dest_V_1_sel();
    void thread_OUT_V_dest_V_1_vld_in();
    void thread_OUT_V_dest_V_1_vld_out();
    void thread_OUT_V_id_V_1_ack_in();
    void thread_OUT_V_id_V_1_ack_out();
    void thread_OUT_V_id_V_1_data_out();
    void thread_OUT_V_id_V_1_sel();
    void thread_OUT_V_id_V_1_vld_in();
    void thread_OUT_V_id_V_1_vld_out();
    void thread_OUT_V_keep_V_1_ack_in();
    void thread_OUT_V_keep_V_1_ack_out();
    void thread_OUT_V_keep_V_1_data_out();
    void thread_OUT_V_keep_V_1_sel();
    void thread_OUT_V_keep_V_1_vld_in();
    void thread_OUT_V_keep_V_1_vld_out();
    void thread_OUT_V_last_V_1_ack_in();
    void thread_OUT_V_last_V_1_ack_out();
    void thread_OUT_V_last_V_1_data_out();
    void thread_OUT_V_last_V_1_sel();
    void thread_OUT_V_last_V_1_vld_in();
    void thread_OUT_V_last_V_1_vld_out();
    void thread_OUT_V_strb_V_1_ack_in();
    void thread_OUT_V_strb_V_1_ack_out();
    void thread_OUT_V_strb_V_1_data_out();
    void thread_OUT_V_strb_V_1_sel();
    void thread_OUT_V_strb_V_1_vld_in();
    void thread_OUT_V_strb_V_1_vld_out();
    void thread_OUT_V_user_V_1_ack_in();
    void thread_OUT_V_user_V_1_ack_out();
    void thread_OUT_V_user_V_1_data_out();
    void thread_OUT_V_user_V_1_sel();
    void thread_OUT_V_user_V_1_vld_in();
    void thread_OUT_V_user_V_1_vld_out();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_block_state1();
    void thread_ap_block_state2();
    void thread_ap_block_state2_io();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_i_2_fu_123_p2();
    void thread_i_cast_fu_114_p1();
    void thread_tmp_data_V_fu_129_p1();
    void thread_tmp_fu_118_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
