AS = nasm
ASFLAGS = -f macho64
CFLAGS = -Wall -Wextra
GOBUILD = go build

COLLEEN = Colleen
GRACE = Grace
SULLY = Sully
COLLEEN_O = Colleen.o
GRACE_O = Grace.o
SULLY_O = Sully.o
OBJS = $(COLLEEN_O) $(GRACE_O) $(SULLY_O)
EXECS = $(COLLEEN) $(GRACE) $(SULLY)

# asm
ASM_OBJ = $(addprefix $(ASM_DIR), $(OBJS))
ASM_EXEC = $(addprefix $(ASM_DIR), $(EXECS))
ASM_DIR = asm/
# c
C_EXEC = $(addprefix $(C_DIR), $(EXECS))
C_DIR = c/
# golang
GO_EXEC = $(addprefix $(GO_DIR), $(EXECS))
GO_DIR = golang/

all: $(C_EXEC) asm_ $(GO_EXEC)

asm_: $(ASM_OBJ) $(ASM_EXEC)

%: %.go
	$(GOBUILD) -o $@ $<

clean:
	rm -f $(ASM_OBJ)

fclean: clean
	rm -f $(C_EXEC) $(ASM_EXEC) $(GO_EXEC)

re: fclean all
