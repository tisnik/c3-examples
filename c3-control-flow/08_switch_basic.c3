module switch_statement;
import std::io;

fn void which_number(int x) {
    switch (x) {
        case 0:
            io::printfn("%d is zero", x);
        case 1:
        case 3:
        case 5:
        case 7:
        case 9:
            io::printfn("%d is odd number", x);
        case 2:
        case 4:
        case 6:
        case 8:
        case 10:
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
