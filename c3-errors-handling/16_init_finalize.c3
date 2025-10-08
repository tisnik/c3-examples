import std::io;

fn void main()
{
    defer io::printf("world");

    io::printf(", ");
}

fn void hello() @init
{
    io::printf("Hello");
}

fn void world() @finalizer
{
    io::printn("!");
}

