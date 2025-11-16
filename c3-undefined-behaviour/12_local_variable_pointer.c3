module undefined_behaviour;
import std::io;

fn int* foo()
{
    int a = 42;
    return &a;
}

fn void main()
{
    int *p = foo();
    io::printf("%d\n", *p);
}
