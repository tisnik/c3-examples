/*
 * Seriál Programovací jazyk C3
 * https://www.root.cz/serialy/programovaci-jazyk-c3/
 *
 * Demonstrační příklad použitý v článku:
 * Programovací jazyk C3: datové typy pro moderní architektury
 * https://www.root.cz/clanky/programovaci-jazyk-c3-datove-typy-pro-moderni-architektury/
 */

module int_to_bool_3;
import std::io;

fn void main()
{
    bool x = bool(1);
    bool y = bool(0);
    bool z = bool(42);
    io::printf("Bool value=%b\n", x);
    io::printf("Bool value=%b\n", y);
    io::printf("Bool value=%b\n", z);
}
