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

extern fn int sum(int *values, int length);

fn void main()
{
    int[10] values = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    int[] slice = &values;
    io::printf("%d\n", sum(slice, slice.len));
}

