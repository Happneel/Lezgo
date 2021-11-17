#!/bin/bash
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
BOLDRED='\033[1;31m'
WHITEBLINK='\033[97;5m'
RMC='\033[0m' # Remove color

if [ -z $1 ];
then
    echo
    echo -e Type \"${YELLOW}./lezgo.sh -h${RMC}\" for help.
    echo
    exit 0
fi
if [ $1 == "-h" ];
then
    echo -e ${BOLDRED}-------------------------------------------------------------------
    echo This mini script has been made for people who wants to optimize
    echo everything =\)
    echo With this script, you will be able to copy automatically all
    echo files that are necessary for a first compilation.
    echo
    echo This script has been made by Mathieu Nowakowski.
    echo -e -------------------------------------------------------------------${RMC}
    echo
    echo -e ${GREEN}Enter the directory where you want to copy the base.
    echo -e \(even if the directory doesn\'t exist.\)${RMC}
    echo
    echo -e Usage : ${YELLOW}$ ./lezgo.sh \"pool/day01/pathname/\"${RMC}
    echo
    echo -e ${GREEN}You can also type -undo if you made a mistake${RMC}
    echo
    echo -e Usage : ${YELLOW}$ ./lezgo.sh -undo \"pool/day01/pathname/\"${RMC}
    echo
    exit 0
fi
if [ $1 == "-undo" ]
then
    if [ -z $2 ]
    then
        echo
        echo -e Usage : ${YELLOW}$ ./lezgo.sh -undo \"pool/day01/pathname/\"${RMC}
        echo
        exit 0
    fi
    echo
    echo -e ${YELLOW}LMAO let\'s undo your shitty error x\)${RMC}
    echo
    find init/ | sed 's|.*init/||' | while read i;
    do
        if [ -z $i ];
        then
            continue
        else
            rm -rf $2/$i
            echo -e $i ${RED}deleted${RMC}
        fi
    done
    exit 0
fi
if [ $1 == "-" ]
then
    echo
    echo Unknown flag
    echo
    echo -e Type \"${YELLOW}./lezgo.sh -h${RMC}\" for help.
    echo
    exit 0
else
    mkdir -p $1
    cp -rfi init/* $1
    echo
    echo -e ${WHITEBLINK}Done =\)${RMC}
    echo
    echo -e ${YELLOW}In order to compile, you have to :${RMC}
    echo -e \- Fill the first fourth variables in ${GREEN}$1/Makefile${RMC}
    echo -e \- Add your functions in ${GREEN}$1/src${RMC}
    echo -e \- Add your own lib in ${GREEN}$1/lib/my/${RMC} \(to avoid a -42\) \;\)
    echo -e \- Fill the first variable in ${GREEN}$1/lib/my/Makefile${RMC}
    echo -e \- Fill the ${GREEN}$1/include/main.h${RMC} with your protoypes \;\)
    echo -e \- Fill and rename ${GREEN}$1/tests/test_.c${RMC} \(Optional\)
    echo
    echo -e ${BOLDRED}This script has been made by Mathieu Nowakowski.${RMC}
    echo
fi
