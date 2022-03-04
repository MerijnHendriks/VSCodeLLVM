#include <stdio.h>
#include <stdlib.h>

#ifdef DEBUG
/* disable leak sanitizer */
const char* __asan_default_options(void)
{
    return "detect_leaks=0";
}
#endif

int main()
{
    printf("hello world!\n");
    return EXIT_SUCCESS;
}
