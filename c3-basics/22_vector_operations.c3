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
    int[<10>] b = {2, 2, 2, 2, 2, 2, 2, 2, 2, 2};

    io::printf("a=%s\n", a);
    io::printf("b=%s\n", b);

    io::printn();

    io::printf("a+b=%s\n", a+b);
    io::printf("a-b=%s\n", a-b);
    io::printf("a*b=%s\n", a*b);
    io::printf("a/b=%s\n", a/b);

    io::printn();

    io::printf("a+2=%s\n", a+2);
    io::printf("a-2=%s\n", a-2);
    io::printf("a*2=%s\n", a*2);
    io::printf("a/2=%s\n", a/2);

    io::printn();

    io::printf("a==b=%s\n", a==b);
    io::printf("a!=b=%s\n", a!=b);
    io::printf("a==a=%s\n", a==a);
    io::printf("a!=a=%s\n", a!=a);

    io::printn();
    io::printf("%s\n", a-a==b-b);
    io::printf("%s\n", a+b==b+a);
}
