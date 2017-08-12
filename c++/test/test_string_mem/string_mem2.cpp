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
	std::string st2;
}Struct1;

typedef struct Struct2{
	std::string name;
	int id;
	std::vector<Struct1> st;
}Struct2;

void test(){
	std::vector<Struct2> vecSt2;

	for (int i=0; i<70000; i++){
		Struct2 ST2;	
		ST2.name = str;
		ST2.id = 1;
		for (int j=0; j<30; j++){
			Struct1 ST1;
			ST1.st1 = 0;
			ST1.st2 = str;
			ST2.st.push_back(ST1);
		}
		vecSt2.push_back(ST2);
	}

	for (std::vector<Struct2>::iterator iter=vecSt2.begin(); iter!=vecSt2.end(); iter++){
		std::string().swap(iter->name);

		for (std::vector<Struct1>::iterator iter2=iter->st.begin(); iter2!=iter->st.end(); iter2++){
			std::string().swap(iter2->st2);
		}
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
