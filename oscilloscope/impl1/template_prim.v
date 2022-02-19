// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.1.454.2
// Netlist written on Sat Feb 19 23:07:28 2022
//
// Verilog Description of module template
//

module template (clk, rst_n, led1, led2) /* synthesis syn_module_defined=1 */ ;   // /home/cody/Project/FPGA-ADC/oscilloscope/LED_Blink.v(1[8:16])
    input clk;   // /home/cody/Project/FPGA-ADC/oscilloscope/LED_Blink.v(2[7:10])
    input rst_n;   // /home/cody/Project/FPGA-ADC/oscilloscope/LED_Blink.v(3[7:12])
    output led1;   // /home/cody/Project/FPGA-ADC/oscilloscope/LED_Blink.v(4[8:12])
    output led2;   // /home/cody/Project/FPGA-ADC/oscilloscope/LED_Blink.v(5[8:12])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // /home/cody/Project/FPGA-ADC/oscilloscope/LED_Blink.v(2[7:10])
    
    wire GND_net, VCC_net, rst_n_c, led2_c;
    wire [23:0]cnt;   // /home/cody/Project/FPGA-ADC/oscilloscope/LED_Blink.v(10[12:15])
    
    wire cnt_23__N_51, n20, n14, n13, n215, n4, n20_adj_1, n4_adj_2, 
        n226, n225, n4_adj_3, n223, n234, n102, n103, n104, 
        n105, n106, n107, n108, n109, n110, n111, n112, n113, 
        n114, n115, n116, n117, n118, n119, n120, n121, n122, 
        n123, n124, n125, n210, n209, n208, n207, n206, n205, 
        n204, n203, n202, n201, n200, n199, n198;
    
    VHI i140 (.Z(VCC_net));
    LUT4 i57_3_lut (.A(cnt[7]), .B(cnt[9]), .C(cnt[8]), .Z(n20_adj_1)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i57_3_lut.init = 16'hecec;
    LUT4 i73_4_lut (.A(cnt[21]), .B(cnt[23]), .C(cnt[22]), .D(n4_adj_2), 
         .Z(cnt_23__N_51)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i73_4_lut.init = 16'hc8c0;
    FD1S3IX cnt_18__i23 (.D(n102), .CK(clk_c), .CD(cnt_23__N_51), .Q(cnt[23])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/cody/Project/FPGA-ADC/oscilloscope/LED_Blink.v(16[15:25])
    defparam cnt_18__i23.GSR = "ENABLED";
    LUT4 led1_I_0_1_lut_4_lut (.A(n210), .B(cnt[23]), .C(cnt[22]), .D(cnt[21]), 
         .Z(led2_c)) /* synthesis lut_function=(!(A (B+(C))+!A (B+(C (D))))) */ ;
    defparam led1_I_0_1_lut_4_lut.init = 16'h0313;
    LUT4 i1_4_lut (.A(cnt[11]), .B(cnt[12]), .C(cnt[10]), .D(n20_adj_1), 
         .Z(n4)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1_4_lut.init = 16'heccc;
    LUT4 i1_2_lut (.A(cnt[17]), .B(cnt[16]), .Z(n223)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_1 (.A(cnt[20]), .B(n223), .C(cnt[19]), .D(n4_adj_3), 
         .Z(n4_adj_2)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_1.init = 16'ha8a0;
    LUT4 i1_4_lut_adj_2 (.A(n226), .B(cnt[18]), .C(n215), .D(cnt[15]), 
         .Z(n4_adj_3)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_2.init = 16'hccc8;
    LUT4 i2_4_lut (.A(cnt[12]), .B(cnt[11]), .C(n20), .D(cnt[10]), .Z(n215)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i2_4_lut.init = 16'h8880;
    LUT4 i69_4_lut (.A(n13), .B(cnt[9]), .C(cnt[8]), .D(n14), .Z(n20)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i69_4_lut.init = 16'hc8c0;
    LUT4 i5_4_lut (.A(cnt[0]), .B(cnt[6]), .C(cnt[4]), .D(cnt[7]), .Z(n13)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5_4_lut.init = 16'h8000;
    LUT4 i6_4_lut (.A(cnt[2]), .B(cnt[5]), .C(cnt[3]), .D(cnt[1]), .Z(n14)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut.init = 16'h8000;
    LUT4 i2_4_lut_adj_3 (.A(cnt[20]), .B(cnt[19]), .C(n225), .D(cnt[18]), 
         .Z(n210)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i2_4_lut_adj_3.init = 16'h8880;
    LUT4 i1_2_lut_adj_4 (.A(cnt[14]), .B(cnt[13]), .Z(n226)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_4.init = 16'heeee;
    VLO i1 (.Z(GND_net));
    OB led2_pad (.I(led2_c), .O(led2));   // /home/cody/Project/FPGA-ADC/oscilloscope/LED_Blink.v(5[8:12])
    GSR GSR_INST (.GSR(rst_n_c));
    LUT4 i2_4_lut_adj_5 (.A(n223), .B(n226), .C(cnt[15]), .D(n4), .Z(n225)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut_adj_5.init = 16'ha080;
    TSALL TSALL_INST (.TSALL(GND_net));
    OB led1_pad (.I(n234), .O(led1));   // /home/cody/Project/FPGA-ADC/oscilloscope/LED_Blink.v(4[8:12])
    LUT4 i67_4_lut_rep_1 (.A(n210), .B(cnt[23]), .C(cnt[22]), .D(cnt[21]), 
         .Z(n234)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i67_4_lut_rep_1.init = 16'hfcec;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    CCU2D cnt_18_add_4_25 (.A0(cnt[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n209), 
          .S0(n102));   // /home/cody/Project/FPGA-ADC/oscilloscope/LED_Blink.v(16[15:25])
    defparam cnt_18_add_4_25.INIT0 = 16'hfaaa;
    defparam cnt_18_add_4_25.INIT1 = 16'h0000;
    defparam cnt_18_add_4_25.INJECT1_0 = "NO";
    defparam cnt_18_add_4_25.INJECT1_1 = "NO";
    CCU2D cnt_18_add_4_23 (.A0(cnt[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n208), 
          .COUT(n209), .S0(n104), .S1(n103));   // /home/cody/Project/FPGA-ADC/oscilloscope/LED_Blink.v(16[15:25])
    defparam cnt_18_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_18_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt_18_add_4_23.INJECT1_0 = "NO";
    defparam cnt_18_add_4_23.INJECT1_1 = "NO";
    CCU2D cnt_18_add_4_21 (.A0(cnt[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n207), 
          .COUT(n208), .S0(n106), .S1(n105));   // /home/cody/Project/FPGA-ADC/oscilloscope/LED_Blink.v(16[15:25])
    defparam cnt_18_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_18_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_18_add_4_21.INJECT1_0 = "NO";
    defparam cnt_18_add_4_21.INJECT1_1 = "NO";
    CCU2D cnt_18_add_4_19 (.A0(cnt[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n206), 
          .COUT(n207), .S0(n108), .S1(n107));   // /home/cody/Project/FPGA-ADC/oscilloscope/LED_Blink.v(16[15:25])
    defparam cnt_18_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_18_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_18_add_4_19.INJECT1_0 = "NO";
    defparam cnt_18_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_18_add_4_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n205), 
          .COUT(n206), .S0(n110), .S1(n109));   // /home/cody/Project/FPGA-ADC/oscilloscope/LED_Blink.v(16[15:25])
    defparam cnt_18_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_18_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_18_add_4_17.INJECT1_0 = "NO";
    defparam cnt_18_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_18_add_4_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n204), 
          .COUT(n205), .S0(n112), .S1(n111));   // /home/cody/Project/FPGA-ADC/oscilloscope/LED_Blink.v(16[15:25])
    defparam cnt_18_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_18_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_18_add_4_15.INJECT1_0 = "NO";
    defparam cnt_18_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_18_add_4_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n203), 
          .COUT(n204), .S0(n114), .S1(n113));   // /home/cody/Project/FPGA-ADC/oscilloscope/LED_Blink.v(16[15:25])
    defparam cnt_18_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_18_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_18_add_4_13.INJECT1_0 = "NO";
    defparam cnt_18_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_18_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n202), 
          .COUT(n203), .S0(n116), .S1(n115));   // /home/cody/Project/FPGA-ADC/oscilloscope/LED_Blink.v(16[15:25])
    defparam cnt_18_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_18_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_18_add_4_11.INJECT1_0 = "NO";
    defparam cnt_18_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_18_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n201), 
          .COUT(n202), .S0(n118), .S1(n117));   // /home/cody/Project/FPGA-ADC/oscilloscope/LED_Blink.v(16[15:25])
    defparam cnt_18_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_18_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_18_add_4_9.INJECT1_0 = "NO";
    defparam cnt_18_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_18_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n200), 
          .COUT(n201), .S0(n120), .S1(n119));   // /home/cody/Project/FPGA-ADC/oscilloscope/LED_Blink.v(16[15:25])
    defparam cnt_18_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_18_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_18_add_4_7.INJECT1_0 = "NO";
    defparam cnt_18_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_18_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n199), 
          .COUT(n200), .S0(n122), .S1(n121));   // /home/cody/Project/FPGA-ADC/oscilloscope/LED_Blink.v(16[15:25])
    defparam cnt_18_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_18_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_18_add_4_5.INJECT1_0 = "NO";
    defparam cnt_18_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_18_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n198), 
          .COUT(n199), .S0(n124), .S1(n123));   // /home/cody/Project/FPGA-ADC/oscilloscope/LED_Blink.v(16[15:25])
    defparam cnt_18_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_18_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_18_add_4_3.INJECT1_0 = "NO";
    defparam cnt_18_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_18_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n198), 
          .S1(n125));   // /home/cody/Project/FPGA-ADC/oscilloscope/LED_Blink.v(16[15:25])
    defparam cnt_18_add_4_1.INIT0 = 16'hF000;
    defparam cnt_18_add_4_1.INIT1 = 16'h0555;
    defparam cnt_18_add_4_1.INJECT1_0 = "NO";
    defparam cnt_18_add_4_1.INJECT1_1 = "NO";
    FD1S3IX cnt_18__i22 (.D(n103), .CK(clk_c), .CD(cnt_23__N_51), .Q(cnt[22])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/cody/Project/FPGA-ADC/oscilloscope/LED_Blink.v(16[15:25])
    defparam cnt_18__i22.GSR = "ENABLED";
    FD1S3IX cnt_18__i21 (.D(n104), .CK(clk_c), .CD(cnt_23__N_51), .Q(cnt[21])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/cody/Project/FPGA-ADC/oscilloscope/LED_Blink.v(16[15:25])
    defparam cnt_18__i21.GSR = "ENABLED";
    FD1S3IX cnt_18__i20 (.D(n105), .CK(clk_c), .CD(cnt_23__N_51), .Q(cnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/cody/Project/FPGA-ADC/oscilloscope/LED_Blink.v(16[15:25])
    defparam cnt_18__i20.GSR = "ENABLED";
    FD1S3IX cnt_18__i19 (.D(n106), .CK(clk_c), .CD(cnt_23__N_51), .Q(cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/cody/Project/FPGA-ADC/oscilloscope/LED_Blink.v(16[15:25])
    defparam cnt_18__i19.GSR = "ENABLED";
    FD1S3IX cnt_18__i18 (.D(n107), .CK(clk_c), .CD(cnt_23__N_51), .Q(cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/cody/Project/FPGA-ADC/oscilloscope/LED_Blink.v(16[15:25])
    defparam cnt_18__i18.GSR = "ENABLED";
    FD1S3IX cnt_18__i17 (.D(n108), .CK(clk_c), .CD(cnt_23__N_51), .Q(cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/cody/Project/FPGA-ADC/oscilloscope/LED_Blink.v(16[15:25])
    defparam cnt_18__i17.GSR = "ENABLED";
    FD1S3IX cnt_18__i16 (.D(n109), .CK(clk_c), .CD(cnt_23__N_51), .Q(cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/cody/Project/FPGA-ADC/oscilloscope/LED_Blink.v(16[15:25])
    defparam cnt_18__i16.GSR = "ENABLED";
    FD1S3IX cnt_18__i15 (.D(n110), .CK(clk_c), .CD(cnt_23__N_51), .Q(cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/cody/Project/FPGA-ADC/oscilloscope/LED_Blink.v(16[15:25])
    defparam cnt_18__i15.GSR = "ENABLED";
    FD1S3IX cnt_18__i14 (.D(n111), .CK(clk_c), .CD(cnt_23__N_51), .Q(cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/cody/Project/FPGA-ADC/oscilloscope/LED_Blink.v(16[15:25])
    defparam cnt_18__i14.GSR = "ENABLED";
    FD1S3IX cnt_18__i13 (.D(n112), .CK(clk_c), .CD(cnt_23__N_51), .Q(cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/cody/Project/FPGA-ADC/oscilloscope/LED_Blink.v(16[15:25])
    defparam cnt_18__i13.GSR = "ENABLED";
    FD1S3IX cnt_18__i12 (.D(n113), .CK(clk_c), .CD(cnt_23__N_51), .Q(cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/cody/Project/FPGA-ADC/oscilloscope/LED_Blink.v(16[15:25])
    defparam cnt_18__i12.GSR = "ENABLED";
    FD1S3IX cnt_18__i11 (.D(n114), .CK(clk_c), .CD(cnt_23__N_51), .Q(cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/cody/Project/FPGA-ADC/oscilloscope/LED_Blink.v(16[15:25])
    defparam cnt_18__i11.GSR = "ENABLED";
    FD1S3IX cnt_18__i10 (.D(n115), .CK(clk_c), .CD(cnt_23__N_51), .Q(cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/cody/Project/FPGA-ADC/oscilloscope/LED_Blink.v(16[15:25])
    defparam cnt_18__i10.GSR = "ENABLED";
    FD1S3IX cnt_18__i9 (.D(n116), .CK(clk_c), .CD(cnt_23__N_51), .Q(cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/cody/Project/FPGA-ADC/oscilloscope/LED_Blink.v(16[15:25])
    defparam cnt_18__i9.GSR = "ENABLED";
    FD1S3IX cnt_18__i8 (.D(n117), .CK(clk_c), .CD(cnt_23__N_51), .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/cody/Project/FPGA-ADC/oscilloscope/LED_Blink.v(16[15:25])
    defparam cnt_18__i8.GSR = "ENABLED";
    FD1S3IX cnt_18__i7 (.D(n118), .CK(clk_c), .CD(cnt_23__N_51), .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/cody/Project/FPGA-ADC/oscilloscope/LED_Blink.v(16[15:25])
    defparam cnt_18__i7.GSR = "ENABLED";
    FD1S3IX cnt_18__i6 (.D(n119), .CK(clk_c), .CD(cnt_23__N_51), .Q(cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/cody/Project/FPGA-ADC/oscilloscope/LED_Blink.v(16[15:25])
    defparam cnt_18__i6.GSR = "ENABLED";
    FD1S3IX cnt_18__i5 (.D(n120), .CK(clk_c), .CD(cnt_23__N_51), .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/cody/Project/FPGA-ADC/oscilloscope/LED_Blink.v(16[15:25])
    defparam cnt_18__i5.GSR = "ENABLED";
    FD1S3IX cnt_18__i4 (.D(n121), .CK(clk_c), .CD(cnt_23__N_51), .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/cody/Project/FPGA-ADC/oscilloscope/LED_Blink.v(16[15:25])
    defparam cnt_18__i4.GSR = "ENABLED";
    FD1S3IX cnt_18__i3 (.D(n122), .CK(clk_c), .CD(cnt_23__N_51), .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/cody/Project/FPGA-ADC/oscilloscope/LED_Blink.v(16[15:25])
    defparam cnt_18__i3.GSR = "ENABLED";
    FD1S3IX cnt_18__i2 (.D(n123), .CK(clk_c), .CD(cnt_23__N_51), .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/cody/Project/FPGA-ADC/oscilloscope/LED_Blink.v(16[15:25])
    defparam cnt_18__i2.GSR = "ENABLED";
    FD1S3IX cnt_18__i1 (.D(n124), .CK(clk_c), .CD(cnt_23__N_51), .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/cody/Project/FPGA-ADC/oscilloscope/LED_Blink.v(16[15:25])
    defparam cnt_18__i1.GSR = "ENABLED";
    FD1S3IX cnt_18__i0 (.D(n125), .CK(clk_c), .CD(cnt_23__N_51), .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/cody/Project/FPGA-ADC/oscilloscope/LED_Blink.v(16[15:25])
    defparam cnt_18__i0.GSR = "ENABLED";
    IB clk_pad (.I(clk), .O(clk_c));   // /home/cody/Project/FPGA-ADC/oscilloscope/LED_Blink.v(2[7:10])
    IB rst_n_pad (.I(rst_n), .O(rst_n_c));   // /home/cody/Project/FPGA-ADC/oscilloscope/LED_Blink.v(3[7:12])
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

