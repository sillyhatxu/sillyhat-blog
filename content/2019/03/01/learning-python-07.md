---
title: "Learning Python 07"
subtitle: "_2019-03-01-learning-python-07"
date: 2019-03-01T18:07:00+08:00
author: "Cookie Xu"
tags: ["python"]
categories: ["python"]
from: "http://sillyhatxu.com"
draft: false
---

[Link to my github](https://github.com/sillyhatxu/learning-python/blob/master/ifelse.py) (This is learning code.)

```
is_male = True
is_tall = False
if is_male or is_tall:
    print("You are a male or tall or both")
else:
    ## Both False
    print("You neither male non tall")

if is_male and is_tall:
    ## Both True
    print("You are a male or tall or both")
elif is_male and not is_tall:
    print("You are a short male")
elif not is_male and is_tall:
    print("You are not a male but are tall")
else:
    print("You neither male non tall")


def max_num(num1, num2, num3):
    if num1 >= num2 and num1 >= num3:
        return num1
    elif num2 >= num1 and num2 >= num3:
        return num2
    else:
        return num3


print(max_num(10, 5, 70))


def src_equal(src1, src2):
    if src1 == src2:
        print("equal")
    else:
        print("not equal")


src_equal("aaa", "aaa")

num1 = float(input("Enter num1:"))
op = input("Enter operator:")
num2 = float(input("Enter num2:"))

if op == "+":
    print(num1 + num2)
elif op == "-":
    print(num1 - num2)
elif op == "/":
    print(num1 / num2)
elif op == "*":
    print(num1 * num2)
else:
    print("Invalid operator")

```

[Link To Mike Dane YouTuBe](https://www.youtube.com/watch?v=V1w7QAUVqQI&index=16&list=PLLAZ4kZ9dFpMMs5lskzBApYXn0bl7emsW)

<iframe id="ytplayer" type="text/html" width="640" height="360"
  src="https://www.youtube.com/embed/V1w7QAUVqQI?origin=https://www.youtube.com/watch?v=V1w7QAUVqQI&index=16&list=PLLAZ4kZ9dFpMMs5lskzBApYXn0bl7emsW"
  frameborder="0"></iframe>

[Link To Mike Dane YouTuBe](https://www.youtube.com/watch?v=-I6AhyPcmTA&list=PLLAZ4kZ9dFpMMs5lskzBApYXn0bl7emsW&index=17)

<iframe id="ytplayer" type="text/html" width="640" height="360"
  src="https://www.youtube.com/embed/I6AhyPcmTA?origin=https://www.youtube.com/watch?v=-I6AhyPcmTA&list=PLLAZ4kZ9dFpMMs5lskzBApYXn0bl7emsW&index=17"
  frameborder="0"></iframe>