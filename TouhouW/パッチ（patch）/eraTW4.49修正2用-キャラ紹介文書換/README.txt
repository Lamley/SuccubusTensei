eraTWキャラ紹介文書換
作成者　アルファベット
作成　2017/04/07

■導入の仕方
　・eraTW4.49修正2に突っ込む

■これなに？
　ゲーム中の「能力表示」欄にて書かれるキャラ紹介文を「@CHARA_INFO_KOJO_KX」を
　使用することで、条件に応じて自由に書き換えることが可能になる

■コメント
　本当は、早苗口上Ver0.03で使うために同時に付属させる予定のパッチだったが
　加筆がなかなか進まず今の本体バージョンに間に合いそうにないのでこれだけ投下




■使用例
以下の関数を「M_KOJO_K31_ユーザ関数.ERB」の末尾にでもくっつければ書き換わる(はず)


@CHARA_INFO_KOJO_K31()

;まずは「～祀られる風の人間～　●種族：人間　●能力：奇跡を起こす程度の能力」をプリント
CALL M_KOJO_COLOR_K31
PRINTFORML %CSVCSTR(31, 10)%
RESETCOLOR

;早苗さんと面識前
IF !CFLAG:31:18
	PRINTFORML 妖怪の山の上にある守矢神社の風祝
	PRINTFORML 元は外の世界の住人で、八坂神奈子・洩矢諏訪子の二柱と共に引っ越してきた
	PRINTFORML 性格はいたって明るく、素直な人間なのだが、どこかずれている
	PRINTFORML また、ときどき真面目で自信家な一面が顔を覗かせることもある
	PRINTFORML 新たな人間が外の世界からやってきたという噂を聞き、
	PRINTFORML 初めての後輩ができるかもしれないと張り切っている
	PRINTFORML 
	PRINTFORML 最近、信者獲得のために人里の方で勧誘を始めたらしい
ENDIF

;第1章
IF CFLAG:31:3102 == -1
	;「第1章　はじめまして」
	IF CHAPTER_CHECK_K31(0)
		FONTSTYLE 1
		PRINTFORML 「第1章　はじめまして」
		FONTREGULAR
		PRINTFORML 人間が外の世界からやってきたという噂を聞いた早苗
		PRINTFORML 初めての後輩ができるかもしれない、ということでさっそく話しかけてみることに
		PRINTFORML 話してみると、特に何の能力もなさそうな普通の人間だったので、
		PRINTFORML ようやく、まともな人間の知り合いができると喜んだ結果、最後でスベる
		PRINTFORML 近ごろは、%CALLNAME:MASTER%相手にどうやって先輩風を吹かそうかと考えている
		SIF EVENT_CHECK_K31(5) || EVENT_CHECK_K31(6)
			PRINTFORML 人里での勧誘は、ライバルが多くあまりうまくいっていないようだ…
	ENDIF
	;「第1章　出会って3秒即デート！？」
	IF CHAPTER_CHECK_K31(10000)
		;レアルートは色を変えてみる
		CALL M_KOJO_COLOR_K31
		FONTSTYLE 1
		PRINTFORML 「第1章　出会って3秒即デート！？」
		FONTREGULAR
		PRINTFORML 気づいたら、守矢神社のくじの景品になっていた哀れな風祝
		PRINTFORML 普通ならば、すぐに気づいてやめさせるところだが、
		PRINTFORML なんの「奇跡」か、気づいた時には、運命のくじは既に引かれてしまったあとだった
		PRINTFORML 仕方なくデートをした早苗だったが、山の連中にその姿をバッチリと見られ、
		PRINTFORML 妖怪の山はいま、早苗のデートの話題で持ちきりとなっている
		RESETCOLOR
	ENDIF
ENDIF