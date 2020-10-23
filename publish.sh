#!/bin/bash
# author: gfw-breaker

git pull

index=README.md

## README page
cat > $index << EOF
### 禁书下载

---
##### 友情链接：[免翻墙看禁闻](https://github.com/gfw-breaker/banned-news3) &nbsp;|&nbsp; [翻墙软件下载](https://github.com/gfw-breaker/nogfw)

| 书名 | 下载 | 下载 | 下载 |
|---|---|---|---|
EOF

## generate
while read line; do
	key=$(echo $line | cut -d',' -f1)
	name=$(echo $line | cut -d',' -f2)
	echo "| 《$name》 | [TXT](https://y2mate.com/zh-cn/search/$id) | [PDF]($srt?raw=true) | [EPUB]($srtTw?raw=true) |" >> $index
done < index.csv

## commit
git add *
git commit -m "ok"
git push


