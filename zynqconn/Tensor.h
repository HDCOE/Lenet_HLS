//using namespace  std;

enum layer_type
{
	conv, pooling, fc, relu, softmax
};

struct point_t
{
	int x, y, z;
};


template<typename T, int x, int y, int z>
struct tensor_t
{
	T _data[x * y * z];
	point_t size;

/*Define size of tensor */
	tensor_t()
	{
		size.x = x;
		size.y = y;
		size.z = z;
		// initialize to be 0
		for (int i = 0; i < x * y * z; ++i)
		{
			this->_data[i] = 0;
		}
	}

/* Define element of tensor by tensor(x,y,z)= value */
	T& operator()( int _x, int _y, int _z )
	{
		return _data[_z *( x * y) + _y * (x) + _x];
	}

	T* data()
	{
		return _data;
	}

};

