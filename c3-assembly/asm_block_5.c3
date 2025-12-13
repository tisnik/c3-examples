module assembly;
import std::io;

fn void main()
{
    long sys_exit = 60;
    long return_value = 42;

    io::printn("About to exit");
    asm
    {
        movq $rax, sys_exit;
        movq $rdi, return_value;
        syscall;
    }
    io::printn("I'm still alive...");
}

