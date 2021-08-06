---
title: "MkDocs mit Docker"
date: "2021-08-06T15:31:42+0200"
tags:
- 100 Days To Offload
- MkDocs
- Docker
100dto: 8
categories:
- 100 Days To Offload - Season 2
draft: false
---

Die letzten Tage habe ich mit dem Sven an der Matrix-Dokumentation für den Tildeverse-Server envs.net gearbeitet. Nachdem wir erfolglos versucht haben, den Fork der TU-Dresden zu bearbeiten, haben wir uns dau entschlossen, die Dokumentation anstatt mit Hugo doch lieber mit MkDocs umzusetzen. Hinzu kommt, dass MkDocs von Haus aus eine Suchfunktion mitliefert und das nicht extra eingebunden werden muss.

MkDocs konnte ich lokal mit brew installieren, doch nachdem es ein neues Theme und damit weitere Extensions für MkDocs geben sollte, habe ich mir gedacht: "warum soll ich mir mein System mit irgendwelchen Sachen zu müllen, wenn ich dafür doch lieber einen Docker-Container verwenden kann".

Den lokalen Rechner sauber halten ist keine so schlechte Idee und da MkDocs in Python geschrieben ist, lässt sich das sehr gut in einem Docker-Image verpacken. Das macht es auch für andere Entwickler einfacher, es auf ihrem lokalen Rechner auszuführen.

## Docker Image erstellen

{{< figure src="mkdocs-with-docker-01-dockerfile.png" alt="Dockerfile" caption="Dockerfile im Quell-Verzeichnis" >}}

Hier ist das Dockerfile:

```Dockerfile
FROM python:3.9-alpine3.14

LABEL maintainer="cblte@envs.net"
LABEL version="1.0"
LABEL description="\
This Dockerfile installs python3 and pip3 to\
then install and run MkDocs with several extensions."

RUN pip install \
    mkdocs \
    mkdocs-material \
    pymdown-extensions
```

So einfach ist das. Wir verwenden das python-Basisimage in der alpine Version welches ca. 100 MB groß ist. Im Image installieren wir dann `mkdocs`, das Designpaket `mkdocs-material` und das erforderliche `pymdown-extensions` Paket.

## Image Erstellen

Erstellt wird das Image mit dem folgenden Befehl:

`docker build -t cblte/mkdocs:1.0 .`

Der Punkt am Ende ist wichtig, damit Docker das `Dockerfile` findet. Mit dem Parameter `-t cblte/mkdocs:1.0` legen wir den Tag fest mit auf das Image verwiesen werden kann. Hinter dem Doppelpunkt kann eine Versionsnummer angegeben werden.

{{< figure src="mkdocs-with-docker-02-docker-build.png" alt="Docker Image erstellen" caption="Docker Image erstellen" >}}

## Docker Container starten

Nehmen wir an, die Dateien für die Dokumentation liegen im Verzeichnis `$HOME/data/mkdocs-src`. Auf diesen Ordner soll von dem Docker-Container aus zugegriffen werden können. Außerdem möchte ich die Dokumentation vom Container aus über MkDocs bereitstellen und vom Host aus auf dem Entwicklungs-Server zugreifen.

Folgende Parameter müssen wir verwenden:

- `-it`: interaktiver modus
- `--rm`: nach dem Beenden container löschen
- `-p 8888:8000`: den Port 8000 aus dem Container auf dem Host unter Port 8888 verfügbar stellen
- `-v '$HOME/data/mkdocs-src':/src`: stelle das lokale Verzeichnis im Container im Verzeichnis `/src` zur Verfügung
- `cblte/mkdocs:1.0`: das Image welches wir für den Container verwenden wollen
- `/bin/sh`: den Befehl den wir ausführen wollen

Den Container starten wir mit folgendem Befehl:

```Shell
docker run -it --rm \
    -p 8888:8000 \
    -v $HOME/data/mkdocs-src:/src \
    cblte/mkdocs:1.0 /bin/sh
```

Nachdem der Container gestartet ist, wechseln wir mit `cd /src` in das verbundene Verzeichnis und erstellen mit `mkdocs new .` ein neues Projekt.

{{< figure src="mkdocs-with-docker-03-run-container-and-commands.png" alt="Run Docker Container from Image" caption="Docker Container vom Image starten" >}}

Dadurch das wir das lokale Verzeichnis mit dem Container verbunden haben, können wir auf dem Host bequeme daran arbeiten.

{{< figure src="mkdocs-with-docker-04-files-on-host.png" alt="Dateien wurden im Verzeichnis auf dem Host erstellt." caption="Dateien wurden im Verzeichnis auf dem Host erstellt." >}}

## MkDocs Server starten

Den MkDocs Entwicklungsserver starten wir mit folgendem Befehl:

`mkdocs server --liveReload --dev-addr 0.0.0.0:8000`

Da sich MkDocs standardmäßig an 127.0.0.1 bindet, müssen wir den Parameter `--dev-addr` verwenden, um auf den Entwicklungsserver vom Host aus zuzugreifen.

{{< figure src="mkdocs-with-docker-05-run-dev-server.png" alt="Entwicklungsserver von MkDocs starten" caption="Entwicklungsserver von MkDocs starten" >}}

Auf dem Host-Rechner kann unter `http://localhost:8888` auf den die Dokumentation zugregriffen werden.

{{< figure src="mkdocs-with-docker-06-website-viewed-on-host.png" alt="MkDocs Webseite auf dem Host aufgerufen" caption="MkDocs Webseite auf dem Host aufgerufen" >}}

<!--more-->
