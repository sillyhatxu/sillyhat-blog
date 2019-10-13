---
title: "Learning Python 18"
subtitle: "_2019-03-01-learning-python-18"
date: 2019-03-01T18:18:00+08:00
author: "Cookie Xu"
tags: ["python"]
categories: ["python"]
from: "http://sillyhatxu.com"
draft: false
---


# Inheritance

[Link to my github](https://github.com/sillyhatxu/learning-python/tree/master/inheritance) (This is learning code.)

> app.py
```
from inheritance.Chef import Chef
from inheritance.ChineseChef import ChineseChef


myChef = Chef()
myChef.make_chichen()
myChef.make_special_dish()
myChineseChef = ChineseChef()
myChineseChef.make_chichen()
myChineseChef.make_special_dish()
myChineseChef.make_fried_rice()
```

> Chef.py
```
class Chef:

    def make_chichen(self):
        print("The che makes a chicken")

    def make_salad(self):
        print("The chef makes a salad")

    def make_special_dish(self):
        print("The chef make a special dish")

```


> ChineseChef.py
```
from inheritance.Chef import Chef


class ChineseChef(Chef):

    def  make_special_dish(self):
        print("The chef makes a orange chicken")

    def make_fried_rice(self):
        print("The chef makes fried rice")


```

[Link To Mike Dane YouTuBe](https://www.youtube.com/watch?v=z6MCR2O0yak&list=PLLAZ4kZ9dFpMMs5lskzBApYXn0bl7emsW&index=34)

<iframe id="ytplayer" type="text/html" width="640" height="360"
  src="https://www.youtube.com/embed/z6MCR2O0yak?origin=https://www.youtube.com/watch?v=z6MCR2O0yak&list=PLLAZ4kZ9dFpMMs5lskzBApYXn0bl7emsW&index=34"
  frameborder="0"></iframe>
