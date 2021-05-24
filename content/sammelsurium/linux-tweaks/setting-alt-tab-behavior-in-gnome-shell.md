---
title: Setting Alt-Tab behavior in gnome-shell
date: 2021-05-09
category:
- Linux
draft: false
---

After switching to gnome updating my distro a few months ago, I somehow lost my tweaks to the Alt-Tab behavior in gnome-shell.

The default is to have Alt-Tab switch you between applications in the current workspace. One can use Alt-backtick (or whatever key you have above Tab) to switch between windows in the current application.

I prefer a Windows-like setup, where Alt-Tab switches between windows in the current workspace, regardless of the application to which they belong.

Many moons ago there was a gnome-shell extension to change this behavior, but these days (GNOME 3.24) it can be done without extensions. It is a bit convoluted.
With the GUI

If you are using X instead of Wayland, this works:

1. Unset the Switch applications command. To do this, run gnome-control-center, go to Keyboard, and find the Switch applications command. Click on it, and hit Backspace in the dialog that prompts you for the keyboard shortcut. Click on the Set button.
2. Set the Switch windows command. While still in the Keyboard settings, find the Switch windows command. Click on it, and hit Alt-Tab. Click Set.

That should be all you need, unless you are in Wayland. In that case, you need to do it on the command line.
With the command line, or in Wayland

The kind people on #gnome-hackers tell me that as of GNOME 3.24, changing Alt-Tab doesn't work on Wayland as in (2) above, because the compositor captures the Alt-Tab key when you type it inside the dialog that prompts you for a keyboard shortcut. In that case, you have to change the configuration keys directly instead of using the GUI:

```bash
gsettings set org.gnome.desktop.wm.keybindings switch-applications "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-applications-backward "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Alt>Tab', '<Super>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward  "['<Alt><Shift>Tab', '<Super><Shift>Tab']"
```

Of course the above also works in X, too.
Changing windows across all workspaces

If you'd like to switch between windows in all workspaces, rather than in the current workspace, find the org.gnome.shell.window-switcher current-workspace-only GSettings key and change it. You can do this in dconf-editor, or on the command line with

```bash
gsettings set org.gnome.shell.window-switcher current-workspace-only true
```
