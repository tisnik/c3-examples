module containers;
import std::io;

fn void main()
{
    io::printf("type: %s\n", int[].nameof);

    int[] a = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};

    io::printf("a=%s\n", a);

    for (int i=0; i<a.len; i++) {
        a[i] = (i + 1)*10;
    }
    io::printf("a=%s\n", a);
}
