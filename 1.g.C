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
  if (str[i] == '*' && str[i+1] == '*')
  {
    printf("%c", '+');
    i++;
  }
  else
  printf("%c", str[i]);
}
return 0;
}
