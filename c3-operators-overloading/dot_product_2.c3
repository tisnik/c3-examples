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

fn int Vector3d.dot_product(&self, Vector3d second) @operator(*)
{
    int result;
    result = self.x * second.x;
    result += self.y * second.y;
    result += self.z * second.z;
    return result;
}

fn void main()
{
    Vector3d v1 = {1, 2, 3};
    Vector3d v2 = {10, 10, 10};

    int dp = v1 * v2;
    io::printf("%d\n", dp);
}
