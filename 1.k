//k) заменить все комбинации символов child комбинациями символов children;
#include <stdio.h>
#include <string.h>
int main(){
char str[80];
int i;
printf("Введите последовательность символов: \n");
fgets(str, sizeof(str), stdin);
printf("Получившаяся последовательность символов: \n");
for (i = 0; i <= sizeof(str); i++)
{
  if (str[i] == 'c' && str[i+1] == 'h' && str[i+2] == 'i' && str[i+3] == 'l' && str[i+4] == 'd')
  {
    printf("children");
    i += 4;
  } 
  else
  printf("%c", str[i]);
}
return 0;
}
