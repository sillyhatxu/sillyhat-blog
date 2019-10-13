---
title: "Learning Xpath"
subtitle: "2019-03-03-learning-xpath"
date: 2019-03-03T14:42:26+08:00
author: "Cookie Xu"
tags: ["xpath","python"]
categories: ["tools"]
from: "http://sillyhatxu.com"
draft: false
---

# XPath Tutorial

## Selecting Nodes

XPath uses path expressions to select nodes in an XML document. The node is selected by following a path or steps. The most useful path expressions are listed below:

|  Expression   |      Description       |         中文            |
|:--------------|:-----------------------|:-----------------------|
|nodename       |Selects all nodes with the name "nodename"|选择所有名字为"nodename"的节点|
|/	            |Selects from the root node|从根节点搜索|
|//	            |Selects nodes in the document from the current node that match the selection no matter where they are|从全文所搜|
|.	            |Selects the current node|选择当前节点|
|..	            |Selects the parent of the current node|选择当前节点的父节点|
|@	            |Selects attributes|选择属性|
|*	            |xxxxxxxxxxxxxxxxxx|匹配任何元素节点|
|*@	            |xxxxxxxxxxxxxxxxxx|匹配任何属性节点|


#### |	:   [Computes two node-sets]   //book/title | //book/price 选取book所有title和price元素  

## eg:
```
from scrapy.selector import Selector

body = """
<html>
   <head>
      <title>Scrapy Tutorial By Cookie</title>
   </head>
   <body>
      <div class='links-div' name='div-name1'>This is div</div>
      <p>This is PPPPPPPP</p>
      <div class='links' name='div-name2'>
         <a href='one.html'>Link 1<img src='image1.jpg'/></a>
         <a href='two.html'>Link 2<img src='image2.jpg'/></a>
         <a href='three.html'>Link 3<img src='image3.jpg'/></a>
         <div class='div-1'>This is div1 div1 div1</div>
      </div>
      <ul class='test-ul'>
         <li><a href='four.html'>Link 4</a></li>
         <li><a href='five.html'>Link 5</a></li>
      </ul>
      <div class='links' name='div-name3'>
         <a href='six.html'>Link 6</a>
         <a href='seven.html' name='a-h-name'>Link 7</a>
         <a href='eight.html'>Link 8</a>
         <li><a href='nine.html'>Link 9</a></li>
      </div>
   </body>
</html>
"""

# nodename	Selects all nodes with the name "nodename"
# /	        Selects from the root node
# //	    Selects nodes in the document from the current node that match the selection no matter where they are
# .	        Selects the current node
# ..	    Selects the parent of the current node
# @	        Selects attributes
# *	        匹配任何元素节点
# *@	    匹配任何属性节点
# |	        //book/title | //book/price 选取book所有title和price元素
selector = Selector(text=body)

# 1. 从根节点搜索html
# 2. 以html为根节点,搜索body
# 3. 以body为根节点搜索div
tag_value = selector.xpath("/html/body/div").extract()  # 返回数组长度为 2  有两个div
print('selector.xpath("/html/body/div").extract() : ')
print(tag_value)  # print -> ['<div class="links-div" name="haha">...', '<div class="links" name="haha">\n...</div>']
print("--------------------------------------------------------------------------------------------------------------")

tag_value = selector.xpath("/html/body/div/text()").extract()[0]  # 数组中第一个div的内容  This is div
print('selector.xpath("/html/body/div/text()").extract()[0]')
print(tag_value)  # print -> This is div
print("--------------------------------------------------------------------------------------------------------------")

# 从根节点搜索 <a> 标签,因为根节点只有<html>这个标签，所以搜索结果为空
tag_value = selector.xpath("/a").extract()  # 返回 []
print('selector.xpath("/a").extract()')
print(tag_value)  # print -> []
print("--------------------------------------------------------------------------------------------------------------")

# 获取 <div> 下的 <a> 和 <li> 下的 <a>
tag_value = selector.xpath("//div/a | //li/a").extract()
print('selector.xpath("//div/a | //li/a").extract()')
for index, tag in enumerate(tag_value):
    print(index, tag)
print("--------------------------------------------------------------------------------------------------------------")

# 从全文搜索 <a> 标签，查询到3个结果
tag_value = selector.xpath("//a").extract()  # 返回 [<a>,<a>,<a>] 3个结果
print('selector.xpath("//a").extract()')
print(tag_value)  # print -> ['<a href="one.html">', '<a href="two.html">', '<a href="three.html">']
print("--------------------------------------------------------------------------------------------------------------")

# 获取全文 <a> 中 href 的 属性值
print('for loop : selector.xpath("//a/@href").extract()')
for index, tag in enumerate(selector.xpath("//a/@href").extract()):
    print(index, tag)
# 0 one.html
# 1 two.html
# 2 three.html
# 3 four.html
# 4 five.html
# 5 six.html
# 6 seven.html
# 7 eight.html
# 8 nine.html
print("--------------------------------------------------------------------------------------------------------------")

# 从整个页面中搜索 <title> 标签，并取其中内容
tag_value = selector.xpath("//title/text()").extract()
print(tag_value)  # print -> ['Scrapy Tutorial By Cookie']
print("--------------------------------------------------------------------------------------------------------------")

# 从整个页面中搜索 <title> 标签，并取其中内容，并只取第一个元素
tag_value = selector.xpath("//title/text()").extract_first()
print(tag_value)  # print -> Scrapy Tutorial By Cookie
print("--------------------------------------------------------------------------------------------------------------")

# 从所有 <div> 中寻找 <a href="six.html"> 并取出内容
tag_value = selector.xpath('//div/a[@href="six.html"]/text()')
print(tag_value)    # print -> [<Selector xpath='//div/a[@href="six.html"]/text()' data='Link 6'>]
print(tag_value[0].extract())   # print -> Link 6
print("--------------------------------------------------------------------------------------------------------------")


# 取出最后一个 <div> 这一层子节点中所有 <a> 的href值
tag_value = selector.xpath('//div[last()]/a/@href').extract()
print(tag_value)    # print -> ['six.html', 'seven.html', 'eight.html']

# 取出最后一个 <div> 下所有 <a> 的href值
tag_value = selector.xpath('//div[last()]//a/@href').extract()
print(tag_value)    # print -> ['six.html', 'seven.html', 'eight.html', 'nine.html']

# 取出最后一个 <div> 下所有 <a> 的内容
tag_value = selector.xpath('//div[last()]//a/text()').extract()
print(tag_value)    # print -> ['Link 6', 'Link 7', 'Link 8', 'Link 9']
print("--------------------------------------------------------------------------------------------------------------")

# 取出最后一个 <div> 下所有最后一个 <a> 的内容和所有子标签中最后一个 <a> 的内容
tag_value = selector.xpath('//div[last()]//a[last()]/text()').extract()
print(tag_value)    # print -> ['Link 8', 'Link 9']
print("--------------------------------------------------------------------------------------------------------------")

# 取出最后一个 <div> 下最后一个 <a> 的内容
tag_value = selector.xpath('//div[last()]/a[last()]/text()').extract()
print(tag_value)    # print -> ['Link 8']
print("--------------------------------------------------------------------------------------------------------------")

# 取出最后一个 <div> 下最后一个 <a> 的父节点
tag_value = selector.xpath('//div[last()]/a[last()]/..').extract()
print(tag_value)    # print -> ['<div class="links" name="div-name3">\n   ...  </div>']
print("--------------------------------------------------------------------------------------------------------------")
```


