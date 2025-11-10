/*
 * Seriál Programovací jazyk C3
 * https://www.root.cz/serialy/programovaci-jazyk-c3/
 * --------------------------------------------------
 *
 * Demonstrační příklad použitý v článku:
 * Programovací jazyk C3: podmínky, rozvětvení a programové smyčky
 * https://www.root.cz/clanky/programovaci-jazyk-c3-podminky-rozvetveni-a-programove-smycky/
 */

module loops;
import std::io;

fn void main()
{
    int[10] a = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};

    int i = 0;
    while (i<a.len) {
        io::printfn("item: %s", a[i]);
        i++;
    }
}
