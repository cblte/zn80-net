---
title: TiddlyWiki 
date: 2021-07-30
lastmod: 2021-07-30
category: misc
---

## Tiddlywiki Server mit Basis Authentification starten

Endlich habe ich Tiddlywiki so umgestellt, dass in der Befehlszeile die Passwörter und Benutzernamen nicht mehr angezeigt werden. Somit ist auch das Password aus der `ps` / `htop` Prozessübersicht verschwunden.

Anstelle Benutzername und Passwort als Parameter [^1] zu übergeben, erstellt man sich eine eine `.csv`-Datei erstellt und schreibt dort alle Benutzernamem und Passwörter rein [^2]. Anschließend starten wir Tiddlywiki mit folgendem Befehl:

```Text
tiddlywiki $HOME/tiddlywiki/personal --listen host=0.0.0.0 \
             port=47309 \
             credentials=$HOME/tiddlywiki/twcredentials.csv \
             "readers=(authenticated)" \
             "writers=(authenticated)"
```

- **$HOME/tiddlywiki/personal**: Das Verzeichnis in dem die TiddlyWiki Daten liegen
- **--listen**: startet den Server mit folgenden Parametern:
  - **host=0.0.0.0**: mit `0.0.0.0` binden wir uns an alle Netzwerkinterfaces und machen den Service von außen aus erreichbar
  - **port=47309**: der Port auf dem der Service laufen soll
  - **credentials=$HOME/tiddlywiki/users.csv**: die Datei mit den Nutzern und Passwörtern
  - **"readers=(authenticated)"**: wir lassen nur angemeldete Nutzer zu
  - **"writers=(authenticated)"**: wir lassen nur angemeldete Nutzer zu

Beispiel und alles weiter befindet sich in der Dokumentation auf <https://tiddlywiki.com>.

[^1]: [TiddlyWiki WebServer Prameter: username](https://tiddlywiki.com/#WebServer%20Parameter%3A%20username)
[^2]: [TiddlyWiki-WebServer-Parameter: credentials](https://tiddlywiki.com/#WebServer%20Parameter%3A%20credentials)