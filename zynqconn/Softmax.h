
/*
	sigmoid = 1 / 1 + e(-x)
*/
type_t maximum(type_t *in, point_t size)
{
	type_t out = in[0];
	for (int i = 0; i < size.x * size.y * size.z; ++i)
	{
		if (in[i] > out)
		{
			out = in[i];
		}
	}
	return out;
}

#pragma pack(push, 1)
template<int nclass>
struct softmax_class
{
	layer_type type = softmax;
	tensor_t<type_t,	1, 1, nclass> input;
	tensor_t<type_t,	1 ,1, nclass> y_hat;
	tensor_t<type_t,	1, 1, nclass> gradient_dA;
	tensor_t<type_t,	1, 1, nclass> y_out;

	void forward()
	{
		type_t exp_z =0;
		type_t sum_exp_z =0;
		type_t max_value =  maximum(input.data(), input.size);
		float temp;

		for (int filter = 0; filter < input.size.z ; ++filter)
		{
			temp = input(0,0,filter) - max_value; // Numeric stability 
			sum_exp_z += (type_t)exp(temp);
		}

		for (int filter = 0; filter < input.size.z ; ++filter)
		{
			temp = input(0,0,filter) - max_value;
			exp_z = (type_t) exp(temp);
			y_hat(0,0,filter) = exp_z / sum_exp_z;
		}
	} // end loop

	void backward()
	{
		type_t E = 0.0;
		type_t n = (type_t) y_out.size.z;

		
		for (int filter = 0; filter < y_out.size.z ; ++filter)
		{
		 	gradient_dA(0,0,filter) = y_hat(0,0,filter) - y_out(0,0,filter);
		}		
	}
	
};
#pragma pack(pop)

/*
tensor_t<float> forward_Sigmoid( tensor_t<float>& Z)
{
	
	tensor_t<float> out(Z.size.x, Z.size.y, Z.size.z);

	for (int filter = 0; filter < Z.size.z ; ++filter)
	{
		out(0,0,filter) = 1.0f / (1.0f + exp(-Z(0,0,filter)));
	}
	return out;
}

 //derivative of sigmoid y = 1 / 1 + e(-x) then dy = y * (1-y)

tensor_t<float> backward_Sigmoid( tensor_t<float>& Z, tensor_t<float>& dE)
{
	
	tensor_t<float> out(Z.size.x, Z.size.y, Z.size.z);

	float y =0.0f;

	for (int filter = 0; filter < Z.size.z ; ++filter)
	{
		y =  Z(0,0,filter);
		out(0,0,filter) = (y * (1 - y)) * dE(0,0,filter);
	}
	return out;
}

*/

/*=
float Cross_entropy(tensor_t<float>& y_hat, tensor_t<float>& y) // softmax cross entropy: E = (-1/n) * sum(y*log(y_hat) + (1-y)*log(1-y_hat))
{
	float E = 0.0;
	float n = (float) y.size.z;
	for (int filter = 0; filter < y.size.z ; ++filter)
	{
		if (y(0,0,filter) == 1)
		{
			E = y(0,0,filter) * log(y_hat(0,0,filter)); // Entropy has value only correct class
			
		}
	}

	return E;
	//return E * 100;
}

*/
