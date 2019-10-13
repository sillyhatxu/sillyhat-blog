---
title: "Dart Basic Grammar"
subtitle: "2019-03-13-dart-basic-grammar"
date: 2019-03-13T11:48:27+08:00
author: "Cookie Xu"
tags: ["Flutter","Dart"]
categories: ["front-end"]
from: "http://sillyhatxu.com"
draft: false
---

## 变量

```
void main() {
  var name = "flyou";
  String name1 = "flyou";

  var age = 25;
  int age1 = 25;

  void main() {
    println(name);
    println(name1);
    println(age);
    println(age1);
  }
}
```

控制台输出：

>flyou flyou 25 25
 
在Dart中可以使用关键字 var 声明一个变量，Dart编译器会根据变量的值自动推断出变量的类型和使用已知类型声明变量的是一样的。

main()方法是Dart的入口方法，和JAVA中的main方法很类似。

## 常量

使用final和const关键字都可以声明一个常量，但是与final不同的是const是编译期常量，也就是说在编译器编译时使用const声明的常量必须是已经确定的值。使用final 和const修饰的变量不可以从新赋值

## 基本类型

* numbers
* strings
* booleans
* lists (和数组是一个概念)
* maps 字典
* runes ( Unicode 字符串)
* symbols 符号

下面看下简单的例子
```
void main() {
  var str1 = "str1";
  var num1 = 1;
  var double1 = 10.2;
  var flag1 = false;
  var list1 = [1, 3, 5, 7, 9];
  var map1 = {"name": "flyou", "age": 12};
  println(str1);
  println(num1);
  println(double1);
  println(flag1);
  println(list1);
  println(map1);
}

```
控制台输出：
> str1
>
> 1
>
> 10.2
>
> false
>
> [1, 3, 5, 7, 9]
>
> {name: flyou, age: 12}
>
> str1
>
> 1
>
> 10.2
>
> false
>
> [1, 3, 5, 7, 9]
>
> {name: flyou, age: 12}


## 方法（函数）

Dart是完全面向对象的语言，函数在Dart中也是一种对象，也就是说函数也可以像其他参数一样在函数间传递。

```
bool isEvenNumber(int num) {
  return num % 2 == 0;
}

void main() {
  print(isEvenNumber(11));
}

```
控制台输出：

false
上面是函数定义的最基本的方法，和其他语言定义函数的方法基本一致。

对于只包含一个表达式的函数可以简写为以下的方式

**bool isEvenNumber(int num) => num % 2 == 0;**

可以使用=>替换原来的 return和{} 类似 => expr{ return expr; }


## 可选参数

```
void printStr1([String name, int age]) {
  print("Name is $name age is $age");
}
```

在调用这个函数的时候我们可以选择只输入name或者只输入age，当然上面的函数如果我们只输入一个函数值另一个函数的值就会被赋为null
```
printStr1("flyou");
```
输出：

> Name is flyou age is null

如果我输入一个int类型的值，Dart会将它自动赋值给第一个符合该类型的入参上

```
printStr1(25);
```
输出： 

> Name is null age is 25

如果函数有多个相同类型的函数参数，这个时候只输入一个值，它默认会赋值给第一个参数如：

```
void printStr2([String name,String sex,String address]){
    print("Name is $name age is $sex address is $address");
}
```

> printStr2("男");

输出：

> Name is 男 sex is null address is null

当然这并不是我们想要的，所以就需要看下可选择名称的函数

## 具名函数

```
void printStr3({String name,int age}){
  print3("Name is $name age is $age");
}
```

使用{}包括函数参数就可以把原来的函数变成可选择名称函数，在调用时可以直接指定参数名传值。 当然，我们也可以选择只传入一个参数，另一个参数在使用的地方做判断或者使用函数的默认值（下面会说）

```
printStr4(name: "flyou");
```

输出：

> Name is flyou age is null

同样如果有多和相同类型的入参，我们可以根据声明参数名调用的方式来调用函数如：

```
void printStr3({String name,String sex,String address}){
  print("Name is $name sex is $sex address is $address");
}
printStr3(sex: "男");
```

输出：

> Name is null sex is 男 address is null

当然，就算我们少输入了一个参数但是每次都给我输出个null也非常的不友好啊，当然在Dart中你可以使用参数默认值来解决这个问题。

## 函数参数的默认值

函数的默认值，顾名思义就是你就算不输入这个参数我也会默认给你一个值的，当然前提是这个参数你可以省略的前提下（上面两类函数啊）

可选参数

```
void printStr1([String name,int age=25]){
  print("Name is $name age is $age");
}
printStr2("男");
```

输出：

> Name is 男 sex is null address is 25

具名函数

```
void printStr3({String name,int age=25}){
  print3("Name is $name age is $age");
}

printStr3("男");
```

输出：

> Name is 男 sex is null address is 25

对象传递
函数可以把自己作为一个对象传递给另外一个函数

```
void printStr4(String str) {
  print(str);
}

var listStr=["hello ","world","haha","!"];
listStr.forEach(printStr4);
```

输出：

hello 
world
haha
!
