#include <stdio.h>

#define mul(x, y) x*y

void main(void)
{
    int x = 1;
    int y = 2;

    int z = mul(x+y, x+y);

    printf("%d\n", z);
}
