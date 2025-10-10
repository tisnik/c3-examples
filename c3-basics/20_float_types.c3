/*
 * Seriál Programovací jazyk C3
 * https://www.root.cz/serialy/programovaci-jazyk-c3/
 *
 * Demonstrační příklad použitý v článku:
 * Programovací jazyk C3: datové typy pro moderní architektury
 * https://www.root.cz/clanky/programovaci-jazyk-c3-datove-typy-pro-moderni-architektury/
 */

module float_types;
import std::io;

fn void main()
{
    float16 x = 1e1;
    float y = 1e10;
    double z = 1e100;
    float128 w = 1e100;

    io::printf("x=%s\n", x);
    io::printf("y=%s\n", y);
    io::printf("z=%s\n", z);
    io::printf("w=%s\n", w);
}
