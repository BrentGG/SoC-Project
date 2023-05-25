// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu May 25 16:19:53 2023
// Host        : DESKTOP-BJUKTU0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Brent/Desktop/PXLocal/SOC/SoC_FSM_ROM_Neopixel/RGBVivado.gen/sources_1/bd/design_1/ip/design_1_blk_mem_gen_0_0/design_1_blk_mem_gen_0_0_sim_netlist.v
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
oocCi53U/CAnJY7c8fnf08xfaFhgb/t8mjOuKw==
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
