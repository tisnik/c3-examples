module containers;
import std::io;
import std::collections::list;

alias ListInt = List {int};

fn void main()
{
    ListInt a;

    a.init(mem);

    for (int i=0; i<10; i++) {
        a.push(i+1);
    }

    io::printf("a=%s\n", a);

    a.free();
}
