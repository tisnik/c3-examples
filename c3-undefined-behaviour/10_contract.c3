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

<*
 @ensure return > a
*>
fn short add(short a, short b)
{
    return a+b;
}

fn void main()
{
    io::printf("%d+%d=%d\n", 1, 1, add(1, 1));
    io::printf("%d+%d=%d\n", 32767, 1, add(32767, 1));
}
