/*
 * Seriál Programovací jazyk C3
 * https://www.root.cz/serialy/programovaci-jazyk-c3/
 * --------------------------------------------------
 *
 * Demonstrační příklad použitý v článku:
 * Funkce a metody v programovacím jazyku C3 (dokončení)
 * https://www.root.cz/clanky/funkce-a-metody-v-programovacim-jazyku-c3-dokonceni/
 */

module functions;
import std::io;

alias ReduceOpp = fn int(int, int);

fn int add(int a, int b) => a+b;
fn int mul(int a, int b) => a*b;

fn int reduce(ReduceOpp operation, int init, int... args)
{
    int acc = init;
    foreach (arg : args) {
        acc = operation(acc, arg);
    }
    return acc;
}

fn void main()
{
    int[10] values = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    io::printf("%d\n", reduce(&add, 0, ...values));
    io::printf("%d\n", reduce(&mul, 1, ...values));
}

