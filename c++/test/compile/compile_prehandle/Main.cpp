#include <iostream>	
#include <stdlib.h>
using namespace std;

#define MAXSIZE
#ifdef MAXSIZE
int g_maxSize = 10;
#else
int g_maxSize = 1;
#endif

int main(int argc, char **argv){

	// int 
//	int a *= MAXSIZE;
	int a = atoi(argv[1]) + atoi(argv[2]);
	cout << a << endl;
	return 0;
}
