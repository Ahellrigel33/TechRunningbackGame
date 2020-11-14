`timescale 1 ps / 1 ps
module rw_manager_m10_ac_ROM (
	clock,
	rdaddress,
	q);
	
	input	  clock;
	input	[5:0]  rdaddress;
	output	[31:0]  q;
	
	reg	[31:0]  q;
	
	reg	[5:0]  rdaddress_r;
always @ (posedge clock)
    rdaddress_r <=  rdaddress;
	
always @ (posedge clock)
    case(rdaddress_r)
'h00 : q <= 'h0E070000;
'h01 : q <= 'h0F070000;
'h02 : q <= 'h0E070000;
'h03 : q <= 'h0C070000;
'h04 : q <= 'h06000433;
'h05 : q <= 'h06000433;
'h06 : q <= 'h06000533;
'h07 : q <= 'h06002000;
'h08 : q <= 'h06002380;
'h09 : q <= 'h06004080;
'h0A : q <= 'h06006000;
'h0B : q <= 'h06030400;
'h0C : q <= 'h06060000;
'h0D : q <= 'h06064000;
'h0E : q <= 'h06020400;
'h0F : q <= 'h06040000;
'h10 : q <= 'h07990000;
'h11 : q <= 'h07994000;
'h12 : q <= 'h07990008;
'h13 : q <= 'h07994008;
'h14 : q <= 'h0F170000;
'h15 : q <= 'h0F9F0000;
'h16 : q <= 'h0F070000;
'h17 : q <= 'h06010000;
'h18 : q <= 'h07190000;
'h19 : q <= 'h06650000;
'h1A : q <= 'h06654000;
'h1B : q <= 'h06650008;
'h1C : q <= 'h06654008;
'h1D : q <= 'h0E670000;
'h1E : q <= 'h06050008;
'h1F : q <= 'h00000000;
'h20 : q <= 'h00000000;
'h21 : q <= 'h00000000;
'h22 : q <= 'h00000000;
'h23 : q <= 'h00000000;
'h24 : q <= 'h00000000;
'h25 : q <= 'h00000000;
'h26 : q <= 'h00000000;
'h27 : q <= 'h00000000;
        default : q <= 0;
    endcase
endmodule
