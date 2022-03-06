# Lezgo

**Lezgo** (`lezgo.sh`) is a [bash](https://en.wikipedia.org/wiki/Bash_%28Unix_shell%29) script made for people who wants to optimize everything =)
<br />
With this script, you are able to copy automatically all necessary files for a first compilation.
<br />

**Made for Epitech Students - According to the 2021 / 2022 Epitech Coding Style**

This script has been made by Mathieu Nowakowski.

## Installation
Download this repository to your local machine.

    $ chmod +x install_lezgo.sh
    $ ./install_lezgo.sh
    
    Enter the path of your own my.h file (type nothing to skip)
    
    Done !

## Usage

- `lezgo -h` or `--help`
> Display the help page
- `lezgo "directory_name/"`
> Automatically generates a partially functionnal compilation structure ("partially" because you have to write by hands some variables in many files).
- `lezgo -a` or `--auto` `"project_name" "directory_name/"`
> Automatically generates a full functionnal compilation structure (you don't have to do nothing except a first push C:).
- `lezgo -u` or `--undo` `"directory_name/"`
> I got your back ! Undo all `cp` commands this script made.
  - **Note** : Not fully working with `-a` and `--auto` flags.
  - **Note 2** : Be careful with this command ! This can conflict with same-name files and can delete your old files.

## Uninstall
Why would you do that ?
<br />
But if you want to.. here it is :(

    $ sudo rm -r /usr/local/lib/lezgo/
    $ sudo rm -r /usr/local/bin/lezgo
    
    Done !
<br />


**Made with heart c:**

**By Mathieu NOWAKOWSKI (2022) - { EPITECH } - Promo 2026**
