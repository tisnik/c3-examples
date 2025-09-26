module loops;
import std::io;

fn void main()
{
    for END: (int y=1; y<=10; y++) {
        for (int x=1; x<=10; x++) {
            int z = x * y;
            io::printf("%3d ", z);
            if (z == 42) {
                break END;
            }
        }
        io::printn();
    }
}
