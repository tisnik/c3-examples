/*
 * Seriál Programovací jazyk C3
 * https://www.root.cz/serialy/programovaci-jazyk-c3/
 * --------------------------------------------------
 *
 * Demonstrační příklad použitý v článku:
 * Programovací jazyk C3: složené datové typy a kontejnery
 * https://www.root.cz/clanky/programovaci-jazyk-c3-slozene-datove-typy-a-kontejnery/
 */

module containers;
import std::io;

fn void main()
{
    int[10] a = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    io::printf("a=%s\n", a);

    int[] b = a[3 : 4];
    io::printf("b=%s\n", b);

    int[] c = a[3 : 0];
    io::printf("c=%s\n", c);

    int[] d = a[^6 : 4];
    io::printf("d=%s\n", d);
}
