+++
title = "Meine Firefox Add-ons"
publishDate = "2020-08-17T20:00:00.000Z"
+++

{{< figure src="/images/firefox-browser.jpg" alt="Description" >}}

Die Mozilla-Foundation macht sich mit ihrer aktuellen Entlassungsaktion gerade nicht sehr beliebt ([siehe hier](https://blog.fefe.de/?ts=a1c8b564), [hier](https://blog.fefe.de/?ts=a1cd1f2c), [und hier](https://blog.fefe.de/?ts=a1cd056a)), ist und bleibt aber trotzdem – neben Safari – mein Lieblingsbrowser. Und weil das so ist, habe ich hier ein paar Empfehlungen für dich. Die meisten stehen zwar auch auf der Liste der Empfehlungen von Mozilla, aber das macht ja nichts. 😉

*Zuletzt habe ich diese Liste am 26.11.2020 aktualisiert.*

## Must-have Add-ons

Das hier sind alles die Plugin-Ins / Add-ons die du auf jeden Fall installieren solltest, um etwas sorgenfreier und unbeschwerter durch das Internet zu surfen.

### [uBlock Origin](https://addons.mozilla.org/de/firefox/addon/ublock-origin/)

> Endlich ein effizienter Blocker. Prozessor-freundlich und bescheiden beim Speicherbedarf.

Mit das erste Add-on welches du installieren solltest. Ohne uBlock Origin sollte sich wirklich niemand mehr im Internet bewegen.

Ein paar sinnvolle Einstellungen für uBlock Origin (unter Einstellungen des Add-ons)

- unter Privatsphäre die Option Freigabe der lokalen IP-Adresse via WebRTC ver-hindern aktivieren (ACHTUNG: Videokonferenzdienste auf Basis von WebRTC wie z.B. BigBlueButton und Jitsi Meet werden nicht mehr korrekt funktionieren)
- unter Privatsphäre die Option CSP-Berichte blockieren aktivieren
- unter Standardverhalten die Option *Externe Schriftarten blocken* aktivieren
- im Tab Filterlisten nach Bedarf die noch fehlenden Einträge unter Werbung, Privatsphäre und Belästigungen aktivieren 
- Weitere Einstellungen, siehe Blog von Mike Kuketz: [https://www.kuketz-blog.de/firefox-ublock-origin-firefox-kompendium-teil2](https://www.kuketz-blog.de/firefox-ublock-origin-firefox-kompendium-teil2)

Quelle der Tipps: [Handout der DC HSG Bielefeld](https://digitalcourage.de/sites/default/files/2020-11/cp_handout_Browser_v5.1.pdf)

### [Cookie AutoDelete](https://addons.mozilla.org/de/firefox/addon/cookie-autodelete/)

Cookie AutoDelete (von CAD Team) löscht Cookies automatisch nach dem Schließen von Browserfenstern und -tabs (die Einstellung „Automatisches Aufräumen“ muss nach Installation aktiviert werden)

### [LocalCDN](https://addons.mozilla.org/de/firefox/addon/localcdn-fork-of-decentraleyes/)

Emuliert externe Frameworks (z.B. jQuery, Bootstrap, AngularJS) und stellt sie als lokale Ressource bereit. Verhindert unnötige Anfragen von Drittanbietern an Google, StackPath, MaxCDN und mehr. Vorbereitete Regeln für uBlock Origin/uMatrix.

LocalCDN ist ein Fork von Decentraleyes. Im [Forum von Mike Kuketz](https://forum.kuketz-blog.de/viewtopic.php?p=64425#p64425) gibt es eine rege Diskussion dazu. 

### [ClearURLs](https://addons.mozilla.org/de/firefox/addon/clearurls/)

> Dieses Add-on entfernt die Tracking-Felder von allen URLs die von ihrem Browser besucht werden. Dafür wird eine externe Regeldatei benutzt, die regelmäßig aktualisiert wird und man hier einsehen kann: [https://gitlab.com/KevinRoebert/ClearUrls/blob/master/data/data.min.json](https://gitlab.com/KevinRoebert/ClearUrls/blob/master/data/data.min.json)

### [Multi Account Containers](https://addons.mozilla.org/de/firefox/addon/multi-account-containers/)

> Firefox Multi-Account Containers lets you keep parts of your online life separated into color-coded tabs that preserve your privacy. Cookies are separated by container, allowing you to use the web with multiple identities or accounts simultaneously.

---

## Kann man, muss man aber nicht

In diese Kategorie fallen ein paar Plugin-Ins die mehr so nice-2-have sind. Viel Spaß beim Ausprobieren. 

### [Flagfox](https://addons.mozilla.org/de/firefox/addon/flagfox/)

Zeigt mit einer Landesflagge den Standort des Servers der geöffneten Website an und bietet eine Vielzahl an Werkzeugen, wie Website-Sicherheitsprüfungen, Whois, Übersetzung, ähnliche Seiten, Validierung, URL-Kürzung und mehr.

### [HTTPS Everywhere](https://addons.mozilla.org/de/firefox/addon/https-everywhere/)

Verschlüsseln Sie das Web! HTTPS-Everywhere schützt Ihre Kommunikation indem die Verbindung zu unterstützten Seiten automatisch auf eine HTTPS-Verschlüsselung umgestellt wird, auch wenn die URL oder ein besuchter Link das https://-Präfix weg lässt.

Seit Firefox 83 wohl nicht mehr nötig, da unter der Einstellung **Datenschutz und Sicherheit** die Funktion integriert ist.


### [Lightbeam 3.0](https://addons.mozilla.org/de/firefox/addon/lightbeam-3-0/)

Lightbeam is a browser extension that uses interactive visualizations to show you the relationships between third parties and the sites you visit.

### [Tranquility Reader](https://addons.mozilla.org/de/firefox/addon/tranquility-1/)

Tranquility Reader improves the readability of web articles by removing unnecessary elements like ads, images, social sharing widgets, and other distracting fluff.

### [Bitwarden](https://addons.mozilla.org/de/firefox/addon/bitwarden-password-manager/)

Bitwarden (mein Passwort Manager der Wahl) ist der einfachste und sicherste Weg all deine Logins und Passwörter zu speichern, während du sie zwischen all deinen Geräten synchronisierst. **Das Speichern von Passwörten im Browser wird nicht empfohlen!**

Passwort-Diebstahl ist ein echtes Problem. Die Webseiten und Apps, welche du verwendest, werden jeden Tag angegriffen und oftmals werden deine Passwörter dabei gestohlen. Wenn das gleiche Passwort bei mehreren Apps und Websites verwendet wird, können Hacker sich damit ganz einfach auch in deine E-Mails oder deinen Bank-Account einloggen.

### [LanguageTool](https://addons.mozilla.org/de/firefox/addon/languagetool/)

Mit dieser Erweiterung können Sie Text mit der freien Stil- und Grammatikprüfung LanguageTool prüfen. LanguageTool findet viele Fehler, die eine normale Rechtschreibprüfung nicht finden kann, z.B. Probleme mit der Groß- und Kleinschreibung oder Wortverwechselungen wie Mine/Miene. Neben Deutsch unterstützt es auch Englisch, Spanisch, Französisch und mehr als 25 weitere Sprachen.

### [GNU Terry Pratchett](https://addons.mozilla.org/de/firefox/addon/gnu_terry_pratchett/)

> In tribute to the late Sir Terry Pratchett many websites are adding the message "GNU Terry Pratchett" into the html header ["X-Clacks-Overhead"](http://www.gnuterrypratchett.com/). This plugin allows you to see when a website is using the header and read the message included. The message is also displayed visually in the semaphore style from the upcoming board game "Clacks" by Backspindle Games.

X-Clacks-Overhead ist hier auch aktiviert.

### [Wappalyzer](https://addons.mozilla.org/en-US/firefox/addon/wappalyzer/)

Wappalyzer is a browser extension that uncovers the technologies used on websites. It detects content management systems, eCommerce platforms, web servers, JavaScript frameworks, analytics tools and many more.

---

Das war Beitrag 9 der [#100DaysToOffload](/tag:100DaysToOffload) Herausforderung in 2020/2021. Besuche [https://100daystooffload.com](https://100daystooffload.com) um mehr Informationen über die Challenge zu erfahren.