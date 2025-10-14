module functions;
import std::io;

fn int div(int a=1, int b=1)
{
    return a/b;
}

fn void main()
{
    io::printf("%d/%d=%d\n", 1, 1, div());
    io::printf("%d/%d=%d\n", 10, 1, div(a:10));
    io::printf("%d/%d=%d\n", 10, 2, div(a:10, b:2));
    io::printf("%d/%d=%d\n", 10, 3, div(a:10, b:3));
}
