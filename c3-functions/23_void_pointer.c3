module functions;
import std::io;

fn void set(void *p, int new_value)
{
    *(int*)p=new_value;
}

fn void main()
{
    int i = 0;
    io::printf("%d\n", i);
    set(&i, 42);
    io::printf("%d\n", i);
}
