---
publishDate: "2020-11-10T20:58:17.000Z"
tags:
- Linux
- Ghost
- How-to
title: Unbenutzte Bilder in einem Ghost-Blog löschen
---

Mit dem [Tool/[Script](https://github.com/ghostboard/ghost-purge-images)](https://github.com/ghostboard/ghost-purge-images)`ghost-purge-images` von [David Burgos](https://github.com/ghostboard/ghost-purge-images) lassen sich in einer [Ghost](http://ghost.org)-Installation die nicht benutzten Bilder löschen. Denn leider gibt es immer noch keinen Medien-Manager (oder ich bin zu doof den zu finden) um hochgeladene Dateien zu löschen. Das Script von David funktioniert hervorragend. 

Auf dem [Uberspace](https://uberspace.de) kann man das Tool ganz einfach installieren. Achte nur darauf, dass du auch die richtige Version für deine Ghost-Version installierst:

- Ghost v3 👉 `npm install -g ghost-purge-images`
- Ghost v2 +v2.16 👉 `npm install -g ghost-purge-images@2.1.1`
- Ghost v2 - v2.15.x 👉 `npm install -g ghost-purge-images@2.0.3`
- Ghost v0.7.2 - v1.x 👉 `npm install -g ghost-purge-images@1.0.0`

Um das Tool jetzt einzusetzen, benötigst du noch zwei Schlüssel. Diese generiert man sich in **Settings** unter dem Menüpunkt **Integrations. **

{{< figure src="ghost-integrations.jpg" alt="Ghost Integration" >}}

Ich habe das hier für mcih schon erstellt, du musst in deinem Blog auf **Add custom integration** klicken. Dann einen Namen vergeben und mit Save speichern. 

Das sollte dann so aussehen:

{{< figure src="ghost-integrations-details.jpg" alt="Ghost Integration" >}}

In der Kommandozeile wechselst du dann in das Verzeichnis von deiner Ghost Installation und führst den Befehl `ghost-purge-images display --content-key=1234567890 --admin-key=0987654321s` aus. Die Zahlen musst du natürlich durch deine Schlüssel aus der oben erstellen **Integration** nehmen. 

{{< figure src="ghost-purge-terminal-display.jpg" alt="Ghost Purge Terminal Output" >}}

**ghost-purge-images** mit Parameter **display** zeigt die möglichen Kandidaten 
Den gleichen Befehl kannst du dann noch mal mit dem Parameter **purge** ausführen, um die Bilder auch wirklich zu löschen. 

<!--more-->
