# Introduction to Bash

[Bash](<https://en.wikipedia.org/wiki/Bash_(Unix_shell)>) is an acronym for **B**ourne **A**gain **Sh**ell, and is the main command line tool in linux/unix Operating Systems. `.sh` is the bash script default file extension.

- `#!` is called **shebang**, and is mandatory to place in bash script followed by the bash path
  - `echo $SHELL` to get the path of the bash
- `man command` to get help about any command
- `echo` command
  - `-n` to display the output at the same line
  - `-e` to include escape line characters like `\t`, `\n` etc
- `read` command
  - `-p` to display and read in the same line
  - `-a` to take array as input
  - `$REPLY` to read the output from read
- `diff` command to find difference between two files
- `env | grep SHELL` to find environment variables
  - `grep` command is to find something in long text/output
- use `export myVar=Hello` to add to the environment variable
- All arithmetic operations needs to be placed between `(())`
- array is defined as `arr=(1 2 3 4 5 6)`, and has following properties
  - To access any element: `${arr[3]}`
  - To get the whole array: `${arr[@]}`
  - To get the array length: `${#arr[@]}`
  - To get the array indexes: `${!arr[@]}`
