# zn80.net

This is the source of [zn80.net](https://zn80.net).

# Build

[![Build Status](https://travis-ci.com/cblte/zn80-net.svg?branch=main)](https://travis-ci.com/cblte/zn80-net)


This website is also built by travis-ci.com. I may switch to github-actions in the future. But for now, travis-ci is more a test. The 'real' website is hosted built and hosted on <https://uberspace.de>. After a push a webhook is called which then executes a shell script.

Build an run the blog locally on `localhost:1313`

``` bash
$ git clone https://github.com/cblte/zn80-net
$ cd zn80-net
$ brew install hugo
$ hugo server -w
```

Just building works quite the same, ends up with the `documentroot` in
`public/`

``` bash
$ cd zn80-net
$ hugo
```

Or on a custom server (to overwrite items in config.yaml) use

``` bash
hugo server --baseURL=foo.example.com --port=1313 --bind=0.0.0.0 --watch
```

Think about running `markdownlint`

# Contribute

Patches / Pull Requests regarding

* Grammar
* Misspelling
* Comma
* HTML
* CSS

are very welcome.
