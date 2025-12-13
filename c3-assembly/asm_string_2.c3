module assembly;
import std::io;

fn void main()
{
    io::printn("About to exit");
    asm("movq $$60, %rax");
    asm("movq $$42, %rdi");
    asm("syscall");
    io::printn("I'm still alive...");
}

