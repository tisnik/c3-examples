module int_conversions;
import std::io;

fn void main()
{
    ichar a = 100;
    short b = 100*100;
    int c = 100*100*100;

    io::printf("a=%d\n", a);
    io::printf("b=%d\n", b);
    io::printf("c=%d\n", c);

    int x = a;
    int y = b;
    int z = c;

    io::printf("x=%d\n", x);
    io::printf("y=%d\n", y);
    io::printf("z=%d\n", z);
}
