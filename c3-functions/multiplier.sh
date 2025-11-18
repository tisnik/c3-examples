gcc -Wall -ansi -c -fPIC multiplier.c -o multiplier.o

gcc -shared -Wl,-soname,libmultiplier.so -o libmultiplier.so multiplier.o
