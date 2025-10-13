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

fn void update_array(int[10] array) {
    for (int i=0; i<array.len; i++) {
        array[i] = (i + 1)*10;
    }
}

fn void main()
{
    io::printf("type: %s\n", int[10].nameof);

    int[10] a = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    io::printf("a=%s\n", a);

    update_array(a);
    io::printf("a=%s\n", a);
}
