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

fn int Vector3d.get(&self, String key) @operator([])
{
    switch (key) {
        case "x": return self.x;
        case "y": return self.y;
        case "z": return self.z;
        default: return 0;
    }
}

fn void main()
{
    Vector3d v1 = {10, 20, 30};

    io::printf("v1[x] = %d\n", v1["x"]);
    io::printf("v1[y] = %d\n", v1["y"]);
    io::printf("v1[z] = %d\n", v1["z"]);
}
