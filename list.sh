cat >list.txt << EOF
http://video.nen.com.cn/spyyt/index.shtml
http://video.nen.com.cn/system/count//0010034/000000000000/000/000/c0010034000000000000_000000004.shtml
http://video.nen.com.cn/system/count//0010034/000000000000/000/000/c0010034000000000000_000000003.shtml
http://video.nen.com.cn/system/count//0010034/000000000000/000/000/c0010034000000000000_000000002.shtml
http://video.nen.com.cn/system/count//0010034/000000000000/000/000/c0010034000000000000_000000001.shtml
EOF

wget -i list.txt
iconv  -f "gbk" -t "utf-8" *.shtml |grep "<p>" |grep 千字文|sort|uniq |sed 's/"//g'|sed 's/<p><a href=//g' |sed 's#</a></p>##g'|awk -F ' target=_blank>' '{print $1,"-",$2}' >result.txt
rm -f *.shtml
cat result.txt
