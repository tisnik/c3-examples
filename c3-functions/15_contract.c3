module functions;
import std::io;

<*
 @require b != 0
*>
fn int div(int a, int b)
{
    return a/b;
}

fn void main()
{
    io::printf("%d/%d=%d\n", 10, 2, div(10, 2));
    io::printf("%d/%d=%d\n", 10, 3, div(10, 3));
    io::printf("%d/%d=%d\n", 10, 0, div(10, 0));
}
