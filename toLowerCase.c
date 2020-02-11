//
// Created by drisc on 2/6/2020.
//
#include <stdio.h>
#include "toUpperCase.h"
#include <string.h>

char * toLowerCase(char str[]) {
    for (int i = 0; i < strlen(str); ++i) {
        if ((int)str[i] >= 65 && (int)str[i] <= 90) {
            str[i] = str[i] | 32;
        }
    }
    return str;
}