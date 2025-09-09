import std::io;

macro int factorial($n)
{
    $if $n == 0:
        return 1;
    $else
        return $n * factorial($n - 1);
    $endif
}

fn void main()
{
    const int N = 10;
    io::printf("%d! = %d\n", N, factorial(N));
}
