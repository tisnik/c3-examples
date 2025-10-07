/*
 * Seriál Programovací jazyk C3
 * https://www.root.cz/serialy/programovaci-jazyk-c3/
 *
 * Demonstrační příklad použitý v článku:
 * Programovací jazyk C3: evoluce, nikoli revoluce
 * https://www.root.cz/clanky/programovaci-jazyk-c3-evoluce-nikoli-revoluce/
 */

import std::io;
import libc;

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
    char *palette = malloc(256*3);
    char *p = palette;

    /* fill in by black color */
    libc::memset(palette, 0, 256 * 3);

    /* green gradient */
    for (int i = 0; i < 32; i++) {
        *p++ = 0;
        *p++ = 4 + i*6;
        *p++ = 0;
    }

    /* gradient from green to yellow */
    for (int i = 0; i < 32; i++) {
        *p++ = 4 + i * 6;
        *p++ = i * 2 < 52 ? 200 + i * 2 : 252;
        *p++ = 0;
    }

    /* gradient from yellow to white */
    for (int i = 0; i < 32; i++) {
        *p++ = i * 2 < 52 ? 200 + i * 2 : 252;
        *p++ = 252;
        *p++ = i * 6;
    }

    /* gradient from white to yellow */
    for (int i = 0; i < 48; i++) {
        *p++ = 252;
        *p++ = 252;
        *p++ = 252 - i * 6;
    }
    
    /* gradient from yellow to green */
    for (int i = 0; i < 48; i++) {
        *p++ = 252 - i * 6;
        *p++ = 252;
        *p++ = 0;
    }
    
    /* gradient green to black */
    for (int i = 0; i < 48; i++) {
        *p++ = 0;
        *p++ = 252 - i * 6;
        *p++ = 0;
    }

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

