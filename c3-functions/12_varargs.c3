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

fn int sum(int... args, int multiplier)
{
    int sum = 0;
    foreach (arg : args) {
        sum += arg;
    }
    return sum * multiplier;
}

fn void main()
{
    int[10] values = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    io::printf("%d\n", sum(multiplier: 10));
    io::printf("%d\n", sum(1, multiplier: 10));
    io::printf("%d\n", sum(1, 2, multiplier: 10));
    io::printf("%d\n", sum(1, 2, 3, multiplier: 10));
    io::printf("%d\n", sum(...values, multiplier: 10));
}
