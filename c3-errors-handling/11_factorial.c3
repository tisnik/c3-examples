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

faultdef NEGATIVE_INPUT;

fn int? factorial(int n)
{
    if (n < 0) {
        return NEGATIVE_INPUT?;
    }
    int result = 1;
    for (int i = 1; i <= n; ++i)
    {
        result *= i;
    }
    return result;
}

fn void main()
{
    for (int n = 10; n >= -10; n--)
    {
        int result = factorial(n)!!;
        io::printf("%d!=%d\n", n, result);
    }
}
