#include "functions.h"
int factorial(int i)
{
	return i==1 ? 1 : i*factorial(i-1);
}