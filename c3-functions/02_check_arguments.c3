module functions;
import std::io;

fn int add(int a, int b)
{
    return a+b;
}

fn void main()
{
    add(1, 2);
    add(1);
    add(1, 2, 3);

    add(1.1, 2.2);
    add(5000000000, 5000000000);
}
