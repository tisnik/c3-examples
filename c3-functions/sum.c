extern int sum(int values[], int length)
{
    int i;
    int acc = 0;
    for (i=0; i<length; i++) {
        acc += values[i];
    }
    return acc;
}
