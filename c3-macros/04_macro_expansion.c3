module macros;

import std::io;

macro add_mul(a, b)
{
    return a*b+1;
}

fn void main()
{
    int x = 1;
    int y = 2;

    int z = add_mul(x+y, x+y);
    int w = add_mul(x+y, x+y)*2;

    io::printf("%d\n", z);
    io::printf("%d\n", w);
}
