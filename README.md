# hdinter

掃描 `172.22.30.1`–`254`，**只輸出無人回應（空闲、可拿來設 IP）的位址**。

## 雙擊執行（建議）

1. 下載 [scan.bat](scan.bat)（不要在壓縮檔裡直接開，先解壓／另存到資料夾）
2. 雙擊執行；視窗會保持開啟約 1 分鐘
3. 結束後同目錄會出現 **`free-ips.txt`**（空闲 IP 清單）

若視窗仍一閃就關：改下載 [scan-keep-open.bat](scan-keep-open.bat)（會強制留在 CMD）。

## CMD 一行

```bat
for /L %i in (1,1,254) do @ping -n 1 -w 200 172.22.30.%i | find "TTL=" >nul || echo 172.22.30.%i
```

## 網頁

https://starinship.github.io/hdinter/
