// b) удалить из каждой группы цифр, которой не предшествует точка, все начальные нули (кроме последнего, если за ним идет точка либо в этой группе нет других цифр, кроме нулей ; например, a-000123+bc+0000.0008-0000+0001.07 преобразуется в a-123+bc+0.0008-0+1.07).
#include <stdio.h>
#include <string.h>
int main(){    
char str[80];
    int i, j;
    printf("Введите последовательность символов:\n");
    fgets(str, sizeof(str), stdin);
    printf("Созданная последовательность символов: \n");
    //(strchr(пока не появится первый знак $))
    if (strchr(str, '$')) {
        for (i = 0; str[i] != '$' && i < strlen(str); i++) 
        {
            if (str[i] == '0')
            {
                j = i;
                while (str[j] == '0')
                    j++;
                if (str[i-1] == '.'){
                    for (; i <= j+1; i++)
                        printf("%c", str[i]);
                } else if (str[j] == '.') 
                {
                        printf("%c", '0');
                        i = j-1;
                } else if (!((int)str[j] >= 49 && (int)str[j] <= 57))
                {
                    printf("%c", '0');
                    i = j-1;
                }
            } else
                printf("%c", str[i]);
        }
    } else
        printf("Последовательность символов не заканчивается a '$'!");
    return 0;
}
