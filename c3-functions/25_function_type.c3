module functions;
import std::io;

alias IntegerOperator = fn int(int x, int y);

fn int add(int x, int y) {
    return x+y;
}

fn int div(int x, int y) {
    return x/y;
}

fn void performIntegerOperation(IntegerOperator operator, char printable)
{
    for (int i = 1; i <= 3; i++)
    {
        for (int j = 1; j <= 3; j++) {
            io::printfn("%d %c %d = %d", i, printable, j, operator(i, j));
        }
    }
}

fn void main()
{
    performIntegerOperation(&add, '+');
    performIntegerOperation(&div, '/');
}
