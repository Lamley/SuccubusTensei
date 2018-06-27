eraTW4.520用色々修正2

 ERB┬イベント関連┬BEFORETRAIN.ERB
	│			　├EVENTCOMEND.ERB
	│			　└デイリーイベント┬DAIRY_EV1.ERB
	│			　					├DAIRY_EV2.ERB
	│			　					├DAIRY_EV3.ERB
	│			　					├DAIRY_EV5 OPPAI.ERB
	│			　					├DAIRY_EV6 加護.ERB
	│			　					├DAIRY_EV7 アルハラ.ERB
	│			　					├DAIRY_EV8 野菜娘.ERB
	│			　					├DAIRY_EV9 犬添い寝.ERB
	│			　					├DAIRY_EV10 子供から手紙.ERB
	│			　					├DAIRY_EV12 特訓.ERB
	│			　					├DAIRY_EV13 自宅でオナバレ.ERB
	│			　					├DAIRY_EV20 生首さんいらっしゃい.ERB
	│			　					└DAIRY_EV21 Mercy_of _God.ERB
	└コマンド関連─USERCOM_服を脱がせる.ERB


232スレ>>574の修正（USERCOM_服を脱がせる.ERB
	>>578で指摘した通りに直しただけ
232スレ>>603の修正（BEFORETRAIN.ERB,EVENTCOMEND.ERB
	前に修正した筈だと思ってたけど、修正し切れてなかったので修正
	てか、最近プレイしてたけど、時止めＨしてなかったから、散策中に体力切れがそうそう狙って起こせないと思ってたので、自分でも再現できてなかった脇の甘さが敗因
上記修正に合わせたデイリーイベント修正
	具体的に、自分の寝室以外で発生するのおかしくない？　って思ったデイリーに、MASTERが私室以外でぶっ倒れてる際には発生しないように
	外から帰ってきて拠点入り口（山門や正門や竹林入り口や諸々）で気を失ってるのに、赤蛮奇が来訪してきたのでデイリーイベントに手をつけることに


それと、前回の修正のせいで、ちょっと動作が重くなった気がする
ワンルーム追い出しに、IN_ROOM_MEMBER使ってるせいかも……でも、コレ外すと、今度は室内にいる人数把握するのがめんどくさい事になりそうかも


byさもま