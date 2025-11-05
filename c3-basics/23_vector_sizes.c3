/*
 * Seriál Programovací jazyk C3
 * https://www.root.cz/serialy/programovaci-jazyk-c3/
 * --------------------------------------------------
 *
 * Demonstrační příklad použitý v článku:
 * Programovací jazyk C3: datové typy pro moderní architektury
 * https://www.root.cz/clanky/programovaci-jazyk-c3-datove-typy-pro-moderni-architektury/
 */

module float_types;
import std::io;

fn void main()
{
    io::printf("10 items of bool: %d\n", bool[<10>].sizeof);
    io::printf("10 items of ichar: %d\n", ichar[<10>].sizeof);
    io::printf("10 items of short: %d\n", short[<10>].sizeof);
    io::printf("10 items of int: %d\n", int[<10>].sizeof);
    io::printf("10 items of long: %d\n", long[<10>].sizeof);
    io::printf("10 items of int128: %d\n", int128[<10>].sizeof);
    io::printf("10 items of float16: %d\n", float16[<10>].sizeof);
    io::printf("10 items of float: %d\n", float[<10>].sizeof);
    io::printf("10 items of double: %d\n", double[<10>].sizeof);
    io::printf("10 items of float128: %d\n", float128[<10>].sizeof);
}
