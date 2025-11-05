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
    int[<10>] a = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};

    io::printf("a=%s\n", a);
}
