---
title: "Learning Python 13"
subtitle: "_2019-03-01-learning-python-13"
date: 2019-03-01T18:13:00+08:00
author: "Cookie Xu"
tags: ["python"]
categories: ["python"]
from: "http://sillyhatxu.com"
draft: false
---

[Link to my github](https://github.com/sillyhatxu/learning-python/blob/master/try_except.py) (This is learning code.)

```
try:
    number = int(input("Enter number: "))
    print(number)
except:
    print("Invalid Input")

try:
    value = 10 / 0
    number = int(input("Enter number: "))
    print(number)
except ZeroDivisionError as err:
    print("Divided by zero;", err)
except ValueError:
    print("Invalid Input")

```

[Link To Mike Dane YouTuBe](https://www.youtube.com/watch?v=KdMAj8Et4xk&list=PLLAZ4kZ9dFpMMs5lskzBApYXn0bl7emsW&index=27)

<iframe id="ytplayer" type="text/html" width="640" height="360"
  src="https://www.youtube.com/embed/KdMAj8Et4xk?origin=https://www.youtube.com/watch?v=KdMAj8Et4xk&list=PLLAZ4kZ9dFpMMs5lskzBApYXn0bl7emsW&index=27"
  frameborder="0"></iframe>