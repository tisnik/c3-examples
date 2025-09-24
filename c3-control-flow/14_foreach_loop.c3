module loops;
import std::io;

fn void main()
{
    int[10] a = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};

    foreach (item : a)
    {
        io::printfn("item: %s", item);
    }
}
