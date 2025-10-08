module error_handling;
import std::io;

fn void main()
{
    io::printn("Hello");
    defer io::printn("Defer #1");
    {
        defer io::printn("Defer #2");
        {
            defer io::printn("Defer #3");
        }
    }
    io::printn("Bye");
}
