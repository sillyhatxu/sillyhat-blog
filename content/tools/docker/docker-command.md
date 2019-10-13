---
title: "Docker Command"
subtitle: "2018-03-28-install-elk"
date: 2018-03-28T16:28:08+08:00
author: "Cookie Xu"
tags: ["Docker"]
categories: ["tools"]
from: "http://sillyhatxu.com"
draft: false
---

```
查看进程（相当于 ps -ef grep）
$ docker ps

进入Docker Container
$ docker exec -it 0f36dd233907 bash


docker exec -it bd91e0d7fe64 curl -X POST http://localhost:8080/stocks \
-d '[
{
"supplierId":"S28321967847662545421738546126",
"productId":"P3454633561704515539",
"variationId":"PV8175989531545614423",
"quantity":10
}
]'


tail -f api.log.2019-04-11 -n 20

docker logs -f bd91e0d7fe64 —tail=20


$ docker images
 
$ docker info
 
查看docker版本
$ docker version
 
docker -H 10.60.6.109 ps
 
docker -H 10.60.6.109 logs -f 05fcf1e0b0fe

进入swarm模式
$ docker swarm init
 
部署
$ docker stack deploy -c docker-compose.yml getstartedlab
 
显示network
$ docker network ls
 
显示服务
$ docker service ps getstartedlab_web
 
移除服务
$ docker stack rm getstartedlab
 
显示服务列表
$ docker service ls
 
离开swarm模式
$ docker swarm leave --force
 
 
 
Delete all containers
docker rm $(docker ps -a -q)
 
Delete all images
docker rmi $(docker images -q)
强制删除image
docker rmi -f $(docker images -q)
 
使用Dockerfile build为image
docker build -t username/repository:tag .
指定Dockerfile builde为image
docker build -f Dockerfile-debug -t xushikuan/sillyhat.cloud.customer:tag-debug .
 
远程断点运行
docker run -p 12080:12080 -p 5005:5005 username/repository:tag
 
 
查看instance所在的slave机器
docker service ps ocb-syncer


查看指定时间后的日志，只显示最后100行：
$ docker logs -f -t --since="2018-02-08" --tail=100 CONTAINER_ID
查看最近30分钟的日志:
$ docker logs --since 30m CONTAINER_ID
查看某时间之后的日志：
$ docker logs -t --since="2018-02-08T13:23:37" CONTAINER_ID
查看某时间段日志：
$ docker logs -t --since="2018-02-08T13:23:37" --until "2018-02-09T12:23:37" CONTAINER_ID

```