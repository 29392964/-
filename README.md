## 千字文讲解视频

proc.sh


```
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
```

```
http://news.nen.com.cn/system/2014/04/11/012127786.shtml - 解读千字文：天地玄黄 宇宙洪荒
http://news.nen.com.cn/system/2014/04/18/012161801.shtml - 解读千字文：日月盈昃 辰宿列张
http://news.nen.com.cn/system/2014/04/25/012185267.shtml - 解读千字文：寒来暑往 秋收冬藏
http://news.nen.com.cn/system/2014/05/04/012206883.shtml - 解读千字文：闰馀成岁 律吕调阳
http://news.nen.com.cn/system/2014/05/09/012223335.shtml - 解读千字文：云腾致雨 露结为霜
http://news.nen.com.cn/system/2014/05/16/012250067.shtml - 解读千字文：金生丽水 玉出昆冈
http://news.nen.com.cn/system/2014/05/30/012303880.shtml - 解读千字文：剑号巨阙 珠称夜光
http://news.nen.com.cn/system/2014/06/06/012322133.shtml - 解读千字文：果珍李柰 菜重芥姜
http://news.nen.com.cn/system/2014/06/13/012343307.shtml - 解读千字文：海咸河淡 鳞潜羽翔
http://news.nen.com.cn/system/2014/06/20/012367196.shtml - 解读千字文：龙师火帝 鸟官人皇
http://news.nen.com.cn/system/2014/06/27/012385824.shtml - 解读千字文：始制文字 乃服衣裳
http://news.nen.com.cn/system/2014/07/04/012414914.shtml - 解读千字文：推位让国 有虞陶唐
http://news.nen.com.cn/system/2014/07/18/012472887.shtml - 解读千字文：吊民伐罪 周发殷汤
http://news.nen.com.cn/system/2014/07/25/012506387.shtml - 解读千字文：坐朝问道 垂拱平章
http://news.nen.com.cn/system/2014/08/08/012562886.shtml - 解读千字文：爱育黎首 臣伏戎羌
http://news.nen.com.cn/system/2014/08/28/012702506.shtml - 解读千字文：遐迩一体 率宾归王
http://news.nen.com.cn/system/2014/09/06/012773451.shtml - 解读千字文：鸣凤在竹 白驹食场
http://news.nen.com.cn/system/2014/09/12/012805101.shtml - 解读千字文：化被草木 赖及万方
http://news.nen.com.cn/system/2014/10/03/012985182.shtml - 解读千字文：盖此身发 四大五常
http://news.nen.com.cn/system/2014/10/31/013217558.shtml - 解读千字文：恭维鞠养 岂敢毁伤
http://news.nen.com.cn/system/2014/12/07/014258098.shtml - 解读千字文：女慕贞洁 男效才良
http://news.nen.com.cn/system/2016/04/01/018985161.shtml - 解读千字文：知过必改 得能莫忘
http://news.nen.com.cn/system/2016/04/08/019004607.shtml - 解读千字文：罔谈彼短 靡恃己长
http://news.nen.com.cn/system/2016/04/15/019023339.shtml - 解读千字文：信使可覆 器欲难量
http://news.nen.com.cn/system/2016/04/22/019044247.shtml - 解读千字文：墨悲丝染 诗赞羔羊
http://news.nen.com.cn/system/2016/04/29/019064669.shtml - 解读千字文：景行维贤 克念作圣
http://news.nen.com.cn/system/2016/05/06/019082490.shtml - 解读千字文：德建名立 形端表正
http://news.nen.com.cn/system/2016/05/13/019099550.shtml - 解读千字文：空谷传声 虚堂习听
http://news.nen.com.cn/system/2016/05/20/019120501.shtml - 解读千字文：祸因恶积 福缘善庆
http://news.nen.com.cn/system/2016/05/27/019136399.shtml - 解读千字文：尺璧非宝 寸阴是竞
http://news.nen.com.cn/system/2016/06/03/019149955.shtml - 解读千字文：资父事君 曰严与敬
http://news.nen.com.cn/system/2016/06/08/019161635.shtml - 解读千字文：孝当竭力 忠则尽命
http://news.nen.com.cn/system/2016/06/16/019178234.shtml - 解读千字文：临深履薄 夙兴温凊
http://news.nen.com.cn/system/2016/07/01/019209735.shtml - 解读千字文：似兰斯馨 如松之盛
http://news.nen.com.cn/system/2016/07/15/019239050.shtml - 解读千字文：川流不息 渊澄取映
http://news.nen.com.cn/system/2016/07/22/019252309.shtml - 解读千字文：容止若思 言辞安定
http://news.nen.com.cn/system/2016/07/29/019266817.shtml - 解读千字文：笃初诚美 慎终宜令
http://news.nen.com.cn/system/2016/08/05/019281646.shtml - 解读千字文：荣业所基 籍甚无竟
http://news.nen.com.cn/system/2016/08/18/019306569.shtml - 解读千字文：学优登仕 摄职从政
http://news.nen.com.cn/system/2016/08/26/019320747.shtml - 解读千字文：存以甘棠 去而益咏
http://news.nen.com.cn/system/2016/09/02/019331862.shtml - 解读千字文：乐殊贵贱 礼别尊卑
http://news.nen.com.cn/system/2016/09/09/019347411.shtml - 解读千字文：上和下睦 夫唱妇随
http://news.nen.com.cn/system/2016/09/22/019368005.shtml - 解读千字文：外受傅训 入奉母仪
http://news.nen.com.cn/system/2016/10/28/019424452.shtml - 解读千字文：诸姑伯叔 犹子比儿
http://news.nen.com.cn/system/2016/11/18/019470192.shtml - 解读千字文：孔怀兄弟 同气连枝
http://news.nen.com.cn/system/2016/12/09/019519996.shtml - 解读千字文：交友投分 切磨箴规
http://news.nen.com.cn/system/2016/12/16/019534404.shtml - 解读千字文：仁慈隐恻 造次弗离
http://news.nen.com.cn/system/2017/01/13/019600076.shtml - 解读千字文：节义廉退 颠沛匪亏
http://news.nen.com.cn/system/2017/02/17/019666817.shtml - 解读千字文：性静情逸 心动神疲
```