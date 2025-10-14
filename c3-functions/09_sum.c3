module functions;
import std::io;

fn int sum(int... args)
{
    int sum = 0;
    foreach (arg : args) {
        sum += arg;
    }
    return sum;
}

fn void main()
{
    io::printf("%d\n", sum());
    io::printf("%d\n", sum(1));
    io::printf("%d\n", sum(1, 2));
    io::printf("%d\n", sum(1, 2, 3));
}
