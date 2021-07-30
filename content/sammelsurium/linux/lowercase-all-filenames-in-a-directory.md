---
title: "Lowercase all filename in a directory with one line of code"
date: "2021-07-20"
lastmod: "2021-07-30"
category: Linux
---

Here’s a one-liner you can use to change all the filenames that include uppercase letters to lowercase. If I didn’t write about it, I’d forget how it works, so here we go!

```Shell
for f in *; do echo $f; mv $f $(echo $f | tr '[:upper:]' '[:lower:']); done
```

Break down:

`for file in *`: loops over every file (variable). You could also do `in *.pdf` and that would only select PDF’s for example

`do echo $f`: do is part of the `for` loop syntax, `echo` the variable `f`

```Shell
mv $f $(echo $f | tr '[:upper:]' '[:lower:'])
```

This command goes from inside to outside because of the parenthesis.

`echo` out the filename of `f` and pipe it to the `tr` command.

The `translate characters` (tr) translates then upper case characters to lower case characters. 

Then move the original file name to the one outputted by the tr command
