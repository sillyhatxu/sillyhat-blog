---
title: "Learning Python 05"
subtitle: "_2019-03-01-learning-python-05"
date: 2019-03-01T18:05:00+08:00
author: "Cookie Xu"
tags: ["python"]
categories: ["python"]
from: "http://sillyhatxu.com"
draft: false
---

[Link to my github](https://github.com/sillyhatxu/learning-python/blob/master/array.py) (This is learning code.)

```
friends = ["Kevin", "Karen", "Jim", "Oscar", "Toby"]
print(friends)
print(friends[2])

print(friends[2:4])
friends[1] = "Lily"
print(friends)

lucky_numbers = [4, 8, 15, 16, 23, 42]
bad_src = ["heihei", "haha", "hehe"]

friends.extend(lucky_numbers)
print(friends)

friends.append(bad_src)
print(friends)

friends.insert(1, "Kelly")
print(friends)
friends.remove("Kelly")
print(friends)
friends.clear()
print(friends)

friends = ["Kevin", "Karen", "Jim", "Oscar", "Toby"]
friends.pop()  # remove last string
print(friends)

print(friends.index("Jim"))

friends = ["Kevin", "Karen", "Jim", "Oscar", "Toby"]
friends.sort()
print(friends)
lucky_numbers = [23, 42, 4, 8, 15, 16]
lucky_numbers.sort()
print(lucky_numbers)

friends2 = friends.copy()
print(friends)
print(friends2)

coordinates = (4, 5)
print(coordinates[0])
## we can't change value
# coordinates[1] = 5

coordinates = [(4, 5),(6,7),(80,34)]
print(coordinates)
print(coordinates[0])

```

[Link To Mike Dane YouTuBe](https://www.youtube.com/watch?v=c2C7bvkVGbI&list=PLLAZ4kZ9dFpMMs5lskzBApYXn0bl7emsW&index=11)

<iframe id="ytplayer" type="text/html" width="640" height="360"
  src="https://www.youtube.com/embed/c2C7bvkVGbI?origin=https://www.youtube.com/watch?v=c2C7bvkVGbI&list=PLLAZ4kZ9dFpMMs5lskzBApYXn0bl7emsW&index=11"
  frameborder="0"></iframe>