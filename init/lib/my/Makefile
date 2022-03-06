##
## EPITECH PROJECT, 2021
## Makefile
## File description:
## csfml is the best thing ever
##

SRCNAMES = ## files you want to add into your lib ##

## DON'T TOUCH BELOW THIS LINE ##

SRC = $(addsuffix .c, $(SRCNAMES))
CC = gcc
CFLAGS = -Wall -Wextra

OUTPUTFILE	= libmy.a

OBJ =	$(SRC:c=o)

TESTFILES =     *.gnco\
	        *.gcda
TEMPFILES =     *~\
                *\#
VGFILES =       vgcore.*

all: $(OBJ)
	ar rc $(OUTPUTFILE) $(OBJ)
	mkdir -p ../../include
	cp my.h ../../include/

clean:
	$(RM) $(OBJ)
	$(RM) $(TESTFILES)
	$(RM) $(TEMPFILES)
	$(RM) $(VGFILES)

fclean:	clean
	$(RM) $(OUTPUTFILE)
	$(RM) ../$(OUTPUTFILE)
	$(RM) ../../include/my.h

re: fclean all
