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
    io::printf("1 items of int: %d\n", int[<1>].sizeof);
    io::printf("2 items of int: %d\n", int[<2>].sizeof);
    io::printf("3 items of int: %d\n", int[<3>].sizeof);
    io::printf("4 items of int: %d\n", int[<4>].sizeof);
    io::printf("5 items of int: %d\n", int[<5>].sizeof);
    io::printf("6 items of int: %d\n", int[<6>].sizeof);
    io::printf("7 items of int: %d\n", int[<7>].sizeof);
    io::printf("8 items of int: %d\n", int[<8>].sizeof);
    io::printf("9 items of int: %d\n", int[<9>].sizeof);
    io::printf("10 items of int: %d\n", int[<10>].sizeof);
    io::printf("11 items of int: %d\n", int[<11>].sizeof);
    io::printf("12 items of int: %d\n", int[<12>].sizeof);
    io::printf("13 items of int: %d\n", int[<13>].sizeof);
    io::printf("14 items of int: %d\n", int[<14>].sizeof);
    io::printf("15 items of int: %d\n", int[<15>].sizeof);
}
