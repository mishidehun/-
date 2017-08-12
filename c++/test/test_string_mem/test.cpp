#include <string>
#include <unistd.h>
#include <stdio.h>
#include <vector>
#include <malloc.h>
#include <stdlib.h>

std::string str = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";

void test(){
	std::vector<std::string> vecStr;
	for (int i=0; i<2000000; i++){
		vecStr.push_back(str);
		//malloc_trim(0);
	}
}

int main(int argc, char **argv){
	time_t s = time(NULL);
	test();
	time_t e = time(NULL);

	printf("test end, TIME: %d\n", e - s);

	while(1){
		sleep(1);
	}
	return 0;
}
