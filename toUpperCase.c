//
// Created by drisc on 2/6/2020.
//
#include <stdio.h>
#include "toUpperCase.h"
#include <string.h>

int subtract(int x, int y) {
    if (y == 0)
        return x;
    return subtract(x ^ y, (~x & y) << 1);
}

char * toUpperCase(char str[]) {
    for (int i = 0; i < strlen(str); ++i) {
        if ((int)str[i] >= 97 && (int)str[i] <= 122) {
            printf("%X ", str[i]);
            str[i] = str[i] & (~32);
        }
    }
    printf("\n");
    return str;
}