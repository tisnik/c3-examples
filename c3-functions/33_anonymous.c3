module functions;
import std::io;

alias ReduceOpp = fn int(int, int);

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
    io::printf("%d\n", reduce(fn (int a, b) => a+b, 0, ...values));
    io::printf("%d\n", reduce(fn (int a, b) => a*b, 1, ...values));
}

