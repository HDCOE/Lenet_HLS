#include <cstdint>
#include <vector>
#include <iostream>
#include <fstream>

#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>


#include "config.h"

#include "Softmax.h"
#include "Read_dataset.h"

#include <boost/timer.hpp>
#include <hls_stream.h>
#include <ap_axi_sdata.h>

#include "TB_config.h"
typedef ap_axis<16,2,5,6> St_fix;

/*
int lenet(hls::stream<type_t> &inStream, hls::stream<type_t> &outStream,
		  type_t c1_w[5*5*1*6],
		  type_t c3_w[5*5*6*16],
		  type_t c5_w[5*5*16*120],
		  type_t fc_w[1*1*120*10],
		  int start );
*/
int lenet(hls::stream<type_t> &inStream, hls::stream<type_t> &outStream,
		hls::stream<type_t> &c1w,
		hls::stream<type_t> &c3w,
		hls::stream<type_t> &c5w,
		hls::stream<type_t> &fcw,

		  int start );
using namespace  std;


int main (void)
{
	hls::stream<type_t> inputStream;
	hls::stream<type_t> outputStream;
	hls::stream<type_t> c1w;
	hls::stream<type_t> c3w;
	hls::stream<type_t> c5w;
	hls::stream<type_t> fcw;
	softmax_class<10> sf;


	float err;

	// read test set
 	vector<case_t<32,32,1,10>> testset = read_dataset("/home/hadee/Work/Project/SimpleCNN_CPP_HWver/MNIST/t10k-images.idx3-ubyte", "/home/hadee/Work/Project/SimpleCNN_CPP_HWver/MNIST/t10k-labels.idx1-ubyte");

	boost::timer t;

// read weight from file
	ifstream infile("/home/hadee/Work/Project/FPGA/Zynqconn2/zynqconn/model.dat",std::ofstream::binary);
	infile.seekg (0);

	// weight c1
	for (int idx = 0; idx < 5*5*1*6; idx++)
	{
		type_t c1_readw;
		infile.read((char *)&c1_readw, sizeof(float));
		c1w << c1_readw;
	}

	//weight c3
	for (int idx = 0; idx < 5*5*6*16; idx++)
	{
		type_t c3_readw;
		infile.read((char *)&c3_readw, sizeof(float));
		c3w << c3_readw;
	}
	// weight c5
	for (int idx = 0; idx < 5*5*16*120; idx++)
	{
		type_t c5_readw;
		infile.read((char *)&c5_readw, sizeof(float));
		c5w << c5_readw;
	}

	// weight fc
	for (int idx = 0; idx <1*1*120*10; idx++)
	{
		type_t fc_readw;
		infile.read((char *)&fc_readw, sizeof(float));
		fcw << fc_readw;
	}


	// streaming write
		for(int idx = 0; idx < mem_in ; idx++)
		{
			type_t valin;
			valin = testset[20].data._data[idx];

			inputStream << valin;
		}
	// start lenet
		lenet(inputStream, outputStream, c1w, c3w, c5w, fcw,  2);

	// streaming read
		for (int idx = 0; idx < mem_out ; idx++)
		{
			type_t valOut;
			outputStream.read(valOut);

			sf.input._data[idx] = valOut;

			std:: cout << "out " << sf.input._data[idx] << std::endl;

		}


		sf.forward();

		print_tensor(sf.y_hat.data(),sf.y_hat.size);

		err += Cross_entropy(sf.y_hat.data(), testset[20].out.data(), 10);


		std::cout << endl << t.elapsed() << "s elapsed." << std::endl;
		std::cout << "error " << ((-1 / 1) * err * 100)  << std::endl;
		t.restart();


	//print_tensor(testset[100].out.data(),testset[100].out.size);

return 0;
}

/*int main (void)
{
	tensor_t <type_t,inx,iny,inz> in; fillup(in.data(), in.size,0.1);
	tensor_t <type_t,outx,outy,outz> out,y;

	softmax_class<10> sf;
	y(0,0,5) = 1;
	float err;

	boost::timer t;


	lenet(in.data(),out.data());

	sf.input = out;   sf.forward();
	err = Cross_entropy(sf.y_hat.data(), y.data(), 10);


	std::cout << endl << t.elapsed() << "s elapsed." << std::endl;
	t.restart();

	print_tensor(in.data(), in.size);
	print_tensor(out.data(), out.size);
return 0;
}*/

