---
title: "{{ replace .Name "-" " " | title }}"
subtitle: "{{ dateFormat "2006-01-02" .Date }}-{{ .Name }}"
date: {{ .Date }}
author: "Cookie Xu"
tags: ["{{ replace .Dir "/" "" | default }}"]
categories: ["{{ replace .Dir "/" "" | default }}"]
from: "http://sillyhatxu.com"
draft: false
---


![](xxxImagexxx)

[xxxURLxxx]()