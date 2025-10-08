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

extern fn int puts(char*);

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
    puts("P3");
    io::printf("%d %d\n", resolution.width, resolution.height);
    puts("255");

    double zy0 = -1.5;
    int y;

    for (y=0; y<resolution.height; y++) {
        double zx0 = -1.5;
        int x;
        for (x=0; x<resolution.width; x++) {
            double zx = zx0;
            double zy = zy0;
            uint i = 0;
            while (i < maxiter) {
                double zx2 = zx * zx;
                double zy2 = zy * zy;
                if (zx2 + zy2 > 4.0) {
                    break;
                }
                zy = 2.0 * zx * zy + cy;
                zx = zx2 - zy2 + cx;
                i++;
            }
            char *color = palette + 3*(i % 256);
            char r = *color++;
            char g = *color++;
            char b = *color;
            io::printf("%d %d %d\n", r, g, b);
            zx0 += 3.0/resolution.width;
        }
        zy0 += 3.0/resolution.height;
    }
}

fn char *generate_palette() {
    char *palette = malloc(256*3);
    char *p = palette;

    /* fill in by black color */
    libc::memset(palette, 0, 256 * 3);

    /* green gradient */
    for (char i = 0; i < 32; i++) {
        *p++ = 0;
        *p++ = 4 + i*6;
        *p++ = 0;
    }

    /* gradient from green to yellow */
    for (char i = 0; i < 32; i++) {
        *p++ = 4 + i * 6;
        *p++ = i * 2 < 52 ? 200 + i * 2 : 252;
        *p++ = 0;
    }

    /* gradient from yellow to white */
    for (char i = 0; i < 32; i++) {
        *p++ = i * 2 < 52 ? 200 + i * 2 : 252;
        *p++ = 252;
        *p++ = i * 6;
    }

    /* gradient from white to yellow */
    for (char i = 0; i < 48; i++) {
        *p++ = 252;
        *p++ = 252;
        *p++ = 252 - i * 6;
    }
    
    /* gradient from yellow to green */
    for (char i = 0; i < 48; i++) {
        *p++ = 252 - i * 6;
        *p++ = 252;
        *p++ = 0;
    }
    
    /* gradient green to black */
    for (char i = 0; i < 48; i++) {
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

    calc_julia(&resolution, 1000, palette, -0.207190825, 0.676656625);
    libc::free(palette);
}

