---
lastmod: "2020-11-25T21:53:08.000Z"
publishDate: "2020-11-25T12:53:10.000Z"
slug: dein-computer-ist-nicht-deiner-oder-doch
tags:
- 100DaysToOffload
title: Dein Computer ist nicht deiner, oder doch?
100dto: 47 
---

In meiner Timeline und in meinem News-Reader bin ich in den letzten Tagen immer mal wieder über den Artikel [Your Computer Isn't Yours von Jeffrey Paul](https://sneak.berlin/20201112/your-computer-isnt-yours/) gestoßen.

Darin geht es um die Ausfälle einiger Apple-Dienst und das Apple für jeden App-Start eine unverschlüsselte Anfrage an einen Dienst stellt (oscp.apple.com), um herauszufinden, ob du auf dieses Programm auf deinem Mac öffnen darfst oder nicht. 

<!--more-->

## Viele hüpfende App-Icons

Herausgekommen ist das alles, weil vor ein paar Tagen der Server für die Zertifikats-Validierung zwar erreichbar war, aber nicht schnell genug geantwortet hat. Dadurch ließen sich bei aktiver Internetverbindung, keine Apps mehr öffnen. Alles war irgendwie eingefroren. Der dafür zustände Dienst (*trustd*) hat keine Antwort bekommen und dadurch den App-Start nicht freigegeben. Beheben ließ sich das vorerst nur, wenn die [Internetverbindung getrennt](https://www.heise.de/news/Apple-Server-Fehler-legt-Macs-lahm-4959009.html) oder der Dienst mithilfe einer Firewall blockiert wird. Zum einen ist das allerdings nicht ratsam, und zum anderen geht das mit der Firewall [Big Sur](https://apple.com/bigsur) nicht mehr. Was aber ein anderes Thema ist. 



> Ein Serverausfall hat bei vielen Macs für Probleme gesorgt. Der Vorfall wirft aber auch Licht auf eine bedenkl

[Big Sur hebelt Firewalls aus, um Daten an Apple zu senden](https://t3n.de/news/macos-big-sur-apple-datenschutz-vpn-netzwerkfilter-1337470/)

Aber eben um diese unverschlüsselten Anfragen bei Apple geht der ganz oben genannten [Beitrag von Jeffrey Paul](https://sneak.berlin/20201112/your-computer-isnt-yours/). Lesenswert bis zum Schluss. Wirklich.

## Warum ich das hier schreibe

Zum einen interessiere ich mich für Dinge rund um die Privatsphäre und den Datenschutz und zum anderen, sollte man sich immer nicht nur aus einer Quelle informieren und nicht alles als gegeben hinnehmen. 

Klar kann man jetzt sagen "Apple schreibt sich Datenschutz und Privatsphäre immer so groß auf die Flagge und dann machen sie so etwas! Das geht ja mal gar nicht!" - Kann man machen, muss man aber nicht. Wie sagt man doch so schön: Es wird nicht alles so heiß gegessen wie es es gekocht wird.

Zusätzlich dazu, habe ich mich dazu hinreißen lassen, auf dem Blog von [monstropolis](https://monstropolis.wordpress.com/2020/11/23/krims-krams-105/#comment-57520) einen längeren Kommentar zu verfassen und dann hier im eigenen Blog noch ein paar weitere Dinge aufzuführen. Hier aber erst einmal mein Kommentar:

> MacNutzer haben wohl weniger Kontrolle. Da habe ich heute noch lange mit einem Arbeitskollegen drüber gesprochen. Vielleicht schreibe ich das mal nieder. Weiß noch nicht. Aber so viel vorweg: Ich habe mich schon damit beschäftigt, Alternativen zu Bear und Co und haste nicht gesehen zu suchen. Leider sind die Tools auf Linux mir nicht ausgereift genug und zweitens, wenn ich da an Windows denke? Haua, haua, haua. Dann gebe ich meine paar Logfiles wann und wo welche App geöffnet habe doch leider Apple. Ich meine, das schwirrt nun schon länger im Netz rum, OCSP ist ja nicht erst seit heute implementiert. Und wenn Apple jetzt, wie versprochen, sich darum kümmern will, dann finde ich das in Ordnung. Was trotzdem bleibt ist die Sache mit der Firewall. Ehrlich gesagt habe ich in LittleSnitch die default regeln aber auch noch nie ausgemacht. Hätte ich das tun sollen? Ich vertraue da aber Apple, dass sie mit meinen Logs keinen Scheiß machen. Immerhin kann man aber glaube schon behaupten, dass Apple mit unseren Daten nicht für Geld verkaufen muss.

## Was ist denn jetzt so schlimm

Für mich stellt sich also gar nicht mal mehr so sehr die Frage, wie viele Daten Apple von mir bekommt. Einen Großteil der Daten haben sie eigentlich eh schon. Kontakte, E-Mails, Nachrichten, Bezahlinformation etc. Und das schon seit ein paar Jahren. Ich bin Nutzer von iCloud seit der ersten Stunde als es damals unter dem Namen **mobileme** eingeführt wurde. 

Doch was ist jetzt so schlimm an der ganzen Sachen? Apple will auf der einen Seite sicherstellen, dass das System sauber und anständig funktioniert und keine Malware sich einnisten kann. Auf der anderen Seite sehen aber viele einen Bruch mit dem Datenschutz und werfen Apple unötiges Tracking vor.

Jeffrey Paul schreibt:

> This means that Apple knows when you’re at home. When you’re at work. What apps you open there, and how often. They know when you open Premiere over at a friend’s house on their Wi-Fi, and they know when you open Tor Browser in a hotel on a trip to another city.

Das ist auf der einen Seite verständlich, doch ist das wirklich so schlimm, dass mein Provider nun weiß, wann ich Premier geöffnet habe und steht das überhaupt in der Anfrage?

[Jacopo Jannone](https://blog.jacopo.io/en/post/apple-ocsp/) schreibt:

> It is clear that the `trustd` service on macOS doesn’t send out a hash of the apps you launch. […] macOS does actually send out some opaque information about the developer certificate of those apps, and that’s quite an important difference on a privacy perspective.

Es wird also gar kein Hash der App übertragen, sondern nur ein paar allgemeine Informationen die den Entwickler der App identifizieren. Gut, wenn der Entwickler nur eine App hat, dann wird es halt doch wieder einfach. Aber Apple macht hier schon vieles richtig und muss schließlich sicherstellen, dass Software aus dem App Store läuft und das man böse Entwickler sperren kann, wenn man denn muss. Einige weitere Informationen findet man dazu auch auf dem Blog von SentinalOne.

> Macs worldwide became unresponsive last week while attempting to launch 3rd party apps. What caused the issue and what does it mean for your Mac’s security?

[What Happened to My Mac? Apple’s OCSP Apocalypse | SentinelOne](https://www.sentinelone.com/blog/what-happened-to-my-mac-apples-ocsp-apocalypse/)

## Bleiben oder nicht bleiben,

das ist hier wohl die Frage. Doch was tun, wenn man wenig alternativen sieht. Sicherlich könnte ich auf viele Open Source Lösungen umstellen. Doch will man das? Ich habe in den letzten Jahren schon ziemlich viel Geld in Software investiert. Diese Software gibt es nicht unter Linux. Soll ich das jetzt alles aufgeben, nur weil Apple den Start meiner Apps mitprotokoliert? 

Ich denke nicht, dass ich in die Kategorie Personen falle, die sich Sorgen machen muss, wenn ich Apps starte. Auch wenn jeder von uns etwas zu verbergen hat, so sehe ich die Sache mit den Abfragen als eher unproblematisch an. **Also werde ich bleiben.** Ich mag das Ökosystem von Apple, auch wenn es Kanten und Macken hat. Aber es sind immerhin sehr viel weniger Kanten und Macken als andere Systeme (Linux ist gut, aber es gibt nicht alle Software die ich verwenden möchte). Für mich funktioniert das System gut und ich denke für viele andere eben auch. Jeder macht mal Fehler und [Apple hat sich mittlerweile auch schon zu dem Problem geäußert und versprochen, an dem Problem zu arbeiten und das System zu verbessern (Letzter Absatz)](https://support.apple.com/en-us/HT202491).

## End gut alles gut?

Mit Sicherheit nicht. [Apple hat jetzt aber wohl genut Shit-Storm abbekommen](https://mjtsai.com/blog/2020/11/13/apple-server-outage-makes-mac-apps-hang-on-launch/), dass sie sich hinsetzen werden und das bestehende System überarbeiten. Die nächsten Monate und Jahre werden zeigen, in welche Richtung sich Apple weiterentwickeln will. 

> *Früher waren es Apple Computer, aber jetzt ist es der Computer von Apple.*

Ich wünsche mir nur, dass der Mac ein Mac bleibt und nicht zu einem ultra-geschlossenes System wie iOS oder iPad OS mutiert. 
