#include <stdio.h>
int main(){
int q;
    while (q != EOF && q!='.') {
        q = getchar();
        if (q >= 96 && q <= 122)
            putchar(q);
    }
}
