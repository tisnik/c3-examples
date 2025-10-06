module error_handling;
import std::io;

fn void main()
{
    int? i = 42;

    if (catch excuse = i)
    {
        io::printfn("Fault: %s", excuse);
    } else {
        io::printf("i=%d\n", i);
    }
}
