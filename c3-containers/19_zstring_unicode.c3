module containers;
import std::io;

fn void main()
{
    ZString s = "ěščřžýáíéů\0";

    io::printf("zstring '%s' has length %d bytes\n", s, s.len());
}
