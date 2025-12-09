module operator_overloading;
import std::io;

struct Vector3d
{
    int x;
    int y;
    int z;
}

fn Vector3d Vector3d.add(Vector3d first, Vector3d second)
{
    Vector3d result;
    result.x = first.x + second.x;
    result.y = first.y + second.y;
    result.z = first.z + second.z;
    return result;
}

fn void main()
{
    Vector3d v1 = {1, 2, 3};
    Vector3d v2 = {10, 10, 10};

    Vector3d v3 = v1.add(v2);

    io::printf("[%d %d %d]\n", v3.x, v3.y, v3.z);
}
