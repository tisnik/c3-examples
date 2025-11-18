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

extern fn CLong multiply(CLong a, CLong b);

fn void main()
{
    long a = 6L;
    long b = 7L;
    io::printf("%d\n", multiply(a, b));
    io::printf("%d\n", a*b);
    io::printf("%b\n", a*b == multiply(a, b));
}

