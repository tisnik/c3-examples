module error_handling;
import std::io;

fn int factorial(int n)
{
    int result = 1;
    for (int i = 1; i <= n; ++i)
    {
        result *= i;
    }
    return result;
}

fn void main()
{
    for (int n = 10; n >= -10; n--)
    {
        io::printf("%d! = %d\n", n, factorial(n));
    }
}
