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

fn int div(int a, int b) => a/b;

fn void main()
{
    io::printf("%d/%d=%d\n", 10, 2, div(a:10, b:2));
    io::printf("%d/%d=%d\n", 10, 3, div(a:10, b:3));
}
