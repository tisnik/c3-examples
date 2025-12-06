module functions;
import std::io;

struct Vector3d
{
    int x;
    int y;
    int z;
}

fn Vector3d Vector3d.add(&self, Vector3d second) @operator(+)
{
    self.x += second.x;
    self.y += second.y;
    self.z += second.z;
    return *self;
}

fn void main()
{
    Vector3d v1 = {1, 2, 3};
    Vector3d v2 = {10, 10, 10};

    Vector3d v3 = v1 + v2;

    io::printf("[%d %d %d]\n", v3.x, v3.y, v3.z);
}
