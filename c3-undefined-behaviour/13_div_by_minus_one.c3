module undefined_behaviour;
import std::io;

fn short foo(short a)
{
    return a/-1;
}

fn void main()
{
    io::printf("%d->%d\n", 0, foo(0));
    io::printf("%d->%d\n", 1, foo(1));
    io::printf("%d->%d\n", 32767, foo(32767));
    io::printf("%d->%d\n", -32767, foo(-32767));
    io::printf("%d->%d\n", -32768, foo(-32768));
}
