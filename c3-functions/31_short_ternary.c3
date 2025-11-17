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

faultdef ZERO_INPUT;

fn int? div(int a=1, int b=1) => b==0 ? ZERO_INPUT? : a/b;

fn void main()
{
    (void)io::printf("%d/%d=%d\n", 1, 1, div());
    (void)io::printf("%d/%d=%d\n", 10, 1, div(a:10));
    (void)io::printf("%d/%d=%d\n", 10, 2, div(a:10, b:2));
    (void)io::printf("%d/%d=%d\n", 10, 3, div(a:10, b:3));
    (void)io::printf("%d/%d=%d\n", 10, 0, div(a:10, b:0));
}
