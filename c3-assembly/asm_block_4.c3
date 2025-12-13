module assembly;
import std::io;

fn void main()
{
    io::printn("About to exit");
    asm
    {
        movq $rax, 60;
        movq $rdi, 42;
        syscall;
    }
    io::printn("I'm still alive...");
}

