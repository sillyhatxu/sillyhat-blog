---
title: "Run Docker Image From Gitlab"
subtitle: "2018-04-26-run-docker-image-from-gitlab"
date: 2018-04-26T15:12:29+08:00
author: "Cookie Xu"
tags: ["git","gitlab"]
categories: ["tools"]
from: "http://sillyhatxu.com"
draft: false
---

**docker run**
```
sudo docker run --detach \
    --hostname gitlab.xushikuan.com \
    --publish 443:443 --publish 80:80 --publish 2222:22 \
    --name gitlab \
    --restart always \
    --env GITLAB_OMNIBUS_CONFIG="gitlab_rails['backup_keep_time'] = 60;gitlab_rails['manage_backup_path'] = true;gitlab_rails['backup_path'] = '/var/opt/gitlab/backups'" \
    --volume /home/ubuntu/gitlab/config:/etc/gitlab \
    --volume /home/ubuntu/gitlab/logs:/var/log/gitlab \
    --volume /home/ubuntu/gitlab/data:/var/opt/gitlab \
    gitlab/gitlab-ce:11.3.0-rc6.ce.0

```