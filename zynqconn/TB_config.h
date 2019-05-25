

void fillup( type_t * t, point_t size, type_t value)
{
	for (int i = 0; i < size.x * size.y * size.z; ++i)
	{
		t[i] = value;
	}
}
/*Print all data in tensor*/
static void print_tensor( type_t * tensor, point_t size )
{
	printf("dimension %d x %d x %d \n", size.x, size.y, size.z );
	for ( int mz = 0; mz < size.z ; mz++ )
	{
		printf("-----------------------------\n");//printf( "[Dim%d]\n", z );
		for ( int my = 0; my < size.y ; my++ )
		{
			for ( int mx = 0; mx < size.x ; mx++ )
			{
				cout << " " << tensor[mz *(size.x * size.y) + my * size.x + mx];
				//printf( "%.3f \t", (float)tensor[mz *(size.x * size.y) + my * size.x + mx]);
			}
			printf( "\n" );
		}
	}
	printf("-------------------------\n");
}

float Cross_entropy(type_t * y_hat, type_t * y, int nclass) // softmax cross entropy: E = (-1/n) * sum(y*log(y_hat) + (1-y)*log(1-y_hat))
{
	float E = 0.0;

	for (int filter = 0; filter < nclass ; ++filter)
	{
		if ((float)y[filter] == 1)
		{
			E = (float)y[filter] * log((float)y_hat[filter]); // Entropy has value only correct class
			std::cout << "cross " << E <<" y " << (float)y[filter] << " yhat "<<  y_hat[filter] << std::endl;
		}
	}

	return E;
}
