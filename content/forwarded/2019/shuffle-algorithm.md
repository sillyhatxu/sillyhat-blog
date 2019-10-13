---
title: "Shuffle Algorithem"
subtitle: "洗牌算法"
date: 2019-04-02T23:13:11+08:00
author: "one_zheng"
tags: ["golang","algorithm"]
categories: ["golang"]
from: "https://www.jianshu.com/p/a657919ecf9d?utm_campaign=studygolang.com&utm_medium=studygolang.com&utm_source=studygolang.com"
draft: false
---

## 1. Fisher–Yates Shuffle（费雪耶兹 随机置乱算法）

算法思想就是从原始数组中随机抽取一个新的数字到新数组中。算法英文描述如下：

* Write down the numbers from 1 through N.
* Pick a random number k between one and the number of unstruck numbers remaining (inclusive).
* Counting from the low end, strike out the kth number not yet struck out, and write it down elsewhere.
* Repeat from step 2 until all the numbers have been struck out.
* The sequence of numbers written down in step 3 is now a random permutation of the original numbers.

**算法描述：**

Let X1, X2…. XN be the set of N numbers to be shuffled.

1. Set j to N
2. Generate a random number R. (uniformly distributed between 0 and 1)
3. Set k to (jR+1). k is now a random integer, between 1 and j.
4. Exchange Xk and Xj
5. Decrease j by 1.
6. If j > 1, return to step 2.

golang代码实现如下：

```
package shuffle

import (
   "fmt"
)

func FisherYatesShuffle(array []int) []int {
   newArray := make([]int, 0)
   for {
   Loop:
       length := len(array)

       if length == 0 {
           break
       }
       for i := 0; i <= length; i++ {
           p := RandInt64(0, int64(length))
           fmt.Printf("每次生成的随机数：%d\n", p)
           newArray = append(newArray, array[p])
           array = append(array[0:p], array[p+1:]...)
           goto Loop
       }
   }
   return newArray
}

package shuffle

import (
   "fmt"
   "testing"
)

func TestFisherYatesShuffle(t *testing.T) {
   array := []int{1, 2, 3, 4, 5}
   shuffle := FisherYatesShuffle(array)
   fmt.Println(shuffle)
}

```

运行结果

```
每次生成的随机数：0
生成的新数组：[1]
每次生成的随机数：3
生成的新数组：[1 5]
每次生成的随机数：0
生成的新数组：[1 5 2]
每次生成的随机数：1
生成的新数组：[1 5 2 4]
每次生成的随机数：0
生成的新数组：[1 5 2 4 3]
```

## 2. Knuth-Durstenfeld Shuffle

Knuth 和Durstenfeld 在Fisher 等人的基础上对算法进行了改进。**每次从未处理的数据中随机取出一个数字，然后把该数字放在数组的尾部，即数组尾部存放的是已经处理过的数字。**这是一个原地打乱顺序的算法，算法时间复杂度也从Fisher算法的O(n2)提升到了O(n)。

golang代码实现如下：

```
package shuffle

import (
   "fmt"
   "math/rand"
)

func KnuthDurstenfeldShuffle(array []int) []int {
   for i := len(array) - 1; i >= 0; i-- {
       p := RandInt64(0, int64(i))
       fmt.Printf("每次生成的随机数：%d\n", p)
       a := array[i]
       array[i] = array[p]
       array[p] = a
       fmt.Println("置换后的数组为：", array)
   }
   return array
}

// RandInt64 区间随机数
func RandInt64(min, max int64) int64 {
   if min >= max || max == 0 {
       return max
   }
   return rand.Int63n(max-min) + min
}



package shuffle

import (
   "fmt"
   "testing"
)

func TestKnuthDurstenfeldShuffle(t *testing.T) {
   array := []int{1, 2, 3, 4, 5}
   shuffle := KnuthDurstenfeldShuffle(array)
   fmt.Println(shuffle)
}

```

运行结果

```
每次生成的随机数：2
置换后的数组为： [1 2 5 4 3]
每次生成的随机数：1
置换后的数组为： [1 4 5 2 3]
每次生成的随机数：1
置换后的数组为： [1 5 4 2 3]
每次生成的随机数：0
置换后的数组为： [5 1 4 2 3]
每次生成的随机数：0
置换后的数组为： [5 1 4 2 3]
[5 1 4 2 3]
```

