module no_suffixes;
import std::io;

fn void main()
{
    uint128 a = 100u128;
    uint128 b = 100u128*100;
    uint128 c = 100u128*100*100;
    uint128 d = 100u128*100*100*100;
    uint128 e = 100u128*100*100*100*100;
    uint128 f = 100u128*100*100*100*100*100;

    io::printf("a=%d\n", a);
    io::printf("b=%d\n", b);
    io::printf("c=%d\n", c);
    io::printf("d=%d\n", d);
    io::printf("e=%d\n", e);
    io::printf("f=%d\n", f);
}
