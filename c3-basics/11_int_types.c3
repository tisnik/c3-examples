/*
 * Seriál Programovací jazyk C3
 * https://www.root.cz/serialy/programovaci-jazyk-c3/
 * --------------------------------------------------
 *
 * Demonstrační příklad použitý v článku:
 * Programovací jazyk C3: datové typy pro moderní architektury
 * https://www.root.cz/clanky/programovaci-jazyk-c3-datove-typy-pro-moderni-architektury/
 */

module int_types;
import std::io;

fn void main()
{
    ichar a = '*';
    short b = -42;
    int c = -42;
    long d = -42;
    int128 e = -42;

    io::printf("ichar value=%c\n", a);
    io::printf("short value=%d\n", b);
    io::printf("int value=%d\n", c);
    io::printf("long value=%d\n", d);
    io::printf("int128 value=%d\n", e);
}
