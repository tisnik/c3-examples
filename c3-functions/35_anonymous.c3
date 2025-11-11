module functions;
import std::io;

fn void main()
{
    int x = 10;
    int b = 2;

    int y = (fn int(int a) => a*b)(x);

    io::printf("%d\n", x);
    io::printf("%d\n", y);
}

