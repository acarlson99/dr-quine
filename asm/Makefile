NASM = nasm
NSMFLAGS = -f macho64
CC = gcc

COLLEEN_O = Colleen.o
COLLEEN = Colleen

GRACE_O = Grace.o
GRACE = Grace

SULLY_O = Sully.o
SULLY = Sully

all: $(COLLEEN) $(GRACE) $(SULLY)

$(COLLEEN): $(COLLEEN_O)
	$(CC) $(COLLEEN_O) -o $(COLLEEN)

$(GRACE): $(GRACE_O)
	$(CC) $(GRACE_O) -o $(GRACE)

$(SULLY): $(SULLY_O)
	$(CC) $(SULLY_O) -o $(SULLY)

%.o: %.s
	$(NASM) $(NSMFLAGS) -o $@ $<

clean:
	rm -f $(COLLEEN_O) $(GRACE_O) $(SULLY_O)

fclean: clean
	rm -f $(COLLEEN) $(GRACE) $(SULLY)

re: fclean all

k: fclean
	rm -f *.out
	rm -rf *.dSYM
	rm -f *.o
	rm -f Grace_kid.s
	rm -f Sully_*.s
