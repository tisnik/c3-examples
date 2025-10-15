module functions;
import std::io;

fn int add(int a, int b)
{
    return a+b;
}

fn void main(void)
{
    io::printf("%d+%d=%d\n", 1, 2, add(1, 2));
}
