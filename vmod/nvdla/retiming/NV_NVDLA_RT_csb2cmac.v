// ================================================================
// NVDLA Open Source Project
// 
// Copyright(c) 2016 - 2017 NVIDIA Corporation.  Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with 
// this distribution for more information.
// ================================================================

// File Name: NV_NVDLA_RT_csb2cmac.v

module NV_NVDLA_RT_csb2cmac (
   nvdla_core_clk
  ,nvdla_core_rstn
  ,csb2cmac_req_src_pvld
  ,csb2cmac_req_src_prdy
  ,csb2cmac_req_src_pd
  ,cmac2csb_resp_src_valid
  ,cmac2csb_resp_src_pd
  ,csb2cmac_req_dst_pvld
  ,csb2cmac_req_dst_prdy
  ,csb2cmac_req_dst_pd
  ,cmac2csb_resp_dst_valid
  ,cmac2csb_resp_dst_pd
  );

//
// NV_NVDLA_RT_csb2cmac_ports.v
// DO NOT EDIT, generated by ness version 2.0, backend=verilog
//
// Command: /home/ip/shared/inf/ness/2.0/38823533/bin/run_ispec_backend verilog nvdla_all.nessdb defs.touch-verilog -backend_opt '--nogenerate_io_capture' -backend_opt '--generate_ports'
input  nvdla_core_clk;
input  nvdla_core_rstn;

//<-- csb2cmac_req_src clk=nvdla_core_clk flow=req_busy baseflow=pvld_prdy req=csb2cmac_req_src_pvld busy=!csb2cmac_req_src_prdy ctype=NV_MSDEC_csb2xx_16m_be_lvl_t c_hdr=NV_MSDEC_csb2xx_16m_be_lvl_iface.h
input         csb2cmac_req_src_pvld;  /* data valid */
output        csb2cmac_req_src_prdy;  /* data return handshake */
input  [62:0] csb2cmac_req_src_pd;

//<-- cmac2csb_resp_src clk=nvdla_core_clk flow=req_only req=cmac2csb_resp_src_valid ctype=nvdla_xx2csb_resp_t c_hdr=nvdla_xx2csb_resp_iface.h
input        cmac2csb_resp_src_valid;  /* data valid */
input [33:0] cmac2csb_resp_src_pd;     /* pkt_id_width=1 pkt_widths=33,33  */

output        csb2cmac_req_dst_pvld;  /* data valid */
input         csb2cmac_req_dst_prdy;  /* data return handshake */
output [62:0] csb2cmac_req_dst_pd;

output        cmac2csb_resp_dst_valid;  /* data valid */
output [33:0] cmac2csb_resp_dst_pd;     /* pkt_id_width=1 pkt_widths=33,33  */

wire [33:0] cmac2csb_resp_pd_d0;
wire        cmac2csb_resp_valid_d0;
wire [62:0] csb2cmac_req_pd_d0;
wire        csb2cmac_req_pvld_d0;
reg  [33:0] cmac2csb_resp_pd_d1;
reg  [33:0] cmac2csb_resp_pd_d2;
reg  [33:0] cmac2csb_resp_pd_d3;
reg         cmac2csb_resp_valid_d1;
reg         cmac2csb_resp_valid_d2;
reg         cmac2csb_resp_valid_d3;
reg  [62:0] csb2cmac_req_pd_d1;
reg  [62:0] csb2cmac_req_pd_d2;
reg  [62:0] csb2cmac_req_pd_d3;
reg         csb2cmac_req_pvld_d1;
reg         csb2cmac_req_pvld_d2;
reg         csb2cmac_req_pvld_d3;


assign csb2cmac_req_src_prdy = 1'b1;




assign csb2cmac_req_pvld_d0 = csb2cmac_req_src_pvld;
assign csb2cmac_req_pd_d0 = csb2cmac_req_src_pd;


assign cmac2csb_resp_valid_d0 = cmac2csb_resp_src_valid;
assign cmac2csb_resp_pd_d0 = cmac2csb_resp_src_pd;




always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    csb2cmac_req_pvld_d1 <= 1'b0;
  end else begin
  csb2cmac_req_pvld_d1 <= csb2cmac_req_pvld_d0;
  end
