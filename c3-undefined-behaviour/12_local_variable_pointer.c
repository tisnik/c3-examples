/*
 * Seriál Programovací jazyk C3
 * https://www.root.cz/serialy/programovaci-jazyk-c3/
 * --------------------------------------------------
 *
 * Demonstrační příklad použitý v článku:
 * Koncept nedefinovaného chování v jazyku C3
 * https://www.root.cz/clanky/koncept-nedefinovaneho-chovani-v-jazyku-c3/
 */

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
