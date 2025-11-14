module undefined_behaviour;
import std::io;

fn void main()
{
    int x = 0;
    int y;
    int z @noinit;
    io::printf("x: %d\n", x);
    io::printf("y: %d\n", y);
    io::printf("z: %d\n", z);
}
