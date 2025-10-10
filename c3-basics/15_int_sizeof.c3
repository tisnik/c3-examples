/*
 * Seriál Programovací jazyk C3
 * https://www.root.cz/serialy/programovaci-jazyk-c3/
 *
 * Demonstrační příklad použitý v článku:
 * Programovací jazyk C3: datové typy pro moderní architektury
 * https://www.root.cz/clanky/programovaci-jazyk-c3-datove-typy-pro-moderni-architektury/
 */

module uint_types;
import std::io;

fn void main()
{
    io::printf("sizeof ichar  = %d\n", ichar.sizeof);
    io::printf("sizeof short  = %d\n", short.sizeof);
    io::printf("sizeof int    = %d\n", int.sizeof);
    io::printf("sizeof long   = %d\n", long.sizeof);
    io::printf("sizeof int128 = %d\n", int128.sizeof);
}
