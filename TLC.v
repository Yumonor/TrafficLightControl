//--------PDSD homework 4 (Traffic light controller)---------------------------------------------
//--------TLC------------------------------------------------------------------------------------

module TLC(HG,HY,HR,FG,FY,FR,FL_show,HL_show,time_short,time_long,time_buf,coil,button,rst,clk);
	input coil,button,rst,clk;
	input [6:0] time_short,time_long;	//0~127 sec
	output HG,HY,HR,FG,FY,FR;			//light
	output reg [6:0] HL_show,FL_show;	//HL/FL second(7 segment)
	input [3:0] time_buf;				//buffer time
		
	reg [2:0] cs,ns;					//current state and next state
	reg [6:0] count0_cs,count0_ns;		//the counter of case(even)
	reg [6:0] count1_cs,count1_ns;		//the counter of case(odd)
	
	//FSM(flip-flop) 
	always@(posedge clk or posedge rst) 
	begin
		if(rst) begin
			cs <= 3'd0;
			count0_cs <= 7'd0;
			count1_cs <= 7'd0;
		end
		else begin
			cs <= ns;
			count0_cs <= count0_ns;
			count1_cs <= count1_ns;
		end
	end
	
	//FSM(state_current)
	always@(cs or coil or button or count0_cs or count1_cs) begin
		case(cs)
				//initial state 
				3'd0: begin
					ns <= (count0_cs < time_buf) ? 3'd0:3'd1;
					count0_ns <= count0_cs + 7'd1;
					count1_ns <= 7'd0;
					
					FL_show <= 7'd99;					//remain (light R)
					HL_show <= time_buf - count0_cs + 7'd1;		//countdown (light R) 
				end
				
				//trigger 
				3'd1: begin
					ns <= (button) ? 3'd3 : (coil) ? 3'd2:3'd1;
					count0_ns <= 7'd0;
					
					FL_show <= 7'd99;		//remain (light R)
					HL_show <= 7'd99;		//remain (light G)
				end
				
				//ensure coil==1
				3'd2: begin
					ns <= (coil) ? (count0_cs < time_buf) ? 3'd2:3'd3 : 3'd1;
					count0_ns <= count0_cs + 7'd1;
					count1_ns <= 7'd0;
					
					FL_show <= 7'd99;		//remain (light R)
					HL_show <= 7'd99;		//remain (light G)
				end
				
				//counting for FL(R to G)
				3'd3: begin 
					ns <= (count1_cs < time_short) ? 3'd3:3'd4;
					count1_ns <= count1_cs + 7'd1;
					count0_ns <= 7'd0;
					
					FL_show <= time_short + time_buf*2 - count1_cs + 7'd3;	//countdown (light R)
					HL_show <= time_short - count1_cs + 7'd1;				//countdown (light G)
				end
				
				3'd4: begin
					ns <= (count0_cs < time_buf) ? 3'd4:3'd5;
					count0_ns <= count0_cs + 7'd1;
					count1_ns <= 7'd0;
					
					FL_show <= time_buf*2 - count0_cs + 7'd2;	//countdown (light R)
					HL_show <= 7'd0;						//countdown (light Y)
				end
				3'd5: begin
					ns <= (count1_cs < time_buf) ? 3'd5:3'd6;
					count1_ns <= count1_cs + 7'd1;
					count0_ns <= 7'd0;
					
					FL_show <= time_buf - count1_cs + 7'd1;					//countdown (light R) 
					HL_show <= time_long + time_buf*3 - count1_cs + 7'd4;	//countdown (light R)
				end
				3'd6: begin
					ns <= (count0_cs < time_long) ? 3'd6:3'd7;
					count0_ns <= count0_cs + 7'd1;
					count1_ns <= 7'd0;
					
					FL_show <= time_long - count0_cs + 7'd1;				//countdown (light G)
					HL_show <= time_long + time_buf*2 - count0_cs + 7'd3;	//countdown (light R)
				end
				3'd7: begin
					ns <= (count1_cs < time_buf) ? 3'd7:3'd0;
					count1_ns <= count1_cs + 7'd1;
					count0_ns <= 7'd0;
					
					FL_show <= 7'd0;						//countdown (light Y)
					HL_show <= time_buf*2 - count1_cs + 7'd2;	//countdown (light R)
				end
			endcase
	end
	
	//light
	assign HG = (cs == 3'd1)||(cs == 3'd2)||(cs == 3'd3);
	assign HY = (cs == 3'd4);
	assign HR = (cs == 3'd0)||(cs == 3'd5)||(cs == 3'd6)||(cs == 3'd7);
	assign FG = (cs == 3'd6);
	assign FY = (cs == 3'd7);
	assign FR = (cs != 3'd6) && (cs!= 3'd7);
	
endmodule
