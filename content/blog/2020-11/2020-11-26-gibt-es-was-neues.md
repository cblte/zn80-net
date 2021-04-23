---
publishDate: "2020-11-26T21:48:47.000Z"
tags:
- How-to
- Skript
- Bash
- Cronjob
title: Gibt es das MacBook schon mit 16 GB zu bestellen?
---

Da ich keine Lust habe, ständig auf die Webseiten von MediaMarkt und CoolBlue zu aktualisieren, habe ich mir ein kleines Script geschrieben, welches das für mich erledigt. 

Es ist vielleicht nicht das eleganteste, aber es funktioniert. Per Cronjob einmal die Stunde aufgerufen, prüft es bei den beiden URLs auf eine bestimmte Zeichenkette. Falls dieser Suchbegriff mehr oder weniger als 4 Mal vorkommt, bekomme ich eine E-Mail mit der URL die überprüft wurde. 

Gewusst wie :-)

Code: [https://gist.github.com/cblte/9e8358a8dfcee42ba53ddfcea924e27f](https://gist.github.com/cblte/9e8358a8dfcee42ba53ddfcea924e27f)
