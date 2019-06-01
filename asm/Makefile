NASM = nasm
NSMFLAGS = -f macho64
LNK = ld

COLLEEN_SRC = Colleen.asm
COLLEEN_O = $(COLLEEN_SRC:.asm=.o)
COLLEEN = Colleen

GRACE_SRC = Grace.asm
GRACE_O = $(GRACE_SRC:.asm=.o)
GRACE = Grace

SULLY_SRC = Sully.asm
SULLY_O = $(SULLY_SRC:.asm=.o)
SULLY = Sully

all: $(COLLEEN) # $(GRACE) $(SULLY)

$(COLLEEN): $(COLLEEN_O)
	$(LNK) $(COLLEEN_O) -o $(COLLEEN)

$(GRACE): $(GRACE_O)
	$(LNK) $(GRACE_O) -o $(GRACE)

$(SULLY): $(SULLY_O)
	$(LNK) $(SULLY_O) -o $(SULLY)

%.o: %.asm
	$(NASM) $(NSMFLAGS) -o $@ $<

clean:
	rm -f $(COLLEEN_O) $(GRACE_O) $(SULLY_O)

fclean: clean
	rm -f $(COLLEEN) $(GRACE) $(SULLY)

re: fclean all
