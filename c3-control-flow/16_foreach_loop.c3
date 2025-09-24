module loops;
import std::io;

fn void main()
{
    int[10] a = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};

    foreach (i, item : a)
    {
        a[i] = ((int)i + 1)*10;
    }
    io::printf("a=%s\n", a);
}
