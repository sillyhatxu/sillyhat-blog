---
title: "Learning Flutter01"
subtitle: "2019-03-07-learning-flutter01"
date: 2019-03-07T20:54:23+08:00
author: "Cookie Xu"
tags: ["Flutter"]
categories: ["front-end"]
from: "http://sillyhatxu.com"
from: "http://sillyhatxu.com"
draft: false
---

# Configure Environment Variables (Flutter)

[Download Flutter](https://flutter.dev/docs/get-started/install/macos)

![](https://lh3.googleusercontent.com/SQaMIWEe9ohs-kuoUO4Dr6em3RjkH1SVh2R1tvBn_ANwTiwpRq62fCSRBeMafe02fPhGm5UJ61bUxh8869oDzEy_ZkKdBTCpeethIG6mycCWmJ3KkuUK3aCR8JpkRYCV1XlDjpjKCOBZTnn2BkztJVg2GbMBzUJ40OaYx1MwceiVbAD3C2LwRBL0h8UqU8JlNt6VjWw_jBHYiW9N_RTgKJifkDrPuqQK8zMvlTyns1ETfA3aNW5UGaxyVGUjHxBxxjI0932F-zziFmzwjKtk8Z-4fVuBQpJOlVTAGUSduKOm3aBpCL0Fwny7NUEgLa9D4oo4ICP6-9UhxFKSCi2fnuij3zviKAti4yVXB15N6T_3gYzd4eLdDdB2atW034I-rK4do8cs3b6E1m64gZofrH67abC0k2ovbAuAbHg_jXoNbUQLQXdN8bgNazVktRQ3PUhJcu4-grHWJlK2Q9yYsZngeKNfLEmb2IFqD6nGQH9Y8sCKXRBjNR9KC9vTnS3AsAWKQpi8Mj-lFUfIR5xS5JWecK4SepJf1WC4IS5orkhQCxFtGFnW4pXgnHzW7L25YM3HZ4s23y0vqAsjlitTxuahxRu_e5RcaAN_fJRVKarYTK89ro8Xeh_xijUO4LNZ658qv1EWBaIPVQeCcqvPppg7SzJaF8FvGOltAoqLBr9Nri1pXdDFeLOFydFdUG4tnJwmLuz60S_rWU1A84LbK65E=w837-h768-no)

> Extract the file in the desired location, for example: 
```
unzip ~/Downloads/flutter_macos_v1.2.1-stable.zip
```
> And copy `flutter` to `/Users/shikuanxu/Documents/Soft/flutter`

![](https://lh3.googleusercontent.com/cBFxYxYgk2rpP2DcOsd4INGD4jnvOY3wVM9hcQGBAuZ_rXVKSDY6NiZLP0vvntSk4-HIwSVtEIO3JcjbSRE1yiE58J_7xa5hqysGWgT_tF7BNA6vbJXbzpMp8k2rf9ePJbNWYVfyhcSaUbCdhQy82L8iafxf-6pDROD0aNUiZk2iWvuk2t-z4rf04cxRhXpbsUtGc_3xlwBt_Nu9VVoUuUVZgiFlfGr25VGLFx5qDAlDSd0B-fCKyS8DY_OE9h_G8y6DqFH1ZykaScRJB_KM1T3iIbSjDUMKXpHAr9hqTzWf4tF7zYNJzKVOnYu1Vw4TAw6BJScZW5W11kmfHOoKZ1QI27gjKgUS1NTurSp58yprjJCJEaLmknc5Sab-PqV5QnI2foz3I2NJCpCxHRNEixmFZYd0HUs9Qm4kq2jjoEVJkdTvfFGZsT6Z7g7rxPNDCYddfBB9T0Re6f59Xa3TZ3m4o5X-hKenjTgp3_dG4kgiUcFNdHZeQLO1SFQta_YmtWM177rruFJPZ0aKnVtJw-JcfiK-OOdcizxulzXh_1a1U911ID5Qvuo3SOn388zHIEO0YdClTod0YdPZoG-_9nWx99QhM5RBXxRmVz3PTuOygKpHrBb4KPMDPN-Rz0Hd0kGti0wOM_QU81sfiUUUREWgI5nd2sMsRPiqGaoqs4hMWhqqE7L2_F2TnH4oJEG4D8475bQXCk5gtsV_hk1UPgfl=w1256-h104-no)

> Add the flutter tool to your path:

![](https://lh3.googleusercontent.com/DqRHmuI2_qAKwHrpPn6iya6BI1ucagZrec5L0WKd2UBm3G8QRmFP18JcLDOJ8hi6qC09qHb44OeVQZPfTrUfg6VQWoewTJG0X8mGK9Wbtp5JQqZEPESQlEP1XeKLxzuK970Qj3fOCOgLpNgn1xOR-0TGE2BVJTlmMrw3ZFOqDQoMOjzPk5gwO_ekAcEzjKXE09qZr3qbS_a_1CEwa5InpYCnzbZrouN1329EYz2KDL7wykKWFsT4WBH4Kjm99U39peIwc_7BtylJplBX7KQu5j5HnOZKuax_UUuHB6P7HQzyIQn79K5eNxakAtVlzh3PrjyFSS9EujXAWVuhZL4rmKl3CJbuBSZoeKXB3iL3QctLiW306eiPGEIWi1YdpNEhCfr0l7Fj85Nok7XSJUSm-Ncp0zMGVCAlkNWYd7snfb2yQaaM63eNy-OUS6KQDxu7p90w3MPq8RcYuVMKWpAqIsQSk1ZMuHKBLinhnmjG3x3-3-bhkJtBHx2niAN7-oyRsdjL3X2ll9lAPy8d8njvmvvZKX2Snf2KZeW8TeuWjST58yEk_I1u5D8JqgWLMSYKYV4pUZY1-sSNRZ-IzClO0R3I2CXzeHKnGsVlsfIsOo9nglTxpv0AIeUgnLFEjnl0ljzHxd1xqggy1JFfMjotKw4-evvVdeCO0UqiENYd4Ckro3fQn9Wnwx5mDBz2EtnGMCiSNfigjZantVMDqV8IhElF=w908-h169-no)
```
Cookies-Mac-mini:~ shikuanxu$ vim .bash_profile

export PATH="$PATH:/Users/shikuanxu/Documents/Soft/flutter/bin"

```
![](https://lh3.googleusercontent.com/B6FEhzYMSGzfogFEVOxZHHUSMH9C3kIZjkTZAnuuFCk-x8tWimp8yt6fjIf3Q-95G1jd0TBNdlVx-OslJ338wgmFYu6QDiv_uT6nS-nryhyaBQoBfpkEJFE0Tc7JHXavjwm4pcwUYyWASWx20YI3pLaqx2f9Ob2p836y1GyeTvQ0pV39eLGPsjYAKCr9bgRSiNi17PnsIJGcfaW7J7qAbEsd4yAQWF2D6C0peLQs0Qbqjqh6-VmgWuAODWwOmeKiElD2WYqIdeh9JCQkE0Fg6TvRXmF4Lh21q7rF-_PO5xxC5CKQLWmyb9MVBGCtRv6bL7xhuUzTYXcEZqSmcL0hJKwIQEbt8Vv7EmU-mT42MUKaTEWnxfFCBMXkTpQQ-8wC1HXgFUBp2PWNhCPgoLRJZ8fk0kOPJXVqOSFOmsMYNugS3WnrBIiEhqKeBNuDbML0HTyyPRQDkpuX3UjDLIDN7GcUcMqwfELLG7XsLY7aBqG-HWhxvvjNd7ngkWj4Q5u5YlExq0e8wNAXiiRn69txxOZU60Id_d0gw8QKJru_mrx_ag1ENnq7crkrJK83evKG9pJvMpGbz0xgiTpcHLxOtYnofEPMSVn6Ugo0x3c3hIxilQfvzIyjWSuSqOwfogYODGUEpn0dTKiPQWy4FiejJD3-slEmlyiXWWepRM4eO-gthGj0lLWY-KcY5Omgfi8d4i_IaPs5RDtM1v-NKSum9TEu=w489-h178-no)

> Open new terminal **(May be)**
```
flutter doctor
```

![](http://image.xushikuan.com/images/3308014985/906799682/468396612/6bf34ce7-6c78-41cd-8d4e-4072abad6ada.png?Expires=1552230046&OSSAccessKeyId=TMP.AQHtV-CZ3BLZpIGu-0eq_oL4EIqZ46h2fjsERdpO7HLeQ_JAyqxsBqNSMtErMC4CFQC7WQ2Lgh_5x6FtwPjEG4yBsXs7WgIVAOx26MPdog_2rf723TTV5Hw_l-vM&Signature=Tfze%2FPuQA1x4gNtWOCIOX%2FVIzmk%3D)

> Config Android and IOS
![](https://lh3.googleusercontent.com/3rnnqa7xEg_51Xg6hP-kOi1rui7ly0TnrAS2T1I1cdrEsU869o9QzJHqZE6QxFOa_bhbAKbx2xeBpJANV5CX3sW8Hue3DV5obAAwPJwTJtNqh0pasOmaaWbGaSffzAUucJlBvMTDIuE5jxTWcpiTDPY9lJN1uFfVM39VlKjMBDOpiQ43qEYylOKyqCWesoklyh5dB002sGlge10FVnlnCuy13iV_spUQ8OBeC3zWfCkwF1wWTPz7nO8-eOGVnXaPPUSlEDOS9SoDZhGZvhj8k_ueclKQpP1XbL2cTKHpyLkuYO8-bSoWM_KWfos6dcemJRe3pxbpMyXpzbAViuaP_ASrwgtWgN--u99QaI9oxWbjr9fvw9CEj4jHGIgFnTunaBT_zuKyOO68CtIAS6a-qG2ZgWEKvJ30gXN_aprzzSavkldqHZMBthajOIkXUqqaaLDIryGxdJbdlAQvtA5b0WmxkQf7S3i6iGfmqAMizwhGmQz6xMd_2_f6XW8ihe0RLYOFKB9sMTLzmRa8V5jsYGFPM_wIG-vUuUAsHpNbzKv40Fqh_QaFW0nIFchr20BNBiMuGT-8h-7xeap9LUpGYlJMSY0s2NeNEiwd8OxFWabL3iY0i9xAA63_tennDBG2U7TcIpD1q2SDeRwx0iRb4L4TmUkmqoTZgSpCakkCx-NgeG-Jr8sj2VzMC49UXwjqC8cKsaYAO22KgGB0WIZUiXlU=w572-h195-no)
