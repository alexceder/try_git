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

all: compile

compile: $(FILES)
	$(CC) $(CFLAGS) $(FILES) -o $(BINFOLD)test

run:
	./$(BINFOLD)test

.PHONY: clean

clean:
	rm test
