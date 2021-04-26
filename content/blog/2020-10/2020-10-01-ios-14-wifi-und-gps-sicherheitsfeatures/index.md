+++
title = "iOS 14 WiFi und GPS Sicherheitsfeatures"
publishDate = "2020-10-01T11:47:00.000Z"
tags = ["100DaysToOffload", "Datenschutz", "Privacy"]
+++

Nein, ich will heute nicht über die ganzen [Homescreens](https://twitter.com/search?q=%23ios14homescreen) reden, sondern über die Features, die Apple in iOS 14 eingebaut, die aber wohl den wenigsten aufgefallen sind.


<!--more-->

{{< figure src="private-wlan-adressen.jpg" alt="Private WLAN Adressen" >}}

Das erste coole neue Feature ist die [Verwendung von privaten WLAN-Adressen](https://support.apple.com/de-de/HT211227). Denn um die Privatsphäre noch weiter zu schützen, kann man in den WLAN Einstellungen festlegen, dass für jedes Netzwerk eine eigene MAC-Adresse vergeben wird.

Das ist deshalb ganz schick, weil unsere Geräte standardmäßig nach neuen WLAN-Netzen suchen und dabei wird ständig die MAC-Adresse hinausposaunt. Das kann dann unter anderem in Innenstädten zum Beispiel, zum Tracking von Kunden benutzt werden. Um das Datenschutzrisiko zu verringern, vergibt nicht nur iOS 14 sondern auch iPadOS14 und watchOS7 für jedes Netzwerk eine eigene MAC-Adresse.

{{< figure src="lan-access.jpg" alt="Zugriff auf Geräte im lokalen Netzwerk" >}}

Das zweite coole neue Feature lässt dich genau festlegen, welche App sich in deinem Netzwerk zu Hause umschauen darf. Leider ist die Funktion icht sehr genau im [Handbuch von iOS 14](https://support.apple.com/de-de/guide/iphone/iph168c4bbd5/14.0/ios/14.0) beschrieben. Dort wird nur erwähnt, dass man den Zugriff auf Hardwarefunktionen einschränken kann. Darunter fällt dann auch der Zugriff auf Geräte im lokalen Netzwerk. Die Funktion findet du in den Einstellungen –> Datenschutz –> Lokales Netzwerk. Doch was macht man mit dieser Einstellung eigentlich?

Der Zugriff auf Geräte in deinem lokalen Netzwerk beschreibt die Fähigkeit von Apps, sich in deinem Netzwerk umzuschauen und zu sehen, welche weiteren Geräte sich noch so in dem Netzwerk befinden, in dem du gerade angemeldet bist. Ein Beispiel wäre zum Beispiel ein Sonos Soundsystem oder der Zugriff auf ein NAS. Aber alle anderen Apps brauchen das eigentlich nicht.

Also erst einmal den Zugriff verweigern. Einschalten kann man es dann immer noch.

---

Das hier ist Beitrag 25 der [#100DaysToOffload](https://blog.zn80.net/tag:100DaysToOffload) Herausforderung. Besuche [https://100daystooffload.com](https://100daystooffload.com/) um mehr Informationen über die Challenge zu erfahren.
