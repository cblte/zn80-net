---
title: "Importieren von PGP Schlüssel aus einem Backup"
publishDate: "2020-09-05T10:06:00.000Z"
tags: 
  - "100DaysToOffload"
  - "GnuPG"
  - "How-to"
---

Bevor ich meine Laptops platt gemacht habe, habe ich alle Heimverzeichnisse auf einer externen Platte gesichert. Ist halt wichtig und so. Dazu noch ein verschlüsseltes Backup bei einem externen Anbieter. Denn ein Backup ist kein Backup! Und kein Backup, kein Mitleid. 

<!--more-->

Nun bin ich gerade dabei meine PGP-Schlüssel zu importieren. Brauche ich sie ja für Mailbox.org und Co. Da ich aber keinen der Schlüssel explizit mit dem `gpg` Tool exportiert habe, sonder einfach nur das `.gnupg` Verzeichnis gesichert habe, ist das mit dem Import nicht ganz so einfach, oder doch?

Doch, es ist einfach! Und zwar muss man dafür nur einen kleinen Kniff anwenden, indem man `gpg` sagt, was das aktuelle `homedir` ist. Damit lässt sich das Backup-Verzeichnis einbinden und man kann unkompliziert alle Schlüssel exportieren und/oder importieren. Ich will aber nur exportieren um sie in meinen eigentlich, neuen Schlüsselbund, zu importieren.

Angenommen unser Backup liegt auf `/Volumes/ExtHDD/backup/.gnupg`, dann wird zum exportieren und gleichzeitigem importieren folgender Befehl eingegeben:

    $ gpg --homedir /Volumes/ExtHDD/backup/.gnupg --armor --export-secret-keys | gpg --import
    

Der erste Teil export die geheimenen Schlüssel aus dem Backup-Schlüsselbund (Keyring) und drückt den Text über die [Pipeline](https://de.wikipedia.org/wiki/Pipeline_(Unix)) an `gpg --import` übergeben um, ohne Angabe des Heimverzeichnisses, diese an den aktuellen Schlüsselbund in `~/.gnupg/` anzuhängen.

Zwischendurch sollte **Pinentry** hoch kommen und nach den Passwörtern fragen die für den Export der Schlüssel benötigt werden.

Wenn alles geklappt hat, sollte das ungefähr so aussehen:

{{< figure src="gpg-export.png" alt="GPG Export of private keys from a backup keyring into the current keyring" caption="GPG Export of private keys from a backup keyring into the current keyring" >}}


---

Das hier ist Beitrag 15 der [#100DaysToOffload](/tag/100DaysToOffload) Herausforderung. Besuche [https://100daystooffload.com](https://100daystooffload.com) um mehr Informationen über die Challenge zu erfahren.