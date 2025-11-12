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

fn int add(int a, int b)
{
    return a+b;
}

fn void main()
{
    add(1, 2);
    add(1);
    add(1, 2, 3);

    add(1.1, 2.2);
    add(5000000000, 5000000000);
}
