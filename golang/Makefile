GOBUILD = go build

COLLEEN = Colleen
GRACE = Grace
SULLY = Sully

all: $(COLLEEN)

%: %.go
	$(GOBUILD) $<

clean:

fclean: clean
	rm -f $(COLLEEN) $(GRACE) $(SULLY)

re: fclean all
