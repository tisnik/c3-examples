module functions;
import std::io;

fn void set(int *p, int new_value)
{
    *p=new_value;
}

fn void main()
{
    int i = 0;
    io::printf("%d\n", i);
    set(&i, 42);
    io::printf("%d\n", i);
}
