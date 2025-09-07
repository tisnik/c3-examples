#include <stdlib.h>
#include <string.h>
#include <stdio.h>

#define NULL_CHECK(value)                                                      \
    if (value == NULL) {                                                       \
        fprintf(stderr, "NULL parameter: %s\n", #value);                       \
        return;                                                                \
    }

typedef struct {
    unsigned int width;
    unsigned int height;
} resolution_t;

void calc_julia(resolution_t *resolution, const unsigned int maxiter, const unsigned char *palette, double cx, double cy)
{
    double zy0 = -1.5;
    int y;

    NULL_CHECK(palette);

    puts("P3");
    printf("%d %d\n", resolution->width, resolution->height);
    puts("255");

    for (y=0; y<resolution->height; y++) {
        double zx0 = -1.5;
        int x;
        for (x=0; x<resolution->width; x++) {
            double zx = zx0;
            double zy = zy0;
            unsigned int i = 0;
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
            {
                const unsigned char *color = palette + 3*(i % 256);
                unsigned char r = *color++;
                unsigned char g = *color++;
                unsigned char b = *color;
                printf("%d %d %d\n", r, g, b);
            }
            zx0 += 3.0/resolution->width;
        }
        zy0 += 3.0/resolution->height;
    }
}

/* Generate color palette: 256 colors, each color is represented as RGB triple. */
unsigned char *generate_palette(void) {
    unsigned char *palette = (unsigned char *)malloc(256 * 3);
    unsigned char *p = palette;
    int i;

    if (palette == NULL) {
        return NULL;
    }

    /* fill in by black color */
    memset(palette, 0, 256 * 3);

    /* green gradient */
    for (i = 0; i < 32; i++) {
        *p++ = 0;
        *p++ = 4 + i*6;
        *p++ = 0;
    }

    /* gradient from green to yellow */
    for (i = 0; i < 32; i++) {
        *p++ = 4 + i * 6;
        *p++ = i * 2 < 52 ? 200 + i * 2 : 252;
        *p++ = 0;
    }

    /* gradient from yellow to white */
    for (i = 0; i < 32; i++) {
        *p++ = i * 2 < 52 ? 200 + i * 2 : 252;
        *p++ = 252;
        *p++ = i * 6;
    }

    /* gradient from white to yellow */
    for (i = 0; i < 48; i++) {
        *p++ = 252;
        *p++ = 252;
        *p++ = 252 - i * 6;
    }
    
    /* gradient from yellow to green */
    for (i = 0; i < 48; i++) {
        *p++ = 252 - i * 6;
        *p++ = 252;
        *p++ = 0;
    }
    
    /* gradient green to black */
    for (i = 0; i < 48; i++) {
        *p++ = 0;
        *p++ = 252 - i * 6;
        *p++ = 0;
    }

    return palette;
}

int main(int argc, char **argv)
{
    resolution_t resolution;
    unsigned char *palette = generate_palette();
    int maxiter;

    if (argc < 4) {
        puts("usage: ./mandelbrot width height maxiter");
        return 1;
    }
    resolution.width = atoi(argv[1]);
    resolution.height = atoi(argv[2]);
    maxiter = atoi(argv[3]);
    calc_julia(&resolution, maxiter, palette, -0.207190825, 0.676656625);
    return 0;
}

