module undefined_behaviour;
import std::io;

fn short inc(short a)
{
    return a+1;
}

fn void main()
{
    io::printf("%d+1=%d\n", 0, inc(0));
    io::printf("%d+1=%d\n", 1, inc(1));
    io::printf("%d+1=%d\n", 32766, inc(32766));
    io::printf("%d+1=%d\n", 32767, inc(32767));
    io::printf("%d+1=%d\n", -32767, inc(-32767));
    io::printf("%d+1=%d\n", -32768, inc(-32768));
}
