module loops;
import std::io;

fn void main()
{
    int[10] a;

    for (int i=0; i<a.len; i++) {
        a[i] = (i + 1)*10;
    }
    io::printf("a=%s\n", a);
}
