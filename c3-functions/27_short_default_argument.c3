/*
 * Seriál Programovací jazyk C3
 * https://www.root.cz/serialy/programovaci-jazyk-c3/
 * --------------------------------------------------
 *
 * Demonstrační příklad použitý v článku:
 * Funkce a metody v programovacím jazyku C3 (dokončení)
 * https://www.root.cz/clanky/funkce-a-metody-v-programovacim-jazyku-c3-dokonceni/
 */

module functions;
import std::io;

fn int add(int a, int b=0) => a+b;

fn void main()
{
    io::printf("%d+%d=%d\n", 1, 0, add(1));
    io::printf("%d+%d=%d\n", 1, 2, add(1, 2));
}
