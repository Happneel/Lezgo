##
## EPITECH PROJECT, 2021
## Makefile
## File description:
## csfml is the best thing ever
##

SRC = ## files you want to add into your lib ##

CC = gcc
CFLAGS = -Wall -Wextra -Wpedantic -Werror -std=c99 -Og

OUTPUTFILE	= libmy.a

OBJ =	$(SRC:c=o)

all: $(OBJ)
	ar rc $(OUTPUTFILE) $(OBJ)
	mkdir -p ../../include
	cp my.h ../../include/
	cp libmy.a ../

clean:
        find -name "*.gcno" -delete
        find -name "*.gcda" -delete
        find -name "*~" -delete
        find -name "*#" -delete
        find -name "vgcore.*" -delete
	$(RM) $(OBJ)

fclean:	clean
	$(RM) $(OUTPUTFILE)
	$(RM) ../$(OUTPUTFILE)
	$(RM) ../../include/my.h

re: fclean all
