---
title: "Microblog überarbeitet"
date: "2021-07-29T21:30:09+0200"
tags:
- 100 Days To Offload
- Blog
100dto: 5
categories:
- 100 Days To Offload - Season 2
draft: true

# embetty codes: {{< embetty (youtube | vimeo | facebook) <id> >}}
---

Ich habe mich heute mal hingesetzt und den Microblog überarbeitet. Dadurch das ich mit ganz vielen Dateien und einer etwas komplizierten Ordner Struktur angefangen habe, wurde das irgendwann ziemlich aufwendig, neue Beiträge zu erstellen.

Erst habe ich versucht alle Beiträge in einer Datei zu sammeln. Eine Datei pro Jahr sollte ausreichen. Dazu habe ich ein kleines Python Script geschrieben.

{{< gist cblte 35b465933fc84b7cf44a2d2e7615fe10 >}}

Alle Beiträge waren nur in einer Datei und nach ein wenig hin und her und umformatieren, hatte ich auch ein passables Ergebnis.

Das Template für den Blog sah dann so aus:

{{< gist cblte 4868dca0a22332103a61559fdbcc5931 >}}

Auch wenn die Änderungen auf den ersten Blick ganz gut ausgesehen haben, so hat es leider nicht mehr mit dem RSS-Feed funktioniert. Da alle Beiträge in einer Datei sind, ist der RSS Feed viel zu kurz und ich möchte das niemandem zumuten, ständig den gesamten Feed zu laden. Also musste ich eine andere Lösung finden.

Nach einigem Hin und Her bin ich dann doch wieder bei einzelnen Dateien gelandet. Dieses Mal allerdings ohne [Frontmatter](https://gohugo.io/content-management/front-matter/). Der Dateinamen, bestehend aus Jahreszahl, einem Punkt und einer fortlaufenden Nummer.

Das Python Script habe ich dazu ein wenig umgeschrieben und erzeugt nun Dateien nach dem oben beschriebenen Schema.

{{< gist cblte f53266e41256920881fa2dfaac453130 >}}

Das dazugehörige Template `list.html` musste ich ebenfalls ändern und sieht nun so aus:

{{< gist cblte 88071de50d95908c751173afb2515c24 >}}

Der obere Teil (Zeile 2-7) transkludiert die Inhalte der `_index.md`-Datei. Dabei wird auch die Zahl im Dokument durch einen Link ersetzt.

Ab Zeile 9 werden dann alle vorhandenen Dateien verarbeitet. Der Dateiname wir vorne abgeschnitten und die führenden Nullen werden ebenfalls entfernt, um die Zahl für die Webseite zu erzeugen (Zeile 10). Danach wird ein Link erzeugt (Zeile 11) der anschließend vorne vor den Beitrag gesetzt (Zeile 12) wird.

Der erzeugte Link mit der Nummer kann benutzt werden, um auf den Beitrag zu verlinken oder diesen Direkt anzuspringen. Sprich die Zahl kann als Sprungmarke genutzt werden, um direkt zum Eintrag im Microblog zu springen. Zum Beispiel zum [Eintrag #55](/microblog/#55).

Im großen ganzen kann man sagen, dass ich mit all den Änderungen die Dateistruktur vereinfacht und die Anzeige (zumindest für mich) verbessert habe.

<!--more-->
