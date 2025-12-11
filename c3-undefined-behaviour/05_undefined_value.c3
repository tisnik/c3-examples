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

fn void main()
{
    int x = 0;
    int y;
    int z @noinit;
    io::printf("x: %d\n", x);
    io::printf("y: %d\n", y);
    io::printf("z: %d\n", z);
}
