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
    for (int zaklad=1; zaklad<=100; zaklad*=10) {
        for END: (int y=1; y<=10; y++) {
            for (int x=1; x<=10; x++) {
                int z = x * y;
                io::printf("%5d ", z*zaklad);
                if (z == 42) {
                    break END;
                }
            }
            io::printn();
        }
        io::printn();
        io::printn("-----------------------------------------------------------");
    }
}
