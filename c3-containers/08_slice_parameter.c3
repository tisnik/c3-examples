/*
 * Seriál Programovací jazyk C3
 * https://www.root.cz/serialy/programovaci-jazyk-c3/
 *
 * Demonstrační příklad použitý v článku:
 * Programovací jazyk C3: složené datové typy a kontejnery
 * https://www.root.cz/clanky/programovaci-jazyk-c3-slozene-datove-typy-a-kontejnery/
 */

module containers;
import std::io;

fn void update_slice(int[] slice) {
    for (int i=0; i<slice.len; i++) {
        slice[i] = (i + 1)*10;
    }
}

fn void main()
{
    io::printf("type: %s\n", int[10].nameof);

    int[] a = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    io::printf("a=%s\n", a);

    update_slice(a);
    io::printf("a=%s\n", a);
}
