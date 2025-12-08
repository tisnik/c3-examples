module operator_overloading;
import std::io;

struct Vector3d
{
    int x;
    int y;
    int z;
}

fn bool Vector3d.compare(self, Vector3d second) @operator(==)
{
    bool result;
    result = self.x == second.x;
    result &= self.y == second.y;
    result &= self.z == second.z;
    return result;
}

fn void main()
{
    Vector3d v1 = {1, 2, 3};
    Vector3d v2 = {10, 10, 10};
    Vector3d v3 = {10, 10, 10};

    io::printf("v1 == v2: %b\n", v1 == v2);
    io::printf("v1 == v3: %b\n", v1 == v3);
    io::printf("v2 == v3: %b\n", v2 == v3);

    io::printf("v1 != v2: %b\n", v1 != v2);
    io::printf("v1 != v3: %b\n", v1 != v3);
    io::printf("v2 != v3: %b\n", v2 != v3);
}
