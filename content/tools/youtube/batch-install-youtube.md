---
title: "Batch Download YouTuBe Video"
subtitle: ""
date: 2019-04-09T19:27:11+08:00
author: "Cookie Xu"
tags: ["english"]
categories: ["tools"]
from: "http://sillyhatxu.com"
draft: false
---

[youtube-dl github](https://github.com/ytdl-org/youtube-dl)

## Install

```
brew install youtube-dl
```

## Download


|  Expression   |      Description       |         中文            |
|:--------------:|:---------------------:|:-----------------------:|
|-i, --ignore-errors|Continue on download errors, for example to skip unavailable videos in a playlist|下载过程中遇到错误继续下载|
|-r, --limit-rate RATE|Maximum download rate in bytes per second(e.g. 50K or 4.2M)|设置下载速度|



```
youtube-dl -i -r 100K URL
```