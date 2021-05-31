---
title: Pastebins
date: 2021-05-31
category: Linux
draft: false
---

Text und Ausgaben teilen mithilfe von Pastebins

## https://termbin.com/

    echo just testing!  | nc termbin.com 9999
    
    cat ~/some_file.txt | nc termbin.com 9999

    ls -la | nc termbin.com 9999


### Aliases

fish / bash:

    # termbin
    alias tb="nc termbin.com 9999"


## envs.sh | THE NULL POINTER

HTTP POST files here:

    curl -F'file=@yourfile.png' https://envs.sh

post your text directly:

    echo "text here" | curl -F'file=@-;' https://envs.sh

you can also POST remote URLs:

    curl -F'url=https://example.com/image.jpg' https://envs.sh

or you can shorten URLs:

    curl -F'shorten=http://example.com/some/long/url' https://envs.sh

### Aliases

bash:

    0file() { curl -F"file=@$1" https://envs.sh ; }
    0pb() { curl -F"file=@-;" https://envs.sh ; }
    0url() { curl -F"url=$1" https://envs.sh ; }
    0short() { curl -F"shorten=$1" https://envs.sh ; }

fish:

    ### envs.sh - nullpointer ###
    # Functions for sending files, text or console output to the null pointer
    
    # Function to send a file to the null pointer
    function 0file --argument file
        curl -F"file=@$file" https://envs.sh
    end
    
    # Function that takes the piped output akak pipe-bin
    function 0pb 
        curl -F"file=@-;" https://envs.sh
    end
    
    # Function that posts a remote url
    function 0url --argument url
        curl -F"url=$url" https://envs.sh
    end
    
    # Function that works as a url shortener
    function 0short --argument url
        curl -F"shorten=$url" https://envs.sh
    end