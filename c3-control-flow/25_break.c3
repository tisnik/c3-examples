module loops;
import std::io;

fn void main()
{
    int y = 1;
    while END: (y<=10) {
        int x = 1;
        while (x<=10) {
            int z = x * y;
            io::printf("%3d ", z);
            if (z == 42) {
                break END;
            }
            x++;
        }
        io::printn();
        y++;
    }
}
