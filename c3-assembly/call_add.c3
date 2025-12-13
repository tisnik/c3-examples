module assembly;
import std::io;

extern fn int add(int a, int b);

fn void main()
{
    io::printf("%d\n", add(1, 2));
}
