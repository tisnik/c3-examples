module int_to_bool_1;
import std::io;

fn void main()
{
    bool x = 1;
    bool y = 0;
    bool z = 42;
    io::printf("Bool value=%b\n", x);
    io::printf("Bool value=%b\n", y);
    io::printf("Bool value=%b\n", z);
}
