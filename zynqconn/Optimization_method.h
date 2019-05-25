
#define learning_rate  (type_t)0.01 * ((type_t)1.0 / (type_t)mini_batch)  //0.000167 // 0.000625 // 0.01 * (1.0/16) learning_rate * (1 / batch size)
#define momentum 0.9

static void SGD_update(type_t& W, type_t& gradient , type_t& V_m)
{
	V_m = (type_t)momentum * V_m - (type_t)learning_rate * gradient;

	W += V_m;

	 //W = W - learning_rate * gradient;
	
	gradient = 0;
}
