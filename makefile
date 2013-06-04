# This is a stupid test, because I am stupid.
# Is `make` always chosing the first target as default?

# Compiler:
CC = gcc

# Flags:
CFLAGS = -Wall

# Files:
FILES = test.c head.c

# Binary folder:
BINFOLD = bin/

# Binary name:
BINNAME = test

all: compile

compile: $(FILES)
	$(CC) $(CFLAGS) $(FILES) -o $(BINFOLD)$(BINNAME)

run:
	./$(BINFOLD)$(BINNAME)

.PHONY: clean

clean:
	rm $(BINFOLD)*
