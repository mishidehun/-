/********************************************
Author: zchshen
Date: 2017-07-09
Brief: ascending order of insert sort by array.
********************************************/

#include <iostream>
#include <stdlib.h>
#include <string.h>

const int MaxArraySize = 128;

void InsertSortUp(int *array, const int &count){
	int tmp = 0;

	for (int i=1; i<count; i++){
		tmp = array[i];
		for (int j=i-1; j>=0; j--){
			if (array[i] < array[j]){
				array[j+1] = array[j];
			}
			else{
				array[j+1] = tmp;
				break;
			}
		}
	}
}

int main(int argc, char **argv){
	if (argc < 2){
		std::cout << argv[0] << " your_array" << std::endl;
		std::cout << "Example: " << argv[0] << " 1 3 2 4" << std::endl;
		exit(1);
	}

	if (argc > MaxArraySize){
		std::cout << "Input Array too long!" << std::endl;
	}

	std::cout << argc << std::endl;
	std::cout << argv[1] << std::endl << std::endl;

	int ArraySize = argc - 1;
	int *Array = new int[MaxArraySize + 1];
	memset(Array, 0, MaxArraySize + 1);

	std::cout << "Org order:" << std::endl;
	for (int i=1; i<argc; i++){
		Array[i-1] = atoi(argv[i]);
		std::cout << Array[i-1] << " ";
	}
	std::cout << std::endl;

	InsertSortUp(Array, ArraySize);

	std::cout << "ascending order:" << std::endl;
	for (int i=0; i<ArraySize; i++){
		std::cout << Array[i] << " ";
	}
	std::cout << std::endl;

	return 0;
}
