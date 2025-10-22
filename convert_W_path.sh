# This is the bash script for converting Windows path addresses to WSL friendly /mnt paths. 



# This line is a **shebang command**. This tells the shell to use bash. 
#!/bin/bash


# The first **echo** command prints the first arg provided, our W-path
# The **sed** command uses the printed output from echo
## The sed command makes two substitutions.
### 1. s/\\/\//g replaces every backslash with a forward slash, using / as the delimeter and g applies a global flag
#### This properly adjusts the slash formatting 
### 2. s/^\(.\):/\/mnt\/\L\1/ replaces the drive letter and colon
###    with /mnt/c   
#### The \L makes the drive letter lowercase 
echo "$1" | sed 's/\\/\//g; s/^\(.\):/\/mnt\/\L\1/'
