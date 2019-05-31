#include <stdio.h>
#include <fcntl.h>
#define A "#include <stdio.h>%c#include <fcntl.h>%c#define A %c%s%c%c#define B %c%s%c%c#define C() int main() {int fd = open(%c%s%c, O_CREAT|O_WRONLY, S_IRWXU); if (fd < 0) return (1); dprintf(fd, A, 10, 10, 34, A, 34, 10, 34, B, 34, 10, 34, B, 34, 10, 10, 10, 10);}%c// 3 defines only, 1 comment, write to Grace_kid.c%c%cC()%c"
#define B "Grace_kid.c"
#define C() int main() {int fd = open("Grace_kid.c", O_CREAT|O_WRONLY, S_IRWXU); if (fd < 0) return (1); dprintf(fd, A, 10, 10, 34, A, 34, 10, 34, B, 34, 10, 34, B, 34, 10, 10, 10, 10);}
// 3 defines only, 1 comment, write to Grace_kid.c

C()
