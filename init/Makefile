##
## EPITECH PROJECT, 2021
## Makefile
## File description:
## Makefile
##

OUT = ## bin name ##
SRCNAMES =	error_handling\
## files to compile in src/ excluding main.c ##
TESTSNAMES = ## files in tests/ ##

## DON'T TOUCH BELOW THIS LINE ##

SRCMAIN =	$(SRCNAMES)\
		main
TESTEDNAMES =	$(SRCNAMES)

CC = gcc
CFLAGS = -Wall -Wextra
CPPFLAGS = -Iinclude/
LDLIBS = -L lib/my -lmy

SRC = $(addsuffix .c, $(addprefix src/, $(SRCMAIN)))
OBJ = $(SRC:.c=.o)

TESTOUT = test_$(OUT)
TESTLIBS = -lcriterion

TESTS = $(addsuffix .c, $(addprefix tests/, $(TESTSNAMES)))
TESTED = $(addsuffix .c, $(addprefix src/, $(TESTEDNAMES)))

TESTFILES =     *.gcno\
	        *.gcda
TEMPFILES =     *~\
                *\#
VGFILES =       vgcore.*

.PHONY: all compile clean fclean re tests libcreate libclean libfclean

all:	libcreate compile

compile: $(OBJ)
	$(CC) $(CFLAGS) $(CPPFLAGS) $(OBJ) -o $(OUT) $(LDLIBS)

tests_run: clean libcreate
	$(CC) --coverage -o $(TESTOUT) $(TESTED) $(TESTS)\
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
	$(RM) $(OBJ)
	$(RM) $(TESTFILES)
	$(RM) $(TEMPFILES) src/$(TEMPFILES) lib/my/$(TEMPFILES)
	$(RM) $(VGFILES) src/$(VGFILES) lib/my/$(VGFILES)
fclean: libfclean clean
	$(RM) $(OUT)
	$(RM) $(TESTOUT)

re: fclean all
