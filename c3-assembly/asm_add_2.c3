module assembly;
import std::io;

fn int add(int x, int y)
{
    int z;
    asm {
        movl $eax, x;
        addl $eax, y;
        movl z, $eax;
    }
    return z;
}

fn void main()
{
    io::printfn("1+2=%d", add(1, 2));
}

