module int_to_bool_3;
import std::io;

fn void main()
{
    bool x = bool(1);
    bool y = bool(0);
    bool z = bool(42);
    io::printf("Bool value=%b\n", x);
    io::printf("Bool value=%b\n", y);
    io::printf("Bool value=%b\n", z);
}
