---
title: "Learning Python 17"
subtitle: "_2019-03-01-learning-python-17"
date: 2019-03-01T18:17:00+08:00
author: "Cookie Xu"
tags: ["python"]
categories: ["python"]
from: "http://sillyhatxu.com"
draft: false
---

# Class Object

[Link to my github](https://github.com/sillyhatxu/learning-python/tree/master/class_object) (This is learning code.)

> Question.py
```
class Question:

    def __init__(self, prompt, answer):
        self.prompt = prompt
        self.answer = answer

```

> Stucent.py
```
class Student:

    def __init__(self, name, major, gpa, is_on_probation):
        self.name = name
        self.major = major
        self.gpa = gpa
        self.is_on_probation = is_on_probation

    def on_honor_roll(self):
        if self.gpa >= 3.5:
            return True
        else:
            return False

```

> app.py
```
from class_object.Student import Student

student1 = Student("Jim", "Business", 3.8, False)
student2 = Student("Pam", "Art", 2.5, True)

print(student1.gpa)
print(student2.gpa)

print(student1.on_honor_roll())
print(student2.on_honor_roll())

from class_object.Question import Question

question_prompts = [
    "What color are apples? \n(a) Red/Green \n(b) Purple \n(c) Orange\n\n",
    "What color are Bananas? \n(a) Teal \n(b) Magenta \n(c) Yellow\n\n",
    "What color are strawberries? \n(a) Yellow\n(b) Red \n(c) Blue\n\n",
]

questions = [
    Question(question_prompts[0], "a"),
    Question(question_prompts[1], "c"),
    Question(question_prompts[2], "b"),
]


def run_test(questions):
    score = 0
    for question in questions:
        answer = input(question.prompt)
        if answer == question.answer:
            score += 1
    print("You got " + str(score) + "/" + str(len(questions)) + " correct")

run_test(questions)
```

[Mike Dane - Class Object 1](https://www.youtube.com/watch?v=SgQhwtIoQ7o&list=PLLAZ4kZ9dFpMMs5lskzBApYXn0bl7emsW&index=32)

<iframe id="ytplayer" type="text/html" width="640" height="360"
  src="https://www.youtube.com/embed/SgQhwtIoQ7o?origin=https://www.youtube.com/watch?v=SgQhwtIoQ7o&list=PLLAZ4kZ9dFpMMs5lskzBApYXn0bl7emsW&index=32"
  frameborder="0"></iframe>

[Mike Dane - Class Object 2](https://www.youtube.com/watch?v=yVR8241iIac&list=PLLAZ4kZ9dFpMMs5lskzBApYXn0bl7emsW&index=33)
  
<iframe id="ytplayer" type="text/html" width="640" height="360"
  src="https://www.youtube.com/embed/yVR8241iIac?origin=https://www.youtube.com/watch?v=yVR8241iIac&list=PLLAZ4kZ9dFpMMs5lskzBApYXn0bl7emsW&index=33"
  frameborder="0"></iframe>