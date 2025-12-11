/*
 * Seriál Programovací jazyk C3
 * https://www.root.cz/serialy/programovaci-jazyk-c3/
 * --------------------------------------------------
 *
 * Demonstrační příklad použitý v článku:
 * Koncept nedefinovaného chování v jazyku C3
 * https://www.root.cz/clanky/koncept-nedefinovaneho-chovani-v-jazyku-c3/
 */

module undefined_behaviour;
import std::io;

fn short foo(short a)
{
    return -1*a;
}

fn void main()
{
    io::printf("%d->%d\n", 0, foo(0));
    io::printf("%d->%d\n", 1, foo(1));
    io::printf("%d->%d\n", 32767, foo(32767));
    io::printf("%d->%d\n", -32767, foo(-32767));
    io::printf("%d->%d\n", -32768, foo(-32768));
}
