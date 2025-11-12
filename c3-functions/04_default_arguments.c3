/*
 * Seriál Programovací jazyk C3
 * https://www.root.cz/serialy/programovaci-jazyk-c3/
 * --------------------------------------------------
 *
 * Demonstrační příklad použitý v článku:
 * Funkce v programovacím jazyku C3
 * https://www.root.cz/clanky/funkce-v-programovacim-jazyku-c3/
 */

module functions;
import std::io;

fn int add(int a=0, int b=0)
{
    return a+b;
}

fn void main()
{
    io::printf("%d+%d=%d\n", 0, 0, add());
    io::printf("%d+%d=%d\n", 1, 0, add(1));
    io::printf("%d+%d=%d\n", 1, 2, add(1, 2));
}
