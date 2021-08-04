#!/bin/bash

# ------------
# creates a new file in sequence for the microblog
# the directories for the years are just a way to organize 
# the folders do not have an impact on page generation
# as the page will display all entries

content_dir=./content/microblog
year="$(date +'%Y')"


# when year does not exists, create it
if [ ! -d "$content_dir/$year" ]; then
    mkdir -p $content_dir/$year
fi

# get filename with highest number starting with a 2 
# this prevents showing up '_index.md' in the result list
# then sort in reversed order and select the first element
# first element be sth like: './content/microblog/2021/2021.00087.md'
# cut out the third element from the file. e.g. '00087'
file=$(ls -1 $content_dir/2**/*.md | sort -hr | head -1 | cut -sd '.' -f 3)

# us bc to do basic calculation
next_number=$(echo $file + 1 | bc)
new_name=$(printf "%s.%05d.md" $year $next_number)
filename=$content_dir/$year/$new_name

echo "Opening editor: $EDITOR"
echo "Filename will be: $filename"

if [ -n $EDITOR ]; then
    $EDITOR $filename
else 
    vim $filename
fi

