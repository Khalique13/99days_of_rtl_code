
## Day 1 of RTL code

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

## Day 2 of RTL code

```
// RTL Behavioral code for 16-bit Adder with sign flags
// Design Engineer: Mohammad Khalique Khan

module adder (X, Y, Z, Sign, Zero, Carry, Parity, Overflow);

	input [15:0] X, Y;
	output [15:0] Z;
	output Sign, Zero, Carry, Parity, Overflow;
	
	assign {Carry, Z} = X + Y; // 16-bit additon
	
	assign Sign = Z[15];
	assign Zero = ~|Z;
	assign Parity = ~^Z;
	assign Overflow = (X[15] & Y[15] & ~Z[15]) | (~X[15] & ~Y[15] & Z[15]);
	
endmodule
```
## GTKWave output

![Screenshot from 2021-11-28 20-40-57](https://user-images.githubusercontent.com/80625515/143774158-a0ac2d37-e548-46ef-b419-e609e4ff2368.png)

