# This is a stupid test, because I am stupid.
# Is `make` always chosing the first target as default?

# Compiler:
CC = gcc

# Flags:
CFLAGS = -Wall -pedantic -std=c99

# Files:
FILES = src/*.c

# Binary folder:
BINFOLD = bin/

# Binary name:
BINNAME = main

# Tests folder:
TEST_FILES = tests/*.c

# Binary name:
TESTNAME = test

all: compile
.PHONY: all

#compile: $(FILES)
compile: $(FILES)
	mkdir -p $(BINFOLD)
	$(CC) $(CFLAGS) $(FILES) -o $(BINFOLD)$(BINNAME)
.PHONY: compile

run:
	./$(BINFOLD)$(BINNAME)
.PHONY: run

tests: $(TEST_FILES)
	mkdir -p $(BINFOLD)
	$(CC) $(CFLAGS) $(TEST_FILES) -o $(BINFOLD)$(TESTNAME) && ./$(BINFOLD)$(TESTNAME)
.PHONY: tests

clean:
	rm $(BINFOLD)*
.PHONY: clean

