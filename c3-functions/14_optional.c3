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

faultdef ZERO_INPUT;

fn int? div(int a=1, int b=1)
{
    if (b==0) {
        return ZERO_INPUT?;
    }
    return a/b;
}

fn void main()
{
    int? result;

    result = div(10, 1) ?? -1;
    (void)io::printf("%d/%d=%d\n", 10, 1, result);

    result = div(10, 0) ?? -1;
    (void)io::printf("%d/%d=%d\n", 10, 0, result);
}
