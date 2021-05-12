---
title: How to use Hugo data files
date: 2021-05-12
category: hugo
---

Hugo Data Files lassen sich wie folgt verwenden.

Data Dateien werden im `data` Verzeichnis abglegt und werden in den Templates über `.Site.Data.<DateiName>` angesprochen. Die Verzeichnisstruktur innerhlab von Data muss eingehalten werden. Mehr Informationen zu den Data-Templates gibt es hier: <https://gohugo.io/templates/data-templates/#readout>



Im Verzeichnis `data` legst du dateien im format `json`,`toml` oder `yaml` ab.  Das Format und der Inhalt ist dir überlassen. Als Beispiel habe ich hier eine Bookmark-Liste. Diese Datei könnte sich hier befinden: `data/bookmarks/windows.yaml`.
 

```yaml
name: Windows Bookmarks
links:
- title: Windows 10 Ameliorated
  url: https://ameliorated.info/
  desc: Windows 10 Minus The Spyware + Added Stability and Security
- title: Windows 10 ISO Download Link
  url: https://www.microsoft.com/software-download/windows10ISO
```

Du könnenkannst mehrere Dateien im Verzeichnis `data` ablegen. Um den Inhalt aller Dateien anzuzeigen, verwnden wir einen Shortcode. Dieser Shortcode nimmt alle Dateien im Ordner `data/bookmarks` und sortiert sie nach Namen aufsteigend.

## Alle Dateien einbinden

Inhalt der Datei `layout/shortcodes/bookmarks.html`:

```html 
{{ $file := index .Site.Data.bookmarks }}
{{ range sort $file "name" "asc" }}
  <h2>{{ .name }}</h2>
  <ul>
  {{ range sort .links "title" "asc" }}
    <li>
      <a href="{{ .url }}" target="_blank" rel="noopener">{{ .title }}</a>
      {{ if .desc }} &ndash; <em>{{ .desc }}</em>
      {{ end }}
    </li>
  {{ end }}
  </ul>
{{ end }}
```

Der Shortcode hierfür ist einfach nur `bookmarks `

## Nur eine Datei einbinden

Willst du nur eine bestimmte Datei per Shortcode einbinden, geht das so:

Inhalt der Datein `layouts/shortcode/bookmark.html`:

```html
{{ $file := index .Site.Data.bookmarks ( .Get 0 ) }}
{{ with $file }}
  <ul>
  {{ range sort .links "title" "asc" }}
    <li>
      <a href="{{ .url }}" target="_blank" rel="noopener">{{ .title }}</a>
      {{ if .desc }} &ndash; <em>{{ .desc }}</em>
      {{ end }}
    </li>
  {{ end }}
  </ul>
{{ end }}
```

Der Shortcode für dieses Beispiel ist `bookmark windows`

