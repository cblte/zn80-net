+++
title = "Was bisher geschah – Woche 21-15"
publishDate = "2021-04-18"
tags = ["100DaysToOffload", "Was bisher geschah"]
+++

Ein paar Wochen sind vergangen, seit dem ich den letzten Beitrag geschrieben habe. Auf der einen Seite war ich einfach zu faul, auf der anderen Seite war ich einfach Internet müde. 

Eigentlich wollte ich ja auch schon lange mal den Garten mit dem Hochdruckreiniger sauber machen, Blumen bestellen oder mit dem Rad eine Runde zum Strand fahren. Leider ist es für all das einfach noch viel zu kalt. 

Nichtsdestotrotz habe ich dann aber doch an dem ein oder anderen Projekt gearbeitet.

<!--more-->


## Autopflege

Seit langem habe ich mal wieder meinem Auto ein wenig Pflege gegönnt. Erst innen saugen und Polsterpflege. Danach von außen mit dem Hochdruckreiniger reinigen, mit Schaum einsprühen und anschließend mit vielen Waschtüchern abwaschen. Nach dem Abtrocknen dann noch [Sonax Brilliant Shine Detailer](https://www.sonax.de/pflegeprodukte/profiline/profiline-brilliant-shine-detailer/profiline-brilliant-shine-detailer-5-l) auf Glanz gebracht. 

Auch wenn ich die Sonax Produkte eigentlich nicht so gut finde, ist das Sonax BSD wirklich gut. Wenn man es 1:1 mit Wasser verdünnt, hält es doppelt so lange und man kann es besser verteilen. Es liegt wie eine leichte Schutzschicht auf dem Lack der verhindert, dass Dreck und Regen haften bleiben. Also ein wenig zumindest. :smile:

## Github

Nebenher habe ich meinem [Github Repository](https://github.com/cblte) ebenfalls eine Schönheitskur verpasst. 

Zum einen kann man ja jetzt ein Repo mit dem Namen des Benutzers anlegen, welches dann in der Profilansicht angezeigt wird. So sieht das schon viel hübscher aus, wenn man das Profil eines anderen besucht. 

Zum anderen habe ich mich schlau gemacht über Webhooks und Github-Actions und überhaupt Git so im Allgemeinen. Denn das hat auch was mit dem großen Umbau der Webseite zu tun.


## Der Wechsel zu Hugo

Als Erstes habe ich mich wieder einmal dazu entschlossen meine Webseiten, bzw. Webseiten, zu überarbeiten. Das hat leider was damit zu tun, dass die aktuellen Updates von Ghost so überhaupt nicht meinem Geschmack entsprechen. 

### Ghost hat sich nicht zum guten verbessert

In Version 4 haben sie in Ghost viele Dinge eingebaut, um den Blog oder die Webseite zu monetarisieren. Da ich das alles nicht brauche und auch nicht haben will, es sich auch nicht abschalten lässt, werde ich mich nach nur kurzer Zeit wieder von Ghost trennen müssen. Doch was sind die Alternativen? Wieder einen Wordpress-Blog aufsetzen? Noch mal Bludit ausprobieren? Oder, oder, oder? Es gibt so viele Dinge, die man machen kann. Da ich aber ein Mensch bin der es gerne ordentlich und aufgeräumt hat, habe ich mich langem hin und her für Hugo entschieden. 

### Hugo ist einfach, schnell und komfortabel zugleich

[Hugo](https://gohugo.io) ist ein Generator für statische Webseiten. Man nehmen einen ganzen Haufen an Texten und Dateien, ein Theme wie die Seite aussehen soll und jagt das durch Hugo durch. Am Ende kommen dann viele statische HTML Seiten heraus die man ohne großen Aufwand auf jedem Webserver hosten kann. 

{{< figure src="/images/2021-04-hugo-screenshot.png" alt="GoHugo" caption="Screenshot gohugo.io Webseite" >}}

_Hugo_ ist für mich halt super, weil ich genau weiß, wo, was gespeichert wird, wie ich was wo ablegen muss damit es funktioniert und bei einem Update passiert halt kein Schnick-Schnack, den ich nicht beeinflussen kann. Hinzu kommt, dass statische Seiten nicht gehackt werden können. Wie auch? Es gibt kein Login-Formular, kein Script das irgendetwas bei Seitenaufruf generiert. 

Die Installation von Hugo ist ebenfalls super einfach. Du lädst dir nur das passende Binary für dein Betriebssystem herunter. Fertig! Kein umständliches Aufsetzen von Webserver und irgendwelchen Skriptsprachen. Eine einzelne Datei und man kann loslegen. Wenn man dann eine Seite generiert hat, kann man quasi sofort loslegen. Hugo selbst lässt sich sogar dazu benutzen, um die generierten Seiten auszuliefern. Praktisch, oder? 

Im Vergleich: Ghost 3.42.1 belegt aktuell knapp **450 MB Speicherplatz**.
Im Gegensatz dazu hat das Binary von Hugo knapp 50 MB. Mit dem Sourcecode und der komplett generierte Webseite, inkl. Bilder, kommen noch mal knapp 30 MB obendrauf. 450MB gegenüber 80 MB. Ist schon mal ein krasser Unterschied. 

Backups sind ebenfalls super einfach. Aller Sourcecode liegt in einem Github-Repository und die Beiträge und Seiten liegen als Markdown-Text vor. Einfach ein Backup vom Verzeichnis machen und gut ist. Ich habe jetzt auch das Hugo-Binary mit ins Backup gepackt, so kann ich die Webseite auch später noch generieren, wenn ich möchte.

Hugo ist außerdem schnell, verdammt schnell sogar. In meinem Test habe ich meine exportierten Blogbeiträge einfach 10 mal in das `Content`-Verzeichnis kopiert. Um aus den über 1800 Dateien eine voll funktionierende Webseite mit Tags, Archive, Seiten-Navigation und mehr zu generieren, braucht Hugo keine 3 Sekunden.

{{< figure src="/images/2021-04-hugo-site-generation.png" alt="Hugo Site Generation dauert nur ein paar Sekunden" caption="Hugo benötigt nur ein paar Sekunden für die Webseiten Generierung" >}}

### Ich mag es gerne einfach

Für Ghost habe ich lange nach einem einfachen Design gesucht. Doch nie wirklich eines gefunden welches mich überzeugen konnte, weshalb ich dann beim Standard-Design / -Theme geblieben bin. Wirklich gefallen hat es mir nie. Doch das Aufsetzen einer Entwicklungsumgebung für Ghost, um ein Theme zu schreiben, erschien mir zu kompliziert. 

Und weil ich es auch gerne einfach mag, habe ich mich für das [Bear-Theme](https://github.com/janraasch/hugo-bearblog/) entschieden und es ein wenig angepasst. Die eigentliche Blog-Übersicht ist nun das Archiv und die Blog-Übersicht zeigt Ausschnitte der fünf letzten Beiträge. Dazu gibt es eine Navigation am Ende um zu vorherigen Seiten zu springen. Ob das so bleibt weiß ich noch nicht, vielleicht kommt der Archiv-Link auch da unten hin, um das Menü nicht zu sehr zu überladen. 

### Bisher migrierter Content

Der Export aus Ghost und die Umwandlung in einzelnen Textdateien ist schon erfolgt. Dennoch muss ich jeden Beitrag einmal anpacken und anpassen, dass die Bookmark-Cards auf Ghost nicht in Hugo funktionieren. Zumindest nicht so, dass man es ohne weitere Bearbeitung übernehmen kann. Die Bilder sind ebenfalls exportiert und warten darauf wieder eingebunden zu werden. 

Die Seiten für die Blogroll und die Podcasts habe ich überarbeitet und eine weitere Seite für Ressourcen hinzugefügt. Das sind von mir fast täglich genutzte Seiten. Da ich an vielen Rechnern und mit vielen Browsern unterwegs bin, habe ich relativ wenig Favoriten gespeichert und nutze dafür nun die Ressourcen-Seite und meinen [Bookmark-Manager shaarli](https://bm.zn80.net). 

### Was nicht so toll ist

Was nicht so toll ist, weil ich es aber gerne strukturiert und sauber haben will, dass sich die URLs von einigen Beiträgen ändern werden. Das ist doof, aber ich versuche mit ein paar Umleitungen (re-directs) so viel wie möglich abzufangen. 

### Was ist das für ein Gesicht im Titel?

Das Gesicht im Titel ist übrigens ein sogenanntes [_kaomoji_](https://www.mimikama.at/aktuelles/emojis-fr-fortgeschrittene-kaomojis-teil-1-hilfecenter/). 

> Ein Kaomoji ist eine Kombination von zwei japanischen Wörtern. _kao_ => Gesicht und _mojo_ => Charakter. 

Weil ich (meistens) ein fröhlicher und aufgeschlossener Mensch bin, dachte ich mir, ich begrüße meine Besucher mit einem lachenden und winkendem Gesicht. Ich hoffe, es bringt dir ein Lächeln ins Gesicht.


### Fazit

Im groben ganzen bin ich mit Hugo super zufrieden. Ich habe viel gelernt in den letzten zwei Wochen und einige neue Tools und Services kennengelernt. 

Es gibt super viele [statische Seitengeneratoren](https://https://jamstack.org/generators/), ich habe gelernt wie man mit [Github und Webhooks](https://docs.github.com/en/github-ae@latest/developers/webhooks-and-events/webhooks) automatisiert die Webseite bauen kann, über [Continuous-Integration](https://docs.github.com/en/github-ae@latest/actions/guides/setting-up-continuous-integration-using-workflow-templates) mit [Travis-CI](https://travis-ci.com/) und [Netlify](https://www.netlify.com/) und vieles mehr. 

Viel gelernt habe ich auch über [git](https://www.git-scm.com) selber. _Best Practices_ gelesen und mir einige Videos angeschaut, wie andere Nutzer verschiedene Probleme lösen oder gelöst haben. Das hilft mir nicht nur bei meinen privaten Projekten, sondern auch auf der Arbeit wo wir bald von Mercurial auf Git umsteigen werden. 


## Sonst noch was?

Ja, da gibt es tatsächlich noch was. 

Während ich auf der Suche nach einer passenden Gelegenheit war um meinen Teil ein wenig aufzuhübschen wo ich dann letztendlich bei dem Kaomojis gelandet bin, habe ich auf die Webseite <https://lennyface.de/> gefunden. Bisher habe ich noch für jede Situation ein passendes Gesicht gefunden. Ob meine Arbeitskollegen das auch so sehen weiß ich nicht. Mir hilft es aber mich besser im Chat auszudrücken, da mein Humor nicht von jedem verstanden wird.

=> https://lennyface.de/

Auf dev.to gibt es eine ganze Menge an guten Artikeln in vielen Themenbereichen. Mich interessiert zwar hauptsächlich Golang, Java, Python und Git. Die Community in den Bereichen Javascript und Web-Development ist aber sehr stark ausgeprägt und es gibt viele coole Projekte und Hinweise zu interessanten Webseiten. Durchgucken lohnt sich alle mal.

=> https://dev.to/

Irgendwo hatte ich das zwar auch schon mal zusammengetragen, aber keine Ahnung wo meine Liste abgeblieben ist. Egal. Mike Kuketz vom Kuketz-Blog hat eine aktuelle Liste an [datenschutzfreundlichen Web-Frontends für YouTube, Twitter, Instagram, Reddit und Co.](https://www.kuketz-blog.de/datenschutzfreundliche-web-frontends-fuer-youtube-twitter-instagram-reddit-und-co/) erstellt.  
via [HappyBuddah1975](https://happybuddha1975.de/15-kw-2021/)


### Die "Darf ich das" App

> Was darf man eigentlich, und welche Regeln und Gesetze sind in in deiner Region gerade gültig?
> 
> Während Corona gelten in allen Bundesländern unterschiedliche Regeln, und sogar der nächste Landkreis kann schon wieder anderen Erlassen unterliegen. Im Rahmen der Covid-19 Pandemie gibt es fast täglich neue Gesetze und Verordnungen, die unseren Alltag betreffen. Da informiert zu bleiben kann schwierig sein! 

Von [padeluun](https://twitter.com/padeluun/status/1383554877322719236) empfohlen, kann die App nicht schlecht sein. Probiere es doch einfach mal aus. 

=> <https://www.darfichdas.info/>


---

Das hier ist Beitrag 78 der [#100DaysToOffload](/tag/100DaysToOffload) Herausforderung. Besuche [https://100daystooffload.com](https://100daystooffload.com) um mehr Informationen über die Challenge zu erfahren.