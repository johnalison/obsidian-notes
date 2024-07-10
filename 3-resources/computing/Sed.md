[[Sed]]
[[computing]]


https://www.gnu.org/software/sed/manual/sed.html

- Test a replacement

  > sed -n 's/* %GREEN%/--->/p' CWR_AlbertDeRoeck.twiki

- Do the replacement in line

  > sed -i 's/* %GREEN%/--->/g' CWR_AlbertDeRoeck.twiki
  (On mac)    > sed -i ''  's/* %GREEN%/--->/g' CWR_AlbertDeRoeck.twiki

- By default sed prints all processed input
  Use -n to suppress output, and the p command to print specific lines. The following command prints only line 45 of the input file:

    > sed -n '45p' file.txt

- sed commands follow this syntax:

    [addr]X[options]

- The following example deletes lines 30 to 35 in the input. 30,35 is an address range. d is the delete command:

  > sed '30,35d' input.txt > output.txt

- The s command (as in substitute) is probably the most important in sed and has a lot of different options. The syntax of the s command is ‘s/regexp/replacement/flags’.

- Addresses determine on which line(s) the sed command will be executed. The following command replaces the word ‘hello’ with ‘world’ only on line 144:

  > sed '144s/hello/world/' input.txt > output.txt


- Addresses can contain regular expressions to match lines based on content instead of line numbers. The following command replaces the word ‘hello’ with ‘world’ only in lines containing the word ‘apple’:

  > sed '/apple/s/hello/world/' input.txt > output.txt

-  The following command replaces the word ‘hello’ with ‘world’ only in lines not containing the word ‘apple’:

   > sed '/apple/!s/hello/world/' input.txt > output.txt

- Can use /regex/ to select any line which matches the regular expression regex

  (eg: replace W aith XX only on lines that match "Wife"
  > sed  '/Wife/s/W/XX/p' tags

- \%regexp%
    (The % may be replaced by any other single character.)

    This also matches the regular expression regexp, but allows one to use a different delimiter than /.


- Regular expressions in sed are specified between two slashes.

  The following command prints lines containing the word ‘hello’:

    > sed -n '/hello/p'

  The above example is equivalent to this grep command:

    > grep 'hello'

