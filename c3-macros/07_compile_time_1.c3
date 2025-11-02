module macros;

import std::io;

macro add(a, b)
{
    return a+b;
}

fn void main()
{
    const int X = 1;
    const int Y = 2;

    const int Z = add(X, Y);

    io::printf("%d + %d = %d\n", X, Y, Z);
}
