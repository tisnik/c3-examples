module containers;
import std::io;

fn void update_array(int[10] *array) {
    for (int i=0; i<array.len; i++) {
        (*array)[i] = (i + 1)*10;
    }
}

fn void main()
{
    io::printf("type: %s\n", int[10].nameof);

    int[10] a = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    io::printf("a=%s\n", a);

    update_array(&a);
    io::printf("a=%s\n", a);
}
