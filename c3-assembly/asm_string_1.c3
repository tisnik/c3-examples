module assembly;
import std::io;

fn void main()
{
    io::printn("About to exit");
    asm("movl $$1, %eax");
    asm("movl $$42, %ebx");
    asm("int $$0x80");
    io::printn("I'm still alive...");
}

