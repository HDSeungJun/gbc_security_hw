#include <stdio.h>
#include <stdlib.h>

int data_variable = 7;
int bss_vairable = 0;

const int MAX = 1e10;

void text() {}

int main() {
    long long stack_variable = 57;
    long long* heap_variable = (long long *)malloc(sizeof(long long)*MAX);

    printf("Text memory address:\t%p\n", text);
    printf("Data memory address:\t%p\n", &data_variable);
    printf("bss memory address: \t%p\n", &bss_vairable);
    printf("Heap memory address:\t%p\n", heap_variable);
    printf("Stack memory address:\t%p\n", &stack_variable);
}