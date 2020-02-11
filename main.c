#include <stdio.h>
#include "toUpperCase.h"
#include "toLowerCase.h"
#include "multi65.h"

int main() {
    char hbw[] = "Hello bitWise";

    printf("%s \n", toUpperCase(hbw));
    printf("%s \n", toLowerCase(hbw));
    printf("%d \n", multi65(101));
    printf("%d \n", multi65(-101));
    printf("%d \n", multi65(1000000000));

    return 0;
}
