---
title: "Install Graphviz for Mac"
subtitle: "2019-03-13-install-graphviz-for-mac"
date: 2019-03-13T13:52:39+08:00
author: "Cookie Xu"
tags: ["Mac"]
categories: ["Operation"]
from: "http://sillyhatxu.com"
draft: false
---

> Run in Terminal:
```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null ; brew install caskroom/cask/brew-cask 2> /dev/null
```

> Install Graphviz

`brew install graphviz` **or** `brew cask install graphviz` 

```
Cookies-Mac-mini:PycharmProjects shikuanxu$ brew cask install graphviz
Error: Cask 'graphviz' is unavailable: No Cask with this name exists.


Cookies-Mac-mini:PycharmProjects shikuanxu$ brew install graphviz
==> Installing dependencies for graphviz: libpng, freetype, fontconfig, jpeg, libtiff, webp, gd, libffi, pcre, glib, jasper, netpbm and gts
==> Installing graphviz dependency: libpng
==> Downloading https://homebrew.bintray.com/bottles/libpng-1.6.36.mojave.bottle.tar.gz
######################################################################## 100.0%
==> Pouring libpng-1.6.36.mojave.bottle.tar.gz
🍺  /usr/local/Cellar/libpng/1.6.36: 27 files, 1.2MB
==> Installing graphviz dependency: freetype
==> Downloading https://homebrew.bintray.com/bottles/freetype-2.9.1.mojave.bottle.tar.gz
```