#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

#define SIZE 64516

int main(){
	int32_t arr1[SIZE], arr2[SIZE];

	srand(6);

	for(uint32_t i = 0; i < SIZE; i++){
		arr1[i] = rand() % SIZE;
		arr2[i] = rand() % SIZE;
	}
	printf("%d %d\n", arr1[64], arr2[64]);

	FILE *first, *second;
	first = fopen("first.txt", "w+");
	fwrite(arr1, sizeof(int32_t), SIZE, first);
	fclose(first);

	second = fopen("second.txt", "w+");
	fwrite(arr2, sizeof(int32_t), SIZE, second);
	fclose(second);

	return 0;
}
