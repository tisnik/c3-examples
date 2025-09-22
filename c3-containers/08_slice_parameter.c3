module containers;
import std::io;

fn void update_slice(int[] slice) {
    for (int i=0; i<slice.len; i++) {
        slice[i] = (i + 1)*10;
    }
}

fn void main()
{
    io::printf("type: %s\n", int[10].nameof);

    int[] a = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    io::printf("a=%s\n", a);

    update_slice(a);
    io::printf("a=%s\n", a);
}
