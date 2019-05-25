#include<stdio.h>

#include "autoconf.h"

void main(){

#ifdef CONFIG_ARM
  printf("ARM PLAT\n");
#endif

#ifdef CONFIG_x86
  printf("x86 PLAT\n");
#endif

#ifdef CONFIG_MYPRINT
  myprint();
#endif


#ifdef CONFIG_MYTEST
  printf("This is my test data!\n");
#endif

#ifdef CONFIG_MYLED
  mytest();
#endif

#ifdef CONFIG_PRINTF
  printf("kkkkkkkk");
#endif
}

