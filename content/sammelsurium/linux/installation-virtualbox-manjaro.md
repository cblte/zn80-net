
---
title: "Installation von Virtualbox auf Manjaro Linux"
date: 2021-06-07
category: Linux
---


VirtualBox lässt sich sehr einfach mithilfe des Paketmanagers "Add/Remoe Software" installieren. `pamac-manager` wird da ausgeführt. Schneller geht es aber im Terminal

## Vorraussetzung:

In den Settings muss der **AUR-Support** aktiviert sein.

Finde deine Kernelversion mit `mwhd-kernel -li` 

``` plaintext
$ mhwd-kernel -li                                   
Currently running: 5.10.36-2-MANJARO (linux510)
The following kernels are installed in your system:
   * linux510
```

## Installieren:

Führe folgenden Befehl aus um die nötigen Pakete zu installieren

``` plaintext
$ sudo pacman -Syu virtualbox linux510-virtualbox-host-modules virtualbox-guest-iso
```

**Der einfachste Weg um VirtualBox jetzt zu verwenden ist, dass System neustarten**

Alternative kann man aber auch die Module neuladen

``` plaintext
$ sudo vboxreload
```

**Hinweis:**

Falls ein Fehler ähnlich diesem hier siehst:

``` plaintext
[sudo] password for user:
Unloading modules: 
Loading modules: modprobe: FATAL: Module vboxnetadp not found in directory /lib/modules/5.10.36-2-MANJARO
modprobe: FATAL: Module vboxnetflt not found in directory /lib/modules/5.10.36-2-MANJARO
modprobe: FATAL: Module vboxdrv not found in directory /lib/modules/5.10.36-2-MANJARO
```

hast du das falsche Host-Module-Paket installiert.


## Alternative: Installation mit pamac-manager

Der `pamac-manager` ist die grafische Version von pamac, einer alternative zu `pacman`.


- Suche nach `Oracle VM VirtualBox` oder `virtualbox`.
- Wähle das Paket aus und klicke auf installieren
- Wähle `virtualbox-guest-iso: Gues Additions CD Image` als optionale Abhängigkeit aus
- Wähle das Kernel-Header paket aus welches deiner Kernel version entspricht. Siehe oben Vorrasusetzungen

