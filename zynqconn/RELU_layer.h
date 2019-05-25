
#pragma pack(push,1)
template<int x, int y, int z>
struct  relu_layer
{
	layer_type type = relu;
	tensor_t<type_t, x, y, z> input;
	tensor_t<type_t, x, y, z> output;
	//tensor_t<type_t, x, y, z> gradient_dA;
	//tensor_t<type_t, x, y, z> dZ;

	relu_layer()
	{

	}

	void forward()
	{
		type_t temp;
		for (int ix = 0; ix < x; ++ix)
			for (int iy = 0; iy < y; ++iy)
				for (int iz = 0; iz < z; ++iz)
				{
					temp = input(ix, iy, iz);

					if(temp < 0)
						output(ix, iy, iz) = 0;
					else
						output(ix, iy, iz) = temp;		
				}
		//end loop
	}
};


#pragma pack(pop)

