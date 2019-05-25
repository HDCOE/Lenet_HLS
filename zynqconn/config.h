/*
 * configuration port size
 *
 *
 * */
#define mini_batch 16

#include "ap_fixed.h"

typedef ap_fixed<16,4>  type_t;
//typedef float  type_t;

#include "Tensor.h"
#include "Optimization_method.h"
#include "RELU_layer.h"
#include "CONV_layer.h"
#include "FC_layer.h"
#include "POOLING_layer.h"
#define inx 32
#define iny 32
#define inz 1

#define outx 1
#define outy 1
#define outz 10

#define mem_in inx * iny * inz
#define mem_out outx * outy * outz

