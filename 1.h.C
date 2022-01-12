h) удалить из каждой группы подряд идущих цифр все начальные незначащие нули (если группа состоит только из нулей, то заменить эту группу одним нулем);
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
    if (str[i] == '0' && (int)str[i-1] >= 49 && (int)str[i-1] <= 57)
    {
      while (str[i] == '0')
      {
        printf("%c", str[i]);
        i++;
      }
    }
  if (str[i] == '0' && (int)str[i+1] >= 49 && (int)str[i+1] <= 57)
  {
    i++;
  }
  if (str[i] == '0' && str[i+1] == '0')
  {
    while (str[i] == '0' && str[i+1] == '0')
    i++;
    if (!((int)str[i+1] >= 48 && (int)str[i+1] <= 57))
    printf("%c", '0');
  } 
  else 
  {
    printf("%c", str[i]);
  }
  }
return 0;
}
