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

macro add(int x, int y)
{
    return x+y;
}

fn void main()
{
    int x = 1;
    int y = 2;

    io::printf("%d + %d = %d\n", x, y, add(x, y));

    float u = 1.1;
    float v = 2.2;

    io::printf("%f + %f = %f\n", u, v, add(u, v));

    int[<10>] a = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    int[<10>] b = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};

    io::printf("%s + %s = %s\n", a, b, add(a, b));
}
