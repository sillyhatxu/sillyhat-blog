---
title: "Learning Python 16"
subtitle: "_2019-03-01-learning-python-16"
date: 2019-03-01T18:16:00+08:00
author: "Cookie Xu"
tags: ["python"]
categories: ["python"]
from: "http://sillyhatxu.com"
draft: false
---

# Modules And Pip

[Link to my github](https://github.com/sillyhatxu/learning-python/blob/master/modules_and_pip_useful_tools.py) (This is learning code.)

> pip is python install library command
```
pip install python-docx
```
> uninstall
```
pip uninstall python-docx
```

> modules
```
import modules_and_pip

print(modules_and_pip.roll_dice(10))
```

```
import random

feet_in_mile = 5280
meters_in_kilometer = 1000
beatles = ["John Lennon", "Paul McCartney", "George Harrison", "Ringo Star"]


def get_file_exe(filename):
    return filename[filename.index(".") + 1:]


def roll_dice(num):
    return random.randint(1, num)

```

![List Of Python Modules](https://lh3.googleusercontent.com/Vh7g1nGSyYo-1SwEYWhs6PSZfvZ2VXFLmBI3wK2FKsJZWLL6FruclLAlpBpA5qubHNTrDnqGGWwx6PsGduoYKJeqjpBURWIDcJ1eSZ2RAHuh63ZvzMhTItoxUB3ZQEU8zQYUnGq2P5f28StVL5uvxyqPam8S-X53KoMD40pp4sCpdRiL8r-M93FKH2HfU7GfuiSodT3QwsbTF1fpMbdyHMcUHhGnF-64ZB82WWP8OZBRcEQEuPL-IzH5CL147ls2mfvM-RpOXLj2yT1I1_bYlajexLhaxEVlzPJc6LCl8g8F2LSKfRdjf60he1dtTVGGg36RS0upaYeK8smhNjNYLtFdgphKPoc-3GRfnez6tuuk5lX45jHE_CrNBUMruQS-giounNCtWwsGBsBmENDm1LMhlKsSnvoO5u_PDjG9cysZ0ioF5lR2COavgYTDliULkFL42ZHWWEbulWFirEBudImV2hMIUNZasH94p1-qCGIy356Jt_ZfnJkq4_M96JAV5dlCRjRwBRphYe60-YROE2c-8p9p01cZUm-_ncbstnS92NcIPS5jQYyLd1aLgDykH8PIkTlkqfUhvJw_xqZ_2lBXG-l3_4YjZWBumTA0F90dboVeaNH0ucs9g6lYlqylRVf5VLgE-Cp0tCMrOsZdsBsmOx7IKr1RI44dlHqzntlcTw57pgZdcYgJAhgbbgdtugkddLsEeSQlHsvZ2BWj-bxd=w677-h258-no)

[Link To Mike Dane YouTuBe](https://www.youtube.com/watch?v=j7t-HNEIFkM&list=PLLAZ4kZ9dFpMMs5lskzBApYXn0bl7emsW&index=30)

<iframe id="ytplayer" type="text/html" width="640" height="360"
  src="https://www.youtube.com/embed/j7t-HNEIFkM?origin=https://www.youtube.com/watch?v=j7t-HNEIFkM&list=PLLAZ4kZ9dFpMMs5lskzBApYXn0bl7emsW&index=30"
  frameborder="0"></iframe>