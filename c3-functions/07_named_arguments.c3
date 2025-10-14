module functions;
import std::io;

fn int div(int a, int b)
{
    return a/b;
}

fn void main()
{
    io::printf("%d/%d=%d\n", 10, 2, div(b:2, a:10));
    io::printf("%d/%d=%d\n", 10, 3, div(b:3, a:10));
}
