# hdinter

區網掃描：找出 `172.22.30.1`–`254` 有回應的主機。

## 直接複製（CMD 一行）

```bat
for /L %i in (1,1,254) do @ping -n 1 -w 200 172.22.30.%i | find "TTL=" && echo 172.22.30.%i 有人用
```

也可用純文字檔：[oneliner.txt](oneliner.txt)

## 雙擊執行

下載 [scan.bat](scan.bat) 後雙擊（`.bat` 內使用 `%%i`）。

## 說明

- `ping -n 1`：只 ping 一次  
- `-w 200`：逾時 200 ms  
- 有 `TTL=` 視為有人用並印出 IP  
