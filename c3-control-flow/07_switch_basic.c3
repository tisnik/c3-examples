module switch_statement;
import std::io;

fn void which_number(int x) {
    switch (x) {
        case 0:
            io::printfn("%d is zero", x);
        case 1:
            io::printfn("%d is odd number", x);
        case 2:
            io::printfn("%d is even number", x);
        default:
            io::printfn("I don't know what to say about %d", x);
    }
}

fn void main()
{
    for (int i=0; i<10; i++) {
        which_number(i);
    }
}
