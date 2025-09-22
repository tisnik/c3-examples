module containers;
import std::io;

fn void main()
{
    ZString s = "Hello world!\0";

    io::printf("zstring '%s' has length %d bytes\n", s, s.len());
}
