/*
 * Seriál Programovací jazyk C3
 * https://www.root.cz/serialy/programovaci-jazyk-c3/
 * --------------------------------------------------
 *
 * Demonstrační příklad použitý v článku:
 * Programovací jazyk C3: podmínky, rozvětvení a programové smyčky
 * https://www.root.cz/clanky/programovaci-jazyk-c3-podminky-rozvetveni-a-programove-smycky/
 */

module switch_statement;
import std::io;

fn void which_number(int x) {
    switch (true) {
        case x == 0:
            io::printfn("%d is zero", x);
            nextcase;
        case x % 2 == 0:
            io::printfn("%d is even number", x);
        case x % 2 != 0:
            io::printfn("%d is odd number", x);
        default:
            break;
    }
}

fn void main()
{
    for (int i=0; i<10; i++) {
        which_number(i);
    }
}
