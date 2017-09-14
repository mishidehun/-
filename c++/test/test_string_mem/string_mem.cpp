#include <string>	
#include <vector>
#include <unistd.h>
#include <stdio.h>
#include <malloc.h>
#include <string.h>

std::string str = "22222222222222222222222222222222222222222222222222222";
const int MaxPath = 4096;

typedef struct Struct1{
	int st1;
	char st2[MaxPath];

	Struct1(){
		memset(this, 0, sizeof(Struct1));
	}

}Struct1;

typedef struct Struct2{
	char name[MaxPath];
	int id;
	std::vector<Struct1> st;

	Struct2(){
		memset(name, 0, MaxPath);
		id = 0; 
		st.clear();
	}
}Struct2;

void test(){
	std::vector<Struct2> vecSt2;

	for (int i=0; i<7000; i++){
		Struct2 ST2;	
		memcpy(ST2.name, str.c_str(), sizeof(str));
		ST2.id = 1;
		for (int j=0; j<30; j++){
			Struct1 ST1;
			ST1.st1 = 0;
			memcpy(ST1.st2, str.c_str(), sizeof(str));
			ST2.st.push_back(ST1);
		}
		vecSt2.push_back(ST2);
	}
}

int main(int argc, char **argv){
	
	test();

//	malloc_trim(0);

	printf("end of test\n");

	while(1){
		sleep(2);
	}

	return 0;
}
