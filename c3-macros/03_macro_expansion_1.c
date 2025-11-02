#include <stdio.h>

#define mul(a, b) a*b

void main(void)
{
    int x = 1;
    int y = 2;

    int z = mul(x+y, x+y);

    printf("%d\n", z);
}
