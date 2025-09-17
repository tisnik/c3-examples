module uint_types;
import std::io;

fn void main()
{
    char a = '*';
    ushort b = 42;
    uint c = 42;
    ulong d = 42;
    uint128 e = 10;

    io::printf("ichar value=%c\n", a);
    io::printf("short value=%d\n", b);
    io::printf("int value=%d\n", c);
    io::printf("long value=%d\n", d);
    io::printf("int128 value=%d\n", e);
}
