+++
title = "{{ replace .Name "-" " " | title }}"
date = "{{ .Date }}"
# description is optional
# description = ""
tags = [{{ range $plural, $terms := .Site.Taxonomies }}{{ range $term, $val := $terms }}"{{ printf "%s" $term }}",{{ end }}{{ end }}]
# embetty codes: {{< embetty (youtube | vimeo | facebook) <id> >}} 
+++

This is a page about »{{ replace .Name "-" " " | title }}«.


<!--more-->
