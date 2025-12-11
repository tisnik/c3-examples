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

fn short shift(short a, short b)
{
    return a<<b;
}

fn void main()
{
    io::printf("%d+1=%d\n", 0, shift(0, -1));
    io::printf("%d+1=%d\n", 1, shift(1, -1));
    io::printf("%d+1=%d\n", 2, shift(2, -1));
    io::printf("%d+1=%d\n", 32766, shift(32766, -1));
    io::printf("%d+1=%d\n", 32767, shift(32767, -1));
    io::printf("%d+1=%d\n", -32767, shift(-32767, -1));
    io::printf("%d+1=%d\n", -32768, shift(-32768, -1));
}
