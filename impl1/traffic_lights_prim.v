// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Fri Dec 06 03:43:45 2024
//
// Verilog Description of module traffic_lights
//

module traffic_lights (btn1, btn2, btn3, btn4, clk, red1, green1, 
            yellow1, red2, green2, yellow2, an0, an1, a_to_g0, 
            a_to_g1);   // c:/lab3/traffic_light.vhd(6[8:22])
    input btn1;   // c:/lab3/traffic_light.vhd(8[5:9])
    input btn2;   // c:/lab3/traffic_light.vhd(9[5:9])
    input btn3;   // c:/lab3/traffic_light.vhd(10[5:9])
    input btn4;   // c:/lab3/traffic_light.vhd(11[5:9])
    input clk;   // c:/lab3/traffic_light.vhd(12[5:8])
    output red1;   // c:/lab3/traffic_light.vhd(13[5:9])
    output green1;   // c:/lab3/traffic_light.vhd(14[5:11])
    output yellow1;   // c:/lab3/traffic_light.vhd(15[5:12])
    output red2;   // c:/lab3/traffic_light.vhd(16[5:9])
    output green2;   // c:/lab3/traffic_light.vhd(17[5:11])
    output yellow2;   // c:/lab3/traffic_light.vhd(18[5:12])
    output an0;   // c:/lab3/traffic_light.vhd(19[5:8])
    output an1;   // c:/lab3/traffic_light.vhd(20[5:8])
    output [6:0]a_to_g0;   // c:/lab3/traffic_light.vhd(21[5:12])
    output [6:0]a_to_g1;   // c:/lab3/traffic_light.vhd(22[5:12])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/lab3/traffic_light.vhd(12[5:8])
    wire all_time_7__N_25 /* synthesis is_clock=1, SET_AS_NETWORK=all_time_7__N_25 */ ;   // c:/lab3/traffic_light.vhd(30[22:30])
    
    wire GND_net, VCC_net, btn1_c, btn2_c, btn3_c, btn4_c, red1_c, 
        green1_c, red2_c, green2_c, an1_c, a_to_g0_c_6, a_to_g0_c_5, 
        a_to_g0_c_4, a_to_g0_c_3, a_to_g0_c_2, a_to_g0_c_1, a_to_g0_c_0, 
        a_to_g1_c_1;
    wire [7:0]time_cnt;   // c:/lab3/traffic_light.vhd(30[12:20])
    wire [7:0]all_time;   // c:/lab3/traffic_light.vhd(30[22:30])
    
    wire n1993;
    wire [7:0]countdown;   // c:/lab3/traffic_light.vhd(30[32:41])
    wire [2:0]cur_state;   // c:/lab3/traffic_light.vhd(31[12:21])
    wire [1:0]mode;   // c:/lab3/traffic_light.vhd(32[12:16])
    
    wire clk_1s, clk_half, n1992, n1989;
    wire [3:0]unit;   // c:/lab3/traffic_light.vhd(34[12:16])
    wire [22:0]\clk_1ss.cnt ;   // c:/lab3/traffic_light.vhd(42[18:21])
    
    wire n1985, clk_c_enable_13, n1998, n2342, n1991, n1997, clk_1s_N_209;
    wire [21:0]\clk_halfs.cnt_half ;   // c:/lab3/traffic_light.vhd(56[18:26])
    
    wire n13, n9, n1981, n1971, clk_half_N_210, n1975, n12, n2341, 
        n1573, n230, n2214, n1996, n45;
    wire [1:0]mode_1__N_166;
    
    wire n1979, n44, n43, n42, n41, n40, n39, n38, n1980, 
        n2312, n2208, n1988, n2206, n2204, all_time_7__N_26, n2202;
    wire [3:0]all_time_3__N_31;
    
    wire n1973, green1_N_205, green2_N_207, red2_N_206, all_time_3__N_39, 
        n14, n2200, n2198, n2311, n13_adj_1, n1987, n1974, n1995, 
        n1977, n1972, n2307, n2162, n1984, n1162, n2159, n1986, 
        n115, n114, n113, n112, n111, n110, n109, n108, n107, 
        n106, n105, n104, n103, n102, n101, n100, n99, n98, 
        n97, n96, n95, n94, n1994, n2306, n1990, n2304, n2340, 
        n13_adj_2, n1969, n1983, clk_c_enable_12, n2347, n152, n2337, 
        n12_adj_3, n200, n1778, n2351, n190, n2247, n128, n2350, 
        n1719, n2348, n1766, n2346, n98_adj_4, n99_adj_5, n100_adj_6, 
        n101_adj_7, n102_adj_8, n103_adj_9, n104_adj_10, n105_adj_11, 
        n106_adj_12, n107_adj_13, n108_adj_14, n109_adj_15, n110_adj_16, 
        n111_adj_17, n112_adj_18, n113_adj_19, n114_adj_20, n115_adj_21, 
        n116, n117, n118, n119, n120, n2345, n14_adj_22, n2325, 
        n2324, n2322, n2321, n1970, n2333, n1976, n2334, n1978, 
        n2303, n1982, n2344, n162, n2343, n1423, n1424;
    
    VHI i2 (.Z(VCC_net));
    LUT4 i1544_4_lut (.A(\clk_halfs.cnt_half [15]), .B(\clk_halfs.cnt_half [7]), 
         .C(\clk_halfs.cnt_half [18]), .D(\clk_halfs.cnt_half [3]), .Z(n2204)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1544_4_lut.init = 16'h8000;
    FD1S3AX clk_half_249 (.D(clk_half_N_210), .CK(clk_c), .Q(clk_half));   // c:/lab3/traffic_light.vhd(58[9] 65[16])
    defparam clk_half_249.GSR = "DISABLED";
    FD1P3IX mode__i0 (.D(mode_1__N_166[0]), .SP(clk_c_enable_13), .CD(n162), 
            .CK(clk_c), .Q(mode[0]));   // c:/lab3/traffic_light.vhd(95[9] 121[16])
    defparam mode__i0.GSR = "DISABLED";
    CCU2D \clk_halfs.cnt_half_542_add_4_13  (.A0(\clk_halfs.cnt_half [11]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(\clk_halfs.cnt_half [12]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1982), .COUT(n1983), 
          .S0(n104), .S1(n103));   // c:/lab3/traffic_light.vhd(63[29:37])
    defparam \clk_halfs.cnt_half_542_add_4_13 .INIT0 = 16'hfaaa;
    defparam \clk_halfs.cnt_half_542_add_4_13 .INIT1 = 16'hfaaa;
    defparam \clk_halfs.cnt_half_542_add_4_13 .INJECT1_0 = "NO";
    defparam \clk_halfs.cnt_half_542_add_4_13 .INJECT1_1 = "NO";
    CCU2D \clk_halfs.cnt_half_542_add_4_7  (.A0(\clk_halfs.cnt_half [5]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(\clk_halfs.cnt_half [6]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1979), .COUT(n1980), 
          .S0(n110), .S1(n109));   // c:/lab3/traffic_light.vhd(63[29:37])
    defparam \clk_halfs.cnt_half_542_add_4_7 .INIT0 = 16'hfaaa;
    defparam \clk_halfs.cnt_half_542_add_4_7 .INIT1 = 16'hfaaa;
    defparam \clk_halfs.cnt_half_542_add_4_7 .INJECT1_0 = "NO";
    defparam \clk_halfs.cnt_half_542_add_4_7 .INJECT1_1 = "NO";
    FD1S3IX \clk_1ss.cnt_541__i0  (.D(n120), .CK(clk_c), .CD(n1424), .Q(\clk_1ss.cnt [0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(49[24:27])
    defparam \clk_1ss.cnt_541__i0 .GSR = "DISABLED";
    FD1P3IX time_cnt_543__i5 (.D(n40), .SP(clk_c_enable_12), .CD(n1719), 
            .CK(clk_c), .Q(time_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(118[33:41])
    defparam time_cnt_543__i5.GSR = "DISABLED";
    CCU2D time_cnt_543_add_4_9 (.A0(time_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1972), .S0(n38));   // c:/lab3/traffic_light.vhd(118[33:41])
    defparam time_cnt_543_add_4_9.INIT0 = 16'hfaaa;
    defparam time_cnt_543_add_4_9.INIT1 = 16'h0000;
    defparam time_cnt_543_add_4_9.INJECT1_0 = "NO";
    defparam time_cnt_543_add_4_9.INJECT1_1 = "NO";
    FD1S1A all_time_3__I_0_i1 (.D(all_time_3__N_39), .CK(all_time_7__N_25), 
           .Q(all_time[0]));   // c:/lab3/traffic_light.vhd(162[5] 273[17])
    defparam all_time_3__I_0_i1.GSR = "DISABLED";
    FD1P3IX time_cnt_543__i6 (.D(n39), .SP(clk_c_enable_12), .CD(n1719), 
            .CK(clk_c), .Q(time_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(118[33:41])
    defparam time_cnt_543__i6.GSR = "DISABLED";
    CCU2D \clk_halfs.cnt_half_542_add_4_21  (.A0(\clk_halfs.cnt_half [19]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(\clk_halfs.cnt_half [20]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1986), .COUT(n1987), 
          .S0(n96), .S1(n95));   // c:/lab3/traffic_light.vhd(63[29:37])
    defparam \clk_halfs.cnt_half_542_add_4_21 .INIT0 = 16'hfaaa;
    defparam \clk_halfs.cnt_half_542_add_4_21 .INIT1 = 16'hfaaa;
    defparam \clk_halfs.cnt_half_542_add_4_21 .INJECT1_0 = "NO";
    defparam \clk_halfs.cnt_half_542_add_4_21 .INJECT1_1 = "NO";
    CCU2D \clk_halfs.cnt_half_542_add_4_5  (.A0(\clk_halfs.cnt_half [3]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(\clk_halfs.cnt_half [4]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1978), .COUT(n1979), 
          .S0(n112), .S1(n111));   // c:/lab3/traffic_light.vhd(63[29:37])
    defparam \clk_halfs.cnt_half_542_add_4_5 .INIT0 = 16'hfaaa;
    defparam \clk_halfs.cnt_half_542_add_4_5 .INIT1 = 16'hfaaa;
    defparam \clk_halfs.cnt_half_542_add_4_5 .INJECT1_0 = "NO";
    defparam \clk_halfs.cnt_half_542_add_4_5 .INJECT1_1 = "NO";
    CCU2D \clk_halfs.cnt_half_542_add_4_3  (.A0(\clk_halfs.cnt_half [1]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(\clk_halfs.cnt_half [2]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1977), .COUT(n1978), 
          .S0(n114), .S1(n113));   // c:/lab3/traffic_light.vhd(63[29:37])
    defparam \clk_halfs.cnt_half_542_add_4_3 .INIT0 = 16'hfaaa;
    defparam \clk_halfs.cnt_half_542_add_4_3 .INIT1 = 16'hfaaa;
    defparam \clk_halfs.cnt_half_542_add_4_3 .INJECT1_0 = "NO";
    defparam \clk_halfs.cnt_half_542_add_4_3 .INJECT1_1 = "NO";
    OB yellow1_pad (.I(VCC_net), .O(yellow1));   // c:/lab3/traffic_light.vhd(15[5:12])
    FD1S1A green1_I_0 (.D(green1_N_205), .CK(all_time_7__N_25), .Q(green1_c));   // c:/lab3/traffic_light.vhd(162[5] 273[17])
    defparam green1_I_0.GSR = "DISABLED";
    FD1P3IX time_cnt_543__i7 (.D(n38), .SP(clk_c_enable_12), .CD(n1719), 
            .CK(clk_c), .Q(time_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(118[33:41])
    defparam time_cnt_543__i7.GSR = "DISABLED";
    CCU2D sub_305_add_2_7 (.A0(time_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1975), .COUT(n1976), .S0(countdown[5]), 
          .S1(countdown[6]));   // c:/lab3/traffic_light.vhd(68[18:26])
    defparam sub_305_add_2_7.INIT0 = 16'hf555;
    defparam sub_305_add_2_7.INIT1 = 16'hf555;
    defparam sub_305_add_2_7.INJECT1_0 = "NO";
    defparam sub_305_add_2_7.INJECT1_1 = "NO";
    FD1S1I red1_I_0 (.D(n1573), .CK(all_time_7__N_25), .CD(cur_state[1]), 
           .Q(red1_c));   // c:/lab3/traffic_light.vhd(162[5] 273[17])
    defparam red1_I_0.GSR = "DISABLED";
    FD1S1A green2_I_0 (.D(green2_N_207), .CK(all_time_7__N_25), .Q(green2_c));   // c:/lab3/traffic_light.vhd(162[5] 273[17])
    defparam green2_I_0.GSR = "DISABLED";
    FD1S1A red2_I_0 (.D(red2_N_206), .CK(all_time_7__N_25), .Q(red2_c));   // c:/lab3/traffic_light.vhd(162[5] 273[17])
    defparam red2_I_0.GSR = "DISABLED";
    CCU2D \clk_1ss.cnt_541_add_4_5  (.A0(\clk_1ss.cnt [3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\clk_1ss.cnt [4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1989), .COUT(n1990), .S0(n117), 
          .S1(n116));   // c:/lab3/traffic_light.vhd(49[24:27])
    defparam \clk_1ss.cnt_541_add_4_5 .INIT0 = 16'hfaaa;
    defparam \clk_1ss.cnt_541_add_4_5 .INIT1 = 16'hfaaa;
    defparam \clk_1ss.cnt_541_add_4_5 .INJECT1_0 = "NO";
    defparam \clk_1ss.cnt_541_add_4_5 .INJECT1_1 = "NO";
    CCU2D \clk_1ss.cnt_541_add_4_3  (.A0(\clk_1ss.cnt [1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\clk_1ss.cnt [2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1988), .COUT(n1989), .S0(n119), 
          .S1(n118));   // c:/lab3/traffic_light.vhd(49[24:27])
    defparam \clk_1ss.cnt_541_add_4_3 .INIT0 = 16'hfaaa;
    defparam \clk_1ss.cnt_541_add_4_3 .INIT1 = 16'hfaaa;
    defparam \clk_1ss.cnt_541_add_4_3 .INJECT1_0 = "NO";
    defparam \clk_1ss.cnt_541_add_4_3 .INJECT1_1 = "NO";
    CCU2D \clk_halfs.cnt_half_542_add_4_1  (.A0(GND_net), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\clk_halfs.cnt_half [0]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .COUT(n1977), .S1(n115));   // c:/lab3/traffic_light.vhd(63[29:37])
    defparam \clk_halfs.cnt_half_542_add_4_1 .INIT0 = 16'hF000;
    defparam \clk_halfs.cnt_half_542_add_4_1 .INIT1 = 16'h0555;
    defparam \clk_halfs.cnt_half_542_add_4_1 .INJECT1_0 = "NO";
    defparam \clk_halfs.cnt_half_542_add_4_1 .INJECT1_1 = "NO";
    CCU2D sub_305_add_2_3 (.A0(time_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(all_time[2]), .B1(time_cnt[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1973), .COUT(n1974), .S0(countdown[1]), 
          .S1(countdown[2]));   // c:/lab3/traffic_light.vhd(68[18:26])
    defparam sub_305_add_2_3.INIT0 = 16'h0aaa;
    defparam sub_305_add_2_3.INIT1 = 16'h5999;
    defparam sub_305_add_2_3.INJECT1_0 = "NO";
    defparam sub_305_add_2_3.INJECT1_1 = "NO";
    CCU2D time_cnt_543_add_4_7 (.A0(time_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1971), .COUT(n1972), .S0(n40), .S1(n39));   // c:/lab3/traffic_light.vhd(118[33:41])
    defparam time_cnt_543_add_4_7.INIT0 = 16'hfaaa;
    defparam time_cnt_543_add_4_7.INIT1 = 16'hfaaa;
    defparam time_cnt_543_add_4_7.INJECT1_0 = "NO";
    defparam time_cnt_543_add_4_7.INJECT1_1 = "NO";
    CCU2D \clk_halfs.cnt_half_542_add_4_19  (.A0(\clk_halfs.cnt_half [17]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(\clk_halfs.cnt_half [18]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1985), .COUT(n1986), 
          .S0(n98), .S1(n97));   // c:/lab3/traffic_light.vhd(63[29:37])
    defparam \clk_halfs.cnt_half_542_add_4_19 .INIT0 = 16'hfaaa;
    defparam \clk_halfs.cnt_half_542_add_4_19 .INIT1 = 16'hfaaa;
    defparam \clk_halfs.cnt_half_542_add_4_19 .INJECT1_0 = "NO";
    defparam \clk_halfs.cnt_half_542_add_4_19 .INJECT1_1 = "NO";
    CCU2D sub_305_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(all_time[0]), .B1(time_cnt[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n1973), .S1(unit[0]));   // c:/lab3/traffic_light.vhd(68[18:26])
    defparam sub_305_add_2_1.INIT0 = 16'h0000;
    defparam sub_305_add_2_1.INIT1 = 16'h5999;
    defparam sub_305_add_2_1.INJECT1_0 = "NO";
    defparam sub_305_add_2_1.INJECT1_1 = "NO";
    FD1S1I all_time_3__I_0_i3 (.D(all_time_3__N_31[2]), .CK(all_time_7__N_25), 
           .CD(all_time_7__N_26), .Q(all_time[2]));   // c:/lab3/traffic_light.vhd(162[5] 273[17])
    defparam all_time_3__I_0_i3.GSR = "DISABLED";
    OB green1_pad (.I(green1_c), .O(green1));   // c:/lab3/traffic_light.vhd(14[5:11])
    PFUMX i1635 (.BLUT(n2325), .ALUT(n2324), .C0(countdown[3]), .Z(a_to_g0_c_6));
    FD1P3IX time_cnt_543__i1 (.D(n44), .SP(clk_c_enable_12), .CD(n1719), 
            .CK(clk_c), .Q(time_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(118[33:41])
    defparam time_cnt_543__i1.GSR = "DISABLED";
    FD1P3IX time_cnt_543__i2 (.D(n43), .SP(clk_c_enable_12), .CD(n1719), 
            .CK(clk_c), .Q(time_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(118[33:41])
    defparam time_cnt_543__i2.GSR = "DISABLED";
    FD1S1J all_time_3__I_0_i4 (.D(n2343), .CK(all_time_7__N_25), .PD(cur_state[2]), 
           .Q(all_time[3]));   // c:/lab3/traffic_light.vhd(162[5] 273[17])
    defparam all_time_3__I_0_i4.GSR = "DISABLED";
    FD1P3IX cur_state__i0 (.D(n2159), .SP(clk_c_enable_12), .CD(n1162), 
            .CK(clk_c), .Q(cur_state[0]));   // c:/lab3/traffic_light.vhd(95[9] 121[16])
    defparam cur_state__i0.GSR = "DISABLED";
    FD1P3IX time_cnt_543__i3 (.D(n42), .SP(clk_c_enable_12), .CD(n1719), 
            .CK(clk_c), .Q(time_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(118[33:41])
    defparam time_cnt_543__i3.GSR = "DISABLED";
    OB red2_pad (.I(red2_c), .O(red2));   // c:/lab3/traffic_light.vhd(16[5:9])
    CCU2D \clk_halfs.cnt_half_542_add_4_11  (.A0(\clk_halfs.cnt_half [9]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(\clk_halfs.cnt_half [10]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1981), .COUT(n1982), 
          .S0(n106), .S1(n105));   // c:/lab3/traffic_light.vhd(63[29:37])
    defparam \clk_halfs.cnt_half_542_add_4_11 .INIT0 = 16'hfaaa;
    defparam \clk_halfs.cnt_half_542_add_4_11 .INIT1 = 16'hfaaa;
    defparam \clk_halfs.cnt_half_542_add_4_11 .INJECT1_0 = "NO";
    defparam \clk_halfs.cnt_half_542_add_4_11 .INJECT1_1 = "NO";
    OB red1_pad (.I(red1_c), .O(red1));   // c:/lab3/traffic_light.vhd(13[5:9])
    FD1P3IX time_cnt_543__i4 (.D(n41), .SP(clk_c_enable_12), .CD(n1719), 
            .CK(clk_c), .Q(time_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(118[33:41])
    defparam time_cnt_543__i4.GSR = "DISABLED";
    GSR GSR_INST (.GSR(n2344));
    CCU2D \clk_1ss.cnt_541_add_4_1  (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\clk_1ss.cnt [0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1988), .S1(n120));   // c:/lab3/traffic_light.vhd(49[24:27])
    defparam \clk_1ss.cnt_541_add_4_1 .INIT0 = 16'hF000;
    defparam \clk_1ss.cnt_541_add_4_1 .INIT1 = 16'h0555;
    defparam \clk_1ss.cnt_541_add_4_1 .INJECT1_0 = "NO";
    defparam \clk_1ss.cnt_541_add_4_1 .INJECT1_1 = "NO";
    CCU2D \clk_1ss.cnt_541_add_4_17  (.A0(\clk_1ss.cnt [15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\clk_1ss.cnt [16]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1995), .COUT(n1996), .S0(n105_adj_11), 
          .S1(n104_adj_10));   // c:/lab3/traffic_light.vhd(49[24:27])
    defparam \clk_1ss.cnt_541_add_4_17 .INIT0 = 16'hfaaa;
    defparam \clk_1ss.cnt_541_add_4_17 .INIT1 = 16'hfaaa;
    defparam \clk_1ss.cnt_541_add_4_17 .INJECT1_0 = "NO";
    defparam \clk_1ss.cnt_541_add_4_17 .INJECT1_1 = "NO";
    CCU2D \clk_1ss.cnt_541_add_4_15  (.A0(\clk_1ss.cnt [13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\clk_1ss.cnt [14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1994), .COUT(n1995), .S0(n107_adj_13), 
          .S1(n106_adj_12));   // c:/lab3/traffic_light.vhd(49[24:27])
    defparam \clk_1ss.cnt_541_add_4_15 .INIT0 = 16'hfaaa;
    defparam \clk_1ss.cnt_541_add_4_15 .INIT1 = 16'hfaaa;
    defparam \clk_1ss.cnt_541_add_4_15 .INJECT1_0 = "NO";
    defparam \clk_1ss.cnt_541_add_4_15 .INJECT1_1 = "NO";
    FD1S3IX \clk_halfs.cnt_half_542__i0  (.D(n115), .CK(clk_c), .CD(n1423), 
            .Q(\clk_halfs.cnt_half [0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(63[29:37])
    defparam \clk_halfs.cnt_half_542__i0 .GSR = "DISABLED";
    CCU2D \clk_halfs.cnt_half_542_add_4_17  (.A0(\clk_halfs.cnt_half [15]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(\clk_halfs.cnt_half [16]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1984), .COUT(n1985), 
          .S0(n100), .S1(n99));   // c:/lab3/traffic_light.vhd(63[29:37])
    defparam \clk_halfs.cnt_half_542_add_4_17 .INIT0 = 16'hfaaa;
    defparam \clk_halfs.cnt_half_542_add_4_17 .INIT1 = 16'hfaaa;
    defparam \clk_halfs.cnt_half_542_add_4_17 .INJECT1_0 = "NO";
    defparam \clk_halfs.cnt_half_542_add_4_17 .INJECT1_1 = "NO";
    PFUMX i1633 (.BLUT(n2322), .ALUT(n2321), .C0(unit[0]), .Z(a_to_g0_c_3));
    CCU2D \clk_halfs.cnt_half_542_add_4_23  (.A0(\clk_halfs.cnt_half [21]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1987), .S0(n94));   // c:/lab3/traffic_light.vhd(63[29:37])
    defparam \clk_halfs.cnt_half_542_add_4_23 .INIT0 = 16'hfaaa;
    defparam \clk_halfs.cnt_half_542_add_4_23 .INIT1 = 16'h0000;
    defparam \clk_halfs.cnt_half_542_add_4_23 .INJECT1_0 = "NO";
    defparam \clk_halfs.cnt_half_542_add_4_23 .INJECT1_1 = "NO";
    CCU2D \clk_1ss.cnt_541_add_4_13  (.A0(\clk_1ss.cnt [11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\clk_1ss.cnt [12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1993), .COUT(n1994), .S0(n109_adj_15), 
          .S1(n108_adj_14));   // c:/lab3/traffic_light.vhd(49[24:27])
    defparam \clk_1ss.cnt_541_add_4_13 .INIT0 = 16'hfaaa;
    defparam \clk_1ss.cnt_541_add_4_13 .INIT1 = 16'hfaaa;
    defparam \clk_1ss.cnt_541_add_4_13 .INJECT1_0 = "NO";
    defparam \clk_1ss.cnt_541_add_4_13 .INJECT1_1 = "NO";
    FD1P3IX time_cnt_543__i0 (.D(n45), .SP(clk_c_enable_12), .CD(n1719), 
            .CK(clk_c), .Q(time_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(118[33:41])
    defparam time_cnt_543__i0.GSR = "DISABLED";
    LUT4 i1_4_lut (.A(mode[0]), .B(btn3_c), .C(btn4_c), .D(mode[1]), 
         .Z(n14_adj_22)) /* synthesis lut_function=(!(A (B)+!A !((C (D))+!B))) */ ;   // c:/lab3/traffic_light.vhd(32[12:16])
    defparam i1_4_lut.init = 16'h7333;
    CCU2D \clk_1ss.cnt_541_add_4_23  (.A0(\clk_1ss.cnt [21]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\clk_1ss.cnt [22]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1998), .S0(n99_adj_5), .S1(n98_adj_4));   // c:/lab3/traffic_light.vhd(49[24:27])
    defparam \clk_1ss.cnt_541_add_4_23 .INIT0 = 16'hfaaa;
    defparam \clk_1ss.cnt_541_add_4_23 .INIT1 = 16'hfaaa;
    defparam \clk_1ss.cnt_541_add_4_23 .INJECT1_0 = "NO";
    defparam \clk_1ss.cnt_541_add_4_23 .INJECT1_1 = "NO";
    LUT4 countdown_2__bdd_4_lut (.A(countdown[4]), .B(unit[0]), .C(countdown[3]), 
         .D(countdown[1]), .Z(n2304)) /* synthesis lut_function=((B ((D)+!C)+!B (D))+!A) */ ;
    defparam countdown_2__bdd_4_lut.init = 16'hff5d;
    LUT4 i1149_4_lut (.A(n13_adj_1), .B(n1778), .C(cur_state[1]), .D(n14), 
         .Z(n230)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/lab3/traffic_light.vhd(31[12:21])
    defparam i1149_4_lut.init = 16'hcac0;
    FD1S3AX clk_1s_247 (.D(clk_1s_N_209), .CK(clk_c), .Q(clk_1s));   // c:/lab3/traffic_light.vhd(44[9] 51[16])
    defparam clk_1s_247.GSR = "DISABLED";
    LUT4 i5_4_lut (.A(unit[0]), .B(countdown[3]), .C(countdown[2]), .D(cur_state[0]), 
         .Z(n13_adj_1)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i5_4_lut.init = 16'h0200;
    FD1S3IX \clk_1ss.cnt_541__i22  (.D(n98_adj_4), .CK(clk_c), .CD(n1424), 
            .Q(\clk_1ss.cnt [22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(49[24:27])
    defparam \clk_1ss.cnt_541__i22 .GSR = "DISABLED";
    LUT4 i6_4_lut (.A(n9), .B(countdown[4]), .C(countdown[1]), .D(n1766), 
         .Z(n14)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i6_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_3_lut_4_lut_then_4_lut (.A(countdown[4]), .B(unit[0]), 
         .C(countdown[3]), .D(countdown[1]), .Z(n2351)) /* synthesis lut_function=(A (B+(C (D)+!C !(D)))+!A (B+((D)+!C))) */ ;
    defparam i1_2_lut_3_lut_4_lut_then_4_lut.init = 16'hfdcf;
    LUT4 i1_2_lut_3_lut_4_lut_else_4_lut (.A(countdown[4]), .B(unit[0]), 
         .C(countdown[3]), .D(countdown[1]), .Z(n2350)) /* synthesis lut_function=(A ((D)+!C)+!A (B+(C+!(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_else_4_lut.init = 16'hfe5f;
    LUT4 unit_0__bdd_4_lut (.A(unit[0]), .B(countdown[2]), .C(countdown[3]), 
         .D(countdown[4]), .Z(n2306)) /* synthesis lut_function=(A (B (C)+!B !(C+!(D)))+!A (B+(C+(D)))) */ ;
    defparam unit_0__bdd_4_lut.init = 16'hd7d4;
    LUT4 i1_2_lut (.A(btn2_c), .B(btn3_c), .Z(mode_1__N_166[1])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/lab3/traffic_light.vhd(9[5:9])
    defparam i1_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_adj_1 (.A(cur_state[2]), .B(cur_state[1]), .Z(n190)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/lab3/traffic_light.vhd(95[9] 121[16])
    defparam i1_2_lut_adj_1.init = 16'h2222;
    LUT4 i1609_2_lut_3_lut_3_lut_4_lut (.A(n2346), .B(n2345), .C(clk_1s), 
         .D(n1424), .Z(clk_c_enable_13)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (C+!(D)))) */ ;   // c:/lab3/traffic_light.vhd(34[12:16])
    defparam i1609_2_lut_3_lut_3_lut_4_lut.init = 16'h0700;
    LUT4 cur_state_1__bdd_4_lut_1659 (.A(cur_state[1]), .B(cur_state[0]), 
         .C(clk_half), .D(cur_state[2]), .Z(red2_N_206)) /* synthesis lut_function=(!(A (B+(D))+!A (B+!(C (D))))) */ ;
    defparam cur_state_1__bdd_4_lut_1659.init = 16'h1022;
    LUT4 unit_0__bdd_3_lut (.A(unit[0]), .B(countdown[2]), .C(countdown[3]), 
         .Z(n2307)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B (C)))) */ ;
    defparam unit_0__bdd_3_lut.init = 16'h3d3d;
    LUT4 i1596_4_lut (.A(n2247), .B(n2198), .C(n2202), .D(n2200), .Z(n1424)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/lab3/traffic_light.vhd(45[16:29])
    defparam i1596_4_lut.init = 16'h8000;
    LUT4 i1595_4_lut (.A(n13), .B(\clk_1ss.cnt [14]), .C(n12), .D(\clk_1ss.cnt [12]), 
         .Z(n2247)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/lab3/traffic_light.vhd(45[16:29])
    defparam i1595_4_lut.init = 16'h0001;
    CCU2D \clk_1ss.cnt_541_add_4_11  (.A0(\clk_1ss.cnt [9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\clk_1ss.cnt [10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1992), .COUT(n1993), .S0(n111_adj_17), 
          .S1(n110_adj_16));   // c:/lab3/traffic_light.vhd(49[24:27])
    defparam \clk_1ss.cnt_541_add_4_11 .INIT0 = 16'hfaaa;
    defparam \clk_1ss.cnt_541_add_4_11 .INIT1 = 16'hfaaa;
    defparam \clk_1ss.cnt_541_add_4_11 .INJECT1_0 = "NO";
    defparam \clk_1ss.cnt_541_add_4_11 .INJECT1_1 = "NO";
    FD1S3IX \clk_1ss.cnt_541__i21  (.D(n99_adj_5), .CK(clk_c), .CD(n1424), 
            .Q(\clk_1ss.cnt [21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(49[24:27])
    defparam \clk_1ss.cnt_541__i21 .GSR = "DISABLED";
    FD1S3IX \clk_1ss.cnt_541__i20  (.D(n100_adj_6), .CK(clk_c), .CD(n1424), 
            .Q(\clk_1ss.cnt [20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(49[24:27])
    defparam \clk_1ss.cnt_541__i20 .GSR = "DISABLED";
    FD1S3IX \clk_1ss.cnt_541__i19  (.D(n101_adj_7), .CK(clk_c), .CD(n1424), 
            .Q(\clk_1ss.cnt [19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(49[24:27])
    defparam \clk_1ss.cnt_541__i19 .GSR = "DISABLED";
    FD1S3IX \clk_1ss.cnt_541__i18  (.D(n102_adj_8), .CK(clk_c), .CD(n1424), 
            .Q(\clk_1ss.cnt [18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(49[24:27])
    defparam \clk_1ss.cnt_541__i18 .GSR = "DISABLED";
    FD1S3IX \clk_1ss.cnt_541__i17  (.D(n103_adj_9), .CK(clk_c), .CD(n1424), 
            .Q(\clk_1ss.cnt [17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(49[24:27])
    defparam \clk_1ss.cnt_541__i17 .GSR = "DISABLED";
    FD1S3IX \clk_1ss.cnt_541__i16  (.D(n104_adj_10), .CK(clk_c), .CD(n1424), 
            .Q(\clk_1ss.cnt [16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(49[24:27])
    defparam \clk_1ss.cnt_541__i16 .GSR = "DISABLED";
    FD1S3IX \clk_1ss.cnt_541__i15  (.D(n105_adj_11), .CK(clk_c), .CD(n1424), 
            .Q(\clk_1ss.cnt [15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(49[24:27])
    defparam \clk_1ss.cnt_541__i15 .GSR = "DISABLED";
    FD1S3IX \clk_1ss.cnt_541__i14  (.D(n106_adj_12), .CK(clk_c), .CD(n1424), 
            .Q(\clk_1ss.cnt [14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(49[24:27])
    defparam \clk_1ss.cnt_541__i14 .GSR = "DISABLED";
    FD1S3IX \clk_1ss.cnt_541__i13  (.D(n107_adj_13), .CK(clk_c), .CD(n1424), 
            .Q(\clk_1ss.cnt [13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(49[24:27])
    defparam \clk_1ss.cnt_541__i13 .GSR = "DISABLED";
    FD1S3IX \clk_1ss.cnt_541__i12  (.D(n108_adj_14), .CK(clk_c), .CD(n1424), 
            .Q(\clk_1ss.cnt [12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(49[24:27])
    defparam \clk_1ss.cnt_541__i12 .GSR = "DISABLED";
    FD1S3IX \clk_1ss.cnt_541__i11  (.D(n109_adj_15), .CK(clk_c), .CD(n1424), 
            .Q(\clk_1ss.cnt [11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(49[24:27])
    defparam \clk_1ss.cnt_541__i11 .GSR = "DISABLED";
    FD1S3IX \clk_1ss.cnt_541__i10  (.D(n110_adj_16), .CK(clk_c), .CD(n1424), 
            .Q(\clk_1ss.cnt [10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(49[24:27])
    defparam \clk_1ss.cnt_541__i10 .GSR = "DISABLED";
    FD1S3IX \clk_1ss.cnt_541__i9  (.D(n111_adj_17), .CK(clk_c), .CD(n1424), 
            .Q(\clk_1ss.cnt [9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(49[24:27])
    defparam \clk_1ss.cnt_541__i9 .GSR = "DISABLED";
    FD1S3IX \clk_1ss.cnt_541__i8  (.D(n112_adj_18), .CK(clk_c), .CD(n1424), 
            .Q(\clk_1ss.cnt [8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(49[24:27])
    defparam \clk_1ss.cnt_541__i8 .GSR = "DISABLED";
    FD1S3IX \clk_1ss.cnt_541__i7  (.D(n113_adj_19), .CK(clk_c), .CD(n1424), 
            .Q(\clk_1ss.cnt [7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(49[24:27])
    defparam \clk_1ss.cnt_541__i7 .GSR = "DISABLED";
    FD1S3IX \clk_1ss.cnt_541__i6  (.D(n114_adj_20), .CK(clk_c), .CD(n1424), 
            .Q(\clk_1ss.cnt [6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(49[24:27])
    defparam \clk_1ss.cnt_541__i6 .GSR = "DISABLED";
    FD1S3IX \clk_1ss.cnt_541__i5  (.D(n115_adj_21), .CK(clk_c), .CD(n1424), 
            .Q(\clk_1ss.cnt [5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(49[24:27])
    defparam \clk_1ss.cnt_541__i5 .GSR = "DISABLED";
    FD1S3IX \clk_1ss.cnt_541__i4  (.D(n116), .CK(clk_c), .CD(n1424), .Q(\clk_1ss.cnt [4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(49[24:27])
    defparam \clk_1ss.cnt_541__i4 .GSR = "DISABLED";
    FD1S3IX \clk_1ss.cnt_541__i3  (.D(n117), .CK(clk_c), .CD(n1424), .Q(\clk_1ss.cnt [3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(49[24:27])
    defparam \clk_1ss.cnt_541__i3 .GSR = "DISABLED";
    FD1S3IX \clk_1ss.cnt_541__i2  (.D(n118), .CK(clk_c), .CD(n1424), .Q(\clk_1ss.cnt [2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(49[24:27])
    defparam \clk_1ss.cnt_541__i2 .GSR = "DISABLED";
    FD1S3IX \clk_1ss.cnt_541__i1  (.D(n119), .CK(clk_c), .CD(n1424), .Q(\clk_1ss.cnt [1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(49[24:27])
    defparam \clk_1ss.cnt_541__i1 .GSR = "DISABLED";
    FD1S3IX \clk_halfs.cnt_half_542__i21  (.D(n94), .CK(clk_c), .CD(n1423), 
            .Q(\clk_halfs.cnt_half [21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(63[29:37])
    defparam \clk_halfs.cnt_half_542__i21 .GSR = "DISABLED";
    LUT4 i1538_4_lut (.A(\clk_1ss.cnt [2]), .B(\clk_1ss.cnt [17]), .C(\clk_1ss.cnt [11]), 
         .D(n2162), .Z(n2198)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1538_4_lut.init = 16'h8000;
    PFUMX i1627 (.BLUT(n2312), .ALUT(n2311), .C0(countdown[3]), .Z(a_to_g0_c_0));
    CCU2D time_cnt_543_add_4_3 (.A0(time_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1969), .COUT(n1970), .S0(n44), .S1(n43));   // c:/lab3/traffic_light.vhd(118[33:41])
    defparam time_cnt_543_add_4_3.INIT0 = 16'hfaaa;
    defparam time_cnt_543_add_4_3.INIT1 = 16'hfaaa;
    defparam time_cnt_543_add_4_3.INJECT1_0 = "NO";
    defparam time_cnt_543_add_4_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut_4_lut (.A(n9), .B(n2337), .C(countdown[2]), .D(n2340), 
         .Z(n200)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // c:/lab3/traffic_light.vhd(68[18:26])
    defparam i1_2_lut_4_lut.init = 16'hfe00;
    PFUMX i1148 (.BLUT(n1766), .ALUT(n128), .C0(unit[0]), .Z(n1778));
    LUT4 i1546_4_lut (.A(\clk_halfs.cnt_half [14]), .B(\clk_halfs.cnt_half [1]), 
         .C(\clk_halfs.cnt_half [16]), .D(\clk_halfs.cnt_half [5]), .Z(n2206)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1546_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_adj_2 (.A(clk_1s), .B(n1424), .Z(clk_1s_N_209)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_2.init = 16'h6666;
    LUT4 i1_2_lut_rep_24 (.A(countdown[1]), .B(countdown[4]), .Z(n2337)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lab3/traffic_light.vhd(68[18:26])
    defparam i1_2_lut_rep_24.init = 16'heeee;
    LUT4 i1_4_lut_4_lut (.A(cur_state[2]), .B(n152), .C(n2341), .D(n200), 
         .Z(n128)) /* synthesis lut_function=(!(A+(B (C)+!B !(D)))) */ ;   // c:/lab3/traffic_light.vhd(225[13] 231[22])
    defparam i1_4_lut_4_lut.init = 16'h1504;
    LUT4 i1104_1_lut_rep_30 (.A(cur_state[0]), .Z(n2343)) /* synthesis lut_function=(!(A)) */ ;   // c:/lab3/traffic_light.vhd(95[9] 121[16])
    defparam i1104_1_lut_rep_30.init = 16'h5555;
    CCU2D time_cnt_543_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1969), .S1(n45));   // c:/lab3/traffic_light.vhd(118[33:41])
    defparam time_cnt_543_add_4_1.INIT0 = 16'hF000;
    defparam time_cnt_543_add_4_1.INIT1 = 16'h0555;
    defparam time_cnt_543_add_4_1.INJECT1_0 = "NO";
    defparam time_cnt_543_add_4_1.INJECT1_1 = "NO";
    LUT4 i1542_4_lut (.A(\clk_1ss.cnt [3]), .B(\clk_1ss.cnt [10]), .C(\clk_1ss.cnt [8]), 
         .D(\clk_1ss.cnt [20]), .Z(n2202)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1542_4_lut.init = 16'h8000;
    CCU2D sub_305_add_2_5 (.A0(all_time[3]), .B0(time_cnt[3]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1974), .COUT(n1975), .S0(countdown[3]), 
          .S1(countdown[4]));   // c:/lab3/traffic_light.vhd(68[18:26])
    defparam sub_305_add_2_5.INIT0 = 16'h5999;
    defparam sub_305_add_2_5.INIT1 = 16'hf555;
    defparam sub_305_add_2_5.INJECT1_0 = "NO";
    defparam sub_305_add_2_5.INJECT1_1 = "NO";
    FD1S3IX \clk_halfs.cnt_half_542__i20  (.D(n95), .CK(clk_c), .CD(n1423), 
            .Q(\clk_halfs.cnt_half [20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(63[29:37])
    defparam \clk_halfs.cnt_half_542__i20 .GSR = "DISABLED";
    FD1S3IX \clk_halfs.cnt_half_542__i19  (.D(n96), .CK(clk_c), .CD(n1423), 
            .Q(\clk_halfs.cnt_half [19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(63[29:37])
    defparam \clk_halfs.cnt_half_542__i19 .GSR = "DISABLED";
    FD1S3IX \clk_halfs.cnt_half_542__i18  (.D(n97), .CK(clk_c), .CD(n1423), 
            .Q(\clk_halfs.cnt_half [18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(63[29:37])
    defparam \clk_halfs.cnt_half_542__i18 .GSR = "DISABLED";
    FD1S3IX \clk_halfs.cnt_half_542__i17  (.D(n98), .CK(clk_c), .CD(n1423), 
            .Q(\clk_halfs.cnt_half [17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(63[29:37])
    defparam \clk_halfs.cnt_half_542__i17 .GSR = "DISABLED";
    FD1S3IX \clk_halfs.cnt_half_542__i16  (.D(n99), .CK(clk_c), .CD(n1423), 
            .Q(\clk_halfs.cnt_half [16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(63[29:37])
    defparam \clk_halfs.cnt_half_542__i16 .GSR = "DISABLED";
    FD1S3IX \clk_halfs.cnt_half_542__i15  (.D(n100), .CK(clk_c), .CD(n1423), 
            .Q(\clk_halfs.cnt_half [15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(63[29:37])
    defparam \clk_halfs.cnt_half_542__i15 .GSR = "DISABLED";
    FD1S3IX \clk_halfs.cnt_half_542__i14  (.D(n101), .CK(clk_c), .CD(n1423), 
            .Q(\clk_halfs.cnt_half [14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(63[29:37])
    defparam \clk_halfs.cnt_half_542__i14 .GSR = "DISABLED";
    FD1S3IX \clk_halfs.cnt_half_542__i13  (.D(n102), .CK(clk_c), .CD(n1423), 
            .Q(\clk_halfs.cnt_half [13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(63[29:37])
    defparam \clk_halfs.cnt_half_542__i13 .GSR = "DISABLED";
    FD1S3IX \clk_halfs.cnt_half_542__i12  (.D(n103), .CK(clk_c), .CD(n1423), 
            .Q(\clk_halfs.cnt_half [12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(63[29:37])
    defparam \clk_halfs.cnt_half_542__i12 .GSR = "DISABLED";
    FD1S3IX \clk_halfs.cnt_half_542__i11  (.D(n104), .CK(clk_c), .CD(n1423), 
            .Q(\clk_halfs.cnt_half [11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(63[29:37])
    defparam \clk_halfs.cnt_half_542__i11 .GSR = "DISABLED";
    FD1S3IX \clk_halfs.cnt_half_542__i10  (.D(n105), .CK(clk_c), .CD(n1423), 
            .Q(\clk_halfs.cnt_half [10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(63[29:37])
    defparam \clk_halfs.cnt_half_542__i10 .GSR = "DISABLED";
    FD1S3IX \clk_halfs.cnt_half_542__i9  (.D(n106), .CK(clk_c), .CD(n1423), 
            .Q(\clk_halfs.cnt_half [9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(63[29:37])
    defparam \clk_halfs.cnt_half_542__i9 .GSR = "DISABLED";
    FD1S3IX \clk_halfs.cnt_half_542__i8  (.D(n107), .CK(clk_c), .CD(n1423), 
            .Q(\clk_halfs.cnt_half [8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(63[29:37])
    defparam \clk_halfs.cnt_half_542__i8 .GSR = "DISABLED";
    FD1S3IX \clk_halfs.cnt_half_542__i7  (.D(n108), .CK(clk_c), .CD(n1423), 
            .Q(\clk_halfs.cnt_half [7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(63[29:37])
    defparam \clk_halfs.cnt_half_542__i7 .GSR = "DISABLED";
    FD1S3IX \clk_halfs.cnt_half_542__i6  (.D(n109), .CK(clk_c), .CD(n1423), 
            .Q(\clk_halfs.cnt_half [6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(63[29:37])
    defparam \clk_halfs.cnt_half_542__i6 .GSR = "DISABLED";
    FD1S3IX \clk_halfs.cnt_half_542__i5  (.D(n110), .CK(clk_c), .CD(n1423), 
            .Q(\clk_halfs.cnt_half [5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(63[29:37])
    defparam \clk_halfs.cnt_half_542__i5 .GSR = "DISABLED";
    FD1S3IX \clk_halfs.cnt_half_542__i4  (.D(n111), .CK(clk_c), .CD(n1423), 
            .Q(\clk_halfs.cnt_half [4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(63[29:37])
    defparam \clk_halfs.cnt_half_542__i4 .GSR = "DISABLED";
    FD1S3IX \clk_halfs.cnt_half_542__i3  (.D(n112), .CK(clk_c), .CD(n1423), 
            .Q(\clk_halfs.cnt_half [3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(63[29:37])
    defparam \clk_halfs.cnt_half_542__i3 .GSR = "DISABLED";
    FD1S3IX \clk_halfs.cnt_half_542__i2  (.D(n113), .CK(clk_c), .CD(n1423), 
            .Q(\clk_halfs.cnt_half [2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(63[29:37])
    defparam \clk_halfs.cnt_half_542__i2 .GSR = "DISABLED";
    FD1S3IX \clk_halfs.cnt_half_542__i1  (.D(n114), .CK(clk_c), .CD(n1423), 
            .Q(\clk_halfs.cnt_half [1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/lab3/traffic_light.vhd(63[29:37])
    defparam \clk_halfs.cnt_half_542__i1 .GSR = "DISABLED";
    FD1P3IX cur_state__i2 (.D(n14_adj_22), .SP(clk_c_enable_12), .CD(n1162), 
            .CK(clk_c), .Q(cur_state[2]));   // c:/lab3/traffic_light.vhd(95[9] 121[16])
    defparam cur_state__i2.GSR = "DISABLED";
    CCU2D \clk_1ss.cnt_541_add_4_21  (.A0(\clk_1ss.cnt [19]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\clk_1ss.cnt [20]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1997), .COUT(n1998), .S0(n101_adj_7), 
          .S1(n100_adj_6));   // c:/lab3/traffic_light.vhd(49[24:27])
    defparam \clk_1ss.cnt_541_add_4_21 .INIT0 = 16'hfaaa;
    defparam \clk_1ss.cnt_541_add_4_21 .INIT1 = 16'hfaaa;
    defparam \clk_1ss.cnt_541_add_4_21 .INJECT1_0 = "NO";
    defparam \clk_1ss.cnt_541_add_4_21 .INJECT1_1 = "NO";
    LUT4 i1_2_lut_2_lut (.A(cur_state[0]), .B(countdown[3]), .Z(n152)) /* synthesis lut_function=((B)+!A) */ ;   // c:/lab3/traffic_light.vhd(95[9] 121[16])
    defparam i1_2_lut_2_lut.init = 16'hdddd;
    CCU2D \clk_1ss.cnt_541_add_4_9  (.A0(\clk_1ss.cnt [7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\clk_1ss.cnt [8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1991), .COUT(n1992), .S0(n113_adj_19), 
          .S1(n112_adj_18));   // c:/lab3/traffic_light.vhd(49[24:27])
    defparam \clk_1ss.cnt_541_add_4_9 .INIT0 = 16'hfaaa;
    defparam \clk_1ss.cnt_541_add_4_9 .INIT1 = 16'hfaaa;
    defparam \clk_1ss.cnt_541_add_4_9 .INJECT1_0 = "NO";
    defparam \clk_1ss.cnt_541_add_4_9 .INJECT1_1 = "NO";
    LUT4 i1540_4_lut (.A(\clk_1ss.cnt [6]), .B(\clk_1ss.cnt [0]), .C(\clk_1ss.cnt [5]), 
         .D(\clk_1ss.cnt [1]), .Z(n2200)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1540_4_lut.init = 16'h8000;
    CCU2D \clk_halfs.cnt_half_542_add_4_9  (.A0(\clk_halfs.cnt_half [7]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(\clk_halfs.cnt_half [8]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1980), .COUT(n1981), 
          .S0(n108), .S1(n107));   // c:/lab3/traffic_light.vhd(63[29:37])
    defparam \clk_halfs.cnt_half_542_add_4_9 .INIT0 = 16'hfaaa;
    defparam \clk_halfs.cnt_half_542_add_4_9 .INIT1 = 16'hfaaa;
    defparam \clk_halfs.cnt_half_542_add_4_9 .INJECT1_0 = "NO";
    defparam \clk_halfs.cnt_half_542_add_4_9 .INJECT1_1 = "NO";
    LUT4 i5_4_lut_adj_3 (.A(\clk_1ss.cnt [13]), .B(\clk_1ss.cnt [7]), .C(\clk_1ss.cnt [21]), 
         .D(\clk_1ss.cnt [9]), .Z(n13)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lab3/traffic_light.vhd(45[16:29])
    defparam i5_4_lut_adj_3.init = 16'hfffe;
    CCU2D \clk_halfs.cnt_half_542_add_4_15  (.A0(\clk_halfs.cnt_half [13]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(\clk_halfs.cnt_half [14]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1983), .COUT(n1984), 
          .S0(n102), .S1(n101));   // c:/lab3/traffic_light.vhd(63[29:37])
    defparam \clk_halfs.cnt_half_542_add_4_15 .INIT0 = 16'hfaaa;
    defparam \clk_halfs.cnt_half_542_add_4_15 .INIT1 = 16'hfaaa;
    defparam \clk_halfs.cnt_half_542_add_4_15 .INJECT1_0 = "NO";
    defparam \clk_halfs.cnt_half_542_add_4_15 .INJECT1_1 = "NO";
    CCU2D \clk_1ss.cnt_541_add_4_7  (.A0(\clk_1ss.cnt [5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\clk_1ss.cnt [6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1990), .COUT(n1991), .S0(n115_adj_21), 
          .S1(n114_adj_20));   // c:/lab3/traffic_light.vhd(49[24:27])
    defparam \clk_1ss.cnt_541_add_4_7 .INIT0 = 16'hfaaa;
    defparam \clk_1ss.cnt_541_add_4_7 .INIT1 = 16'hfaaa;
    defparam \clk_1ss.cnt_541_add_4_7 .INJECT1_0 = "NO";
    defparam \clk_1ss.cnt_541_add_4_7 .INJECT1_1 = "NO";
    FD1P3IX cur_state__i1 (.D(n230), .SP(clk_c_enable_12), .CD(n1162), 
            .CK(clk_c), .Q(cur_state[1]));   // c:/lab3/traffic_light.vhd(95[9] 121[16])
    defparam cur_state__i1.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_31 (.A(mode[1]), .B(mode[0]), .Z(n2344)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_31.init = 16'h8888;
    LUT4 i77_1_lut_2_lut (.A(mode[1]), .B(mode[0]), .Z(all_time_7__N_25)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i77_1_lut_2_lut.init = 16'h7777;
    LUT4 i1575_2_lut_3_lut (.A(cur_state[2]), .B(cur_state[0]), .C(cur_state[1]), 
         .Z(all_time_3__N_31[2])) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i1575_2_lut_3_lut.init = 16'h0101;
    LUT4 i4_4_lut (.A(\clk_1ss.cnt [18]), .B(\clk_1ss.cnt [15]), .C(\clk_1ss.cnt [19]), 
         .D(\clk_1ss.cnt [4]), .Z(n12)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // c:/lab3/traffic_light.vhd(45[16:29])
    defparam i4_4_lut.init = 16'hbfff;
    PFUMX i1625 (.BLUT(n2307), .ALUT(n2306), .C0(countdown[1]), .Z(a_to_g0_c_1));
    LUT4 i1502_2_lut (.A(\clk_1ss.cnt [22]), .B(\clk_1ss.cnt [16]), .Z(n2162)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1502_2_lut.init = 16'h8888;
    LUT4 i1603_3_lut_3_lut_4_lut_4_lut (.A(countdown[2]), .B(countdown[4]), 
         .C(countdown[3]), .D(countdown[1]), .Z(a_to_g1_c_1)) /* synthesis lut_function=(!(A (B+(C))+!A (B+(C (D))))) */ ;
    defparam i1603_3_lut_3_lut_4_lut_4_lut.init = 16'h0313;
    LUT4 i1_4_lut_4_lut_else_4_lut (.A(countdown[3]), .B(countdown[1]), 
         .C(unit[0]), .D(countdown[2]), .Z(n2347)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C))+!A (B (C)+!B (C+(D))))) */ ;
    defparam i1_4_lut_4_lut_else_4_lut.init = 16'h060f;
    LUT4 i1_3_lut_3_lut_4_lut (.A(cur_state[0]), .B(clk_half), .C(cur_state[2]), 
         .D(cur_state[1]), .Z(green1_N_205)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C (D)+!C !(D))+!B (C+!(D))))) */ ;   // c:/lab3/traffic_light.vhd(95[9] 121[16])
    defparam i1_3_lut_3_lut_4_lut.init = 16'h0f40;
    FD1P3IX mode__i1 (.D(mode_1__N_166[1]), .SP(clk_c_enable_13), .CD(n162), 
            .CK(clk_c), .Q(mode[1]));   // c:/lab3/traffic_light.vhd(95[9] 121[16])
    defparam mode__i1.GSR = "DISABLED";
    LUT4 i1_3_lut_4_lut (.A(cur_state[0]), .B(clk_half), .C(cur_state[2]), 
         .D(cur_state[1]), .Z(green2_N_207)) /* synthesis lut_function=(!(A (C+(D))+!A (B (D)+!B (C+(D))))) */ ;   // c:/lab3/traffic_light.vhd(95[9] 121[16])
    defparam i1_3_lut_4_lut.init = 16'h004f;
    LUT4 i1_2_lut_rep_32 (.A(btn2_c), .B(btn1_c), .Z(n2345)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_32.init = 16'h8888;
    VLO i1 (.Z(GND_net));
    CCU2D \clk_1ss.cnt_541_add_4_19  (.A0(\clk_1ss.cnt [17]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\clk_1ss.cnt [18]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1996), .COUT(n1997), .S0(n103_adj_9), 
          .S1(n102_adj_8));   // c:/lab3/traffic_light.vhd(49[24:27])
    defparam \clk_1ss.cnt_541_add_4_19 .INIT0 = 16'hfaaa;
    defparam \clk_1ss.cnt_541_add_4_19 .INIT1 = 16'hfaaa;
    defparam \clk_1ss.cnt_541_add_4_19 .INJECT1_0 = "NO";
    defparam \clk_1ss.cnt_541_add_4_19 .INJECT1_1 = "NO";
    LUT4 i2_3_lut_rep_21_4_lut (.A(countdown[1]), .B(countdown[4]), .C(countdown[2]), 
         .D(n9), .Z(n2334)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lab3/traffic_light.vhd(68[18:26])
    defparam i2_3_lut_rep_21_4_lut.init = 16'hfffe;
    CCU2D sub_305_add_2_9 (.A0(time_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1976), .S0(countdown[7]));   // c:/lab3/traffic_light.vhd(68[18:26])
    defparam sub_305_add_2_9.INIT0 = 16'hf555;
    defparam sub_305_add_2_9.INIT1 = 16'h0000;
    defparam sub_305_add_2_9.INJECT1_0 = "NO";
    defparam sub_305_add_2_9.INJECT1_1 = "NO";
    FD1S1I an0_I_0 (.D(n190), .CK(all_time_7__N_25), .CD(cur_state[0]), 
           .Q(an1_c));   // c:/lab3/traffic_light.vhd(162[5] 273[17])
    defparam an0_I_0.GSR = "DISABLED";
    CCU2D time_cnt_543_add_4_5 (.A0(time_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1970), .COUT(n1971), .S0(n42), .S1(n41));   // c:/lab3/traffic_light.vhd(118[33:41])
    defparam time_cnt_543_add_4_5.INIT0 = 16'hfaaa;
    defparam time_cnt_543_add_4_5.INIT1 = 16'hfaaa;
    defparam time_cnt_543_add_4_5.INJECT1_0 = "NO";
    defparam time_cnt_543_add_4_5.INJECT1_1 = "NO";
    LUT4 i1_4_lut_4_lut_then_4_lut (.A(countdown[3]), .B(countdown[1]), 
         .C(unit[0]), .D(countdown[2]), .Z(n2348)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C (D)))+!A !((D)+!C))) */ ;
    defparam i1_4_lut_4_lut_then_4_lut.init = 16'h572f;
    OB green2_pad (.I(green2_c), .O(green2));   // c:/lab3/traffic_light.vhd(17[5:11])
    OB yellow2_pad (.I(VCC_net), .O(yellow2));   // c:/lab3/traffic_light.vhd(18[5:12])
    OB an0_pad (.I(an1_c), .O(an0));   // c:/lab3/traffic_light.vhd(19[5:8])
    OB an1_pad (.I(an1_c), .O(an1));   // c:/lab3/traffic_light.vhd(20[5:8])
    OB a_to_g0_pad_6 (.I(a_to_g0_c_6), .O(a_to_g0[6]));   // c:/lab3/traffic_light.vhd(21[5:12])
    OB a_to_g0_pad_5 (.I(a_to_g0_c_5), .O(a_to_g0[5]));   // c:/lab3/traffic_light.vhd(21[5:12])
    OB a_to_g0_pad_4 (.I(a_to_g0_c_4), .O(a_to_g0[4]));   // c:/lab3/traffic_light.vhd(21[5:12])
    OB a_to_g0_pad_3 (.I(a_to_g0_c_3), .O(a_to_g0[3]));   // c:/lab3/traffic_light.vhd(21[5:12])
    OB a_to_g0_pad_2 (.I(a_to_g0_c_2), .O(a_to_g0[2]));   // c:/lab3/traffic_light.vhd(21[5:12])
    OB a_to_g0_pad_1 (.I(a_to_g0_c_1), .O(a_to_g0[1]));   // c:/lab3/traffic_light.vhd(21[5:12])
    OB a_to_g0_pad_0 (.I(a_to_g0_c_0), .O(a_to_g0[0]));   // c:/lab3/traffic_light.vhd(21[5:12])
    OB a_to_g1_pad_6 (.I(a_to_g1_c_1), .O(a_to_g1[6]));   // c:/lab3/traffic_light.vhd(22[5:12])
    OB a_to_g1_pad_5 (.I(VCC_net), .O(a_to_g1[5]));   // c:/lab3/traffic_light.vhd(22[5:12])
    OB a_to_g1_pad_4 (.I(VCC_net), .O(a_to_g1[4]));   // c:/lab3/traffic_light.vhd(22[5:12])
    OB a_to_g1_pad_3 (.I(a_to_g1_c_1), .O(a_to_g1[3]));   // c:/lab3/traffic_light.vhd(22[5:12])
    OB a_to_g1_pad_2 (.I(a_to_g1_c_1), .O(a_to_g1[2]));   // c:/lab3/traffic_light.vhd(22[5:12])
    OB a_to_g1_pad_1 (.I(a_to_g1_c_1), .O(a_to_g1[1]));   // c:/lab3/traffic_light.vhd(22[5:12])
    OB a_to_g1_pad_0 (.I(GND_net), .O(a_to_g1[0]));   // c:/lab3/traffic_light.vhd(22[5:12])
    IB btn1_pad (.I(btn1), .O(btn1_c));   // c:/lab3/traffic_light.vhd(8[5:9])
    IB btn2_pad (.I(btn2), .O(btn2_c));   // c:/lab3/traffic_light.vhd(9[5:9])
    IB btn3_pad (.I(btn3), .O(btn3_c));   // c:/lab3/traffic_light.vhd(10[5:9])
    IB btn4_pad (.I(btn4), .O(btn4_c));   // c:/lab3/traffic_light.vhd(11[5:9])
    IB clk_pad (.I(clk), .O(clk_c));   // c:/lab3/traffic_light.vhd(12[5:8])
    LUT4 i4_4_lut_adj_4 (.A(\clk_halfs.cnt_half [8]), .B(n2214), .C(n2206), 
         .D(n2204), .Z(n12_adj_3)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i4_4_lut_adj_4.init = 16'hbfff;
    LUT4 i1592_2_lut_rep_25 (.A(clk_1s), .B(n1424), .Z(clk_c_enable_12)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/lab3/traffic_light.vhd(95[9] 121[16])
    defparam i1592_2_lut_rep_25.init = 16'h4444;
    LUT4 i1607_2_lut_3_lut_3_lut_4_lut (.A(btn2_c), .B(btn1_c), .C(clk_1s), 
         .D(n1424), .Z(n1162)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (C+!(D)))) */ ;
    defparam i1607_2_lut_3_lut_3_lut_4_lut.init = 16'h0700;
    LUT4 i2_3_lut_rep_20 (.A(countdown[3]), .B(n2334), .C(unit[0]), .Z(n2333)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/lab3/traffic_light.vhd(68[18:26])
    defparam i2_3_lut_rep_20.init = 16'hefef;
    LUT4 i1611_2_lut_3_lut_4_lut (.A(clk_1s), .B(n1424), .C(n2342), .D(n2333), 
         .Z(n1719)) /* synthesis lut_function=(!(A+((C (D))+!B))) */ ;   // c:/lab3/traffic_light.vhd(95[9] 121[16])
    defparam i1611_2_lut_3_lut_4_lut.init = 16'h0444;
    LUT4 i1_2_lut_rep_33 (.A(btn3_c), .B(btn4_c), .Z(n2346)) /* synthesis lut_function=(A (B)) */ ;   // c:/lab3/traffic_light.vhd(34[12:16])
    defparam i1_2_lut_rep_33.init = 16'h8888;
    LUT4 countdown_1__bdd_4_lut_1631 (.A(countdown[1]), .B(countdown[2]), 
         .C(unit[0]), .D(countdown[4]), .Z(n2312)) /* synthesis lut_function=(A ((C (D)+!C !(D))+!B)+!A (B+!(C+!(D)))) */ ;
    defparam countdown_1__bdd_4_lut_1631.init = 16'he76e;
    LUT4 i1_2_lut_rep_27_3_lut (.A(btn3_c), .B(btn4_c), .C(mode[1]), .Z(n2340)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/lab3/traffic_light.vhd(34[12:16])
    defparam i1_2_lut_rep_27_3_lut.init = 16'h0808;
    LUT4 i1_2_lut_adj_5 (.A(clk_half), .B(n1423), .Z(clk_half_N_210)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_5.init = 16'h6666;
    LUT4 countdown_1__bdd_2_lut (.A(countdown[1]), .B(countdown[2]), .Z(n2311)) /* synthesis lut_function=((B)+!A) */ ;
    defparam countdown_1__bdd_2_lut.init = 16'hdddd;
    LUT4 i1_2_lut_rep_29_3_lut_4_lut (.A(btn3_c), .B(btn4_c), .C(btn1_c), 
         .D(btn2_c), .Z(n2342)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/lab3/traffic_light.vhd(34[12:16])
    defparam i1_2_lut_rep_29_3_lut_4_lut.init = 16'h8000;
    LUT4 i34_1_lut (.A(btn2_c), .Z(mode_1__N_166[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/lab3/traffic_light.vhd(100[19:29])
    defparam i34_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_rep_28_3_lut (.A(btn3_c), .B(btn4_c), .C(mode[1]), .Z(n2341)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // c:/lab3/traffic_light.vhd(34[12:16])
    defparam i1_2_lut_rep_28_3_lut.init = 16'hf7f7;
    LUT4 i1554_4_lut (.A(\clk_halfs.cnt_half [10]), .B(n2208), .C(\clk_halfs.cnt_half [21]), 
         .D(\clk_halfs.cnt_half [19]), .Z(n2214)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1554_4_lut.init = 16'h8000;
    LUT4 i47_2_lut_3_lut_4_lut (.A(btn3_c), .B(btn4_c), .C(cur_state[2]), 
         .D(mode[1]), .Z(n1766)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/lab3/traffic_light.vhd(34[12:16])
    defparam i47_2_lut_3_lut_4_lut.init = 16'h0008;
    LUT4 i2_3_lut (.A(countdown[5]), .B(countdown[6]), .C(countdown[7]), 
         .Z(n9)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut.init = 16'hfefe;
    LUT4 countdown_3__bdd_4_lut_1653 (.A(countdown[4]), .B(countdown[2]), 
         .C(countdown[1]), .D(unit[0]), .Z(n2325)) /* synthesis lut_function=(!(A (B (D))+!A !(B (C+(D))+!B (C+!(D))))) */ ;
    defparam countdown_3__bdd_4_lut_1653.init = 16'h76fb;
    LUT4 countdown_3__bdd_3_lut (.A(countdown[2]), .B(countdown[1]), .C(unit[0]), 
         .Z(n2324)) /* synthesis lut_function=(A ((C)+!B)+!A !(B (C))) */ ;
    defparam countdown_3__bdd_3_lut.init = 16'hb7b7;
    LUT4 i1_3_lut (.A(cur_state[2]), .B(cur_state[0]), .C(clk_half), .Z(n1573)) /* synthesis lut_function=(!(A (B+!(C))+!A (B))) */ ;   // c:/lab3/traffic_light.vhd(31[12:21])
    defparam i1_3_lut.init = 16'h3131;
    LUT4 i1_3_lut_4_lut_adj_6 (.A(cur_state[2]), .B(n2340), .C(cur_state[0]), 
         .D(n2333), .Z(n2159)) /* synthesis lut_function=(!(A+!(B (C (D)+!C !(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_6.init = 16'h4004;
    LUT4 countdown_1__bdd_3_lut (.A(countdown[1]), .B(countdown[3]), .C(countdown[2]), 
         .Z(n2322)) /* synthesis lut_function=(!(A (B (C))+!A !(B+!(C)))) */ ;
    defparam countdown_1__bdd_3_lut.init = 16'h6f6f;
    LUT4 i1605_2_lut_3_lut (.A(clk_1s), .B(n1424), .C(btn1_c), .Z(n162)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/lab3/traffic_light.vhd(95[9] 121[16])
    defparam i1605_2_lut_3_lut.init = 16'h0404;
    LUT4 countdown_1__bdd_4_lut (.A(countdown[1]), .B(countdown[3]), .C(countdown[2]), 
         .D(countdown[4]), .Z(n2321)) /* synthesis lut_function=(A (B (C)+!B ((D)+!C))+!A (B (C+!(D))+!B (C))) */ ;
    defparam countdown_1__bdd_4_lut.init = 16'hf2d6;
    LUT4 countdown_2__bdd_3_lut (.A(unit[0]), .B(countdown[3]), .C(countdown[1]), 
         .Z(n2303)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B+!(C)))) */ ;
    defparam countdown_2__bdd_3_lut.init = 16'h6d6d;
    LUT4 i969_4_lut (.A(cur_state[2]), .B(cur_state[1]), .C(cur_state[0]), 
         .D(all_time_7__N_26), .Z(all_time_3__N_39)) /* synthesis lut_function=(!(A+!(B (C)+!B (C+!(D))))) */ ;   // c:/lab3/traffic_light.vhd(167[9] 271[16])
    defparam i969_4_lut.init = 16'h5051;
    LUT4 i1581_2_lut (.A(mode[1]), .B(mode[0]), .Z(all_time_7__N_26)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/lab3/traffic_light.vhd(95[9] 121[16])
    defparam i1581_2_lut.init = 16'h1111;
    LUT4 i1585_4_lut (.A(n13_adj_2), .B(\clk_halfs.cnt_half [20]), .C(n12_adj_3), 
         .D(\clk_halfs.cnt_half [17]), .Z(n1423)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/lab3/traffic_light.vhd(59[16:34])
    defparam i1585_4_lut.init = 16'h0001;
    PFUMX i1641 (.BLUT(n2350), .ALUT(n2351), .C0(countdown[2]), .Z(a_to_g0_c_4));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    PFUMX i1639 (.BLUT(n2347), .ALUT(n2348), .C0(countdown[4]), .Z(a_to_g0_c_2));
    PFUMX i1621 (.BLUT(n2304), .ALUT(n2303), .C0(countdown[2]), .Z(a_to_g0_c_5));
    LUT4 i5_4_lut_adj_7 (.A(\clk_halfs.cnt_half [11]), .B(\clk_halfs.cnt_half [12]), 
         .C(\clk_halfs.cnt_half [6]), .D(\clk_halfs.cnt_half [13]), .Z(n13_adj_2)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut_adj_7.init = 16'hfffe;
    LUT4 i1548_4_lut (.A(\clk_halfs.cnt_half [2]), .B(\clk_halfs.cnt_half [4]), 
         .C(\clk_halfs.cnt_half [0]), .D(\clk_halfs.cnt_half [9]), .Z(n2208)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1548_4_lut.init = 16'h8000;
    TSALL TSALL_INST (.TSALL(GND_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

