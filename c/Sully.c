#define _GNU_SOURCE
#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#define FILENAME "Sully_%d.c"
int main() {
	int i = 5;
	if (i <= 0)
		return (1);
	char *f;
	asprintf(&f, FILENAME, i-1);
	int fd = open(f, O_CREAT|O_WRONLY|O_TRUNC, S_IRWXU);
	if (fd <= 0)
		return (1);
	char *s = "#define _GNU_SOURCE%1$c#include <stdio.h>%1$c#include <fcntl.h>%1$c#include <unistd.h>%1$c#define FILENAME %2$c%4$s%2$c%1$cint main() {%1$c	int i = %3$d; %1$c	if (i <= 0)%1$c		return (1);%1$c	char *f;%1$c	asprintf(&f, FILENAME, i-1);%1$c	int fd = open(f, O_CREAT|O_WRONLY|O_TRUNC, S_IRWXU);%1$c	if (fd <= 0)%1$c		return (1);%1$c	char *s = %2$c%5$s%2$c;%1$c	dprintf(fd, s, 10, 34, i-1, FILENAME, s);%1$c	close(fd);%1$c}%1$c";
	dprintf(fd, s, 10, 34, i-1, FILENAME, s);
	close(fd);
}
