# Introduction to Bash

[Bash](<https://en.wikipedia.org/wiki/Bash_(Unix_shell)>) is an acronym for **B**ourne **A**gain **Sh**ell, and is the main command line tool in linux/unix Operating Systems. `.sh` is the bash script default file extension.

- `#!` is called **shebang**, and is mandatory to place in bash script followed by the bash path
  - `echo $SHELL` to get the path of the bash
- `man command` to get help about any command
- `alias` to define custom commands (e.g. `alias myPull='git pull --rebase'`)
- `whami` and `hostname` command to get user and username of the pc
- `history` to get the history of the shell
- `read` command
  - `-p` to prompt message and read at the same time
  - `-a` to take array as input
  - `$REPLY` to read the output from read
- `diff` command to find difference between two files
- `env | grep SHELL` to find environment variables
  - `grep` command is to find something in long text/output
- use `export myVar=Hello` to add to the environment variable
- `chmod a+xrw bashFile.sh` to provide the access to a file
- All arithmetic operations needs to be placed between `(())`
- array is defined as `arr=(1 2 3 4 5 6)`, and has following properties
  - To access any element: `${arr[3]}`
  - To get the whole array: `${arr[@]}`
  - To get the array length: `${#arr[@]}`
  - To get the array indexes: `${!arr[@]}`

---

## `echo` Command

- `-n` to display the output at the same line
- `-e` to include escape line characters like `\t`, `\n` etc

Brace expansion, also called alternation, is a feature copied from the C shell. It generates a set of alternative combinations. Generated results need not exist as files. The results of each expanded string are not sorted and left to right order is preserved:

```bash
$ echo a{p,c,d,b}e
ape ace ade abe
$ echo {a,b,c}{d,e,f}
ad ae af bd be bf cd ce cf
```

When brace expansion is combined with wildcards, the braces are expanded first, and then the resulting wildcards are substituted normally. Hence, a listing of JPEG and PNG images in the current directory could be obtained using:

```bash
ls _.{jpg,jpeg,png} # expands to _.jpg _.jpeg _.png - after which, # the wildcards are processed
echo \*.{png,jp{e,}g} # echo just show the expansions - # and braces in braces are possible.
```

In addition to alternation, brace expansion can be used for sequential ranges between two integers or characters separated by double dots. Newer versions of Bash allow a third integer to specify the increment.

```bash
echo {1..10}
# 1 2 3 4 5 6 7 8 9 10
echo {01..10}
# 01 02 03 04 05 06 07 08 09 10
echo file{1..4}.txt
# file1.txt file2.txt file3.txt file4.txt
echo {a..e}
# a b c d e
echo {1..10..3}
# 1 4 7 10
echo {a..j..3}
# a d g j
```

When brace expansion is combined with variable expansion (A.K.A. parameter expansion and parameter substitution) the variable expansion is performed after the brace expansion, which in some cases may necessitate the use of the eval built-in, thus:

```bash
start=1; end=10
echo {$start..$end}  # fails to expand due to the evaluation order
# {1..10}
eval echo {$start..$end} # variable expansion occurs then resulting string is evaluated
# 1 2 3 4 5 6 7 8 9 10
```

---

## Conditonal Statement

if-else Conditional Statement in Bash is defined in a script using following syntax

```bash
if [[ conditional test ]]; then
    statements to execute upon this success
elif [[ contional test ]]; then
    statements to execute upon this success
else
    statements to execute upon this success
fi
```

Case Conditional Statement in Bash is defined in a script using following syntax

```bash
case test-variable in
  pattern-1) statements to execute upon this success;;
  pattern-2) statements to execute upon this success;;
  pattern-3) statements to execute upon this success;;
  *) statements to execute upon this success;;
esac
```

## Loops

Loops in Bash are defined in a script using following syntax

### For Loop

```bash
for item in list
do
    statements to execute
done
```

```bash
for (( initializer; conditional test; incrementer ))
do
    statements to execute
done
```

### While Loop

```bash
initializer
while conditional test is true
do
    statements to execute
    icrementer
done
```

- use `break` to break the loop when a certain condition is met
- use `continue` to skip the loop iteration

## functions

A Bash function must be defined in a script using this syntax

```bash
function name
{
    statements to be executed
}
```

A definition may use the function keyword or use this syntax

```bash
name ()
{
    statements to be executed
}
```

## Special Characters

| Characters            | Description                                  | Example                |
| --------------------- | -------------------------------------------- | ---------------------- |
| ~                     | Home directory                               | cd ~                   |
| .                     | Previous directory                           | cd .                   |
| ..                    | Parent directory                             | cd ..                  |
| ;                     | Command seperator                            | pwd; ls                |
| $                     | Variable substitution                        | echo $SHELL            |
| $()                   | Command substitution                         | echo $(date +%H:%M)    |
| ' '                   | Strong quote                                 | echo "Literal $var"    |
| " "                   | Weak quote                                   | echo "Interpret $var"  |
| \|                    | Pipeline redirector                          | cat ballad.txt \| more |
| (( ))                 | Arithmetic expression operator               | (( 8+4 ))              |
| $(( ))                | Arithmetic expression substitution           | echo $(( 8+4 ))        |
| [[]]                  | Conditional test operator                    | if [[true && true]]    |
| -eq -ne-gt-ge -lt -le | Numerical Comparison operatores              | if [[$nume -ne 0]]     |
| = != < >              | String Comparison operatores                 | if [[$str != '']]      |
| == != > >= < < =      | Arithmetical Expression Comparison Operators | if (( 8 > 4 ))         |
| && \|\| !             | LOGICAL AND, OR and NOT operators            | true && true           |

## Shell Variables

| Variable     | Description                              | Example            |
| ------------ | ---------------------------------------- | ------------------ |
| $            | Process ID of the shell process          | echo $$            |
| @            | List of all passed positional parameters | echo $@            |
| #            | Total number of passed paramters         | echo $#            |
| 0            | Name of shell or script run command      | echo $0            |
| BASH_VERSION | Bersion number of Bash shell             | echo $BASH_VERSION |
| BASHPID      | Process ID of the shell process          | echo $BASHPID      |
| EDITOR       | Default editor of the shell              | EDITOR=nano        |
| PATH         | The path to search for commands          | echo $PATH         |
| PWD          | Current Working Directory                | echo $PWD          |
| RANDOM       | Generate random number 0-32767           | echo $RANDOM       |
| REPLY        | Default variable for read command        | echo $REPLY        |
| SHELL        | Path address of the shell                | echo $SHELL        |
| TERM         | Terminal type                            | echo $TERM         |
