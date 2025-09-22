module containers;
import std::io;

const int SIZE = 10;

fn void main()
{
    int *a;

    a=malloc(SIZE * int.sizeof);

    for (int i=0; i<SIZE; i++) {
        io::printf("%d ", a[i]);
    }
    io::printn();

    for (int i=0; i<SIZE; i++) {
        a[i] = (i + 1)*10;
    }

    for (int i=0; i<SIZE; i++) {
        io::printf("%d ", a[i]);
    }
    io::printn();

    free(a);
}
