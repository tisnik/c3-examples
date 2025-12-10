/*
 * Seriál Programovací jazyk C3
 * https://www.root.cz/serialy/programovaci-jazyk-c3/
 * --------------------------------------------------
 *
 * Demonstrační příklad použitý v článku:
 * Programovací jazyk C3: reakce na chyby, odložení vykonání příkazů
 * https://www.root.cz/clanky/programovaci-jazyk-c3-reakce-na-chyby-odlozeni-vykonani-prikazu/
 */

import std::io;

fn void main()
{
    defer io::printf("world");

    io::printf(", ");
}

fn void hello() @init
{
    io::printf("Hello");
}

fn void world() @finalizer
{
    io::printn("!");
}

