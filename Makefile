# This is a stupid test, because I am stupid.
# Is `make` always chosing the first target as default?

# Compiler:
CC = gcc

# Flags:
CFLAGS = -Wall -pedantic -std=c99

# Files:
FILES = test.c head.c

# Binary folder:
BINFOLD = bin/

# Binary name:
BINNAME = test

all: compile
.PHONY: all

#compile: $(FILES)
compile: $(FILES)
	$(CC) $(CFLAGS) $(FILES) -o $(BINFOLD)$(BINNAME)
.PHONY: compile

run:
	./$(BINFOLD)$(BINNAME)
.PHONY: run

clean:
	rm $(BINFOLD)*
.PHONY: clean

