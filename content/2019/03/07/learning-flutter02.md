---
title: "Learning Flutter02"
subtitle: "2019-03-07-learning-flutter02"
date: 2019-03-07T21:34:32+08:00
author: "Cookie Xu"
tags: ["Flutter","Android"]
categories: ["front-end"]
from: "http://sillyhatxu.com"
from: "http://sillyhatxu.com"
draft: false
---

# Configure Environment Variables (Android)

[Download Android Studio](https://flutter.dev/docs/get-started/install/macos)

![](https://lh3.googleusercontent.com/ySvxR91TGMGEf_KW6Ca9ad3seKJj0ONXmlKO_nu5LYUvSXkSuO9CG2MTLUG1Wat-_hTIadNWERSspYBM2ySrg_Lme1LT-8Zrrx4ObIEbPMWDROKczKbS7b0o2p81Kt-q76t8vno4Z-QewG3m7Ddh-tejEK4RsbYLWn1P187ILrmGk0LEbxMdxwaQ5Eg3pOsEvG-7PlmckKegC-fmLHIbg4Ux2gsMzAv1IlDzbVfhfM5s4Qm1Rj-nwB7O1C0f9dqSK56RFekkqcTw90CimEzOPS-27L37vDw9Vi3Mpja-qGcEgha3z5b8LEhA_8lOSRAeRsRWHEz-x9nY5PPG1F17A_KTFe7Gc3Nk_SfTAL8arNqYyoDyttqTPdNK78cemBuTuOYHX546Uux0ayD5xjBMmz3pv9ARqk45QfsAuI9Hq0NB5THKfuNl7BkXGvElNUzsVx3pn2gHVnYL62v3rDAPhA_JhZoeQbikZV711izhYpuBQ46q2DMeh6pHrK8oP7JsaKTBGxnEIPYwq4udPY_1imNf4wZocKNAPw61SL6loe-pHicR5IZIYIn8JSbaBn3zI_gdUBx_iQp5Zd5mpDpr9_stO-MKpQApEUpGgrPqiXrUHKh77INDbunD7AAP47x66M5p1eS-u_-wcOt5NEs2LV59hIVKQ-KVL5WxyhO8KdwkVoCQwAS24JfX2Cs33WfYLB7stduJgWnXI6gHuyQ0iBz_=w1431-h601-no)

> brew tap caskroom/cask
```
Cookies-Mac-mini:~ shikuanxu$ brew tap caskroom/cask
==> Tapping caskroom/cask
Cloning into '/usr/local/Homebrew/Library/Taps/caskroom/homebrew-cask'...
remote: Enumerating objects: 4090, done.
remote: Counting objects: 100% (4090/4090), done.
remote: Compressing objects: 100% (4074/4074), done.
remote: Total 4090 (delta 23), reused 673 (delta 13), pack-reused 0
Receiving objects: 100% (4090/4090), 1.31 MiB | 696.00 KiB/s, done.
Resolving deltas: 100% (23/23), done.
Tapped 1 command and 3988 casks (4,097 files, 4.2MB).
```

> install android sdk
```
Cookies-Mac-mini:~ shikuanxu$ brew cask install android-sdk
==> Tapping homebrew/cask
Cloning into '/usr/local/Homebrew/Library/Taps/homebrew/homebrew-cask'...
remote: Enumerating objects: 4090, done.
remote: Counting objects: 100% (4090/4090), done.
remote: Compressing objects: 100% (4074/4074), done.
remote: Total 4090 (delta 23), reused 673 (delta 13), pack-reused 0
Receiving objects: 100% (4090/4090), 1.31 MiB | 1.02 MiB/s, done.
Resolving deltas: 100% (23/23), done.
Tapped 1 command and 3988 casks (4,097 files, 4.2MB).
==> Caveats
You can control android sdk packages via the sdkmanager command.
You may want to add to your profile:

  'export ANDROID_SDK_ROOT="/usr/local/share/android-sdk"'

android-sdk requires Java 8. You can install it with

  brew cask install homebrew/cask-versions/java8

==> Satisfying dependencies
==> Downloading https://dl.google.com/android/repository/sdk-tools-darwin-4333796.zip
######################################################################## 100.0%
==> Verifying SHA-256 checksum for Cask 'android-sdk'.
==> Installing Cask android-sdk
==> Linking Binary 'android' to '/usr/local/bin/android'.
==> Linking Binary 'archquery' to '/usr/local/bin/archquery'.
==> Linking Binary 'avdmanager' to '/usr/local/bin/avdmanager'.
==> Linking Binary 'jobb' to '/usr/local/bin/jobb'.
==> Linking Binary 'lint' to '/usr/local/bin/lint'.
==> Linking Binary 'monkeyrunner' to '/usr/local/bin/monkeyrunner'.
==> Linking Binary 'screenshot2' to '/usr/local/bin/screenshot2'.
==> Linking Binary 'sdkmanager' to '/usr/local/bin/sdkmanager'.
==> Linking Binary 'uiautomatorviewer' to '/usr/local/bin/uiautomatorviewer'.
==> Linking Binary 'emulator' to '/usr/local/bin/emulator'.
==> Linking Binary 'emulator-check' to '/usr/local/bin/emulator-check'.
==> Linking Binary 'mksdcard' to '/usr/local/bin/mksdcard'.
==> Linking Binary 'monitor' to '/usr/local/bin/monitor'.
🍺  android-sdk was successfully installed!
```

> install Android Studio