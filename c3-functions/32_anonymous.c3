module functions;
import std::io;

fn int reduce_add(int... args)
{
    int acc = 0;
    foreach (arg : args) {
        acc += arg;
    }
    return acc;
}

fn int reduce_mul(int... args)
{
    int acc = 1;
    foreach (arg : args) {
        acc *= arg;
    }
    return acc;
}

fn void main()
{
    int[10] values = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    io::printf("%d\n", reduce_add(...values));
    io::printf("%d\n", reduce_mul(...values));
}

