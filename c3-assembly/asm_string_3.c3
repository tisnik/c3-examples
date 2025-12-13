module assembly;
import std::io;

fn void main()
{
    uint return_value = 42;

    io::printn("About to exit");
    asm("movl $$1, %eax");
    asm("movl -4(%rbp), %ebx");
    asm("int $$0x80");
    io::printn("I'm still alive...");
}

