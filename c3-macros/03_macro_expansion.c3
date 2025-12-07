/*
 * Seriál Programovací jazyk C3
 * https://www.root.cz/serialy/programovaci-jazyk-c3/
 * --------------------------------------------------
 *
 * Demonstrační příklad použitý v článku:
 * Systém maker v programovacím jazyku C3
 * https://www.root.cz/clanky/system-maker-v-programovacim-jazyku-c3/
 */

module macros;

import std::io;

macro mul(a, b)
{
    return a*b;
}

fn void main()
{
    int x = 1;
    int y = 2;

    int z = mul(x+y, x+y);

    io::printf("%d\n", z);
}
