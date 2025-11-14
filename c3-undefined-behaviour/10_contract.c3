module undefined_behaviour;
import std::io;

<*
 @ensure return > a
*>
fn short add(short a, short b)
{
    return a+b;
}

fn void main()
{
    io::printf("%d+%d=%d\n", 1, 1, add(1, 1));
    io::printf("%d+%d=%d\n", 32767, 1, add(32767, 1));
}
