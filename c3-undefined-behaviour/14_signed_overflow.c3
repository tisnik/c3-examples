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

fn short inc(short a)
{
    return a+1;
}

fn void main()
{
    io::printf("%d+1=%d\n", 0, inc(0));
    io::printf("%d+1=%d\n", 1, inc(1));
    io::printf("%d+1=%d\n", 32766, inc(32766));
    io::printf("%d+1=%d\n", 32767, inc(32767));
    io::printf("%d+1=%d\n", -32767, inc(-32767));
    io::printf("%d+1=%d\n", -32768, inc(-32768));
}
