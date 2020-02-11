//
// Created by drisc on 2/7/2020.
//
#include "multi65.h"

int multi65(int x) {
    int add = x;
    x = (x<<6);
    while (add != 0) {
        x = x ^ add;
        add = (x & add) << 1;
    }
    return x;
}