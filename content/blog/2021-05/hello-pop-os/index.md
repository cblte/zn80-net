---
title: Hallo, Pop!_OS
slug: hallo-pop-os
date: 2021-05-04
tags:
- Linux
- POP!_OS
---

{{< figure src="images/hallo_pop_os.png" alt="Hallo, Pop!_OS" caption="Hallo, Pop!_OS">}}

Heute habe ich POP!\_OS auf dem Rechner installiert. Was ich nach der einfachen Installation noch alles gemacht habe, habe ich hier mal aufgeschrieben.

## Pop!_OS Installation

[Pop!_OS](https://pop.system76.com/) ist ein modernes Linux Betriebssystem für MINT (STEM) und Kreative. Unter der Haube Ubuntu, oben drauf moderne und sichere Open-Source-Software. 

Pop!_OS gibt es aktuell in der Version 20.10 und 20.04 LTS (Long Term Support). Außerdem gibt es speziell für Computer mit NVIDIA Grafiken von jeder Version ein Image,bei dem die NVIDIA Grafikkartentriber schon vorinstalliert sind. 

Nach dem Herunterladen der Image-Datei benötigen wir noch [balenaEtcher)(https://www.balena.io/etcher/) oder [UNetbootin](https://unetbootin.github.io/) um aus dem Image einen bootfähigen USB-Stick zu erstellen.

Jetzt den Rechner neustarten, vom USB-Stick booten und dem Installationsassistenten folgen. 

## Einrichtung nach dem ersten Start

Nach dem ersten Start werden noch Angaben abgefragt und der Benutzer angelegt. Wenn man dann auf dem Desktop ist, öffne eine Konsole um ein paar wichtige Aufgaben zu erledigen.

### 1. System aktualisieren.

{{< figure src="images/screenshot-apt-get-update.png" alt="Terminal Screenshot  apt-get update" caption="Mein System ist schon auf dem neusten Stand" >}}

Durch eingabe der folgenden Befehle werden die Paketequellen, die installierten Programme und das System selbst auf den aktuellen Stand gebracht. 

    sudo apt-get update -y 
    sudo apt-get upgrade -y 
    sudo apt-get dist-upgrade -y

Die drei Befehle kann man auch mithilfe von `&&` aneinander ketten. 

    sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y
    
### 2. Installiere die GNOME Tweaks

{{< figure src="images/screenshot-gnome-tweaks.png" alt="Screenshot GNOME Tweaks" caption="Screenshot GNOME Tweaks">}}

Mithilfe der GNOME Tweaks lassen sich in Pop!\_OS die "Minimize" und "Maximize" Buttons für die Fenster aktivieren. Das ist besonders dann hilfreich, wenn man nicht im Fullscreen-Modus arbeitet oder den "Tile-Windows"-Mode aktiviert hat. 

    sudo apt install gnome-tweaks

Alternativ findet man die GNOME Tweaks auch im Pop!\_Shop.

{{< figure src="images/screenshot-gnome-tweaks-shop.png" alt="Screenshot GNOME Tweaks im Shop" caption="Screenshot GNOME Tweaks im Shop" >}}

### 3. Dash To Dock

Wenn du das Dock dauerhaft sichtbar haben möchtest, dann kannst du dir die GNOME Extension [Dash to Dock](https://extensions.gnome.org/extension/307/dash-to-dock/) installieren. Diese holt das Dock aus der Übersicht (SuperKey/Windows Taste drücken) in den Vordergrund. Außerdem kann man das Aussehen und Verhalten anpassen. 

{{< figure src="images/screenshot-browser-dash-to-dock.png" alt="Screenshot Dash To Dock" caption="Screenshot Dash To Dock" >}}

Der empfohlene Weg für GNOME Extensions ist über den Browser. Dazu musst du aber erst noch ein Plugin für Firefox installieren, die GNOME Shell Extensions. Nach Installation die Webseite neu laden und den Schalter auf ON stellen. Es sollte nun eine Abfrage kommen, ob du die Extension installieren willst. 

### 4. Programme aus dem Pop!\_Shop installieren

Pop!\_OS kommt mit einer Basis-Austattung an Programmen. Was durchaus beabsichtigt ist, da man dem Nutzer eine saubere und klare Vorlage geben möchten. Wer mehr möchte, kann sich in Ruhe durch den Shop klicken. 

Der Shop ist übersichtlich und klar strukturiert. Kein wunder, hat sich System76 doch bei [ElementaryOS](https://elementary.io/de/) bedient. In den Pop!\_Picks findest du eine Auswahl an beliebten Programmen wie Steam, Signal, Spotify, Visual Studio Code 

### 5. Installieren von Closed-Source Media Codecs (Optional)

{{< figure src="images/screenshot-pop-shop.png" alt="Screenshot Pop!_Shop" caption="Screenshot Pop1!_Shop" >}}

Pop!\_OS kommt mit vielen Open-Source-Media-Formaten daher, aber manchmal kommt es vor, dass man ein Video abspielen möchte, für das man dann keinen Code hat. Hier hilft das Paket `ubuntu-restricted-extras` weiter. Installiert wird es so:

    sudo apt-get install ubuntu-restricted-extras
    
Wärend die Installation läuft, wirst du aufgefordert die ein oder anderen Lizenz zu akzeptieren. Sehr wahrscheinlich wird hier etwas von Microsoft angezeigt werden. 


### 6. Software die ich installiert habe

Über die Kommandozeile habe ich folgende Software installiert:

- Youtube und Video downloader: 'youtube-dl'
- Video Lan Client: vlc
- neofetch, htop, iftop
- Brave-Browser via https://brave.com/linux/#linux
- VSCodium via https://vscodium.com/ 

Und aus dem Shop habe ich mir geladen:

- Signal via flathub
- Steam via flathub
- Element via flathub

## Fazit

Bisher muss ich sagen, bin ich super zufrieden. Das System ist schnell, die Festplattte ist verschlüsselt, die Softwarepakete funktionieren und ich kann mich bisher nicht beklagen. 

Als nächstes muss ich noch meinen Passwortmanager installieren und meine E-Mail-Konten einrichten. Ob ich Thunderbird nochmal eine Change gebe? Ich weiß nicht. Geary scheint als E-Mail-Programm eigentlich völlig ausreichend zu sein. Falls doch mal etwas verschlüsseltes eintreffen sollte, kann ich das immer noch in der Konsole oder im Texteditor entschlüsseln. 

Ich bin zufrieden! Und du, verwendest du schon Linux oder willst es mal versuchen? 

<!--more-->

Das hier ist Beitrag 82 der #100DaysToOffload Herausforderung. Besuche https://100daystooffload.com um mehr Informationen über die Challenge zu erfahren.
