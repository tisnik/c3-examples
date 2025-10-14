module functions;
import std::io;

fn int add(int a=0, int b)
{
    return a+b;
}

fn void main()
{
    io::printf("%d+%d=%d\n", 1, 0, add(1));
    io::printf("%d+%d=%d\n", 1, 2, add(1, 2));
}
