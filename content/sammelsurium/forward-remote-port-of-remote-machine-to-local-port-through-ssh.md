---
title: "Forward remote port of remote machine to local port through SSH"
category: 
- "Linux"
---

Verwende diesen Befehl auf deinem lokalen Rechner, um den Port 8000 des entfernten Rechners 192.168.0.1 zu deinem lokalen Rechner an Port 8000 zu tunneln:

    ssh -L 8000:192.168.0.1:8000 root@192.168.0.1