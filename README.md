# Day 1 of RTL Behavioral code

## RTL Code for 16-bit Multiplexer

```
// RTL Behavioral code for 16-bit Multiplexer
// Design Engineer: Mohammad Khalique Khan


module mux16 (in, sel, out);

	input [15:0] in;
	input [3:0] sel;
	output out;

		assign out = in[sel];
		
endmodule 

```

## GTKWave output 
![Screenshot from 2021-11-27 20-17-37](https://user-images.githubusercontent.com/80625515/143686476-10d4837f-afc6-4a6c-aea9-6118e01dec8e.png)

