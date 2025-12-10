module operator_overloading;
import std::io;

struct Vector3d
{
    int x;
    int y;
    int z;
}

fn int Vector3d.dot_product(self, Vector3d second) @operator(*)
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
