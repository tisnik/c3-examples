module uint_types;
import std::io;

fn void main()
{
    io::printf("sizeof ichar  = %d\n", ichar.sizeof);
    io::printf("sizeof short  = %d\n", short.sizeof);
    io::printf("sizeof int    = %d\n", int.sizeof);
    io::printf("sizeof long   = %d\n", long.sizeof);
    io::printf("sizeof int128 = %d\n", int128.sizeof);
}
