---
title: "Learning Flutter03"
subtitle: "2019-03-07-learning-flutter03"
date: 2019-03-07T23:34:12+08:00
author: "Cookie Xu"
tags: ["Flutter","IOS"]
categories: ["front-end"]
from: "http://sillyhatxu.com"
from: "http://sillyhatxu.com"
draft: false
---

# first app

```
Cookies-Mac-mini:flutterworkspace shikuanxu$ flutter create first_app

```

> Set up the iOS simulator

```
Cookies-Mac-mini:~ shikuanxu$ open -a Simulator
```

> flutter run 
```
Cookies-Mac-mini:first_app shikuanxu$ flutter run
More than one device connected; please specify a device with the '-d <deviceId>' flag, or use '-d all' to act on all devices.

xushikuan’s iPhone • 99bd0acef71bad1b3679183d7cc486ef4ea3024f • ios • iOS 12.1.4
iPhone XR          • 5B9158E8-D047-4A28-898E-CBF88C861C4E     • ios • iOS 12.1 (simulator)
```
> flutter run -d 5B9158E8-D047-4A28-898E-CBF88C861C4E
```
Cookies-Mac-mini:first_app shikuanxu$ flutter run -d 5B9158E8-D047-4A28-898E-CBF88C861C4E
Launching lib/main.dart on iPhone XR in debug mode...
Running Xcode build...
 ├─Assembling Flutter resources...                           0.9s
 └─Compiling, linking and signing...                         6.3s
Xcode build done.                                            8.6s
Syncing files to device iPhone XR...                             1,138ms

🔥  To hot reload changes while running, press "r". To hot restart (and rebuild state), press "R".
An Observatory debugger and profiler on iPhone XR is available at: http://127.0.0.1:54804/
For a more detailed help message, press "h". To detach, press "d"; to quit, press "q".
```


![](https://lh3.googleusercontent.com/QQAFYTzTWiz0G-dPWI6bdhoHldqxSknIBA27Fcw7XCbYkInqYZSMBMRU8WJsOfd4lp8c6NHAzE1yWQ_dwodM_jsJ3j2DUb-lBBWVEcasuNt9liXPaX44GC-vyqnAgPtcZ5wP1QelAHeLH1R98RGKpkPgGzpShk-zDgIl2kGGKABuOQSvOK2etEpBiTMAqAzte69BXid6Vl72c0-9Ct3XhShVnUBLjk-R1jwhJw3VuH3shI0qYsze5vX-pA_JBAssaBzXMzsxkqWdHhyqVkOB3_vab_7Pep3gBbQ9QR-3bxsN8A2qJEPMeGnPp4Lf3tNdnrOsqJ3FzQT1HV30PAodi9RxgKfJ22KlVD_lwFe-eAFAHw5fAg_GVeUnocF39taFB0_KcdiNS_nYaFzmjqew2O1aVBUfr3TMZ9W0F0muvf3ZvQz17B_6zO32tAmHekG3pBQC5G1DegzjzMQ5l-d09bw-SeVSdFc6mTfDvbCBvuuJyvBGP3ScarXcmhAY0nUukdE-0sfDwBFYdSOXQxKU12LzhyHOqwSL0OhGCsqBqBHATSk9lFfr4SyXihCk2zyACQZ4grzLKinPdl4re0BpEVN2WlNcdw1dgpZM_5uIT-n6_oVCh5kzOpjtl9Rh0gWjonEGlpuzWF6jsys0HSM5ykGonYiM0uPR8gfo5J5FFYfOoPcEQJqZ1_mDPT-aN7nxAOA7G6uq-cbIXJavzLjmVGSE=w174-h346-no)