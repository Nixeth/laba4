//j) оставить только те группы цифр, которые составлены из подряд идущих цифр с возрастающими значениями; все остальные цифры и группы цифр удалить ( другие символы копировать в выходной поток без изменения);
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
  if ((int)str[i] >= 48 && (int)str[i] <= 57
  && ((((int)str[i+1] >= 48 && (int)str[i+1] <= 57) && ((int)str[i] < (int)str[i+1]))
  || ((int)str[i-1] >= 48 && (int)str[i-1] <= 57) && ((int)str[i] > (int)str[i-1])))
  printf("%c", str[i]);
  if (!((int)str[i] >= 48 && (int)str[i] <= 57))
  printf("%c", str[i]);
}
return 0;
}
