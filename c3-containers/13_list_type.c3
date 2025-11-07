/*
 * Seriál Programovací jazyk C3
 * https://www.root.cz/serialy/programovaci-jazyk-c3/
 * --------------------------------------------------
 *
 * Demonstrační příklad použitý v článku:
 * Programovací jazyk C3: složené datové typy a kontejnery
 * https://www.root.cz/clanky/programovaci-jazyk-c3-slozene-datove-typy-a-kontejnery/
 */

module containers;
import std::io;
import std::collections::list;

alias ListInt = List {int};

fn void main()
{
    ListInt a;

    a.init(mem);

    for (int i=0; i<10; i++) {
        a.push(i+1);
    }

    io::printf("a=%s\n", a);

    a.free();
}
