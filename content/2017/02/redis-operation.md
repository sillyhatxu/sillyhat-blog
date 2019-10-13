---
title: "Redis Operation"
subtitle: "2017-02-28-redis-operation"
date: 2017-02-28T16:42:47+08:00
author: "Cookie Xu"
tags: ["redis"]
categories: ["database"]
from: "http://sillyhatxu.com"
draft: false
---

进入客户端
[root@localhost ~]# redis-cli
1、存储数据
127.0.0.1:6379> set foo bar
OK
2、提取数据
127.0.0.1:6379> get foo
"bar"
3、删除数据
127.0.0.1:6379> del foo
(integer) 1
4、验证数据
127.0.0.1:6379> exists foo
(integer) 0
5、递增序列 incr(最大数字为  9223372036854775807)
127.0.0.1:6379> set test 7
OK
127.0.0.1:6379> incr test
(integer) 8
127.0.0.1:6379> incr test
(integer) 9
127.0.0.1:6379> get test
"9"
5、增加指定的数字 incrby key N
127.0.0.1:6379> set haha 1
OK
127.0.0.1:6379> incrby haha 5
(integer) 6
6、减少指定的数字 drcr key      decrby key N
127.0.0.1:6379> decr haha
(integer) 5
127.0.0.1:6379> decrby haha 2
(integer) 3
7、集群模式连接
./redis-cli -c -h 192.168.233.140 -p 7001
8、清空数据库
清空所有数据库：FLUSHALL
清空一个数据库：FLUSHDB
