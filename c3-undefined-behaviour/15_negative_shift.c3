module undefined_behaviour;
import std::io;

fn short shift(short a)
{
    return a<<-1;
}

fn void main()
{
    io::printf("%d+1=%d\n", 0, shift(0));
    io::printf("%d+1=%d\n", 1, shift(1));
    io::printf("%d+1=%d\n", 2, shift(2));
    io::printf("%d+1=%d\n", 32766, shift(32766));
    io::printf("%d+1=%d\n", 32767, shift(32767));
    io::printf("%d+1=%d\n", -32767, shift(-32767));
    io::printf("%d+1=%d\n", -32768, shift(-32768));
}
