---
title: "Learning Python 08"
subtitle: "_2019-03-01-learning-python-08"
date: 2019-03-01T18:08:00+08:00
author: "Cookie Xu"
tags: ["python"]
categories: ["python"]
from: "http://sillyhatxu.com"
draft: false
---

# Map

[Link to my github](https://github.com/sillyhatxu/learning-python/blob/master/map.py) (This is learning code.)

```
monthConversions = {
    "Jan": "January",
    "Feb": "February",
    "Mar": "March",
    "Apr": "April",
    "May": "May",
    "Jun": "June",
    "Jul": "July",
    "Aug": "August",
    "Sep": "September",
    "Oct": "October",
    "Nov": "November",
    "Dec": "December",
}

print(monthConversions["Nov"])
print(monthConversions.get("Dec"))
print(monthConversions.get("AAA"))
print(monthConversions.get("BBB", "Not a value key"))

monthConversions = {
    1: "January",
    2: "February",
    3: "March",
    4: "April",
    5: "May",
    6: "June",
    7: "July",
    8: "August",
    9: "September",
    10: "October",
    11: "November",
    12: "December",
}

print(monthConversions[5])
print(monthConversions.get(11))
print(monthConversions.get("AAA"))
print(monthConversions.get("BBB", "Not a value key"))

```

[Link To Mike Dane YouTuBe](https://www.youtube.com/watch?v=dKg5hzE0I00&list=PLLAZ4kZ9dFpMMs5lskzBApYXn0bl7emsW&index=19)

<iframe id="ytplayer" type="text/html" width="640" height="360"
  src="https://www.youtube.com/embed/dKg5hzE0I00?origin=https://www.youtube.com/watch?v=dKg5hzE0I00&list=PLLAZ4kZ9dFpMMs5lskzBApYXn0bl7emsW&index=19"
  frameborder="0"></iframe>
  