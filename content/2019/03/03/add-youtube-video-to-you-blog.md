---
title: "Add Youtube Video to You Blog"
subtitle: "2019-03-03-add-youtube-video-to-you-blog"
date: 2019-03-03T12:22:10+08:00
author: "Cookie Xu"
tags: ["html"]
categories: ["front-end"]
from: "http://sillyhatxu.com"
draft: false
---

# Embedded Players

I want to put this video on my website.

This is ORIGIN_LINK.
```
https://www.youtube.com/watch?v=sfhhk8m4mcQ&list=PLLAZ4kZ9dFpMMs5lskzBApYXn0bl7emsW&index=1
```

This is VIDEO_ID<br>
![Python Interpreter](https://lh3.googleusercontent.com/DpxvuRvjlDDNPueo3Ktc9SPJSo8ejZiNOKXqRprj0z0ftHyMv2bZ0C4AOULTp7H_Xdn20Vzwwt420jo32MpJzarghanJsRoHvmzr7O4EvBWlw3WZaXa5qhJxgQNZlOdSzjwympc9vgju9tPxVSTGsO8IE6fzmnwPcnJZLShNM2geHY0kJ99TZbocKVW-cu2jsNIvY15O4ecu9xiig4DLx7VENx0Aim6GWYqyrEzDXjifxHgyP-IhTuzQsq_yM6_V0onCtSeuAapUIY8JWL8KqmzX7gPf8LmRAngcrmgKVfYrJ_XL9tGfx4ODpQH_qbJCyqdMzYm8rIx4ftsOR3ROLEOcTPj7I__MSq_oJNWMRxq9--TAKHUFcZlCvKU1ltPV6-4gv0zg_QmXnJa2nquIOAMH4DPx1d0XoaJSEMJgEndcIgM8x68sk2LRXOCHpyEX04eu2AiJTWtKs79HmNHMugAQdyoI9qWNT49ijqqsLR-28-HHmD0c_4o6YVvpl3fozbIOAQztktRsiVMmzltIqfas2Q0arWqyHoW_7Ec4DHIXg2mi91fwayFOd0czYZlqVKwYyj9bWaS6ELILrHExpi2mE3yzDakALzpDz9yoqhcXKIu5VhxjIxN5kONblYQPkY5FsNyKkAR_TZvyroclGCL1Y_xaghrSLlXqeZR79wkGW6PSReBbV4OhO66_JjAqWhdlGdzGMpglBe1U8rqhAuWS=w928-h145-no)


```
<iframe id="ytplayer" type="text/html" width="640" height="360"
  src="https://www.youtube.com/embed/{VIDEO_ID}?origin={ORIGIN_LINK}"
  frameborder="0"></iframe>
```

For example:

```
<iframe id="ytplayer" type="text/html" width="640" height="360"
  src="https://www.youtube.com/embed/sfhhk8m4mcQ?origin=https://www.youtube.com/watch?v=sfhhk8m4mcQ&list=PLLAZ4kZ9dFpMMs5lskzBApYXn0bl7emsW&index=1"
  frameborder="0"></iframe>
```

Result:

<iframe id="ytplayer" type="text/html" width="640" height="360"
  src="https://www.youtube.com/embed/sfhhk8m4mcQ?origin=https://www.youtube.com/watch?v=sfhhk8m4mcQ&list=PLLAZ4kZ9dFpMMs5lskzBApYXn0bl7emsW&index=1"
  frameborder="0"></iframe>

Other Params:

[Link to YouTuBe](https://developers.google.com/youtube/player_parameters)