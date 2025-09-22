module containers;
import std::io;

fn void main()
{
    String s = "ěščřžýáíéů";

    io::printf("string '%s' has length %d bytes\n", s, s.len);

    io::printf("1st char=%s\n", s[0]);

    String substr = s[2..7];
    io::printf("substr=%s\n", substr);
}
