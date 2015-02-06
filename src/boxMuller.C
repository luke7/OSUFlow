#include "boxMuller.h"

double generateGaussianNoise(const double mu, const double sigma)
{
	using namespace std;
	static bool haveSpare = false;
	static double rand1, rand2;
 
	if(haveSpare)
	{
		haveSpare = false;
		return (sigma * sqrt(rand1) * sin(rand2)) + mu;
	}
 
	haveSpare = true;
 
	rand1 = rand() / ((double) RAND_MAX);
	if(rand1 < 1e-100) rand1 = 1e-100;
	rand1 = -2 * log(rand1);
	rand2 = (rand() / ((double) RAND_MAX)) * TWO_PI;
 
	return (sigma * sqrt(rand1) * cos(rand2)) + mu;
}
