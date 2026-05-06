#include <stdio.h>
#include "semantic.h"
#include "icg.h"

int main() {

    printf("Compiler Design Project\n");

    semanticCheck();

    generateICG();

    return 0;
}
