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

fn Vector3d Vector3d.add(self, Vector3d second) @operator(+)
{
    Vector3d result;
    result.x = self.x + second.x;
    result.y = self.y + second.y;
    result.z = self.z + second.z;
    return result;
}

fn void main()
{
    Vector3d v1 = {1, 2, 3};
    Vector3d v2 = {10, 10, 10};

    Vector3d v3 = v1 + v2;

    io::printf("[%d %d %d]\n", v3.x, v3.y, v3.z);
}
