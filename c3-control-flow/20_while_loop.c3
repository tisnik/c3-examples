module loops;
import std::io;

fn void main()
{
    int[10] a = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};

    int i = 0;
    while (i<a.len) {
        if (a[i] >= 6) {
            break;
        }
        io::printfn("item: %s", a[i]);
        i++;
    }
}
