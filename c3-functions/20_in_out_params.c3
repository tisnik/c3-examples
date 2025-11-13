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

fn void set(int *p, int new_value)
{
    *p=new_value;
}

fn void main()
{
    int i = 0;
    io::printf("%d\n", i);
    set(&i, 42);
    io::printf("%d\n", i);
}
