GOBUILD = go build

COLLEEN = Colleen
GRACE = Grace
SULLY = Sully

all: $(COLLEEN) $(GRACE) $(SULLY)

%: %.go
	$(GOBUILD) -o $@ $<

clean:

fclean: clean
	rm -f $(COLLEEN) $(GRACE) $(SULLY)

re: fclean all

k: fclean
	rm -f Grace_kid.go
	rm -f Sully_*.go
