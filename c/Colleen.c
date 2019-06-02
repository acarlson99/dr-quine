#include <stdio.h>

/*
  One comment
*/

char	*other(void) {
	return ("#include <stdio.h>%1$c%1$c/*%1$c  One comment%1$c*/%1$c%1$cchar	*other(void) {%1$c	return (%3$c%2$s%3$c);%1$c}%1$c%1$cint		main(void) {%1$c/*%1$c  Two comment%1$c*/%1$c	printf(other(), 10, other(), 34);%1$c}%1$c");
}

int		main(void) {
/*
  Two comment
*/
	printf(other(), 10, other(), 34);
}
