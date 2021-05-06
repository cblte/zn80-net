---
title: "Pop!_OS Tweaks"
slug: "pop-os-tweaks"
date: "2021-05-06T20:58:44+02:00"
tags: 
- "100daystooffload"
- "pop_os"
- "linux"
# embetty codes: {{< embetty (youtube | vimeo | facebook) <id> >}} 
draft: false
---

Ich finde Pop!_OS immer noch gut, doch leider habe ich gestern mit ein paar Abstürzen gekämpft. Sobald ich den Brave-Browser gestartet habe, hat es keine 60 Sekunden gedauert, bis das System komplett eingefroren ist. In VSCodium ist das System zwar auch ab und an kurz eingefroren, allerdings nur für ein paar Sekunden. Auf der Suche nach einer Lösung für mein Problem bin ich leider nirgends fündig geworden. 

Im Github.com_Repository von System76 zu Pop!_OS gibt es den Issue [System Eventually Freezes Completely · Issue #1172 · pop-os/pop](https://github.com/pop-os/pop/issues/1172), mit sehr vielen Kommentaren.

Jedoch hat keiner der Hinweise mein Problem behoben. Und auf Reddit brauche ich gar nicht weiterzusuchen. Dort gibt es viele Threads, die das Problem beschreiben, aber keinen der das Problem zu beheben scheint. Kann aber auch daran liegen, dass ich mit dem Layout von Reddit nicht zurechtkomme.

Anyway! Heute gab es ein System-Update von System76 und ein paar Pakete wurden behoben. Leider hat das nicht funktioniert. Denn während ich diesen Beitrag geschrieben habe, ist das System wieder eingefroren. Allerdings erst, nachdem ich versucht habe die Fenster an eine bestimmte Position zu schieben. Keine Ahnung, ob das damit, oder doch eher mit der Festplatte zusammenhängt. 

Erst habe ich gedacht, die Hardwarebeschleunigung im Firefox wäre das Problem. Scheint aber nicht so zu sein. Nachdem ich dann aber im Matrix-Kanal von Pop!_OS nachgefragt habe, habe ich folgenden Tipp erhalten:

> Versuche mal eine weitere Kernel-Boot-Option hinzuzufügen. Für die NVMe geht das so:
> 
> `sudo kernelstub -a nvme_core.default_ps_max_latency_us=5500`
>

Das deckt sich mit der Angabe, die ich auch [hier](https://tekbyte.net/2020/fixing-nvme-ssd-problems-on-linux/) und [hier](https://askubuntu.com/a/1274020) gefunden haben.
Man könnte anstatt der `5500` eine `0` eintragen, aber vielleicht klappt es ja auch so. Falls nicht, muss die `0` es halt richten. 

Fingers-Crossed! Dass es jetzt funktioniert und ich ausnahmsweise keinen eingefrorenen Desktop habe. 

Falls ich das Problem aber partout nicht in den Griff bekommen sollte, werde ich mich wohl oder über mal bei [Manjaroa](https://manjaro.org/) oder [Archcraft](https://archcraft-os.github.io/) umsehen.

<!--more-->

Das hier ist Beitrag 84 der #100DaysToOffload Herausforderung. Besuche https://100daystooffload.com um mehr Informationen über die Challenge zu erfahren.