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

fn int function()
{
    int a = 10;

    io::printn("Hello");

    defer a++;
    io::printn("Bye");

    return a;
}

fn void main()
{
    io::printn(function());
}
