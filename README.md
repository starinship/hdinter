# hdinter

掃描 `172.22.30.1`–`254`，**只輸出無人回應（空闲、可拿來上網／設 IP）的位址**。  
有 ping 回應＝有人用＝**不列出**。

## 直接複製（CMD）

```bat
for /L %i in (1,1,254) do @ping -n 1 -w 200 172.22.30.%i | find "TTL=" >nul || echo 172.22.30.%i
```

畫面只會出現沒人用的 IP。

## 雙擊執行

下載 [scan.bat](scan.bat)：

- 只印空闲 IP  
- 結束後再印完整清單  
- 寫入同目錄 `free-ips.txt`

## 網頁

https://starinship.github.io/hdinter/

> 注意：主機若關閉防火牆外的 ICMP／不回應 ping，也可能被当成空闲；设 IP 前请再确认。
