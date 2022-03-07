#!/bin/bash
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
BOLDRED='\033[1;31m'
WHITEBLINK='\033[97;5m'
RMC='\033[0m'

set -euo

echo -n "Enter the path of your own my.h file (type nothing to skip): "
read -r reply
echo -n "Do you want a (r)oot install or a (u)ser install (default: user)"
read -r root
case $root in
"r" | "root" | "sudo")
    BIN_PATH="/usr/local/bin/"
    SHARE_PATH="/usr/local/share/Lezgo/"
    MAN_PATH="/usr/local/man/man1"
    sudo chmod +x lezgo
    sudo mkdir -p "$SHARE_PATH"
    sudo cp -Rf ./* "$SHARE_PATH"
    sudo cp lezgo "$BIN_PATH"
    sudo gzip lezgo.1
    sudo cp lezgo.1.gz "$MAN_PATH"
    case "$PATH" in
    *"$BIN_PATH"*)
        PATH_PRESENCE=1
        ;;
    *)
        PATH_PRESENCE=0
        ;;
    esac
    if [[ -f ${reply} ]]; then
        sudo cp ./"${reply}" "$SHARE_PATH"/init/lib/my/my.h
    fi
    ;;
*)
    BIN_PATH="$HOME/.local/bin"
    SHARE_PATH="$HOME/.local/share/Lezgo"
    chmod u+x ./lezgo
    mkdir -p "$BIN_PATH"
    mkdir -p "$SHARE_PATH"
    cp -Rf ./* "$SHARE_PATH"
    cp ./lezgo "$BIN_PATH"
    case "$PATH" in
    *"$BIN_PATH"*)
        PATH_PRESENCE=1
        ;;
    *)
        PATH_PRESENCE=0
        ;;
    esac
    if [[ -f ${reply} ]]; then
        cp ./"${reply}" "$SHARE_PATH"/init/lib/my/my.h
    fi
    ;;
esac

if [[ PATH_PRESENCE -eq 0 ]]; then
    printf "${BOLDRED}WARNING: $BIN_PATH is NOT in the current session's PATH${RMC}\n"
fi
