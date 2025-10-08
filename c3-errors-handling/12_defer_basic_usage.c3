module error_handling;
import std::io;

fn void main()
{
    defer io::printn("Too late");
    io::printn("Hello");
}
