module functions;
import std::io;

<*
 @require b != 0
*>
fn int div(int a, int b)
{
    return a/b;
}

fn int call_div(int a, int b)
{
    return div(a, b);
}

fn void main()
{
    io::printf("%d/%d=%d\n", 10, 2, call_div(10, 2));
    io::printf("%d/%d=%d\n", 10, 3, call_div(10, 3));
    io::printf("%d/%d=%d\n", 10, 0, call_div(10, 0));
}
