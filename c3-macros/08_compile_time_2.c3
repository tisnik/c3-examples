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

macro add($a, $b)
{
    return $a+$b;
}

fn void main()
{
    const int X = 1;
    const int Y = 2;

    const int Z = add(X, Y);

    io::printf("%d + %d = %d\n", X, Y, Z);
}
