
#include "byteswap.h"
using namespace  std;

template<int x, int y, int z, int nclass>
struct case_t
{
	tensor_t<type_t,x, y, z> data;
	tensor_t<type_t,1,1,nclass> out;
};
void Padd(type_t * out, point_t out_size, type_t * in, int padsize)
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
uint8_t* read_file( const char* szFile )
{

	ifstream file( szFile, ios::binary | ios::ate );
	streamsize size = file.tellg();
	file.seekg( 0, ios::beg );

	if ( size == -1 )
		return nullptr;

	uint8_t* buffer = new uint8_t[size];
	file.read( (char*)buffer, size );
	return buffer;
}


vector<case_t<32,32,1,10>> read_dataset(const char * data, const char * label_out)
{
	vector<case_t<32,32,1,10>> cases;


	uint8_t* train_image = read_file( data );
	uint8_t* train_labels = read_file( label_out);

	//uint8_t* train_image = read_file( "train-images.idx3-ubyte" );
	//uint8_t* train_labels = read_file( "train-labels.idx1-ubyte" );

	uint32_t case_count = byteswap_uint32( *(uint32_t*)(train_image + 4) );

	for ( int i = 0; i < (int)case_count; i++ )
	{
		//case_t c {tensor_t<float>( 28, 28, 1 ), tensor_t<float>( 1, 1, 10 )};//case_t c {tensor_t<float>( 28, 28, 1 ), tensor_t<float>( 10, 1, 1 )};
		//case_t c_pad{tensor_t<float>( 32, 32, 1 ), tensor_t<float>( 1, 1, 10 )};
		
		case_t<28,28,1,10> c;
		case_t<32,32,1,10> c_pad;
		uint8_t* img = train_image + 16 + i * (28 * 28);
		uint8_t* label = train_labels + 8 + i;

		for ( int x = 0; x < 28; x++ )
			for ( int y = 0; y < 28; y++ )
				c.data( x, y, 0 ) = img[x + y * 28] / 255.f;

		for ( int b = 0; b < 10; b++ )
			c.out( 0, 0, b ) = *label == b ? 1.0f : 0.0f; //c.out( b, 0, 0 ) = *label == b ? 1.0f : 0.0f;
		// 2 padd
		
		//Padding(c_pad.data,c.data,2);
		Padd(c_pad.data.data(), c_pad.data.size, c.data.data(), 2);
		c_pad.out = c.out;

		cases.push_back( c_pad);
	}
	delete[] train_image;
	delete[] train_labels;

	return cases;
}

void save_model(float * w, point_t w_size, ofstream& outfile)
{
	for (int z = 0; z < w_size.z; ++z)
		for (int y = 0; y < w_size.y; ++y)
			for (int x = 0; x < w_size.x; ++x)
				outfile.write((char *)&w[z *(w_size.x * w_size.y) + y * w_size.x + x], sizeof(float));
}

void load_model(float *w, point_t w_size, ifstream& infile)
{
  	for (int z = 0; z < w_size.z; ++z)
		for (int y = 0; y < w_size.y; ++y)
			for (int x = 0; x < w_size.x; ++x)
				infile.read((char *)&w[z *(w_size.x * w_size.y) + y * w_size.x + x], sizeof(float));
}

