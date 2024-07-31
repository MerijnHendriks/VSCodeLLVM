#include <stdio.h>
#include <stdlib.h>
#include "../include/ext.h"

extern int foo(void);

int main(void)
{
    int32_t c = add(1, 2);
    int32_t d = foo();
    printf("%d, %d\n", c, d);
    return EXIT_SUCCESS;
}
