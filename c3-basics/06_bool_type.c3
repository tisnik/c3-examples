/*
 * Seriál Programovací jazyk C3
 * https://www.root.cz/serialy/programovaci-jazyk-c3/
 * --------------------------------------------------
 *
 * Demonstrační příklad použitý v článku:
 * Programovací jazyk C3: datové typy pro moderní architektury
 * https://www.root.cz/clanky/programovaci-jazyk-c3-datove-typy-pro-moderni-architektury/
 */

module bool_type;
import std::io;

fn void main()
{
    bool x = true;
    bool y = false;
    io::printf("Bool value=%b\n", x);
    io::printf("Bool value=%b\n", y);
}
