# Burp Windows + Linux + MacOS

## Install BurpSuite Professional + activate license

```powershell
irm https://b.hypnguyen.com | iex
```

## Download BurpSuite Professional

[Download for Windows](https://portswigger-cdn.net/burp/releases/download?product=pro&type=WindowsX64) | [Download for Linux](https://portswigger-cdn.net/burp/releases/download?product=pro&type=Linux) | [Download for MacOS (intel)](https://portswigger-cdn.net/burp/releases/download?product=pro&type=MacOsx) | [Download for MacOS (arm64)](https://portswigger-cdn.net/burp/releases/download?product=pro&type=MacOsArm64)


## Activate Setup 

1. Cài đặt burpsuite pro bản windows x64 + linux amd64 + MacOS (.dmg)

2. `git clone https://gitlab.com/hypnguyen1209/burp-pro`

3. Ném file `BurpSuitePro.vmoptions` và `burploader.jar` vào thư mục cài đặt của BurpSuitePro 

- Windows: `%LOCALAPPDATA%\Programs\BurpSuitePro` 

- Linux: `/opt/BurpSuitePro`

Đối với MacOS ném file `burploader.jar` vào đâu cũng được, tại thư mục `/Applications/Burp Suite Professional.app/Contents/MacOS` thay thế content file `vmoptions.txt` bằng content của file `BurpSuitePro.vmoptions`

Chú ý: Với MacOS cần phải setup absolute path cho options -javaagent, ví dụ như:

```
-javaagent:/Users/nam/.BurpSuite/burploader.jar
```

4. Gen keygen cho burp:

Web sử dụng trực tiếp: https://burp-keygen.hypnguyen.com

![demo](https://i.imgur.com/bvHm8oW.png)

Source code: https://gitlab.com/hypnguyen1209/burpsuite-keygen

Mở burpsuite lên and chill!!

Happy hacking <3

Telegram: [@hiepnv](https://t.me/hiepnv)
