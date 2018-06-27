eraTW4.522用色々修正

 ERB┬ステータス計算関連┬COUNTER┬COUNTER_MESSAGE.ERB
	│					│		 ├COUNTER_POSE.ERB
	│					│		 └COUNTER_SOURCE.ERB
	│					└SOURCE┬SOURCE.ERB
	│							└SOURCE_射精確定前処理.ERB
	└口上・メッセージ関連┬EVENT_MESSAGE_ORGASM.ERB
						　└KOJO_MESSAGE.ERB

 改造とかしてみたい人のためのあれこれ─口上関連─口上テンプレ─M_KOJO_KX_絶頂.ERB

カウンター脱衣のメッセージがおかしかったのを修正（COUNTER_MESSAGE.ERB
	TEQUIP:TARGET:0で見ないといけないのを、TEQUIP:PLAYER:0で見てた……、道理でもこたんズボンなのに、スカートを脱いで云々って出続けたわけだ
カウンター中のセックス関連によるTEQUIPに手をつけてみた（COUNTER_POSE.ERB,COUNTER_SOURCE.ERB,SOURCE.ERB
	カウンターのセックス中にアナル愛撫したらアナル舐めになるのを修正+カウンターで挿入する場合にセックス系TEQUIPを一旦リセット（これやらないと入れながら入れられるとか無茶な状態に
	セックス系TEQUIPにちょっと手を加えてみる……、これで上手く行ってたらいいけど
232スレ>>809の修正（SOURCE_射精確定前処理.ERB,EVENT_MESSAGE_ORGASM.ERB,KOJO_MESSAGE.ERB,M_KOJO_KX_絶頂.ERB
	射精対象の管理自体は軽く手を加えてすんだモノの、実際の射精時のメッセージの方で大わらわ
	具体的には、一言一句変わらない地の文のために複数分岐作ってたのを修正、たった一行の変化のために二十数行の重複を作ってたのを修正、カウンターリアクションが入るとTARGETが一時的に変化するとか、想像もしてなかったよ
	ついでなんで、TARGET以外に射精された場合の口上テンプレを追加

4.521用に修正してたのを、4.522に移植した形になるので、齟齬が出るかも知れません


byさもま