/*
Name: Ida Voong
Name: Jenna Chan
*/

#include <stdio.h>
#include "operations.h"

int main() {
    char decision;
    int numOperations = 0;
    int num1;
    int num2;
    int op;
    int result;
    
    printf("Welcome to the Calculator program.\n");
    printf("Operations - 1:add 2:subtract 3:multiply 4:divide 5:and 6:or 7:xor 8:lshift 9:rshift\n");
    while (decision != 'n') {
        printf("\nNumber of operations performed: %d\n", numOperations);
        printf("Enter number: ");
        scanf(" %d", &num1);
        printf("Enter second number: ");
        scanf(" %d", &num2);
        printf("Select operation: ");
        scanf(" %d", &op);
        printf("Result: ");
        switch (op) {
        case 1:
            result = addnums(num1, num2);
            printf(" %d\n", result);
            break;
        case 2:
            result = subnums(num1, num2);
            printf(" %d\n", result);
            break;
        case 3:
            result = multnums(num1, num2);
            printf(" %d\n", result);
            break;
        case 4:
            result = divnums(num1, num2);
            printf(" %d\n", result);
            break;
        case 5:
            result = andnums(num1, num2);
            printf(" %d\n", result);
            break;
        case 6:
            result = ornums(num1, num2);
            printf(" %d\n", result);
            break;
        case 7:
            result = xornums(num1, num2);
            printf(" %d\n", result);
            break;
        case 8:
            result = lshiftnums(num1, num2);
            printf(" %d\n", result);
            break;
        case 9:
            result = rshiftnums(num1, num2);
            printf(" %d\n", result);
            break;
        default:
            printf("Invalid Operation\n");
            break;
        }
        numOperations = numOperations + 1;
        printf("Continue (y/n)?: ");
        scanf(" %c", &decision);
    }
    printf("\nNumber of operations performed: %d\n", numOperations);
    printf("Exiting\n");
    return 0;
}