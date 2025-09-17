module float_types;
import std::io;

fn void main()
{
    float16 x = 1e1;
    float y = 1e10;
    double z = 1e100;
    float128 w = 1e100;

    io::printf("x=%s\n", x);
    io::printf("y=%s\n", y);
    io::printf("z=%s\n", z);
    io::printf("w=%s\n", w);
}
