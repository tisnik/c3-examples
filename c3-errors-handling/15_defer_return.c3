module error_handling;
import std::io;

fn int function()
{
    int a = 10;

    io::printn("Hello");

    defer a++;
    io::printn("Bye");

    return a;
}

fn void main()
{
    io::printn(function());
}
