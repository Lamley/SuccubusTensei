﻿eraTW4.47NYE用-バグ修正パッチ

作成日　2017/01/12
作成者　アルファベット

■導入の仕方

　・eraTW4.47NYEに突っ込む
　・UPDATEを実行
　　このとき「---(MASTERの名前)の体型を再設定します---」と出たら
　　「体格差的にしんどい」バグに修正がかかったことになる
　　上記バグが起きていない人は気にしないでオーケー

■前提条件

　なし(一応確認したけどパッチ間の競合に注意)

■注意事項
　パッチを当てる前にバックアップを取ってください
　当パッチは自由に改変してください　報告もいりません

■内容
　・COMF400 移動.ERB
　　移動時立ち止まりにおいて「ON (口上が存在する場合のみ)」を選択しているにも関わらず
　　口上がないキャラクタにも選択肢を尋ねるバグ修正

　・キャラメイク.ERB UPDATE.ERB
　　膝枕するが常に「体格差的にしんどい」になるバグ修正
　　小人が(-3)だったときのセーブデータの値が残っていたのが原因
　　ついでにキャラメイク時に小人が選択できなかったバグ修正