/*
 * Seriál Programovací jazyk C3
 * https://www.root.cz/serialy/programovaci-jazyk-c3/
 * --------------------------------------------------
 *
 * Demonstrační příklad použitý v článku:
 * Programovací jazyk C3: datové typy pro moderní architektury
 * https://www.root.cz/clanky/programovaci-jazyk-c3-datove-typy-pro-moderni-architektury/
 */

module no_suffixes;
import std::io;

fn void main()
{
    uint128 a = 100;
    uint128 b = 100*100;
    uint128 c = 100*100*100;
    uint128 d = 100*100*100*100;
    uint128 e = 100*100*100*100*100;
    uint128 f = 100*100*100*100*100*100;

    io::printf("a=%d\n", a);
    io::printf("b=%d\n", b);
    io::printf("c=%d\n", c);
    io::printf("d=%d\n", d);
    io::printf("e=%d\n", e);
    io::printf("f=%d\n", f);
}
