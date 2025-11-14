module undefined_behaviour;
import std::io;

fn void main()
{
    int[10] a = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};

    io::printf("a=%s\n", a);

    for (int i=0; i<a.len+1; i++) {
        io::printf("a[%d]=%d\n", i, a[i]);
        a[i] = (i + 1)*10;
    }
}
