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
