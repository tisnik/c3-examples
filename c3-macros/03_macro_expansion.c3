module macros;

import std::io;

macro mul(x, y)
{
    return x*y;
}

fn void main()
{
    int x = 1;
    int y = 2;

    int z = mul(x+y, x+y);

    io::printf("%d\n", z);
}
