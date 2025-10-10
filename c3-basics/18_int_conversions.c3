/*
 * Seriál Programovací jazyk C3
 * https://www.root.cz/serialy/programovaci-jazyk-c3/
 *
 * Demonstrační příklad použitý v článku:
 * Programovací jazyk C3: datové typy pro moderní architektury
 * https://www.root.cz/clanky/programovaci-jazyk-c3-datove-typy-pro-moderni-architektury/
 */

module int_conversions;
import std::io;

fn void main()
{
    ichar a = 100;
    short b = 100*100;
    int c = 100*100*100;

    io::printf("a=%d\n", a);
    io::printf("b=%d\n", b);
    io::printf("c=%d\n", c);

    short x = a;
    short y = b;
    short z = c;

    io::printf("x=%d\n", x);
    io::printf("y=%d\n", y);
    io::printf("z=%d\n", z);
}
