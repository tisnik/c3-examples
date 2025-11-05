/*
 * Seriál Programovací jazyk C3
 * https://www.root.cz/serialy/programovaci-jazyk-c3/
 * --------------------------------------------------
 *
 * Demonstrační příklad použitý v článku:
 * Programovací jazyk C3: evoluce, nikoli revoluce
 * https://www.root.cz/clanky/programovaci-jazyk-c3-evoluce-nikoli-revoluce/
 */

macro void @swap(&x, &y)
{
    var t = *x;

    *x = *y;
    *y = t;
}
