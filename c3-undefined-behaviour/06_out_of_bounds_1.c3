module undefined_behaviour;
import std::io;

fn void main()
{
    int[10] a = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};

    io::printf("a=%s\n", a);

    io::printf("a[0]=%d\n", a[0]);
    io::printf("a[9]=%d\n", a[9]);
    io::printf("a[10]=%d\n", a[10]);
}
