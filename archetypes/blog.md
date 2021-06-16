---
title: "{{ substr (replace .Name "-" " ") 11 | title }}"
date: "{{ .Date }}"
tags: 
{{ range $plural, $terms := .Site.Taxonomies }}{{ range $term, $val := $terms }}{{ printf "- \"%s\"\n" $term }}{{ end }}{{ end }}

# description = ""
# embetty codes: {{< embetty (youtube | vimeo | facebook) <id> >}} 
draft: true
---

Insert Text here


<!--more-->
