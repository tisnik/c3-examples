module switch_statement;
import std::io;

fn void which_number(int x) {
    switch (true) {
        case x == 0:
            io::printfn("%d is zero", x);
        case x % 2 == 0:
            io::printfn("%d is even number", x);
        default:
            io::printfn("%d is odd number", x);
    }
}

fn void main()
{
    for (int i=0; i<10; i++) {
        which_number(i);
    }
}
