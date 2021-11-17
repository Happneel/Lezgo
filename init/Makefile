##
## EPITECH PROJECT, 2021
## Makefile
## File description:
## Makefile
##

OUT = ## bin name ##
SRCNAMES = ## files to compile in src/ ##

TESTSNAMES = ## files in tests/ ##
TESTEDNAMES = ## files to test in src/ ##

CC = gcc
CFLAGS = -Wall -Wextra -Wpedantic -Werror -std=c99 -Og
CPPFLAGS = -Iinclude/
LDLIBS = -L lib/my -lmy

SRC = $(addsuffix .c, $(addprefix src/, $(SRCNAMES)))
OBJ = $(SRC:.c=.o)

TESTOUT = test_$(OUT)
TESTLIBS = -lcriterion

TESTS = $(addsuffix .c, $(addprefix tests/, $(TESTSNAMES)))
TESTED = $(addsuffix .c, $(addprefix src/, $(TESTEDNAMES)))

.PHONY: all compile clean fclean re tests libcreate libclean libfclean

all:	libcreate compile

compile: $(OBJ)
	$(CC) $(CFLAGS) $(CPPFLAGS) $(OBJ) -o $(OUT) $(LDLIBS)

tests_run: clean libcreate
	$(CC) --coverage -o $(TESTOUT) $(TESTED) $(TESTS) \
	    $(TESTLIBS) $(LDLIBS) $(CPPFLAGS)
	./$(TESTOUT)
	gcovr --exclude tests/
	gcovr --exclude tests/ --branches

libcreate:
	make -C lib/my all

libclean:
	make -C ./lib/my clean

libfclean:
	make -C ./lib/my fclean

clean:	libclean
	rm -f $(OBJ)
	find -name "*.gcno" -delete
	find -name "*.gcda" -delete
	find -name "*~" -delete
	find -name "*#" -delete
	find -name "vgcore.*" -delete

fclean: libfclean clean
	$(RM) $(OUT)
	$(RM) $(TESTOUT)

re: fclean all
