---
publishDate: "2020-11-28T18:03:37.000Z"
tags:
- 100DaysToOffload
- Tails
- Tor Browser
- Digitalcourage
- VeraCrypt
- Crypto Wars
title: Sicher und Anonym im Internet surfen
---

Vorgestern Abend fand der zweite von vier Vorträgen der [Hochschulgruppe Bielefeld | Digitalcourage](https://digitalcourage.de/hochschulgruppe-bielefeld) aus Bielefeld statt. Das Thema war **Spurenarmes und anonymes Surfen** und drehte sich hauptsächlich um den Einsatz von Firefox mit ein paar guten Add-ons und der Benutzung des Tor-Browsers.

Eine kleine Übersicht der Themen habe ich dir hier aufgelistet.

<!--more-->

## Wirklich alles so schlimm im Internet? Ja ist es!

Gut, dieser Teil war für mich jetzt weniger interessant, dennoch informativ und es wurde gut erklärt, wie das mit dem Internet funktioniert und warum wir Domain-Namen verwenden und keine IP-Adressen. Wenn du es noch genauer erklärt haben willst, die Sendung mit der Maus, haben da auch schon mal einen Film zu gemacht: [Die Sendung mit der Maus - Wie funktioniert das Internet](https://yewtu.be/watch?v=Xs7T1QAe-8E).  Danach wurde am Beispiel von www.spiegel.de erklärt, warum das Internet zwar eine gute Sache ist, aber die Web-Realität dennoch schlimm ist und man sich schützen muss.

## Wie kann man sich schützen

Was passiert, wenn man sich nicht schützt, wurde eindrucksvoll am Beispiel von www.spiegel.de demonstriert. Wenn die Seite aufgerufen wird, dann werden nicht nur vom [Spiegel.de](https://www.spiegel.de/netzwelt/web/tracking-auf-spon-weshalb-wir-messen-wie-sie-uns-lesen-a-1162306.html)-Server Daten geladen, sondern auch von über 50 anderen Domains. Hauptsächlich von sogenanntem [Content Delivery Network](https://de.wikipedia.org/wiki/Content_Delivery_Network)-Server. Viele davon stehen nicht mal in Europa, sondern sind über die ganze Welt verteilt. Hinzu kommt, dass über 50 Cookies erstellt werden, wovon 21 von Drittanbietern und Werbetreibenden sind.

Mit dem Firefox-Add-on [Lightbeam 3.0](https://addons.mozilla.org/de/firefox/addon/lightbeam-3-0/?utm_source=addons.mozilla.org&amp;utm_medium=referral&amp;utm_content=search) kann man all diese Verknüpfungen sichtbar machen. Damit lässt sich zum Beispiel ungefähr nachverfolgen, welche Webseiten zusammenhängen und gemeinsam Content-Delivery-Netzwerke verwenden. Das Add-on visualisiert dabei auf ansehnliche Weise die Verbindungen und zeigt auch, wie viele Anfragen an anderen Adressen gestellt werden, um eine Webseite zu laden. Manchmal ist das ganz schön erschreckend. Einen guten Eindruck von der Menge an Verbindungen sieht man auf den Screenshot in den [Folien vom Vortrag auf den Seiten 9ff](https://digitalcourage.de/sites/default/files/2020-11/dc-hsgbi-crypto-folien-browser-web.pdf).

## Wie kann man sich nun schützen

Zuallererst kann man sich schon mal damit schützen, dass man den richtigen Browser verwendet. Empfohlen wird eigentlich immer der [Firefox Browser von Mozilla](https://www.mozilla.org/de/firefox/new/).  Auch ich verwende den auch sehr gerne neben den Safari-Browser. Firefox solltest du aber noch um ein  paar gute Add-ons aufstocken, sonst lohnt es sich eigentlich gar nicht und man verlässt besser wieder das Internet.

Vor den Add-on-Empfehlungen wurde aber erst noch wichtige Einstellungen für den Firefox-Browser gezeigt. Ich zitiere hier einfach mal aus den Folien (Seite "*Wie kann ich mich vor Tracking schützen?*")

### Browser Einstellungen

- Seitenelemente blockieren: Benutzerdefiniert
- Elemente zur Aktivitätsverfolgung in allen Fenstern blockieren
- Alle Cookies von Drittanbieter blockieren
- Identifizierer (Fingerprinter) blockieren
- "Do Not Track"-Information immer senden
- Suchmaschinen: MetaGer.de, Startpage.com, Duckduckgo.com, lite.qwant.com(im Gegensatz zu Google auch keine individualisierten Ergebnisse)
- JavaScript abschalten, wenn möglich

### Add-ons

In der darauffolgenden Folie wurden die folgenden guten Add-ons für Anfänger und Einsteiger vorgestellt.

- [uBlock Origin](https://addons.mozilla.org/de/firefox/addon/ublock-origin/)  um sich vor allen möglichen Trackern und Zeug was man nicht auf seinem Rechner haben will zu schützen;
- [LocalCDN](https://addons.mozilla.org/de/firefox/addon/localcdn-fork-of-decentraleyes/?utm_source=addons.mozilla.org&amp;utm_medium=referral&amp;utm_content=search) zum Ersetzen von Javascript-Bibliotheken durch lokale Versionen;
- [HTTPS Everywhere](https://addons.mozilla.org/de/firefox/addon/https-everywhere/) um nur noch über eine HTTPS Verbindung zu kommunizieren (kann man mittlerweile weglassen, siehe unten);
- [Cookie AutoDelete](https://addons.mozilla.org/de/firefox/addon/cookie-autodelete/) löscht automatisch alle zugehörigen Cookies eines Tabs, wenn dieser geschlossen wird.

*HTTPS Everywhere kann man aber mittlerweile weglassen, denn der Firefox hat auf der Einstellungsseite Datenschutz und Sicherheit die Einstellung **Nur-HTTPS-Modus** mittlerweile eingebaut. Somit kann man sich ein Add-on sparen.*

Die Add-ons, die ich verwende, findet ihr [an dieser Stelle](/meine-firefox-add-ons).

## Warum der private Modus nicht anonym ist

Ein weiteres Thema im Vortrag war der private Modus von Firefox und anderen Browsern. Viele in meinem Umfeld meinen auch immer, dass man ja in den privaten Modus schalten kann, um sich zu schützen. Auch ich habe das eine Zeit lange geglaubt und gedacht. Der private Modus jedoch speichert einfach nur keine Daten. 

Der private Modus von Firefox hinterlässt keine Spuren auf dem Gerät. Es werden keine Cookies gespeichert, keine Historie angelegt und auch keine Daten im Cache behalten. Anonym ist man allerdings dennoch nicht. Warum das so ist, hat Mozilla  in diesem Beitrag aufgeschrieben: [Häufige Missverständnisse über das Surfen im Privaten Modus | Hilfe zu Firefox](https://support.mozilla.org/de/kb/haufige-missverstandnisse-surfen-im-privaten-modus).

## Anonymous Surfen

Im zweiten Teil des Vortrages ging es dann um das anonyme Surfen im Internet. Dazu wurde der Tor Browser empfohlen und vorgestellt. Der Tor Browser basiert auf dem Firefox und soll verhindern, dass Webseiten herausfinden von wo aus du dich ins Internet eingeklinkt hast. Sprich, wenn die Webseitenbetreiber deine IP-Adresse erhalten, kann man so etwas feststellen. Außerdem schützt der Tor Browser dich für Trackern und angeblich auch vor Staatstrojanern. 

[The Tor Project | Privacy & Freedom Online](https://www.torproject.org/)

Mehr Anonymität kann man also mit dem Tor-Browser erreichen. [**The Onion Router**](https://www.torproject.org/) stellt ein Netzwerk zu Anonymisierung von Verbindungsdaten zur Verfügung und verschleiert die eigene IP-Adresse. Er ist quelloffen, als freie Software erhältlich und ermöglicht ein (fast) anonymes surfen. 

Trotz seiner vielen Vorteile, hat er auch einige Nachteile. Einer davon ist die Geschwindigkeit. Dadurch das eine Verbindung zum Ziel immer über mehrere Rechner (Knoten) hergestellt wird, steigt die Latenz teilweise erheblich. Außerdem sollte man immer bedenken, dass man nicht mehr anonym ist, wenn man auf einer Webseite die man über den Tor-Dienst aufgerufen hat, sich mit einem persönlichen Login anmeldet.

### Den Tor-Browser Installieren

Den Tor-Browser findet man auf der offiziellen Webseite: [Tor Project | Anonymity Online](https://www.torproject.org/). Hier kannst du die verschiedenen Versionen für dein Betriebssystem herunterladen und installieren.

- Unter macOS geht das auch mit [Homebrew](https://brew.sh/): 
`brew install tor-browser`
- Für Windows kann man das auch mit [Chocolatey](https://chocolatey.org/) erledigen: 
`choco install tor-browser`
- Wenn du Linux verwenden solltest, dann findest du den Tor-Browser auch mit deinem Paketmanager (apt-get, yum, dnf, pacman).

Was während des Vortrages und im Chat mehrfach noch erwähnt wurde und ich hier auch nicht vergessen will ist folgende Aussage: **Wenn du den Tor-Browser benutzt, dann ändere um Gottes willen nichts an den Einstellungen. Auch nicht die Fenstergröße**!

Sobald der Browser installiert ist, kann man ihn ganz normal verwenden. 

## Tails

Wenn du noch einen Schritt weitergehen möchtest, kannst du dir auch das Betriebssystem [Tails](https://tails.boum.org/) anschauen. Tails ist eine Linux-Distribution die auf Sicherheit und Anonymität ausgelegt ist.

[Tails](https://tails.boum.org/) wird von einem USB-Stick aus gestartet und hinterlässt bei der Benutzung keine Spuren. Immer wenn man es startet, ist es so als ob man es nie benutzt hätte. Wenn man doch ein paar Dateien Speichen will, dann geht das natürlich. Dazu wird ein verschlüsselter Speicher verwendet. [Wie man so einen Speicher zum Beispiel mit VeraCrypt anlegt, kannst du hier erfahren](/2020/11/passwörter-und-dateiverschlüsselung//).

## Gesammelte Links

Hier sind alle Links, die ich während des Vortrags gesammelt habe. 

- Vortragsfolien Sicher und anonym im World Wide Web [Link PDF](https://digitalcourage.de/sites/default/files/2020-11/dc-hsgbi-crypto-folien-browser-web.pdf)
- Handzettel zum Vortrag [Link PDF](https://digitalcourage.de/sites/default/files/2020-11/cp_handout_Browser_v5.1.pdf)
- Vor dem Vortrag wurde sich über IP-Telefonie unterhalten. Dabei sind ein paar Links im Chat gefallen (von [Uli Kleemann](https://ukleemann.de/))
- VoiP-Telefongespräche lassen sich leicht abhören - Praktisches Beispiel [Link](https://www.com-magazin.de/news/datenschutz/voip-telefongespraeche-lassen-leicht-abhoeren-1226058.html?page=1_praktisches-beispiel)
- Maßnahmen gegen das Abhören von VoIP-Gesprächen [Link](https://www.ip-insider.de/massnahmen-gegen-das-abhoeren-von-voip-gespraechen-a-341097/)
- HTTPS ist keine Garantie für Sicherheit [Link](https://www.kaspersky.de/blog/https-does-not-mean-safe/15669/)
- HTTPS / HTTP Secure [Link](https://www.elektronik-kompendium.de/sites/net/1811281.htm)
- Was ist Tracking [Link](https://www.seo-kueche.de/lexikon/tracking/)
- Privacy Handbuch - Mozilla Firefox [Link](https://www.privacy-handbuch.de/handbuch_21browser.htm)
- Es geht auch ohne Google [Link](https://digitalcourage.de/digitale-selbstverteidigung/es-geht-auch-ohne-google-alternative-suchmaschinen)
- Was sind Cookies [Link](https://en.wikipedia.org/wiki/HTTP_cookie#Origin_of_the_name)
- Sendung mit der Maus - Wie funktioniert das Internet [Video](https://yewtu.be/watch?v=Xs7T1QAe-8E)
- nuudel - das nichtspeichernde Terminool [Link](https://nuudel.digitalcourage.de/)
- Kuketz Blog Empfehlungen [Link Firefox](https://www.kuketz-blog.de/empfehlungsecke/#firefox)
- Kuketz Blog 
- Tor Server von digitalcourage [Link](https://digitalcourage.de/blog/2020/unser-neuer-tor-server-fuer-alle)
- Tor Server die von digitalcourage betrieben werden [Link](https://digitalcourage.de/support/tor)
- Das Darknet und Tor erklärt in 3 Minuten [Video](https://yewtu.be/watch?v=IIfK41NTsxU)
- Das Tor zur Anonymität [Link](https://anoxinon.media/blog/tor/)
- The Ultimate Guide to the Tor Browser [Link](https://pixelprivacy.com/resources/tor-browser-guide/)
- VPN Overview: Wie sicher ist Tor [Link](https://vpnoverview.com/de/privatsphaere/anonym-surfen/wie-sicher-ist-tor/)

---

Das hier ist Beitrag 50 der [#100DaysToOffload](/tag/100daystooffload/) Herausforderung. Besuche [https://100daystooffload.com](https://100daystooffload.com) um mehr Informationen über die Challenge zu erfahren.
