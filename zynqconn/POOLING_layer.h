#pragma pack(push,1)
/* Find the maximum value of tensor*/

//this layer include pool -> relu

template< int poolsize, int stride, int mode, int x, int y, int z>
struct pool_layer
{
    layer_type type = pooling;
    tensor_t<type_t, x, y, z> input;
    tensor_t<type_t,(x - poolsize )/stride + 1, (y - poolsize )/stride + 1 , z> output;

    relu_layer<(x - poolsize )/stride + 1, (y - poolsize )/stride + 1 , z> relu1;

    int vert_start,vert_end,horiz_start,horiz_end;
    pool_layer()
    {

    }

    void forward()
    {
        this->forward_pool();
        relu1.input = this->output;
        relu1.forward();
        this->output = relu1.output;
    }

    void forward_pool()
    {
        type_t max = 0, avg = 0;
        type_t cache_in;

        for (int o_y = 0; o_y < output.size.y; ++o_y)
        {
            for (int o_x = 0; o_x < output.size.x; ++o_x)
            {
                vert_start = o_y * stride;
                horiz_start = o_x * stride;

                // pool
                for (int ch = 0; ch < output.size.z; ++ch)
                {
                    max = input(vert_start, horiz_start, ch); avg = 0;

                    //pool loop
                    for (int v = vert_start; v < vert_start + poolsize; ++v)
                        for (int h = horiz_start; h < horiz_start + poolsize; ++h)
                        {
                            cache_in = input(v,h,ch);
                            avg += cache_in;
                            //find max
                            if (cache_in > max)
                                max = cache_in;
                        }
                    // end loop pool
                    if (mode == 0) // max
                        output(o_y,o_x,ch) = max;
                    else // average
                        output(o_y,o_x,ch) = avg / (poolsize * poolsize);
                }
            }
        }
    } //end forward

}; // end pool
#pragma pack(pop)
