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

#define mul(a, b) (a)*(b)

void main(void)
{
    int x = 1;
    int y = 2;

    int z = mul(x+y, x+y);

    printf("%d\n", z);
}
