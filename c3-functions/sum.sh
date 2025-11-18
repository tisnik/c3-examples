gcc -Wall -ansi -c -fPIC sum.c -o sum.o

gcc -shared -Wl,-soname,libsum.so -o libsum.so sum.o
