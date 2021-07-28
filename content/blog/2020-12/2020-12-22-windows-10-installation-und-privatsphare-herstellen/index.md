---
title: Windows 10 Installation und Privatsphäre herstellen
lastmod: "2020-12-22T13:47:31.000Z"
publishDate: "2020-12-22T13:46:20.000Z"
slug: windows-10-installation-und-privatsphaere-herstellen
tags:
- 100DaysToOffload
- Chocolatey
- Windows
- Bloatware
- SharpApp
100dto: 57
categories:
  - 100 Days To Offload - Season 1
---

Hier in kurzen knappen Worten die Maßnahmen, die ich ergriffen habe, um mein Windows 10 System so privat wie es mir möglich ist einzustellen. 

Vor ein paar Wochen habe ich mal darüber geschrieben, dass ich [Windows 10 neu installiert](/microsoft-windows-installation/) habe. Nun habe ich es erneut installieren müssen und dabei sind mir weitere Dinge unangenehm aufgefallen. 

Wenn Windows 10 installiert wird und dabei eine aktive Netzwerkverbindung besteht, lässt sich halt leider kein lokales Benutzerkonto erstellen. Hier hilft wirklich nur, die Netzwerkverbindung zu trennen. Also Netzwerkkabel ziehen und/oder WiFi abschalten.  

## Installation

