module if_branch;
import std::io;

fn void which_number(int x) {
    if (x % 2 == 0) {
        io::printfn("%d is even number", x);
    }
}

fn void main()
{
    for (int i=0; i<10; i++) {
        which_number(i);
    }
}
