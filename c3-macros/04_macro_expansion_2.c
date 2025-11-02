#include <stdio.h>

#define add_mul(a, b) ((a)*(b)+1)

void main(void)
{
    int x = 1;
    int y = 2;

    int z = add_mul(x+y, x+y);
    int w = add_mul(x+y, x+y)*2;

    printf("%d\n", z);
    printf("%d\n", w);
}
