/*
 * Seriál Programovací jazyk C3
 * https://www.root.cz/serialy/programovaci-jazyk-c3/
 * --------------------------------------------------
 *
 * Demonstrační příklad použitý v článku:
 * Přetěžování operátorů v programovacím jazyce C3
 * https://www.root.cz/clanky/pretezovani-operatoru-v-programovacim-jazyce-c3/
 */

module operator_overloading;
import std::io;

struct Vector3d
{
    int x;
    int y;
    int z;
}

fn Vector3d Vector3d.unary_minus(self) @operator(-)
{
    Vector3d result;
    result.x = -self.x;
    result.y = -self.y;
    result.z = -self.z;
    return result;
}

fn void main()
{
    Vector3d v1 = {1, 2, 3};

    io::printf("[%d %d %d]\n", v1.x, v1.y, v1.z);

    Vector3d v2 = -v1;
    io::printf("[%d %d %d]\n", v2.x, v2.y, v2.z);
}
