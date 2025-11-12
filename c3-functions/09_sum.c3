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

fn int sum(int... args)
{
    int sum = 0;
    foreach (arg : args) {
        sum += arg;
    }
    return sum;
}

fn void main()
{
    io::printf("%d\n", sum());
    io::printf("%d\n", sum(1));
    io::printf("%d\n", sum(1, 2));
    io::printf("%d\n", sum(1, 2, 3));
}
