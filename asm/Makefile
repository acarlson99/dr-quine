AS = nasm
ASFLAGS = -f macho64

COLLEEN_O = Colleen.o
COLLEEN = Colleen

GRACE_O = Grace.o
GRACE = Grace

SULLY_O = Sully.o
SULLY = Sully

all: $(COLLEEN) $(GRACE) $(SULLY)

$(COLLEEN): $(COLLEEN_O)
$(GRACE): $(GRACE_O)
$(SULLY): $(SULLY_O)

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
