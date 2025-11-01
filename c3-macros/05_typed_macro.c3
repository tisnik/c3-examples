module macros;

import std::io;

macro add(int x, int y)
{
    return x+y;
}

fn void main()
{
    int x = 1;
    int y = 2;

    io::printf("%d + %d = %d\n", x, y, add(x, y));
}
