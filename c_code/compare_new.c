#include <stdio.h>
#include <stdint.h>

int main() {
    FILE *file = fopen("first.txt", "rb");
    if (file == NULL) {
        printf("Error opening file\n");
        return 1;
    }

    uint32_t data;
    while (fread(&data, sizeof(uint32_t), 1, file) == 1) {
        printf("%u\n", data); // Print the data in normal integer format (unsigned type)
    }

    fclose(file);
    return 0;
}

