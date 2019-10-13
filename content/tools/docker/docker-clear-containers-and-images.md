---
title: "Docker Clear Containers And Images"
subtitle: "2018-03-28-install-elk"
date: 2018-03-28T16:28:08+08:00
author: "Cookie Xu"
tags: ["Docker"]
categories: ["tools"]
from: "http://sillyhatxu.com"
draft: false
---

```
docker image prune -a
```

> 深度清理
```
docker system prune -a
```

> Delete all containers

    docker rm $(docker ps -a -q)
    
> Delete all images

    docker rmi $(docker images -q)
    docker rmi -f $(docker images -q)
    
    
    
> Other command

    docker container ls -a

    docker rm -v $(docker images --filter "dangling=true" -q --no-trunc)


    docker rmi $(docker images --filter "dangling=true" -q --no-trunc)