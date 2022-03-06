/*
** EPITECH PROJECT, 2021
** function.c
** File description:
** function
*/

#include "function.h"

int function(int ac, char **av)
{
    if (error_handling(ac, av) >= 84)
        return 84;

    return 0;
}
