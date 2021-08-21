---
title: Python Virtual Environment
date: 2021-08-16
lastmod: 2021-08-16
category: python
---


## Install virtuelenv via pip3

```shell
python3 -m pip install virtualenv
```

then check the version

```shell
python3 -m virtualenv --version
virtualenv 20.7.2 from /opt/homebrew/lib/python3.9/site-packages/virtualenv/__init__.py
```


## Create a Virtual Environment

First, let us create a folder `.virtualenvs` in the home directory. This is where we will keep all our virtual environments.

```shell
cd ~
mkdir .virtualenvs
cd .virtualenvs
```

From inside the `.virtualenvs` directory, create a new virtual environment using `virtualenv`

```shell
virtualenv venv
```

Now, let us activate the virtual environment

```shell
source venv/bin/activate
```

## Example

For the learn python the hard way I did this:

```shell
# change into home
cd
# create the .virtualenvs dir
mkdir -p .virtualenvs
# cd into it
cd .virtualenvs
# run python3.9 module 'venv' to create a new virtual environment for lpthw
python3 -m venv lpthw
# activate the virtual environment
source lpthw/bin/activate
```

## In VSCode

Check the settings and search for `venv`. Update the path to the above created `.virtualenv` directory. 