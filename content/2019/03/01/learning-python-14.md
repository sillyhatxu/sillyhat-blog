---
title: "Learning Python 14"
subtitle: "_2019-03-01-learning-python-14"
date: 2019-03-01T18:14:00+08:00
author: "Cookie Xu"
tags: ["python"]
categories: ["python"]
from: "http://sillyhatxu.com"
draft: false
---

# Reading File

[Link to my github](https://github.com/sillyhatxu/learning-python/blob/master/reading_files.py) (This is learning code.)

```
#Jim - Salesman
#Dwight - Salesman
#Pam - Receptionist
#Michael - Manager
#Oscar - Accountant
employee_file = open("reading_files.txt", "r")
print(employee_file.readable())
print(employee_file.readline())
print(employee_file.readline())
print(employee_file.readline())
print(employee_file.readline())
employee_file.close()
print("----------")

employee_file = open("reading_files.txt", "r")  # r is read ; w is write ; a is append to the file
print(employee_file.readable())
print(employee_file.readlines()[2])
employee_file.close()
print("----------")

employee_file = open("reading_files.txt", "r")  # r is read ; w is write
for employee in employee_file.readlines():
    print(employee)
employee_file.close()
print("----------")

employee_file = open("reading_files.txt", "r")  # r is read ; w is write
print(employee_file.read())
employee_file.close()
print("----------")
# employee_file = open("reading_files.txt", "w")  # r is read ; w is write, if w then clear file
#
# print(employee_file.readable())
#
# employee_file.close()
```

[Link To Mike Dane YouTuBe](https://www.youtube.com/watch?v=jC7CPoSDNzE&list=PLLAZ4kZ9dFpMMs5lskzBApYXn0bl7emsW&index=28)

<iframe id="ytplayer" type="text/html" width="640" height="360"
  src="https://www.youtube.com/embed/jC7CPoSDNzE?origin=https://www.youtube.com/watch?v=jC7CPoSDNzE&list=PLLAZ4kZ9dFpMMs5lskzBApYXn0bl7emsW&index=28"
  frameborder="0"></iframe>