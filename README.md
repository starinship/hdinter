# hdinter

掃描 `172.22.30.1`–`254`，**只輸出有回應（可用）的 IP**，不顯示沒人用的號碼。

## 直接複製（CMD）

```bat
for /L %i in (1,1,254) do @ping -n 1 -w 200 172.22.30.%i | find "TTL=" >nul && echo 172.22.30.%i
```

畫面只會一行行跳出可用 IP。

## 雙擊執行

下載 [scan.bat](scan.bat) 雙擊：

- 過程中只印可用 IP  
- 結束後再印一次完整清單  
- 並寫入同目錄 `alive-ips.txt`

## 網頁

https://starinship.github.io/hdinter/
