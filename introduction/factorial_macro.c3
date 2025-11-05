/*
 * Seriál Programovací jazyk C3
 * https://www.root.cz/serialy/programovaci-jazyk-c3/
 * --------------------------------------------------
 *
 * Demonstrační příklad použitý v článku:
 * Programovací jazyk C3: evoluce, nikoli revoluce
 * https://www.root.cz/clanky/programovaci-jazyk-c3-evoluce-nikoli-revoluce/
 */

import std::io;

macro int factorial($n)
{
    $if $n == 0:
        return 1;
    $else
        return $n * factorial($n - 1);
    $endif
}

fn void main()
{
    const int N = 10;
    io::printf("%d! = %d\n", N, factorial(N));
}
