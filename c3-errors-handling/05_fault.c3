/*
 * Seriál Programovací jazyk C3
 * https://www.root.cz/serialy/programovaci-jazyk-c3/
 * --------------------------------------------------
 *
 * Demonstrační příklad použitý v článku:
 * Programovací jazyk C3: reakce na chyby, odložení vykonání příkazů
 * https://www.root.cz/clanky/programovaci-jazyk-c3-reakce-na-chyby-odlozeni-vykonani-prikazu/
 */

module error_handling;
import std::io;

faultdef MY_ERROR;

fn void main()
{
    int? i = MY_ERROR?;

    if (catch excuse = i)
    {
        io::printfn("Fault: %s", excuse);
    } else {
        io::printf("i=%d\n", i);
    }
}
