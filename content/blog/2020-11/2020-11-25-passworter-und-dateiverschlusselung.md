---
publishDate: "2020-11-25T19:35:40.000Z"
tags:
- 100DaysToOffload
- KeePassXC
- Passwortmanager
- KuketzBlog
- VeraCrypt
- Digitalcourage
title: Passwörter und Dateiverschlüsselung
100dto: 48
categories:
  - 100 Days To Offload - Season 1
---

Heute Abend hat der erste von insgesamt [4 Vorträgen rund um das Thema Online-Crypto](https://digitalcourage.de/blog/2020/online-crypto-seminar-25-november-3-dezember-2020) stattgefunden. Organisiert werden die 4 Vorträge von der [Digitalcourage](https://digitalcourage.de/hochschulgruppe-bielefeld)-Hochschulgruppe Bielefeld. 

**TL;DR:***Ein schöner und informativer Vortrag. Er richtete sich aber vornehmlich an Personen, die sich bisher gar nicht oder nur ein wenig mit den Themen Passworterstellung und -verwaltung sowie Dateiverschlüsselung beschäftigt haben oder auskennen. Alle Folien findet ihr auf der Übersichtsseite der [DC-HSG-Bielefeld](https://digitalcourage.de/hochschulgruppe-bielefeld) (falls die Links unten nicht mehr funktionieren).*

**Hinweis in eigener Sache:***Wer das hier liest und Fragen zu den Themen hat, darf mir auch gerne eine E-Mail schreiben oder mich über die diversen sozialen Medien kontaktieren. Ich versuche dann gerne zu helfen. Ein wenig kenne ich mich ja auch aus. ;-)*

<!--more-->

## Sichere Passwörter

Der erste Vortrag drehte sich um beiden Themen Passwörter und Dateiverschlüsselung. Im ersten Teil wurde erklärt, wie du ausreichend sichere Passwörtern erstellen kannst und wie man die vielen Passwörtern sicher und geordnet mithilfe eines Passwortmanagers abspeichern kann. 

### Diceware-Methode

Zur Erstellung von ausreichend sicheren Passwörtern wurde die [Diceware-Methode](https://de.wikipedia.org/wiki/Diceware) von [Arnold G. Reinhold](https://theworld.com/~reinhold/diceware.html) vorgeschlagen. Hierbei nimmt sich einen oder mehrere Würfel und erzeigt sich Zahlenreihen. Diese Zahlenfolgen werden dann benutzt, um sich die zugehörigen Wörter aus einer Wortliste herauszusuchen. Kombiniert mit Sonderzeichen ergeben sich so gute und ausreichend sicherer Passwörter oder Passphrasen.

### Was ist ein sicheres Passwort?

Was ein sicheres Passwort ist, ist schwer zu sagen. Was generell empfohlen wird, sind folgende Merkmale:

- es sollte mindestens 16 Zeichen lang sein
- verwende Groß-/Kleinbuchstaben und Zahlen
- verwende ein oder mehrere Sonderzeichen
- zufällig generiert und nicht ausgedacht

### 2FA

Zusätzliche zum Thema Passwörter wurde auch das Thema 2-Faktor-Authentifizierung angesprochen. Es wurde erklärt warum das wichtig ist und welche Möglichkeiten es heutzutage gibt. 

### Passwortmanager KeePassXC

Im dritten Abschnitt ging es dann um [KeepassXC](https://keepassxc.org/), eine Open-Source-Software zur Passwortverwaltung. [KeepassXC](https://keepassxc.org/) ist mit einer der aktuellsten Clients und wird regelmäßig mit Updates versehen. Dadurch kann man die Software ruhigen Gewissens empfehlen. Natürlich sind die Passwortverwalter nur so sicher, wie das Master-Kennwort welches zur Absicherung der Passwortdatenbank vergeben wird. Hier musst du also aufpassen, dass du ebenfalls ein sicheres und gutes Kennwort vergibst. 

Die Folien zum Vortrag findest du hier: [Vortragsfolien (PDF)](https://digitalcourage.de/sites/default/files/2020-07/dc-hsgbi-crypto-folien-passw%C3%B6rter_20200625.pdf) und die [Handzettel (PDF)](https://digitalcourage.de/sites/default/files/2020-11/cp_handout_KeePassXC_v1.1.pdf).

## Verschlüsselung von Datenträgern

Im zweiten Teil des Vortrags ging es mit dem Thema Verschlüsselung von Datenträgern weiter. Hier wurde die Software [VeraCrypt](https://www.veracrypt.fr/en/Home.html) vorgestellt. Eine Weiterentwicklung der Software [TrueCrypt](https://de.wikipedia.org/wiki/TrueCrypt). 

Nach kurzer Einführung und Vorstellung des Funktionsumfangs gab es wie zu KeePassXC eine Demonstration. 

Die Folien zum Vortrag findest du hier: [Vortragsfolien (PDF)](https://digitalcourage.de/sites/default/files/2020-11/dc-hsgbi-crypto-folien-dateiverschl%C3%BCsselung_20201125.pdf) und die [Handzettel (PDF)](https://digitalcourage.de/sites/default/files/2020-11/cp_handout_Veracrypt_v3.5.pdf). 

## Fazit

Insgesamt war der Vortrag wirklich gut und informativ. Auch wenn ich schon einiges an Hintergrundwissen hatte, so habe ich doch noch die ein oder andere Idee und Information mitgenommen. 

### NitroKey

Zum einen habe ich von einem anderen Teilnehmer erfahren, dass es sogenannte [NitroKeys](https://www.nitrokey.com/de) gibt. Das sind Hardware-USB-Sticks die als 2FA-Lösung benutzt werden können. Diese lassen sich aber nicht nur für 2FA verwenden, sondern auch für den Anmeldevorgang, die Ver- und Entschlüsselung von E-Mails und vielem mehr. Auf dem Blog von [Mike Kuketz](https://www.kuketz-blog.de/zwei-schluessel-fuer-alle-faelle-nitrokey-teil1/) gibt es dazu eine ausführliche Anleitung.

### HaveIBeenPwned

Dazu gab es sinnvolle Hinweise im Chat zu Diensten wie [HaveIBeenPwned](https://haveibeenpwned.com/) und dem [Identity Leak Checker](https://sec.hpi.de/ilc/search?lang=de) vom Hasso-Plattner-Instutit. 

Was ich noch erwähnenswert finde ist, dass in KeePassXC und auch in Bitwarden, meinem Passwortmanager der Wahl, die Möglichkeit besteht, die eigenen Passwortdatenbank gegen diese beiden Datenbanken zu prüfen. Aber keine Angst, es werden keine Passwörter abgeglichen, sondern nur die Webseiten wo ihr Accounts für eingetragen habt. 

## Spurenarmes und anonymes Surfen

Das ist der Vortrag, der morgen stattfinden wird und an dem ich auch auf jeden fall teilnehmen will. Vielleicht sehen wir uns ja morgen im Chat. Bis dahin, einen schönen und angenehmen Abend / Tag noch. 
