﻿/*************************************************************************************/
eraTW4.45修正3用　リソース表示パッチ2
AAの代わりに画像を表示をするパッチです

------------[前回からの変更点]------------

kaoru氏の立ち絵からある分だけ切り出し
全キャラ表情差分付きました
画像があるキャラ分裸を追加

画像ファイルはキャラIDのファイルに全て収める連結方式に
リソース定義も変更
1キャラ最大6パターン
IMAGE.ERBを弄るのは面倒なので、list.csvを変更する方式にしました

いらなくなった編集用階層ファイル削除
身長が変だった子を少し変更
描画位置を1行の高さを考慮する方法に
これによりピンぼけする現象を少し軽減
画像ファイルが大きくなりすぎたため仕方なく減色
ファイル自体は軽量化しましたが、表情差分は増えたのでメモリ使用量は増えます

キャラが増えた場合のダミーを設置
時間停止時の描画を軽く作ってみた

立ち絵の変化条件式を追加
機嫌によって表示が変化する
ムード、怒りゲージ、陥落などをマウスオーバーの変化に

IMAGE.ERBのコードを整理

--------------------------------

・注意
メモリの使用量が確実に増えます
画像表示をOFFの場合でも、画像ファイルがある場合メモリには入るので
使用しない場合はresourcesフォルダを捨てて下さい


・画像について
kaoru氏のフリー立ち絵素材を使用させて頂きました
era系列の制作について、画像製作者のkaoru氏は一切関わっていません
問い合わせたりしないようお願いします

パッチ製作者がDL、リサイズ、リネームしただけのものとなっています
画像の著作権はkaoru氏に帰属します
別途画像製作者の利用規約をご覧ください
またはこちら製作者様のサイトからご確認下さい
http://gensoukyou.1000.tv/

禁止項目は主に3点
・商業利用（同人含む）等のお金に絡む事への利用（色々面倒なので）
・そのまま自身の製作した素材として丸上げ
・商業ソフトの改造パーツおよび改造イラスト・改造アイコンなどに使用すること


・他eratohoバリアントで使いたいなど
各バリアントによるサイズ合わせ、リネームが必要なので
無理とは言いませんが、無謀だと思われます
誰でも手に入り加工も自由なものなので、DLしてバリアントに合わせた改変したほうが速いかと思われます
それでも使う場合は、画像製作者様の利用規約を添えて下さい
一度利用規約についても目を通して置いたほうが無難です


------------[追加ファイル]------------

\ERB\ステータス表示関連\IMAGE.ERB
リソースを表示する関数
時間停止時の条件を追記

\resources\_def.7z

・内容物
1～113までの画像ファイル
時間停止.png
ダミー.png
画像製作者様の利用規約.txt
画像加工者のREADME.txt

list.csv
リソース定義ファイル
追加の仕方のテンプレートも書いてあります
現在の最大6パターンまで作れます

個人でカスタマイズした場合、まとめ、パッチ毎に
画像ファイルが上書きされるのを防ぐため圧縮ファイルにしておきます
誰か他の画像セットも作っていいのよってこと

------------[変更ファイル]------------

\CSV\FLAG.csv
1041,画像表示設定,;ON/OFF
1042,画像表示,;ON/OFF 兼表示人数
1043,画像表示位置,;PRINT_TARGET_IMAGEの描画align値
を追加

\ERB\SHOP関連\OPTION.ERB
画像とAAの切り替え設定を追加

ERB\ステータス表示関連\Look.ERB
ERB\ステータス表示関連\PRINT_STATE.ERB
画像とAAの切り替え条件式を追加

ERB\コマンド関連\USERCOM.ERB
RESULT値 3100,3101,3102,3103を間借り


------------[使い方]------------

そのまま上書きして下さい
resourcesフォルダの_defを解凍
前回の画像ファイルなどある場合は退避してからのほうが無難

画像、list.csvを全てresourcesフォルダ内に収めて下さい
サブフォルダは使えない仕様だそうです

Emueraを起動してから描画インターフェースを
TextRenderer　に設定して保存して再起動

ゲーム内オプションから　AAの表示を画像に変更する　ON
になっているとAA表示が画像に切り替わります
この設定がONになっていると能力表示画面でも画像に切り替わります

[画像表示]　クリックで表示のON/OFF
[表示設定]　表示設定ボタン類のON/OFF
表示人数の左右にある[－][＋]ボタンで一度に表示する人数の増減が出来ます
最大10まで　自動折り返しはしません(はみ出したものは見切れます)
デフォルトのフォント、ウィンドウサイズだと6人が限界かと思われます
その横の＜＜＞＞で、TARGET送りができます

