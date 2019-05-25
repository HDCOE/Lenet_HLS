
/* we can do conv of x with  w which has same size as x,
 or we can stretch x to be vector and multiply with vector w */
#pragma pack(push,1)

template<int n_class, int x, int y, int z>
struct fc_layer
{
	layer_type type = fc;
	tensor_t<type_t, x, y, z > input;
	tensor_t<type_t, 1, 1, n_class > output;

	tensor_t<type_t, x, y, z> W[n_class]; //std::vector<tensor_t<type_t>> W;
	tensor_t<type_t, 1, 1, n_class> bias;
	
	fc_layer()
	{
		//fill(bias.data(), bias.size, 0);
		//fill(gradient_dB.data(), gradient_dB.size, 0);

		for (int i = 0; i < n_class; ++i)
		{
			//initweight(W[i].data(), W[i].size.x, input.size, output.size);
			fill(W[i].data(), W[i].size, (type_t) 0.01);
		}

	}
	void initweight_const(type_t w_value)
	{
		for (int i = 0; i < n_class; ++i)
		{
		// constant
			fill(W[i].data(), W[i].size, w_value);
		}
	}
	void forward()
	{
		type_t dot_out = 0;

		for (int i_filter = 0; i_filter < n_class; ++i_filter)
		{
			dot_out = 0;
			// dot w . in
			for (int i_x = 0; i_x < x; ++i_x)
				for (int i_y = 0; i_y < y; ++i_y)
					for (int i_z = 0; i_z < z; ++i_z)
					{
						dot_out += input(i_x, i_y, i_z) * W[i_filter](i_x, i_y, i_z);
					}

			output(0,0, i_filter) = dot_out;
		} // end loop filter
	} // end forward
};
#pragma pack(pop)
