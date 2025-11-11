module functions;
import std::io;

fn void main()
{
    int x = 10;

    int y = (fn int(int a) => a*2)(x);

    io::printf("%d\n", x);
    io::printf("%d\n", y);
}

