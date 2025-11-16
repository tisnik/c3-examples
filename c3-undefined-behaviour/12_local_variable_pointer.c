#include <stdio.h>

int* foo()
{
    int a = 42;
    return &a;
}

int main(void)
{
    int *p = foo();
    printf("%d\n", *p);
    *p = -1;
    return 0;
}
