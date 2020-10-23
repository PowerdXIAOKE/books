#!/bin/bash
# author: gfw-breaker

git pull

index=README.md
base='https://cdn.jsdelivr.net/gh/gfw-breaker/books.md1/resources'

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
	txt=$base/$key.txt
	pdf=$base/$key.pdf
	epub=$base/$key.epub
	echo "| 《$name》 | [TXT格式]($txt) | [PDF格式]($pdf) | [EPUB格式]($epub) |" >> $index
done < index.csv

## commit
git add *
git commit -m "ok"
git push


