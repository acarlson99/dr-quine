CC = clang
COLLEEN_SRC = Colleen.c
COLLEEN_O = $(COLLEEN_SRC:.c=.o)
COLLEEN = Colleen

GRACE_SRC = Grace.c
GRACE_O = $(GRACE_SRC:.c=.o)
GRACE = Grace

SULLY_SRC = Sully.c
SULLY_O = $(SULLY_SRC:.c=.o)
SULLY = Sully

GRACE = Grace
SULLY = Sully

all: $(COLLEEN) # $(GRACE) $(SULLY)

$(COLLEEN): $(COLLEEN_O)
	$(CC) $(COLLEEN_O) -o $(COLLEEN)

%.o: %.c
	$(CC) -o $@ -c $<

clean:
	rm -f $(COLLEEN_O) $(GRACE_O) $(SULLY_O)

fclean: clean
	rm -f $(COLLEEN) $(GRACE) $(SULLY)

re: fclean all
