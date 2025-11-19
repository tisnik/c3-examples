module macros;

import std::io;

macro int len(...)
{
    return $vacount;
}

fn void main()
{
    io::printf("%d\n", len(1, 2, 3, "foo", "bar", "baz"));
}
