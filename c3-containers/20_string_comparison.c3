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

fn void main()
{
    String s1 = "prvni";
    String s2 = "druhy";
    String s3 = "prvni";
    String s4 = "***druhy***";
    String s5;

    io::printf("s1 == s2: %d\n", s1 == s2);
    io::printf("s1 != s2: %d\n", s1 != s2);

    s5 = s4[3..7];

    io::printf("s1 == s3: %d\n", s1 == s3);
    io::printf("s2 == s5: %d\n", s2 == s5);
}
