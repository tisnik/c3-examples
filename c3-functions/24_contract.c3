/*
 * Seriál Programovací jazyk C3
 * https://www.root.cz/serialy/programovaci-jazyk-c3/
 * --------------------------------------------------
 *
 * Demonstrační příklad použitý v článku:
 * Funkce v programovacím jazyku C3
 * https://www.root.cz/clanky/funkce-v-programovacim-jazyku-c3/
 */

module functions;
import std::io;

<*
 @require b != 0
*>
fn int div(int a, int b)
{
    return a/b;
}

fn void main()
{
    for (int i=10; i>=0; i--) {
        io::printf("%d/%d=%d\n", 10, i, div(10, i));
    }
}
