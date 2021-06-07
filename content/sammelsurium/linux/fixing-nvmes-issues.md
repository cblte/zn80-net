---
title: "Beheben von Problemem mit NVMEs und einfrierenden Desktops "
date: "2021-05-05"
lastmod: "2021-06-07"
category: Linux
---


**Hinweis 2021-06-07: Das Problem scheint nur Debian basierte System zu betreffen. Weder Manjaro noch ArcoLinux sind eingefroren.** 

Da meine Pop!_OS Installation immer wieder eingefroren ist, habe ich mich nach Lösungen umgeschaut und zwei Lösungen gefunden. Lösung 1 hat bei mir leider nicht funktioniert und es scheint so, dass Arch basierte System nicht betroffen sind. (Oder liegt es am Kernel?)


## Problem:

Ab und zu und ohne Vorwarnung, friert das System einfach ein und lässt sich nicht mehr bedienen. Der Mauszeiger lässt sich nicht mehr bewegen und ein Wechsel zu einer anderen Konsole funktioniert ebenso nicht. 

## Lösungsansatz 1:

Falls möglich, kann man versuchen diesen Befehl auszuführen. 

`sudo kernelstub -a nvme_core.default_ps_max_latency_us=0`

Scheint aber nur auf Debian basierten System zu funktionieren. Bei Pop_OS! hat es geholfen, allerdings nur so lange, bis ich ein Update gemacht habe. 

## Lösungsansatz 2:

Um den Parameter für den Kernel dauerhaft zu setzen, ist es sinnvoll die Anweisung zu den Startparametern von GRUB hinzuzufügen. 

Öffne dazu die Datei `/etc/default/grub` mit superuser-Rechten und suche die Zeile die mit `GRUB_COMMAND_LINUX_DEFAULT` beginnt und füge die Anweisung

```
nvme_core.default_ps_max_latency_us=0
```

zu den bestehenden hinzu. Hier ist meine Konfiguration vorher/nachher:

**Vorher:**
{{< figure src="/sammelsurium/images/carbon-grub-without-nvme-fix.png" alt="GRUB Config without NVMe Fix" caption="GRUB config ohne NVMe Fix" >}}

**Nachher:**
{{< figure src="/sammelsurium/images/carbon-grub-with-nvme-fix.png" alt="With NVME Fix" caption="GRUB config mit dem NVMe Fix" >}}

Im Anschluss muss die GRUB Konfiguration neu erstellt werden. Es reicht nicht, nur die Konfigurationsdatei anzupassen. Führe dazu die folgenden Befehle aus:

```
# For Fedora, Arch Linux, etc.
# sudo grub2-mkconfig -o /boot/grub2/grub.cfg

# For Ubuntu, Debian, Linux Mint, etc. (debian-based)
# 2021-06-07 works also on Manjaro
sudo update-grub
```

Danach starte das System neu.

Wenn du herausfinden willst, ob deine Einstellung funktioniert hat, kannst du mit dem folgenden Befehl den Wert auslesen und prüfen ob er übernommen wurde:

```
cat /sys/module/nvme_core/parameters/default_ps_max_latency_us
```

Hoffentlich hilft die Einstellung und das System friert nicht mehr ein.

Dieser Text basiert auf dem Blogbeitrag von <https://tekbyte.net/2020/fixing-nvme-ssd-problems-on-linux/>. 