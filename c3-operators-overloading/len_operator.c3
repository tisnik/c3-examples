/*
 * Seriál Programovací jazyk C3
 * https://www.root.cz/serialy/programovaci-jazyk-c3/
 * --------------------------------------------------
 *
 * Demonstrační příklad použitý v článku:
 * Přetěžování operátorů v programovacím jazyce C3
 * https://www.root.cz/clanky/pretezovani-operatoru-v-programovacim-jazyce-c3/
 */

module functions;
import std::io;

struct Vector3d
{
    int x;
    int y;
    int z;
}

fn int Vector3d.get(&self, usz i) @operator([])
{
    switch (i) {
        case 0: return self.x;
        case 1: return self.y;
        case 2: return self.z;
        default: return 0;
    }
}

fn void Vector3d.set(&self, usz i, int new_value) @operator([]=)
{
    switch (i) {
        case 0: self.x=new_value;
        case 1: self.y=new_value;
        case 2: self.z=new_value;
    }
}

fn usz Vector3d.len(&self) @operator(len)
{
    return 3;
}

fn void main()
{
    Vector3d v1 = {10, 20, 30};

    foreach (item : v1)
    {
        io::printf("%d ", item);
    }
    io::printn();

    v1[0] = 100;
    v1[1] = 200;
    v1[2] = 300;

    foreach (item : v1)
    {
        io::printf("%d ", item);
    }
    io::printn();
}
