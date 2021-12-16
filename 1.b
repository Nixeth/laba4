// b) удалить все символы ‘-‘ и удвоить все символы ‘&
#include <stdio.h>
int main(){
    int a;
    while (a != EOF && a != '.') 
    {
        a = getchar();
        if (a == '-')
            continue;
        if (a == '&') 
        {
            putchar('&');
        }
        putchar(a);
    }
}
