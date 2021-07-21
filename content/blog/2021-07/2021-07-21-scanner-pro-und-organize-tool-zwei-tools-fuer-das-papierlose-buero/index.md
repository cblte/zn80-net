---
title: "Scanner Pro und organize-tool – zwei Tools für das Papierlose Büro"
date: "2021-07-21T20:40:11+0200"
tags:
- Open-Source
- Utilities
draft: false
# embetty codes: {{< embetty (youtube | vimeo | facebook) <id> >}}
---

Jetzt in meinem Urlaub bin ich mal wieder dazu übergegangen ein paar meiner Papierablagen zu sortieren und zu digitalisieren. Noch immer habe ich mehrere Ordner mit sehr viel Papier. Hauptsächliche Versicherungsunterlagen und Rechnungen.

Wenn wir mal ehrlich sind, wir heben doch wirklich viel zu viel auf, oder? Die meisten Rechnungen kommen sowieso nur noch per E-Mail, wenn überhaupt, oder ich kann sie mir im Kundenportal herunterladen [^1]. Warum sollte ich also Unterlagen in Papierform der Jahre 2019 und älter noch aufbewahren?

## Scanner Pro – Scannen und OCR mit dem Telefon

{{< figure src="images/readdle-scanner-pro.jpg" alt="Scanner Pro von Readdle" caption="Scanner Pro von Readdle" >}}

Die für mich bisher am besten funktionierende Software ist [Scanner Pro] von [Readdle](https://readdle.com/). Damit kann ich meine Post schnell und unkompliziert einscannen und mithilfe der eingebauten OCR-Funktion durchsuchbar machen.

Sobald Post kommt (oder aber auch mal später) fotografiere ich die Blätter mit Scanner Pro und vergebe einen eindeutigen Dateinamen. Für die nette Beitragsrückerstattung der Nürnberger Krankenversicherung zum Beispiel setze ich als Dateinamen:

`2021-07-21-VerEins-Rueckerstattung Beitraege 2020 und 2019.pdf`

Das Datum am Anfang garantiert die einfache Sortierung im Finder und Zuordnung wann das Dokument verschickt wurde, ohne es zu öffnen. Nach dem Datum kommt immer der Name der Firma oder Versicherung, die das Dokument verschickt hat. Der Rest enthält dann so viele Details wie möglich, damit sich das Dokument schnell wieder finden lässt. Hierbei denke ich an mein zukünftiges Ich, welches die Datei irgendwann mal suchen sollte.

Ist der Dateiname vergeben, speichere ich das Dokument und es wird per iCloud auf den Mac synchronisiert. Hier kommt jetzt das [organize-tool] ins Spiel, welches anhand von Regeln die Datei in den entsprechenden Ordner packt.

## organize-tool – command line utility to automate file organization tasks

{{< figure src="images/organize-tool.jpg" alt="Organize Tool" caption="Organize Tool (<http://github.com/tfeldmann/organize>)" >}}

Früher habe ich die Organisation mit [Hazel] gemacht. Allerdings bin ich dazu übergegangen doch mehr Open-Source-Software zu verwenden und habe in den letzten zwei Tagen das [organize-tool] ausprobiert. Ich bin positiv überrascht, dass sich damit ziemlich schnell funktionieren Abläufe schreiben kann.

Um auf das Beispiel von oben wieder zurückzukommen, habe ich mir eine Datei mit Regeln geschrieben, die meine Unterlagen der verschiedenen Versicherungen in die passenden Ordner ablegt.

### Beispiel Regel für die Versicherungen

```Yaml
rules:
  # Sort files into my documents archive on the synology
  - folders: ~/Desktop/Inbox
    subfolders: true
    filters:
      - regex: '(\d{4}-\d{2}-\d{2})-(?P<target>(VerEins|VerZwei|VerDrei))-'
    actions:
      - echo: "Moving file to {regex.target}"
      - move: ~/SyncFolder/docs-versicherungen/{regex.target}/

```

Die Regel hier durchsucht den Ordner `Inbox` auf dem Desktop und filtert anhand des Dateinamens. Der reguläre Ausdruck im Filter schaut dabei ob der Dateiname mit einem einem Datum im Format `YYYY-MM-DD` beginnt und ein Wort aus der Liste der Versicherungen folgt. Der Name der Versicherung wird dabei in der Variable `target` gespeichert, die ich in der `move`-Aktion benutzen kann.

Somit kann ich Dokumente mehrerer Versicherungen mit einer Regel in die jeweils korrekten Ordner einsortieren.

### Regel ausführen

Wenn alle Papiere eingescanntsind und diese als PDF im iCloud-Ordner liegen, verschiebe ich alle Dateien in den Inbox Ordner auf dem Desktop und führe ich in der Kommandozeile folgenden Befehl aus:

`$ organize run --config-file .config/organize-tool/versicherungen.yaml`

Alle Dateien die zu denen die Regel passt, werden nun in ihre entsprechenden Unterordner einsortiert.

Anstelle die Dateie vorher noch in den Inbox-Ordner auf dem Desktop zu verschieben, könnte man als Quell-Ordner auch den iCloud-Ordner `/Users/<user>/Library/Mobile\ Documents/iCloud~com~readdle~Scanner~PDF/Documents` angeben. Da ich aber von mehreren Quellen Dokumente bekommen, zum Beispiel auch per E-Mail, habe ich mit eine Inbox auf dem Desktop erstellt.

## Fazit

Ich bin mit [Scanner Pro] wirklich zufrieden und es die einzige App die sauber und ohne viel Schnickschnack zuverlässig ihre Arbeit macht.

Mit [organize][organize-tool] habe ich nun ein Tool gefunden, welches sich sogar Plattform übergreifend einsetzen und neben den organisatorischen Möglichkeiten auch als Massen-Umbenennungs-Tool verwenden lässt.

Es sieht zwar nicht so schön wie Hazel aus, lässt aber durch die vielfältigen Regeln und Möglichkeiten keine Wünsche offen.

**Tip**: auf macOS lässt es sich bequem via `brew` installieren.

<!--more-->

[^1]: Ich finde das übrigens ziemlich doof und würde mir wünschen, dass die Rechnungen wieder per E-Mail verschickt werden.

[Scanner Pro]: https://readdle.com/scannerpro
[organize-tool]: https://github.com/tfeldmann/organize
[Hazel]: https://www.noodlesoft.com/
