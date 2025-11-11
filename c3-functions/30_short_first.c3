module functions;
import std::io;

fn int first(int... args) => args[0];

fn void main()
{
    int[10] values = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    io::printf("%d\n", first(1));
    io::printf("%d\n", first(1, 2));
    io::printf("%d\n", first(1, 2, 3));
    io::printf("%d\n", first(...values));
}
