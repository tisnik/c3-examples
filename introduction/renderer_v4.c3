/*
 * Seriál Programovací jazyk C3
 * https://www.root.cz/serialy/programovaci-jazyk-c3/
 *
 * Demonstrační příklad použitý v článku:
 * Programovací jazyk C3: evoluce, nikoli revoluce
 * https://www.root.cz/clanky/programovaci-jazyk-c3-evoluce-nikoli-revoluce/
 */

import std::io;

struct Resolution {
    uint width;
    uint height;
}

<*
 @param [&in] resolution
 @param [&in] palette
*>
fn void calc_julia(Resolution *resolution, uint maxiter, char *palette, double cx, double cy)
{
}

fn char *generate_palette() {
    char *palette = null;
    return palette;
}

fn void main()
{
    Resolution resolution;
    resolution.width = 512;
    resolution.height = 512;

    char* palette = generate_palette();

    calc_julia(&resolution, 0, palette, 0.0, 0.0);
}

