# eraTW4.49修正用実績解除微修正パッチ
## 概要
パンツ30枚の実績解除が条件を満たす前から表示されるバグ等を修正.  

### 修正
パンツ30枚の実績解除が条件を満たす前から表示されるバグを修正.  
恋慕10人の表示判定にて周回前の恋慕も参照していたので削除.  
GETBIT(FLAG:701,1)のPRINTを削除.  

### 変更
LOCAL:2,LOCAL:3を定義してあった変数に置き換え.  
使用されていないと思われるLOCAL:10の使用部分を削除.  

### 導入前提  
 +マークは必須 -マークはあってもなくてもよい
1.	+[eraT0009739.7z]	[本体]eraTW4.49修正
2.	-[eraT0009742.zip]	[パッチ]eraTW4.49用 神社移動修正パッチ
3.	-[eraT0009743.zip]	[パッチ][口上][テンプレ]eraTW4.49修正用ホワイトスペースバグ修正+α

### 導入方法
本体ファイルの中にERBファイルを上書き

### 修正内容
+ ERB\SHOP関連\BONUS.ERB	バグ修正, リファクタリング

### 注意事項
再配布, 改造を許可します.  
その際にこのreadmeファイルを添付する必要はありませんが, 必要なら添付しても構いません.  
書いた人(kj)は, このパッチによって生じる直接または間接に生じるいかなる損害についても責任を負いません.  
適宜バックアップを取るなどして使用して下さい.  

#### 書いた人
kj
#### 書いた日
2017/03/09
