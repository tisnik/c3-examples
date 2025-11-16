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
    int y=1;
    while (y<=10) {
        int x=1;
        while (x<=10) {
            int z = x * y;
            io::printf("%3d ", z);
            x++;
        }
        io::printn();
        y++;
    }
}
