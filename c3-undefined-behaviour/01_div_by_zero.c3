module undefined_behaviour;
import std::io;

fn int div(int a, int b)
{
    return a/b;
}

fn void main()
{
    io::printf("%d/%d=%d\n", 2, 1, div(2, 1));
    io::printf("%d/%d=%d\n", 1, 0, div(1, 0));
}
