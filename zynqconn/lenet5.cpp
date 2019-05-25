#include <cassert>
#include <hls_stream.h>
#include <ap_axi_sdata.h>

typedef ap_axis<16,2,5,6> St_fix;

#include "config.h"
//#include "Optimization_method.h"
//#include "RELU_layer.h"
//#include "CONV_layer.h"
//#include "FC_layer.h"
//#include "POOLING_layer.h"

//#include "Softmax.h" include in TB

void cpy(type_t *out, type_t *in, int memsize)
{
	for(int i = 0; i < memsize; i++)
		out[i] = in[i];
}

void fill( type_t * t, point_t size, type_t value)
{
	for (int i = 0; i < size.x * size.y * size.z; ++i)
	{
		t[i] = value;
	}
}
void Padding(type_t * out, point_t out_size, type_t * in, int padsize)
{
	int idx = 0;
	for (int z = 0; z < out_size.z; ++z)
		for (int y = 0; y < out_size.y; ++y)
			for (int x = 0; x < out_size.x; ++x)
			{
				if( (x >= padsize && y >= padsize) && (x < out_size.x-padsize && y < out_size.y - padsize))
				{
					out[z *( out_size.x * out_size.y) + y * out_size.x + x] = in[idx];
					idx ++;
				}
				else
					out[z *( out_size.x * out_size.y) + y * out_size.x + x] = 0;
			}
}


int lenet(hls::stream<type_t> &inStream, hls::stream<type_t> &outStream,
		hls::stream<type_t> &c1w,
		hls::stream<type_t> &c3w,
		hls::stream<type_t> &c5w,
		hls::stream<type_t> &fcw,

		  int start )

{
#pragma HLS INTERFACE axis port=fcw
#pragma HLS INTERFACE axis port=c5w
#pragma HLS INTERFACE axis port=c3w
#pragma HLS INTERFACE axis port=c1w

#pragma HLS INTERFACE s_axilite port=start bundle=CRTL_BUS

#pragma HLS INTERFACE axis port=outStream
#pragma HLS INTERFACE axis port=inStream

#pragma HLS INTERFACE s_axilite port=return bundle=CRTL_BUS


 	conv_layer<5,6,1,0,32,32,1>  c1; // in: 32x32x1 out:28x28x6
 	pool_layer<2,2,1,28,28,6>    p2; // in: 28x28x6 out:14x14x6
 	conv_layer<5,16,1,0,14,14,6> c3; // in: 14x14x6 out:10x10x16
 	pool_layer<2,2,1,10,10,16>   p4; // in: 10x10x16 out: 5x5x16
 	conv_layer<5,120,1,0,5,5,16> c5; // in: 5x5x16 out:1x1x120
 	fc_layer<10,1,1,120> fc6;		 // in:1x1x120 out 1x1x10

 // stream read data
 	for(int idx = 0; idx < mem_in; idx++)
 	{
 		type_t valIn = inStream.read();
 		c1.input._data[idx] = valIn;
 	}

// copy weight c1
 	for( int i = 0; i < 6; i++)
 	{
 		for (int j = 0; j < 5*5; j++)
 		{
 			c1.W[i]._data[j] = c1w.read();
 		}
 	}
// copy weight c3
 	for( int i = 0; i < 16; i++)
 	{
 		for (int j = 0; j <5*5*6; j++)
 		{
 			c3.W[i]._data[j] = c3w.read();
 		}
 	}

// copy weight c5
 	for( int i = 0; i < 120; i++)
 	{
 		for (int j = 0; j < 5*5*16; j++)
 		{
 			c5.W[i]._data[j] = c5w.read();
 		}
 	}

// copy weight fc

 	for( int i = 0; i < 10; i++)
 	{
 		for (int j = 0; j < 120; j++)
 		{
 			fc6.W[i]._data[j] = fcw.read();
 		}
 	}
//test
	c1.forward();
	p2.input = c1.output; 		p2.forward();
	c3.input = p2.output;		c3.forward();
	p4.input = c3.output;		p4.forward();
	c5.input = p4.output;		c5.forward();
	fc6.input = c5.output;		fc6.forward();

// stream output
 	for(int idx = 0; idx < mem_out; idx++)
 	{
 		type_t valOut;
 		valOut = fc6.output._data[idx];

 		outStream.write(valOut);
 	}
	return 0;
}

/*
int lenet(type_t in[mem_in], type_t out[mem_out])
{
#pragma HLS INTERFACE s_axilite port = out bundle = axilite
#pragma HLS INTERFACE s_axilite port = return bundle = axilite

 	conv_layer<5,6,1,0,32,32,1>  c1; // in: 32x32x1 out:28x28x6
 	pool_layer<2,2,1,28,28,6>    p2; // in: 28x28x6 out:14x14x6
 	conv_layer<5,16,1,0,14,14,6> c3; // in: 14x14x6 out:10x10x16
 	pool_layer<2,2,1,10,10,16>   p4; // in: 10x10x16 out: 5x5x16
 	conv_layer<5,120,1,0,5,5,16> c5; // in: 5x5x16 out:1x1x120
 	fc_layer<10,1,1,120> fc6;		 // in:1x1x120 out 1x1x10


//test
	cpy(c1.input.data(), in, mem_in);

	c1.initweight_const((type_t)0.01);
	c3.initweight_const((type_t)0.1);
	c5.initweight_const((type_t)0.001);
	fc6.initweight_const((type_t)0.1);

	c1.forward();
	p2.input = c1.output; 		p2.forward();
	c3.input = p2.output;		c3.forward();
	p4.input = c3.output;		p4.forward();
	c5.input = p4.output;		c5.forward();
	fc6.input = c5.output;		fc6.forward();

	cpy(out,fc6.output.data(), mem_out);
	return 0;
}
*/
