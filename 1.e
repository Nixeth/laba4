// e) заменить все строчные латинские буквы прописными (другие символы копировать в выходной поток без изменения);]
#include <stdio.h>
int main(){
    int a;
    while (a != EOF && a !='.') {
        a = getchar();
        if (a >= 96 && a <= 122) {
            putchar(a - 32);
            continue;
        }
        putchar(a);
    }
}
