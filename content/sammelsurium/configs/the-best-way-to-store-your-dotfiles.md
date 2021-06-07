---
title: "The best way to store your dotfiles: A bare Git repository"
date: "2021-06-07"
lastmod: "2021-06-07"
category: "Configs"
---

**Disclaimer: This post is heavily based on the one at <https://www.atlassian.com/git/tutorials/dotfiles> which goes more into the details**

Some other sources you might want to check out:

- [Hacker News thread](https://news.ycombinator.com/item?id=11070797) on people's solutions to store their [dotfiles](https://en.wikipedia.org/wiki/Dot-file). 
- User `StreakyCobra` [showed his elegant setup](https://news.ycombinator.com/item?id=11071754) 

The only pre-requisite is to install [Git](https://git-scm.com).

In his words the technique below requires:

> No extra tooling, no symlinks, files are tracked on a version control system, you can use different branches for different computers, you can replicate you configuration easily on new installation.

**TLDR;**

Store your dotfiles in a [Git bare repository](http://www.saintsjd.com/2011/01/what-is-a-bare-git-repository/) which acts as a "*side*" folder (like `$HOME/.dotfiles` or `$HOME/.myconfig`) using a specially crafted alias. This alias runs the `git`-command against that repository and not the usual `.git` local folder, which would interfere with any other Git repositories around.

## Starting from scratch

Create a bare git repo in your home folder and define an alias to work with it:

``` Bash
git init --bare $HOME/.dotfiles 
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles config --local status.showUntrackedFiles no
echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.bashrc
# echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.zshrc
```

After this you can manage every file within the `$HOME` folder with the newly created `dotfiles` alias, like:

``` Bash
dotfiles status
dotfiles add .vimrc 
dotfiles commit -m "Add vimrc"
dotfiles add .bashrc
dotfiles commit -m "Add bashrc"
dotfiles push
```


## Install your dotfiles onto a new system (or migrate to this setup)

If you already store your configuration/dotfiles in a [Git repository](https://github.com), on a new system you can migrate to this setup with the following steps:



``` Bash
# Add the bare repo directory to a '.gitignore' file
echo "dotfiles/" >> .gitignore

# clone your repo into a '.dotfiles' directory
git clone --bare <git-repo-url> $HOME/.dotfiles

# Define the alias in the current shell scope:
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Checkout the actual content from the bare repository to your '$HOME':
dotfiles checkout
```


The step above might fail with a message like:

``` plaintext
error: The following untracked working tree files 
  would be overwritten by checkout:
      .bashrc
      .gitignore
  Please move or remove them before you can 
  switch branches
  Aborting
```

This is because your `$HOME` folder might already have some stock configuration files which would be overwritten by Git. The solution is simple: back up the files if you care about them, remove them if you don't care. I provide you with a possible rough shortcut to move all the offending files automatically to a backup folder:

``` Bash
mkdir -p .dotfiles-backup && \
dotfiles checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .dotfiles-backup/{}
```

Re-run the check out if you had problems:

``` Bash
dotfiles checkout
```

-   Set the flag `showUntrackedFiles` to `no` on this specific (local) repository:

``` Bash
dotfiles config --local status.showUntrackedFiles no
```

-   You're done, from now on you can now type `dotfiles` commands to add and update your dotfiles:

``` Bash
dotfiles status
dotfiles add .vimrc
dotfiles commit -m "Add vimrc"
dotfiles add .bashrc
dotfiles commit -m "Add bashrc"
dotfiles push
```

For completeness this is what I ended up with (tested on a freshly minted [Alpine Linux](http://www.alpinelinux.org/) virtualbox):

``` Bash
git clone --bare https://github.com/cblte/dotfiles.git $HOME/.dotfiles
function dotfiles {
   /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $@
}
mkdir -p .dotfiles-backup
dotfiles checkout
if [ $? = 0 ]; then
  echo "Checked out config.";
  else
    echo "Backing up pre-existing dot files.";
    dotfiles checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .dotfiles-backup/{}
fi;
dotfiles checkout
dotfiles config status.showUntrackedFiles no
```

## Wrapping up


I hope you find this technique useful to track your configuration. If you're curious, [my dotfiles live here](https://github.com/cblte/dotfiles.git). Also please do stay connected by following [@cblte](https://www.twitter.com/cblte).

## Bonus

To get the script from here into the Alpine virtualbox machine we use the help of the [null-pointer](https://envs.sh/) from envs.sh

``` Bash
# 1. Save the above script in a temporary file in  
/tmp/get-dotfiles.txt

# 2. The use the nullpointer to store it temporarily  
curl -F"file=@/tmp/get-dotfiles.txt" https://envs.sh` 

# 3. in the virtualbox make sure curl and git are 
# installed by running  
doas apk add git curl

# 4. now download the shell script with curl and the 
# url from second step  
curl https://envs.sh/ab.txt -o get-dotfiles.sh

# 5. change permission and run the file  
chmod +x get-dotfiles.sh
./get-dotfiles.sh
```

   
