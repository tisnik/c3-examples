module assembly;
import std::io;

fn void main()
{
    io::printn("About to exit");
    asm
    {
        movl $eax, 1;
        xorl $ebx, 42;
        int 0x80;
    }
    io::printn("I'm still alive...");
}

