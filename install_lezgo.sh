#!/bin/bash
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
BOLDRED='\033[1;31m'
WHITEBLINK='\033[97;5m'
RMC='\033[0m'

echo -n "Enter the path of your own my.h file (type nothing to skip): "
read reply
if [ -z ${reply} ]
then
    sudo chmod +x lezgo
    sudo cp -Rf ../lezgo/ /usr/local/lib/
    sudo cp lezgo /usr/local/bin
elif [[ -f ${reply} ]]
then
    sudo chmod +x lezgo
    sudo cp -Rf ../lezgo/ /usr/local/lib/
    sudo cp lezgo /usr/local/bin
    sudo cp ${reply} /usr/local/lib/lezgo/init/lib/my/
    sudo mv /usr/local/lib/lezgo/init/lib/my/${reply} /usr/local/lib/lezgo/init/lib/my/my.h
else
    echo
    echo -e ${BOLDRED}lezgo: no such file or directory: ${YELLOW}${reply}${RMC}
    echo
    exit 1
fi
echo
echo -e ${WHITEBLINK}Done =\)${RMC}
echo
echo -e Type \"${YELLOW}lezgo -h \(or --help\)${RMC}\" for help.
echo
exit 0