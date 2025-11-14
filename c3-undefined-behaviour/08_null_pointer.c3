module undefined_behaviour;
import std::io;

fn void main()
{
    int *p = null;

    io::printf("%d\n", *p);
}
