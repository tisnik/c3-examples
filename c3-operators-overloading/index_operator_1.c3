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

fn int Vector3d.get(self, usz i) @operator([])
{
    switch (i) {
        case 0: return self.x;
        case 1: return self.y;
        case 2: return self.z;
        default: return 0;
    }

}

fn void main()
{
    Vector3d v1 = {10, 20, 30};

    for (int i=0; i<=3; i++) {
        io::printf("v1[%d] = %d\n", i, v1[i]);
    }
}
