//--------PDSD homework 4 (Traffic light controller)---------------------------------------------
//--------TLC testbench--------------------------------------------------------------------------

`timescale 1ns/10ps
`include "TLC_syn.v"
`include "/mnt3/CBDK_IC_Contest_v2.1/Verilog/tsmc13.v"

//`include "TLC.v"


module tb;
	reg coil,button,rst,clk;
	reg [6:0] time_short,time_long;
	reg [6:0] time_buf;	
	wire HG,HY,HR,FG,FY,FR;			
	wire [6:0] HL_show,FL_show;

	TLC uut(HG,HY,HR,FG,FY,FR,FL_show,HL_show,time_short,time_long,time_buf,coil,button,rst,clk);
	
	always begin
		#5 clk = ~clk;
	end
	
	initial begin 
		rst = 1'b0; time_long=7'd6; time_short=7'd4; time_buf=7'd2; button=1'b0; coil=1'b0; clk=1'b0;
		#5 rst = 1'b1;
		#15 rst = 1'b0;
		#60 button=1'b1;
		#10 button=1'b0;
		#250 coil=1'b1;
		#50 coil=1'b0;
		#250 $finish;
	end
	
	initial
	$monitor($time,"HG=%b HY=%b HR=%b FG=%b FY=%b FR=%b FL_show=%d HL_show=%d\n",HG,HY,HR,FG,FY,FR,FL_show,HL_show);
	
	initial
	$sdf_annotate("TLC.sdf",uut);
	
	initial begin
		$dumpfile("TLC_syn.vcd");
		$dumpvars;
	end
	
endmodule 
