module operator_overloading;
import std::io;

struct Vector3d
{
    int x;
    int y;
    int z;
}

fn Vector3d Vector3d.add_scalar(self, int scalar) @operator_s(+)
{
    Vector3d result;
    result.x = self.x + scalar;
    result.y = self.y + scalar;
    result.z = self.z + scalar;
    return result;
}

fn Vector3d Vector3d.add_vector(self, Vector3d second) @operator(+)
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

    Vector3d v4 = 100 + v3;
    io::printf("[%d %d %d]\n", v4.x, v4.y, v4.z);
}
