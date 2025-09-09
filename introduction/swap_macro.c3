macro void @swap(&x, &y)
{
    var t = *x;

    *x = *y;
    *y = t;
}