|  Expression   |      Description       |         中文            |
|:--------------|:-----------------------|:-----------------------|
|child          |xxxxxxxxxxxxxx|子节点|
|node()	        |xxxxxxxxxxxxxx|节点|
|name()         |xxxxxxxxxxxxxx|得到tag本身的name  eg: div ul  a|


```
from scrapy.selector import Selector

body = """
<html>
   <head>
      <title>Scrapy Tutorial By Cookie</title>
   </head>
   <body>
      <div class='links-div' name='div-name1'>This is div</div>
      <p>This is PPPPPPPP</p>
      <div class='links' name='div-name2'>
         <a href='one.html'>Link 1<img src='image1.jpg'/></a>
         <a href='two.html'>Link 2<img src='image2.jpg'/></a>
         <a href='three.html'>Link 3<img src='image3.jpg'/></a>
         <div class='div-1'>This is div1 div1 div1</div>
      </div>
      <ul class="postList">
        <li name="aaa-aaa" id="aaa">writers cannot be starved</li>
        <li name="bbb-bbb" id="bbb">readers cannot be starved</li>
        <li name="ccc-ccc" id="ccc">no thread shall be allowed to starve</li>
        <li><a href='xxx1.html'>xxx-content-1</a></li>
        <li><a href='xxx2.html'>xxx-content-2</a></li>
        <div class='links' name='div-name3'>
            <a href='six.html'>Link 6</a>
            <a href='seven.html' name='a-h-name'>Link 7</a>
            <a href='eight.html'>Link 8</a>
            <li><a href='nine.html'>Link 9</a></li>
        </div>
        <li><a href='xxx3.html'>xxx-content-3</a></li>
        <li><a href='xxx4.html'>xxx-content-4</a></li>
        <li><a href='xxx5.html'>xxx-content-5</a></li>
        <li><a href='xxx6.html'>xxx-content-6</a></li>
        <li><a href='xxx7.html'>xxx-content-7</a></li>
      </ul>
   </body>
</html>
"""

# nodename	Selects all nodes with the name "nodename"
# /	        Selects from the root node
# //	    Selects nodes in the document from the current node that match the selection no matter where they are
# .	        Selects the current node
# ..	    Selects the parent of the current node
# @	        Selects attributes
# *	        匹配任何元素节点
# *@	    匹配任何属性节点
# |	        //book/title | //book/price 选取book所有title和price元素
selector = Selector(text=body)


# 找出 <ul> 下所有的 <li> 的兄弟节点
tag_value = selector.xpath("//ul/child::li").extract()
print('selector.xpath("/html/body/div").extract() : ')
for index, tag in enumerate(tag_value):
    print(index, tag)
# 0 <li name="aaa-aaa" id="aaa">writers cannot be starved</li>
# 1 <li name="bbb-bbb" id="bbb">readers cannot be starved</li>
# 2 <li name="ccc-ccc" id="ccc">no thread shall be allowed to starve</li>
# 3 <li><a href="xxx1.html">xxx-content-1</a></li>
# 4 <li><a href="xxx2.html">xxx-content-2</a></li>
# 5 <li><a href="xxx3.html">xxx-content-3</a></li>
# 6 <li><a href="xxx4.html">xxx-content-4</a></li>
# 7 <li><a href="xxx5.html">xxx-content-5</a></li>
# 8 <li><a href="xxx6.html">xxx-content-6</a></li>
# 9 <li><a href="xxx7.html">xxx-content-7</a></li>#
print("--------------------------------------------------------------------------------------------------------------")


# 找出 <ul> 下所有的 子节点
tag_value = selector.xpath("//ul/child::*").extract()
for index, tag in enumerate(tag_value):
    print(index, tag)
# 0 <li name="aaa-aaa" id="aaa">writers cannot be starved</li>
# 1 <li name="bbb-bbb" id="bbb">readers cannot be starved</li>
# 2 <li name="ccc-ccc" id="ccc">no thread shall be allowed to starve</li>
# 3 <li><a href="xxx1.html">xxx-content-1</a></li>
# 4 <li><a href="xxx2.html">xxx-content-2</a></li>
# 5 <div class="links" name="div-name3">
#       <a href="six.html">Link 6</a>
#       <a href="seven.html" name="a-h-name">Link 7</a>
#       <a href="eight.html">Link 8</a>
#       <li><a href="nine.html">Link 9</a></li>
#   </div>
# 6 <li><a href="xxx3.html">xxx-content-3</a></li>
# 7 <li><a href="xxx4.html">xxx-content-4</a></li>
# 8 <li><a href="xxx5.html">xxx-content-5</a></li>
# 9 <li><a href="xxx6.html">xxx-content-6</a></li>
# 10 <li><a href="xxx7.html">xxx-content-7</a></li>
print("--------------------------------------------------------------------------------------------------------------")

# 找出 <div name='div-name2'> 下所有的 子元素,包括 换行符
tag_value = selector.xpath("//div[@name='div-name2']/node()").extract()
for index, tag in enumerate(tag_value):
    print(index, tag)
# 0   这里其实有换行符
# 1 <a href="one.html">Link 1<img src="image1.jpg"></a>
# 2   这里其实有换行符
# 3 <a href="two.html">Link 2<img src="image2.jpg"></a>
# 4   这里其实有换行符
# 5 <a href="three.html">Link 3<img src="image3.jpg"></a>
# 6   这里其实有换行符
# 7 <div class="div-1">This is div1 div1 div1</div>
# 8   这里其实有换行符
print("--------------------------------------------------------------------------------------------------------------")

# 取出 <div name='div-name2'> 子元素所有内容,其中 string(.) 这个一定要单独拿出来写,否则报错
tag_value = selector.xpath("//div[@name='div-name2']")
print(tag_value.xpath("string(.)").extract())
# print -> ['\n         Link 1\n         Link 2\n         Link 3\n         This is div1 div1 div1\n      ']
print("--------------------------------------------------------------------------------------------------------------")


# 取出 <div name='div-name2'> 这个元素的name -> div
tag_value = selector.xpath("//div[@name='div-name2']")
print(tag_value.xpath("name()").extract())  # print ['div']
print("--------------------------------------------------------------------------------------------------------------")

# 找出id=content_container的div
body = response.xpath('//div[@id="content_container"]').extract()
```