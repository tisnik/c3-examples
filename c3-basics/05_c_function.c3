module c_function_call;
import libc;

extern fn int puts(char*);

fn void main()
{
    puts("Hello, world!");
}
