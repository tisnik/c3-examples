module functions;
import std::io;

fn int sum(int... args, int multiplier)
{
    int sum = 0;
    foreach (arg : args) {
        sum += arg;
    }
    return sum * multiplier;
}

fn void main()
{
    int[10] values = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    io::printf("%d\n", sum());
    io::printf("%d\n", sum(1));
    io::printf("%d\n", sum(1, 2));
    io::printf("%d\n", sum(1, 2, 3));
    io::printf("%d\n", sum(...values));
}
