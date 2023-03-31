// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Fri Mar 31 16:34:28 2023
// Host        : Laptop-B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/brent/Desktop/PXLocal/SOC/SoC_FSM_ROM_Neopixel/RGBVivado.gen/sources_1/bd/design_1/ip/design_1_blk_mem_gen_0_0/design_1_blk_mem_gen_0_0_sim_netlist.v
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
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_ONLY, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [5:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [5:0]addra;
  wire clka;
  wire [31:0]douta;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [5:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [5:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "6" *) 
  (* C_ADDRB_WIDTH = "6" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "FFFFFF" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.375199 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "design_1_blk_mem_gen_0_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "64" *) 
  (* C_READ_DEPTH_B = "64" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "64" *) 
  (* C_WRITE_DEPTH_B = "64" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  design_1_blk_mem_gen_0_0_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[5:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[5:0]),
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
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18896)
`pragma protect data_block
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
woXqbfgG7qprpMWP5Dpe2oY9n3SjMH5Lh6GexMg=
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