end
always @(posedge nvdla_core_clk) begin
  if ((csb2cmac_req_pvld_d0) == 1'b1) begin
    csb2cmac_req_pd_d1 <= csb2cmac_req_pd_d0;
  // VCS coverage off
  end else if ((csb2cmac_req_pvld_d0) == 1'b0) begin
  end else begin
    csb2cmac_req_pd_d1 <= 'bx;  // spyglass disable STARC-2.10.1.6 W443 NoWidthInBasedNum-ML -- (Constant containing x or z used, Based number `bx contains an X, Width specification missing for based number)
  // VCS coverage on
  end
end


always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    cmac2csb_resp_valid_d1 <= 1'b0;
  end else begin
  cmac2csb_resp_valid_d1 <= cmac2csb_resp_valid_d0;
  end
end
always @(posedge nvdla_core_clk) begin
  if ((cmac2csb_resp_valid_d0) == 1'b1) begin
    cmac2csb_resp_pd_d1 <= cmac2csb_resp_pd_d0;
  // VCS coverage off
  end else if ((cmac2csb_resp_valid_d0) == 1'b0) begin
  end else begin
    cmac2csb_resp_pd_d1 <= 'bx;  // spyglass disable STARC-2.10.1.6 W443 NoWidthInBasedNum-ML -- (Constant containing x or z used, Based number `bx contains an X, Width specification missing for based number)
  // VCS coverage on
  end
end


always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    csb2cmac_req_pvld_d2 <= 1'b0;
  end else begin
  csb2cmac_req_pvld_d2 <= csb2cmac_req_pvld_d1;
  end
end
always @(posedge nvdla_core_clk) begin
  if ((csb2cmac_req_pvld_d1) == 1'b1) begin
    csb2cmac_req_pd_d2 <= csb2cmac_req_pd_d1;
  // VCS coverage off
  end else if ((csb2cmac_req_pvld_d1) == 1'b0) begin
  end else begin
    csb2cmac_req_pd_d2 <= 'bx;  // spyglass disable STARC-2.10.1.6 W443 NoWidthInBasedNum-ML -- (Constant containing x or z used, Based number `bx contains an X, Width specification missing for based number)
  // VCS coverage on
  end
end


always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    cmac2csb_resp_valid_d2 <= 1'b0;
  end else begin
  cmac2csb_resp_valid_d2 <= cmac2csb_resp_valid_d1;
  end
end
always @(posedge nvdla_core_clk) begin
  if ((cmac2csb_resp_valid_d1) == 1'b1) begin
    cmac2csb_resp_pd_d2 <= cmac2csb_resp_pd_d1;
  // VCS coverage off
  end else if ((cmac2csb_resp_valid_d1) == 1'b0) begin
  end else begin
    cmac2csb_resp_pd_d2 <= 'bx;  // spyglass disable STARC-2.10.1.6 W443 NoWidthInBasedNum-ML -- (Constant containing x or z used, Based number `bx contains an X, Width specification missing for based number)
  // VCS coverage on
  end
end


always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    csb2cmac_req_pvld_d3 <= 1'b0;
  end else begin
  csb2cmac_req_pvld_d3 <= csb2cmac_req_pvld_d2;
  end
end
always @(posedge nvdla_core_clk) begin
  if ((csb2cmac_req_pvld_d2) == 1'b1) begin
    csb2cmac_req_pd_d3 <= csb2cmac_req_pd_d2;
  // VCS coverage off
  end else if ((csb2cmac_req_pvld_d2) == 1'b0) begin
  end else begin
    csb2cmac_req_pd_d3 <= 'bx;  // spyglass disable STARC-2.10.1.6 W443 NoWidthInBasedNum-ML -- (Constant containing x or z used, Based number `bx contains an X, Width specification missing for based number)
  // VCS coverage on
  end
end


always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    cmac2csb_resp_valid_d3 <= 1'b0;
  end else begin
  cmac2csb_resp_valid_d3 <= cmac2csb_resp_valid_d2;
  end
end
always @(posedge nvdla_core_clk) begin
  if ((cmac2csb_resp_valid_d2) == 1'b1) begin
    cmac2csb_resp_pd_d3 <= cmac2csb_resp_pd_d2;
  // VCS coverage off
  end else if ((cmac2csb_resp_valid_d2) == 1'b0) begin
  end else begin
    cmac2csb_resp_pd_d3 <= 'bx;  // spyglass disable STARC-2.10.1.6 W443 NoWidthInBasedNum-ML -- (Constant containing x or z used, Based number `bx contains an X, Width specification missing for based number)
  // VCS coverage on
  end
end




assign csb2cmac_req_dst_pvld = csb2cmac_req_pvld_d3;
assign csb2cmac_req_dst_pd = csb2cmac_req_pd_d3;


assign cmac2csb_resp_dst_valid = cmac2csb_resp_valid_d3;
assign cmac2csb_resp_dst_pd = cmac2csb_resp_pd_d3;





endmodule // NV_NVDLA_RT_csb2cmac

