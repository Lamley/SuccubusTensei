﻿eraTW4.530proto用仕事お礼修正


【内容要約】
  給料が0に設定されている仕事では、お礼アイテムが設定されていても絶対に貰えないことになっていたので修正。
  あとチルノの仕事内容で「休暇FLG = 1」となっているのは何かの間違いだと思うので修正。
  これでチルノのアイス屋を手伝ってアイスが貰えるようになるよ！


【変更内容】
・ERB\コマンド関連\COMF\日常系\COMF304 仕事を手伝う.ERB
・ERB\イベント関連\EVENTTURNEND.ERB
・ERB\MOVEMENTS\JOB_仕事開始終了処理.ERB
  「TCVAR:TARGET:手伝った量」に給料倍率を掛けるのをやめて、かわりに給料計算には「TCVAR:MASTER:手伝った量」を使用するように変更。
  「TCVAR:TARGET:手伝った量」にはこなした仕事量の累積値が入り、「TCVAR:MASTER:手伝った量」に給料の累積値が入るようにした。
  そのうえで、お礼処理で「TCVAR:給料」を参照しないように変更。

・ERB\MOVEMENTS\JOB_仕事内容.ERB
  279,289行目の「休暇FLG = 1」を0に修正。
  @GET_JOBPLACE（@GET_MAP_REPLACEMENT）が呼ばれないので、アイス屋（と雪遊び）が正常に発生していなかった。
