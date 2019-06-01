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
	int fd = open(f, O_CREAT|O_WRONLY, S_IRWXU);
	char *s = "#include <stdio.h>%c#include <fcntl.h>%c#include <unistd.h>%c#define FILENAME %c%s%c%cint main() {%c	int i = %d; %c	if (i <= 0)%c		return (1);%c	char *f;%c	asprintf(&f, FILENAME, i-1);%c	int fd = open(f, O_CREAT|O_WRONLY, S_IRWXU);%c	char *s = %c%s%c;%c	dprintf(fd, s, 10, 10, 10, 34, FILENAME, 34, 10, 10, i-1, 10, 10, 10, 10, 10, 10, 34, s, 34, 10, 10, 10, 10);%c	close(fd);%c}%c";
	dprintf(fd, s, 10, 10, 10, 34, FILENAME, 34, 10, 10, i-1, 10, 10, 10, 10, 10, 10, 34, s, 34, 10, 10, 10, 10);
	close(fd);
}