从运行结果可以看到随着算法的运行，可供选择的随机数范围在减小，与此同时此时数组里的元素更趋向于无序。
潜在的偏差：
 在实现Fisher-Yates费雪耶兹随机置乱算法时，可能会出现偏差，尽管这种偏差是非常不明显的。原因：一是实现算法本身出现问题；二是算法基于的随机数生成器。

* 实现上每一种排列非等概率出现

> 在算法流程里 j 的选择范围是从 0...i-1 ；这样Fisher-Yates算法就变成了Sattolo算法，共有（n-1)!种不同的排列，而非n!种排列。
>
> j在所有0...n的范围内选择，则一些序列必须通过n^n种排列才可能生成。


* Fisher-Yates费雪耶兹算法使用的随机数生成器是PRNG伪随机数生成器

这样的一个伪随机数生成器生成的序列，完全由序列开始的内部状态所确定，由这样的一个伪随机生成器驱动的算法生成的不同置乱不可能多于生成器的不同状态数，甚至当可能的状态数超过了排列，不正常的从状态数到排列的映射会使一些排列出现的频率超过其他的。所以状态数需要比排列数高几个量级。

很多语言或者库函数内建的伪随机数生成器只有32位的内部状态，意味着可以生成2^32种不同的序列数。如果这样一个随机器用于置乱一副52张的扑克牌，只能产生52！ = 2^225.6种可能的排列中的一小部分。对于少于226位的内部状态的随机数生成器不可能产生52张卡片的所有的排列。

伪随机数生成器的内部状态数和基于此生成器的每种排列都可以生成的最大线性表长度之间的关系：

![](https://lh3.googleusercontent.com/bd3mOEnIvEcaG9pPkvo_LenFtwrP38yJqKzdvK9cYqCwV2YbFjwqIG6Kk6IzoRu8cYhQ7fna3W5bTBhyR8yaZ0vQTzpNRQELe58atilKywd9Pc9VbutEohWURY6NJtBUiFD8iGWviCgir7SGaYdQx4eJVOXcGZu8G4HLHflpoOHki8fY6NOZPCl6BZAKTckqzDDcezLAsaUznCQ4UMYTsVYDjnmazyCmn9rJPL4uQ7vcPeEMasOCYptMCkPU6NfSGc0CmUAsK1AL0QItmhn3vhd3p_P16YxU7fDeIKR4VY8XO4tifqV_nXXjOKEhZWEwGoKX5Be2GoC7lX1GWRAdq5V7RC0NTvRzzTUnKGZkMudamCyP6HM-5VbtpN531Y01fWMnCaaiCYWKupJDrUnB0UVzFAXXtd3fkPnxvmF9oDgiJtg2KFlY4aFU0bi-ijDkrudqDeCRGoz8umELkWzi5Ui3mJnyHA2y4dnRjfIbXHCButbvRy0bgSjFLfKGOsf6bJWu8x3RL9w8mssxAdefU7vMTCOvdKwqjwYdf13kQ3qsl3sWiDAGH59zlSqu2v11tcwTyZ-6Sfzd-Ng6lf7XppYuSvImb7PuNfRpek3rUi1xrM-DZp5UbF8pJ6YBu15SfM_OsC_NitGDcbdczH1eq_BgilBWFGKL_GnU6s5OeFkbM-_hpwV61zNS5Dw3J6GPtDXJdpmLEO-JJkmwwqDD2yc5=w248-h603-no)

## 3.Inside-Out Algorithm

Knuth-Durstenfeld Shuffle 是一个in-place算法，原始数据被直接打乱，有些应用中可能需要保留原始数据，因此需要开辟一个新数组来存储打乱后的序列。Inside-Out Algorithm 算法的基本思想是设一游标i从前向后扫描原始数据的拷贝，在[0, i]之间随机一个下标j，然后用位置j的元素替换掉位置i的数字，再用原始数据位置i的元素替换掉拷贝数据位置j的元素。其作用相当于在拷贝数据中交换i与j位置处的值。
