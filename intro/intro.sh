#!/usr/bin/env bash

# This is a bash script file.
# To run this file use ./intro.sh in your terminal while in the correct directory.


# Echo prints lines to the output, if run using ./intro.sh then the output will be the terminal
echo "Running intro.sh"

# The command cd (change directory) can be used to change the current directory.
cd ../data || exit
# The '||' on this line is like a or. If the left part gives an exit code of non-zero (error/false) the right part is evaluated.
# We also have the '&&' sign. this only evaluates the right part if the left part has a zero exit code (no error/true).
echo "Moved from intro to the data folder"

# The following line will execute the 'ls' command and save it in the variable lsOutput
lsOutput=$(ls)
# Then we can use echo to print the result
echo "Result of ls"
echo "$lsOutput"


# Implement a command  that counts the number files  in the current directory.
nmrOfFiles=$(ls|wc -l)
echo "Number of files"
echo "$nmrOfFiles"

# Implement a command that displays all files and their details in the current directory
# Do this by typing it between the brackets below.
# You can first test individual commands by pasting them in the terminal.
# (Make sure that you are in the correct directory if you want to test it)
detailedLsOutput=$(ls -l)
# Prints the lsOutput
echo "Files in directory:"
echo "$detailedLsOutput"

# Implement a command that gets all the lines that contain "#" from the 'exoplanets' file
lines=$(grep "#" ./planets/exoplanets) || exit
# Print result
echo "Lines from exoplanets with '#'"
echo "$lines"

# Now that you have used the basics of finding files and getting text from files it's time to move on.
# The real power of these commands are in the ability to combine them.
# Using the output of the first command  as data for the second  is called piping and is denoted by the symbol |
# A silly example is "ls | lolcat"
echo "The ls  command but now with some more color"
ls | lolcat

# Lets create an pipeline where we get the names of the last 5 exoplanets that where discovered in the year 2001.
# The first part should take all the lines containing "2001" from the 'exoplanets' file.
# The second part should only keeps the last 5 lines.
# lastly we need to get the data that is before the first comma.
firstPipeline=$(grep "2001" ./planets/exoplanets | tail -n 5 | cut -d ',' -f 1)
echo "First pipeline results:"
echo "$firstPipeline"


#end on start path
# This is needed for the automated testing
cd ../intro || exit
