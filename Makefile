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

all: $(C_DIR) $(ASM_DIR) $(GO_DIR)

.PHONY: $(C_DIR)
$(C_DIR): $(C_EXEC)

.PHONY: $(ASM_DIR)
$(ASM_DIR): $(ASM_OBJ) $(ASM_EXEC)

.PHONY: $(GO_DIR)
$(GO_DIR): $(GO_EXEC)

%: %.go
	$(GOBUILD) -o $@ $<

clean:
	$(RM) $(ASM_OBJ)

fclean: clean
	 $(RM) $(C_EXEC) $(ASM_EXEC) $(GO_EXEC)
	find . -type f -name 'Sully_[0-4].*' -exec rm {} ';'
	find . -type f -name '*Grace_kid.*' -exec rm {} ';'

re: fclean all
