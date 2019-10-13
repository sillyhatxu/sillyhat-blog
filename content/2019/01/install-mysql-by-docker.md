---
title: "Install Mysql by Docker"
subtitle: "2019-01-28-install-mysql-by-docker"
date: 2019-01-28T16:31:36+08:00
author: "Cookie Xu"
tags: ["docker","mysql"]
categories: ["database"]
from: "http://sillyhatxu.com"
draft: false
---

```

docker run -p 3306:3306 --name mysql -v /Users/shikuanxu/Documents/Docker/Mysql/config:/etc/mysql/conf.d -v /Users/shikuanxu/Documents/Docker/Mysql/logs:/logs -v /Users/shikuanxu/Documents/Docker/Mysql/data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=root -d mysql:5.6

Username:  root
Password: root
docker run -p 3306:3306 --name mysql -v /Users/shikuanxu/Documents/Docker/Mysql/logs:/logs -v /Users/shikuanxu/Documents/Docker/Mysql/data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=root -d mysql:8.0.13
docker exec -it 69a27ffbc6d2 bash
mysql -u root -p

```