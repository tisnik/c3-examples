module macros;

import std::io;

macro void @swap(#a, #b)
{
    var temp = #a;
    #a = #b;
    #b = temp;
}

fn void main()
{
    int x = 1;
    int y = 2;

    @swap(x, y);

    io::printf("%d, %d\n", x, y);
}
