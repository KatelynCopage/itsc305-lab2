#include<stdio.h>
#include <stdlib.h>
int main(int argc, char *argv[])
{
int a, b, c, d, e;
a = atoi(argv[1]); // subtract zero ('0') from corresponding entry character (0 or 1) will convert it to integer (0 or 1)
b = atoi(argv[2]);
c = atoi(argv[3]);
d = atoi(argv[4]);
e = atoi(argv[5]);

int out;
out = (a) || ((b) && (c) && (d)) ^(e);
//out = out;

//printf("total = %d\n", out);
return out;
}
