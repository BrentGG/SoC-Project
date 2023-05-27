// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Fri May 26 09:59:03 2023
// Host        : LAPTOP-ISJLH1PH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/boghe/Downloads/neopixel/SoC_FSM_ROM_Neopixel/RGBVivado.gen/sources_1/bd/design_1/ip/design_1_blk_mem_gen_0_0/design_1_blk_mem_gen_0_0_sim_netlist.v
// Design      : design_1_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_0_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module design_1_blk_mem_gen_0_0
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    web,
    addrb,
    dinb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [31:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [31:0]addra;
  wire [31:0]addrb;
  wire clka;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rsta_busy;
  wire rstb;
  wire rstb_busy;
  wire [3:0]wea;
  wire [3:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.7492 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  design_1_blk_mem_gen_0_0_blk_mem_gen_v8_4_5 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb[12:2],1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(rstb),
        .rstb_busy(rstb_busy),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RgPKnWr9n0dGgttm3akiFhAlfB96usOQYxnEmPhGyTGg1AbizYAjGPWLXBWl50n/d0IA71ci4aJB
wt6mtfyNADm3ZReK7D3mKu037BOgxryoEwwf1kiC6q/PllxsdAgEMfQrfHJ3E2AzSpdYjoxVYito
y0JW6CUDcWvWa4WV0EA=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M0l6KpOGH3jL8eRt3NCD7e2USYnkg5H9GAnE1PKmnjiouFN3Y8kjWA2PZDAQLm9UW+TsC1HeVlzO
WjNCHkjR/6ubCsIcWfpPZWdIuAenlsyq8Y9l6b8vMj8JSbDEOiFF/GHSbKsn22MJdDJKEhHFK6GV
s8gR2vywRFwG69gIRE4qGhVB+WIg8GJrDpDMYH6lCjMkTrjXuKDUcNlJN3NPLuhJ7tsditwf1pr5
moJRmGpJnip/rGm0g4o4A6ev4CtePjoao8C1wFtzHkERX9oenhh7cGjDMejU5IrLv8NxFnLj1FpB
9MuF1beTU20NI5oAn6zLiLiOtXjf0ghU3AN4DA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
hAsrUfp6Qgjm8yBjNYTEtQmVQmMxzL8TE/3oiQSxSI3+yEkXAbQCXkT9mo+LCdv+fGECOB0istHd
eLtbsiYbxjxNxYkXiUrRE5O+aSxynIray+uF9DJigTEUZu8JJXUbzxK4DDUu1Lm9tpGps4+Prz1m
0gkj13RT/Y/418s2VTw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BP/54Wm/GJmb1jy0bxWJJX4aiKyiWPVh4X3VL30BQrmX4PlEsNKzBJH3Qu8IIYERfnFP0ifAgboa
vypMQ5Ed0BrMePGkWIgT6I8hxJCMFpHdkSK7m1giSKyZzFfTOrVqoNFXE+qdzLfY1J5hBWCvouYo
jllavK4N3gF9FLScH2AUWYVMcVth2QPaTAU2NLnAUNH8kgtBjBfc8/KbPPTznD1QNVqvFstzcbTA
hGQ1ETVPvINQ0KqxxAG5PRhtQD4+pC+hr/Tvk+RSvGyBOfy9zE86OXkJiYs9dSFhNiMFmCPL9DBO
se4OxNNC0/7aBtb1mkSEA9YFDYEb9jS7Jasy2A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SnzT9DVH3xlEN8nrr2YrlvTO5qj7L22d7WaBcuKyTaiHoIwwFHrC4HQbfs0TAwkdWcOgmJoATPSF
F6qm0KiddbrlERF3MfKUldeGBJtqLdX+zGw7+3JD7S+HB9dIMOFOHy+IiCZp1/Pz8epKpi238cel
rcVoJQKz406wmXDvOo8KsT+XhRLs9BVCrBErPGGXKYDk6NXAp0duOgQE9DbslzMU83M/kUC7uERV
tQW02240peKQFp2elEZC7Tetvgp0TaFTtJiKN45REi8GQUCKGa85JjNIk1qb/+k95TIIP1xrHirc
6iX7qbwnPetv8TVu2NjkZ0WDEK5RXdOXcxBwHA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
erkR82V0jX8ytva+9MzEs0c75Z7j7TsgxWRLNAUfbbU28i+U9YzuZlSfYU75M0f9jx1gvxtBrfKv
cNHVdkR+i5zfHDZsDwfMEEBhs8wzDCKqe+eex6BBEvlIOesCPXrr2RozQgaQ1PBh/os2Arfu+873
BjsVxFJkbhpzIqlddOo/XZV9Yi+eih7A7pXXEBR6IL7Poo4Ka49MiVQU0xJrDTm+ddOuMPDRRD7g
dsxS/uzdcBcO2myV6g/7YH/C2Ce9s6+UywJN/0JeXSqwA7bsBqqnfFicVAT0lckLopMLiuzK7dsN
EwhFeqoetciFrDIj9+o0xDMWBZhgNP1u68vURA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
R+BI65BKLT0I9hEtsxGnDyM5XY9gzULeTPOSDXvd3KWOzZJAx6C0xlbyZcFZhAEG/QIK2yd0wAi6
IUWxyF/sx3HsqKjhVi5KxnpuXDBOZVoj811O7JukedFVmDW7OHGtBkuiJ5X5irw7mfsEKRQmF/1i
V6lj9HYHZEjxtDeZjACsLY4y1QxWalSKT4HIMOHznBLL8dLbGMlS+ZmFuFn0gcwZavVl7gTkTtkf
W0gn01A9ru7NKsf+iLX0kj4dgItPu9N2g02M1vWQ9UUQEVvfV7lUc7GY1suibrD8aEkhH9S7lZ7n
bFsT4qxyvzg8ML6v4g4v7N6VuyhEtgFgNd725Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
jNUVKiwH68vHsU54idgvKwaVJcoxTUuxfgrQpbpmM/IpesWA3wHsGzYClwAxkKzw3KRnFyQqTWcZ
yj1EQ2CMBxlJ0kyNbZW8OK8pXzeigToZ0U6Aq3Gy+j7wBbhe83wE1Ygn82sK8dHTEulvaRLn/c5r
ispy1s7jMKIvYNzoUuZrgyBQyfaYmdqUia8XlQjFd+VwzhTXKwzvmaqHWyaHjfBKeCooO7+oUxMG
OJg83W54EVe9ronFQ8Wr9EOL8ia7qelCAgyQe/bC0HHCoMAm8apI7sX23iMR/wMiPP5V2bQzycy+
rBX/+SWkqSeIE1FLm+muFPvrE7iLwJaW8d1fzdFFjAZ5aIXArbWNfwbK8S0TczXc9lEzmpb69rwA
UJIrs4alo81qGQ32UFhjuMQjX75O9Od1HWHDj5PFaT/Ja5Ly+bK8Cc3gfO6dCE81m7d+B2JBZ/Hl
tBA19QuOAYwT2EIPOdpaVtCULb33cWODWu3qQFhZMmDzKTb3kwpcr0LL

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MnzcA2swaxH1LRacKDou0ZmiiMRETbWIdHgeBgyQz7ILronsXLoB/C20WuFNGEVSiL2/51EZ6MXZ
vMHI8fFcMQCJcuTBDBibUMKv6bXI9s8fTbtrBZppbF/R1icG5JYhqmX4aRnv4W/dxJRjI2L35nLN
Y48E9OfgfkD1sr+IRwx8WEKFmUhuk8dLe0VOK7ywe3XEcneYvrz+HhPj16bGmNfMwNnDgZ3gKKZD
hRnys+jzvAX3HyISrErWXhMKrhWMxXeTNFJCqNQ0LWAVHQYwyKnF5xVpyXSuGNSIrva+QXqOrZBG
3VNLirNVtMRiKLfwZeMaqvswkqBDAa53utlAAA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
d0xXkKtsKM8GvXhDZr16p1+oE3uBtD04BJ76eGGIEj/CFECfHVy9qsJ43oSKjas0+AJr4GFFnVb6
X7gJV6MmX/OboC9ier5joUCGz0mxVzkRZK9a+LPEDcg0K6+cLE36kr+FfxW9Uk2816EHBCMCf5mK
A4eAhSmAb5Nq74F/q0quiG416npbny7faiQ+xmPDfYYiM3UuMKaD4iE8ODlz1w5xThPllWESf3LZ
NTkw6fozyTqZ47vvE21O3dgIGAY1v+C6BwlCK24VwPJa1xs9csY+qTk31j5jjAc1ExlB6QF7t9UH
lk70qdNPWxT87OH7kFT8UvPO1D6BTC3/WkDZfA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LYhdzKTvo93uJrAaiP5OfCDuOnu2BSvPnxlv6I7h2n1+xHtj34LNNKzWEgOg9dUV9cYDaHYUjjEt
DKdWcz6mZ61d5qyxAhpv67fc90v7JVgtOAcT94/Yb+AuLxXFcGA6Gic7uoJtUgz6JmTnb22Dxdjc
KuIewDj4IOTfP8XGXKTaF+cNp0CFrQgTAcVSQFyLFxr0I/9h3S+GZLecA7ntEeHEOfCJzPvy0ddi
7MCdQWECLb+fXC0IAn8V95TumcpINiRAX1BHi9IGJ4QoMrb3jOCrPkFhDMTJj2aiImUWdi/l/0QE
d7wcXlgIEYVeoKYUOJ4mqy+zZPUbLNeOPADUDQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 57712)
`pragma protect data_block
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
rPGY9HVFfTrCt0wYV2bdUUGgz36tzpSAMdh2iw==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