Den USB-Stick habe ich mit dem [Media Creation Tool](https://www.microsoft.com/de-de/software-download/windows10) von Microsoft erstellt. Alternativ dazu kann man auch die ISO-Datei herunterladen und mithilfe von [balenaEtcher](https://www.balena.io/etcher/) den Stick erstellen. 

Vom USB-Stick booten und den Anweisungen zur Installation folgen. Meine Boot-Platte, eine 500 GB SSD, habe ich komplett für Windows gelassen. Daten und mehr werden auf anderen Medien gespeichert. 

## Benutzer einrichten

Die Einrichtung von Windows erfolgt nach der Installation der Basisdateien und dem ersten Neustart. Falls nötig, USB-Stick vorher abziehen, um nicht erneut das Setup zu starten.

Es sollte zu diesem Zeitpunkt keine Netzwerkverbindung bestehen. Falls doch, lässt sich kein lokales Benutzerkonto einrichten. 

Geduldig den Anweisungen der Sprachausgabe folgen und dann abschalten. Zum Einrichten eines lokalen Benutzers muss man die "Eingeschränkte Benutzererfahrung" wählen. Diese Bezeichnung  ist eine Irreführung und in meinen Augen eine Frechheit. Benutzernamen und Kennwort wählen und den weiteren Anweisungen auf dem Bildschirm folgen. Hierbei immer die untere Einstellung wählen, den keine bis wenig Daten übermittelt. 

Ist das Setup beendet, wird das System zum ersten Mal gestartet und kann mit dem Internet verbunden werden. Anschließend wird [Chocolatey ](https://chocolatey.org/)installiert, welches ich für die weitere Installation der Software benötige. 

## Software installieren

Nach dem [Chocolatey ](https://chocolatey.org/install)installiert ist, habe ich folgende Programme installiert:

- 7Zip, Firefox, Tor Browser und VideoLan-Client
- VeraCrypt und VSCodium
- Discord, Teamspeak, Steam, EpicGamesLauncher
- VirtualBox BitVise SSH Client


{{< highlight terminal >}}
choco install 7zip firefox tor-browser vlc veracrypt vscodium
choco install discord teamspeak steam epicgameslauncher
choco install virtualbox bitvise-ssh-client 
{{< /highlight >}}

Danach habe ich noch die Synology Drive App für die Synchronisation mit meiner Synology DiskStation installiert. 

## Wiederherstellungspunkt und Wiederherstellungslaufwerk erstellen

Sicherheit geht vor, sagt man immer. Falls beim Abschalten der Telemetrie-Funktionen irgendetwas schiefgeht, ist es gut, wenn ein Wiederherstellungspunkt oder sogar ein Wiederherstellungslaufwerk existiert. Beide Funktionen sind über das Startmenü zu finden. Dazu einfach "Wiederherstellung" in der Suchfunktion vom Start-Menü eingeben. Dazu die Windows-Taste drücken und "Wiederherstellung" eingeben. 

{{< figure src="images/grafik-3.png" alt="Screenshot vom Windows Startmenü" caption="Screenshot vom Windows Startmenü" >}}

## Windows 10 Telemetrie abschalten

Da sich nur in der Windows Enterprise Version die Telemetrie mit Windows Bordmitteln komplett abschalten lässt, müssen wir Privatanwender zu anderen Mitteln greifen. Glücklicherweise gibt es da ein paar schlaue Menschen, die eine App namens [SharpApp ](https://github.com/builtbybel/sharpapp)entworfen haben. 

{{< figure src="images/grafik-4.png" alt="Screenshot der SharpApp" caption="Screenshot der SharpApp" >}}

[SharpApp ](https://github.com/builtbybel/sharpapp)von BuiltByBel ist eine grafische Oberfläche für einen Haufen an Powershell-Skripten die alle möglichen unnötigen Dinge in Windows 10 entfernen können. Zumindest kann einen großen Teil der Bloatware deinstallieren und sich ein Stück Privatsphäre zurückholen. Mehr Hintergrundinfos und Screenshots gibt es auf [BleepingComputer](https://www.bleepingcomputer.com/news/microsoft/debloating-windows-10-and-increasing-privacy-with-sharpapp/)

Ich habe das "Basic Template for beginners" und "Template to block telemetry via Host files" installiert/ausgeführt. Das sollte für den Anfang wohl erstmal ausreichen.

Über den Menüpunkt **Policies** können nun die verschiedenen Scripts ausgeführt werden. Um den den Basis-Schutz führst du nun unter **Templates** das **basicPrivacyTemplate** aus. Damit wird ein großer Teil der Datensammelei abgeschaltet.

{{< figure src="images/grafik-10.png" alt="Das vorhin installierte Template ausführen" >}}

Wer du mehr Kontrolle haben möchtest, kannst du dich durch die einzelnen Einstellungen klicken.

{{< figure src="images/grafik-9.png" alt="Hier kann das abgeschaltet werden, was man abschalten will." caption="Hier kann das abgeschaltet werden, was man abschalten will." >}}

[SharpApp](https://github.com/builtbybel/sharpapp) kann hier auf Github heruntergeladen werden:

**Hinweis:** bevor diese Einstellungen ausprobiert werden, empfiehlt es sich einen Wiederherstellungspunkt zu setzen!

### Telemetrie blockieren

Um jetzt noch die Telemetrie zu blockieren, müssen die dazugehörigen Regeln in die [Windows Hosts Datei](https://de.wikipedia.org/wiki/Hosts_(Datei)) eingetragen werden.

{{< figure src="images/grafik-5.png" alt="Block IP Addresses" caption="Bocken von IP-Adressen" >}}

Die *spy *Liste vom Windows Blocker auswählen. Dazu klickst du auf den Eintrag **Telemetry** und dann über den Punkt **Add community rules** den Eintrag **spy** aus der Liste auswählen und auf Apply klicken. 

Wenn jetzt ein Fehlerdialog auftaucht und eine Benachrichtigung darüber informiert, dass Windows das Verändern der Hosts-Datei unterbunden hat, müssen wir das noch anpassen. Dazu öffnet man den Bedrohungsschutz in den Windows-Einstellungen und erlaubt die Änderung der hosts-Datei.

{{< figure src="images/grafik-6.png" alt="Viren und Bedrohungsschutz" caption="Viren und Bedrohungsschutz" >}}


Windows 10 Warnung die wir aber zulassen müssen.
Hier auf den Eintrag klicken und **Auf Gerät zulassen** auswählen. Jetzt darf SharApp auch die hosts-Datei editieren und die vielen Regeln einfügen. 

{{< figure src="images/grafik-7.png" alt="Aktuelle Bedrohungen" caption="Aktuelle Bedrohungen" >}}

Zulassen der angeblichen Bedrohung, die hosts-Datei zu verändern.
Ich musste ein wenig fummeln, bis das endlich geklappt hat. Auf der einen Seite ist es gut, dass man die Datei nicht so einfach überschreiben kann, allerdings wird es einem aber auch unnötig kompliziert gemacht. 

Überprüfen kannst du die Einträge auch von Hand. Öffne dazu die hosts-Datei mit einem Editor. Diese befindet sich im Verzeichnis: 

    C:\Windows\System32\drivers\etc	

Diese sollte nach der Modifizierung ca. 14kb groß sein.

{{< figure src="images/grafik-8.png" alt="Screenshot Windows Datei Explorer mit der hosts-Datei" caption="Screenshot Windows Datei Explorer mit der hosts-Datei" >}}

## Fazit

Die Windows Installation ist immer wieder ein Abenteuer. Unglaublich was dem Nutzer da zugemutet wird. 

Mit Chocolatey lassen sich immerhin sehr viele Programme auf sehr einfache Art und Weise installieren. Es muss nicht mehr lästig die Webseite aufgerufen, der Download gefunden werden, um das Programm dann händisch zu installieren. 

SharpApp hilft einem ein wenig seine Privatsphäre wieder herzustellen. Eine etwas weniger komplizierte Variante von SharpApp ist das Programm [PrivateZilla](https://github.com/builtbybel/privatezilla/releases). Ebenfalls von BuiltByBel aber einfacher gehalten als SharpApp. 

**Nicht vergessen:** Nach jedem größeren Update muss SharpApp oder PrivateZilla erneut ausgeführt werden, dass die Telemetrie-Datensammlung zurückgesetzt wird. Es wird ein Katz- und Mauspiel bleiben.

Photo by [Jason Dent](https://unsplash.com/@jdent?utm_source=unsplash&amp;utm_medium=referral&amp;utm_content=creditCopyText) on [Unsplash](https://unsplash.com/s/photos/privacy?utm_source=unsplash&amp;utm_medium=referral&amp;utm_content=creditCopyText)