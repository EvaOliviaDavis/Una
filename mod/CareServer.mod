[Script]
RevenueCatVip = type=http-response, pattern=^https:\/\/api\.revenuecat\.com\/.+\/(receipts$|subscribers\/[^/]+$), script-path=https://gist.githubusercontent.com/ddgksf2013/dbb1695cd96743eef18f3fac5c6fe227/raw/revenuecat.js, requires-body=true, max-size=-1, timeout=60
RevenueCatDeleteHeader = type=http-request, pattern=^https:\/\/api\.revenuecat\.com\/.+\/(receipts|subscribers), script-path=https://raw.githubusercontent.com/ddgksf2013/Scripts/master/deleteHeader.js, timeout=60

[MITM]
hostname = %APPEND% api.revenuecat.com
