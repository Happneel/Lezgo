/*
** EPITECH PROJECT, 2021
** test_bsq
** File description:
** test_bsq
*/

#include <criterion/criterion.h>
#include <criterion/redirect.h>
#include "main.h"

void redirect_all_stdout(void)
{
        cr_redirect_stdout();
        cr_redirect_stderr();
}

Test(/*out*/_test, file_descriptor_failure, .init = redirect_all_stdout)
{
    char *str = "get rickrolled";

    /*function*/
    cr_assert_stdout_eq_str("");
}
