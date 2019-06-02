CC = clang
CFLAGS = -Wall -Wextra

COLLEEN_O = Colleen.o
COLLEEN = Colleen

GRACE_O = Grace.o
GRACE = Grace

SULLY_O = Sully.o
SULLY = Sully

all: $(COLLEEN) $(GRACE) $(SULLY)

$(COLLEEN): $(COLLEEN_O)
	$(CC) $(CFLAGS) $(COLLEEN_O) -o $(COLLEEN)

$(GRACE): $(GRACE_O)
	$(CC) $(CFLAGS) $(GRACE_O) -o $(GRACE)

$(SULLY): $(SULLY_O)
	$(CC) $(CFLAGS) $(SULLY_O) -o $(SULLY)

%.o: %.c
	$(CC) $(CFLAGS) -o $@ -c $<

clean:
	rm -f $(COLLEEN_O) $(GRACE_O) $(SULLY_O)

fclean: clean
	rm -f $(COLLEEN) $(GRACE) $(SULLY)

re: fclean all

k: fclean
	rm -rf *.dSYM
	rm -f *.out
	rm -f *.o
	rm -f Sully_*.c
	rm -f Grace_kid.c
