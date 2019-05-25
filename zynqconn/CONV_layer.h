
/*
 * This is convolution layer
 * */
//using namespace std;

template<int Wsize, int Nfilter, int stride, int pad, int in_x, int in_y, int in_z>
struct  conv_layer 
{
	layer_type type = conv;
	tensor_t<type_t, in_x, in_y, in_z> input;

	tensor_t<type_t, (in_x - Wsize + 2 * pad)/stride + 1,
				    (in_y - Wsize + 2 * pad)/stride + 1,
	 				 Nfilter > output, dZ;

	tensor_t<type_t, Wsize, Wsize, in_z> W[Nfilter];
	tensor_t<type_t, 1, 1, Nfilter> bias;

	
	tensor_t<type_t, in_x + (2 * pad), in_y + (2 * pad), in_z> inpad;

	int vert_start = 0, horiz_start = 0;
//relu
	relu_layer<(in_x - Wsize + 2 * pad)/stride + 1, 
			   (in_y - Wsize + 2 * pad)/stride + 1,
	 		    Nfilter> relu1;

	conv_layer()
	{
		// init weight
		for (int i = 0; i < Nfilter; ++i)
		{
		// constant
			fill(W[i].data(), W[i].size, (type_t)0.01);
		}
		
	}

	void initweight_const(type_t w_value)
	{
		for (int i = 0; i < Nfilter; ++i)
		{
		// constant
			fill(W[i].data(), W[i].size, w_value);
		}
	}

	void forward() // forward with relu
	{
		this->forward_conv();
		relu1.input = this->output;
		relu1.forward();
		this->output = relu1.output;

	}
	void forward_conv()
	{
		//print_tensor(input.data(),input.size);
		Padding(inpad.data(), inpad.size, input.data(),pad);

		for (int idx_filter = 0; idx_filter < Nfilter; ++idx_filter)
		{
			for (int idx_y = 0; idx_y < output.size.y ; ++idx_y)
			{
				for (int idx_x = 0; idx_x < output.size.x; ++idx_x)
				{
					type_t output_c = 0;
					vert_start = idx_y * stride;
					horiz_start = idx_x * stride;

					for (int ch = 0; ch < input.size.z; ++ch)
					{
						//convolution
						for (int v = vert_start; v < vert_start + Wsize; ++v)
							for (int ho = horiz_start; ho < horiz_start + Wsize; ++ho)
							{
								output_c += inpad(v,ho,ch) * W[idx_filter](v - vert_start, ho - horiz_start, ch );
							}
						// end conv
					}// end conv ch
					this->output(idx_y, idx_x, idx_filter) = output_c + bias(0,0,idx_filter);
				}
			}
		}
	} // end forward_conv
};
