module containers;
import std::io;

fn void main()
{
    int[10] a = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    io::printf("a=%s\n", a);

    int[] b = a[3 : 4];
    io::printf("b=%s\n", b);

    int[] c = a[3 : 0];
    io::printf("c=%s\n", c);

    int[] d = a[^6 : 4];
    io::printf("d=%s\n", d);
}
