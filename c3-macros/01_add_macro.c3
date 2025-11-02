module macros;

import std::io;

macro add(a, b)
{
    return a+b;
}

fn void main()
{
    int x = 1;
    int y = 2;

    io::printf("%d + %d = %d\n", x, y, add(x, y));
}
