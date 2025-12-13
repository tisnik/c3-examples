module assembly;
import std::io;

fn int add(int x, int y)
{
    return x+y;
}

fn void main()
{
    io::printfn("1+2=%d", add(1, 2));
}

