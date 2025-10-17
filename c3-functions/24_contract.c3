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
    for (int i=10; i>=0; i--) {
        io::printf("%d/%d=%d\n", 10, i, div(10, i));
    }
}
