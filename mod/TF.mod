#!name=TestFlight区域限制解除
#!desc=该模块适用于更新TestFlight App时, 提示"APP不可用"问题.

[General]
skip-proxy = %APPEND% iosapps.itunes.apple.com

[Script]
TF下载修正 = type=http-request,pattern=^https?:\/\/testflight\.apple\.com\/v\d\/accounts\/.+?\/install$,requires-body=1,script-update-interval=-1,max-size=0,script-path=https://raw.githubusercontent.com/likeyi999/baby/surge/Js/TF-down.js

[MITM]
hostname = %APPEND% testflight.apple.com
