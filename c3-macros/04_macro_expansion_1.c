/*
 * Seriál Programovací jazyk C3
 * https://www.root.cz/serialy/programovaci-jazyk-c3/
 * --------------------------------------------------
 *
 * Demonstrační příklad použitý v článku:
 * Systém maker v programovacím jazyku C3
 * https://www.root.cz/clanky/system-maker-v-programovacim-jazyku-c3/
 */

#include <stdio.h>

#define add_mul(a, b) (a)*(b)+1

void main(void)
{
    int x = 1;
    int y = 2;

    int z = add_mul(x+y, x+y);
    int w = add_mul(x+y, x+y)*2;

    printf("%d\n", z);
    printf("%d\n", w);
}
