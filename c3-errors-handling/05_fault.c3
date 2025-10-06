module error_handling;
import std::io;

faultdef MY_ERROR;

fn void main()
{
    int? i = MY_ERROR?;

    if (catch excuse = i)
    {
        io::printfn("Fault: %s", excuse);
    } else {
        io::printf("i=%d\n", i);
    }
}
