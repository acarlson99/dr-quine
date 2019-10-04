CFLAGS = -Wall -Wextra
COLLEEN = Colleen
GRACE = Grace
SULLY = Sully

all: $(COLLEEN) $(GRACE) $(SULLY)

clean:

fclean: clean
	rm -f $(COLLEEN) $(GRACE) $(SULLY)

re: fclean all

k: fclean
	rm -rf *.dSYM
	rm -f *.out
	rm -f *.o
	rm -f Sully_*.c
	rm -f Grace_kid.c
