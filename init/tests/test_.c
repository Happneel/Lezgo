/*
** EPITECH PROJECT, 2021
** test_.c
** File description:
** test_
*/

#include <criterion/criterion.h>
#include "/*out*/.h"

Test(/*out*/_test, simple_test)
{
    int ac = 1;
    char *av[1] = {"./out"};

    cr_assert_eq(/*out*/(ac, av), 0);
}
