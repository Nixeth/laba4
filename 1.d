// c) удалить все символы, не являющиеся строчными латинскими буквами;
#include <stdio.h>
int main(){
int z;
    while (z != EOF && z !='.') {
        z = getchar();
        if (z >= 65 && z <= 90) {
            putchar(z + 32);
            continue;
        }
        putchar(z);
    }
}
