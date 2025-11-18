/*
 * Seriál Programovací jazyk C3
 * https://www.root.cz/serialy/programovaci-jazyk-c3/
 * --------------------------------------------------
 *
 * Demonstrační příklad použitý v článku:
 * Funkce a metody v programovacím jazyku C3 (dokončení)
 * https://www.root.cz/clanky/funkce-a-metody-v-programovacim-jazyku-c3-dokonceni/
 */

module functions;
import std::io;

struct Vector3d
{
    int x;
    int y;
    int z;
}

fn void Vector3d.add(Vector3d* first, Vector3d* second)
{
    first.x += second.x;
    first.y += second.y;
    first.z += second.z;
}

fn void main()
{
    Vector3d v1 = {1, 2, 3};
    Vector3d v2 = {10, 10, 10};

    Vector3d.add(&v1, &v2);

    io::printf("[%d %d %d]\n", v1.x, v1.y, v1.z);
}
