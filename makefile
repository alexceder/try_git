# This is a stupid test, because I am stupid.
# Is `make` always chosing the first target as default?

all: compile

compile: test.c
	gcc -o test test.c

clean:
	rm test
