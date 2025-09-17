module uint_types;
import std::io;

fn void main()
{
    io::printf("sizeof char    = %d\n", char.sizeof);
    io::printf("sizeof ushort  = %d\n", ushort.sizeof);
    io::printf("sizeof uint    = %d\n", uint.sizeof);
    io::printf("sizeof ulong   = %d\n", ulong.sizeof);
    io::printf("sizeof uint128 = %d\n", uint128.sizeof);
}
