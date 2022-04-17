#include<stdio.h>
#include<limits.h>
#include<float.h>

int main(void)
{
    printf("Min Signed Char %d\n",-(char)((unsigned char) ~0 >> 1) - 1);
    printf("Max Signed Char %d\n",(char) ((unsigned char) ~0 >> 1));
    printf("Min Signed Int %d\n",-(int)((unsigned int)~0 >> 1) -1);
    printf("Max Signed Int %d\n",(int)((unsigned int)~0 >> 1));

    printf("Max Unsigned Char %d\n",(unsigned char)~0);
    printf("Max Unsigned Int %u\n",(unsigned int)~0);

    return 0;
}
