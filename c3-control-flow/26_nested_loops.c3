module loops;
import std::io;

fn void main()
{
    int y=1;
    while (y<=10) {
        int x=1;
        while (x<=10) {
            int z = x * y;
            io::printf("%3d ", z);
            x++;
        }
        io::printn();
        y++;
    }
}