またキャラの画像をクリックすることで、TARGETを切り替える事ができます
マウスオーバーでツールチップが出ます、TARGETの番号（並びは好感度順


----------------------------------

Q.キャラの背景が灰色になる
ヘルプ→設定から
表示タブ→描画インターフェース
TextRendererかGraphicsを選んで、再起動してみて下さい

Q.画像とタグテキストが位置ズレする
画像の出力サイズは1行の高さによって決まります
デフォルト設定は15です
14～18(縦横同じが望ましい)くらいを想定しています

Q.<img src='数字_～' srcb='数字_～' height='1000'>　と出て画像が表示されない
数字に書かれた番号の画像ファイルが見当たりません
resourcesフォルダ内を調べてみて下さい

Q.画像、表情差分を追加したい
このバリアントは100人以上キャラクタがいます
これに対し各々が好き勝手に追加していくと、容量、処理速度、編集作業に問題が出るかと思われます
ファイルサイズ、メモリのやりくり、命名規則など上手いやり方を先に考えましょう、考えます
特にサブフォルダが使えないのが痛いです


------------[画像追加]------------
list.csvのほうでファイル名とリソース定義を変える方式にしました
裸がないキャラは、通常のpngを裸のリソース名として扱っています
追加したら、list.csvの.pngファイル名の方を書き換えればおｋ

------------[画像処理編]----------------

画像セットを編集したい人
本体追加したい、置き換えたい人向け
自分がやった工程を自分も忘れないように書いておきます
私はグラフィッカーでも画像専門でもないので、これよりいい方法があれば教えてください
恐らくリサイズしないで描画するのが一番綺麗です

必要なもの
・画像処理ソフト　私はPhotoshopくらいしかわかりません
・透過pngへの理解
・熱意・時間

kaoru氏の立ち絵をもとにした画像作成
上に書いてあるサイトから、目的のキャラ素材をDLします
kaoru氏の立ち絵素材はもともと身長を考慮したキャンバスサイズになっています

1.解像度圧縮
まず解像度を30%にする（バイキュービック法
（恐らく2回に分けたほうが綺麗にできるけど、差が出る解像度ではないと思う
経験上古いPhotoshop(5.5以前)、フリーツールだとこれがズレます（ぼやけます、にじみます、透過がなんか全体にかかったりします）
解決するには透過している右上左下(対局してる箇所が望ましい)をアンチなしで塗ってアンカーを作る
それから、解像度を縮小し、アンカー部分を綺麗に消して透過させる
作業は同一レイヤーでなければ意味ないです

2.キャンバスサイズを設定する
余り、足りない部分は、下センター寄せにして切り抜き、もしくは拡張して
180*180のサイズへ変更
下中央に合わせないと身長が変わってしまう
全身がある場合上に合わせバストアップを決める
拡張する場合、透明部分のまま伸ばさないと背景色が入ってしまう

デフォのフォントが15なので150が恐らく一番綺麗に描画されるはずですが
フォントサイズを上げた場合の拡大がひどく汚くなりますので
縮小表示したほうが幾分かマシかと思われます


3.アルファ(透明部分)ありで、ファイル保存
これがないとキャラの背景に色が着いちゃう
他バリアントなら背景黒でも平気ですが、TWは時間停止があるため、背景色が変わります

4.キャラ別にまとめる
キャラごとに同一画像ファイルに纏める
list.csvで座標を指定してリソース定義

5.無駄なものを全部消し、ファイルサイズを小さくする
今回からpngquantで減色

これをキャラ分繰り返します、処理はマクロでやると楽です
が、キャラ番号が不規則なので結構苦労するかと思われます
ファイルの収集、リネームはIrfanViewを使いました、すごく便利いつも使ってます


------------[頭のいい人向け]------------
モンタージュ合成しファイル、メモリサイズを節約

素体、表情、テレ表現を全て1枚のファイルにする
list.csvにファイル名、座標、リソース名を定義

PRINTする場合1行目を素体、次行で表情をYPOS-表示フォント倍率分*描画回数で描画
これを繰り返して1枚の立ち絵を描画
表示解像度に比べリターンは少なそう・・・初めこの方式で作りましたが挫折

ZMat様作成のeraMONTAGE
がすごく参考になるかと思います

/*************************************************************************************/
パッチ作者：妄想エロ乙女アリスを書いた人

