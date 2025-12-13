module assembly;
import std::io;

fn void main()
{
    ulong return_value = 42;

    io::printn("About to exit");
    asm("movq $$60, %rax");
    asm("movq -8(%rbp), %rdi");
    asm("syscall");
    io::printn("I'm still alive...");
}

