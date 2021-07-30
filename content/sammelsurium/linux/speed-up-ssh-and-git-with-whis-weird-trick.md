---
title: "Speed Up Ssh & Git With This Weird Trick"
date: "2021-07-30"
lastmod: "2021-07-30"
category: Linux
---

This trick helps me saving quite some time when using ssh and git.

I found this on [Peter Piekarczyk medium blog](https://medium.com/@peterpme/speed-up-your-ssh-git-with-this-one-weird-trick-9120393bd4ea).

The difference is quite impressive.

If you’re not using an ssh config file, check out this awesome video explaining the advantages of having one:

```
# symlink to ~/.ssh/config

Host github.com
	ControlMaster auto
	ControlPersist 120

Host *
	# Always use SSH2.
	Protocol 2

	# Use a shared channel for all sessions to the same host,
	# instead of always opening a new one. This leads to much
	# quicker connection times.
	ControlMaster auto
	ControlPath ~/.ssh/control/%r@%h:%p
	ControlPersist 1800

	# also this stuff
	Compression yes
	TCPKeepAlive yes
	ServerAliveInterval 20
	ServerAliveCountMax 10
```

Using the SSH Config File

Also check out the video [Using the SSH config file](https://serversforhackers.com/c/using-the-ssh-config-file) from the website <https://serversforhackers.com>

Otherwise, just place this in your `~/.ssh/config` and create a `~/.ssh/control` folder.
