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

fn ReduceOpp get_operation_implementation(char operator)
{
    switch (operator) {
        case '+':
            return fn (int a, b) => a+b;
        case '-':
            return fn (int a, b) => a-b;
        case '*':
            return fn (int a, b) => a*b;
        case '/':
            return fn (int a, b) => a/b;
        default:
            return fn (int a, b) => 0;
    }
}

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
    io::printf("%d\n", reduce(get_operation_implementation('+'), 0, ...values));
    io::printf("%d\n", reduce(get_operation_implementation('-'), 0, ...values));
    io::printf("%d\n", reduce(get_operation_implementation('*'), 1, ...values));
    io::printf("%d\n", reduce(get_operation_implementation('/'), 1000000000, ...values));
}

