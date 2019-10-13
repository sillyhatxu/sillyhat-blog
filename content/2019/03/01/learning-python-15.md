---
title: "Learning Python 15"
subtitle: "_2019-03-01-learning-python-15"
date: 2019-03-01T18:15:00+08:00
author: "Cookie Xu"
tags: ["python"]
categories: ["python"]
from: "http://sillyhatxu.com"
draft: false
---

# Writing File
  
[Link to my github](https://github.com/sillyhatxu/learning-python/blob/master/write_files.py) (This is learning code.)

```
employee_file = open("writing_files.txt", "a")  # a : append to the file
employee_file.write("\nCookie is software engineer.")
employee_file.close()
print("----------")


employee_file = open("writing_files.txt", "w")  # w : write;It will be clear this file.
employee_file.write("Cookie is software engineer.")
employee_file.write("\n<p>This is HTML</p>")
employee_file.close()
print("----------")
```

[Link To Mike Dane YouTuBe](https://www.youtube.com/watch?v=E1gDJU9Q4kg&list=PLLAZ4kZ9dFpMMs5lskzBApYXn0bl7emsW&index=29)

<iframe id="ytplayer" type="text/html" width="640" height="360"
  src="https://www.youtube.com/embed/E1gDJU9Q4kg?origin=https://www.youtube.com/watch?v=E1gDJU9Q4kg&list=PLLAZ4kZ9dFpMMs5lskzBApYXn0bl7emsW&index=29"
  frameborder="0"></iframe>