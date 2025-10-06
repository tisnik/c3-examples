module error_handling;
import std::io;

faultdef MY_ERROR;

fn void main()
{
    int? i = 42;

    io::printf("i=%d\n", i!!);
}
