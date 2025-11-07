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
    String s = "Hello world!";

    io::printf("string '%s' has length %d bytes\n", s, s.len);

    io::printf("1st char=%s\n", s[0]);

    String substr = s[6..^1];
    io::printf("substr=%s\n", substr);
}
