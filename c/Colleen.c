#include <stdio.h>

/*
  One comment
*/

char	*other(void) {
	return ("#include <stdio.h>%c%c/*%c  One comment%c*/%c%cchar	*other(void) {%c%creturn (%c%s%c);%c}%c%cint		main(void) {%c/*%c  Two comment%c*/%c	printf(other(), 10, 10, 10, 10, 10, 10, 10, 9, 34, other(), 34, 10, 10, 10, 10, 10, 10, 10, 10, 10);%c}%c");
}

int		main(void) {
/*
  Two comment
*/
	printf(other(), 10, 10, 10, 10, 10, 10, 10, 9, 34, other(), 34, 10, 10, 10, 10, 10, 10, 10, 10, 10);
}
