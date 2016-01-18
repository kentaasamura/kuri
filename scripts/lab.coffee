# Description:
#
# Commands:
#

util = require 'util'

module.exports = (robot) ->
  robot.hear /(卒論|そつろん|論文|卒業)/i, (msg) ->
    date1 = new Date()
    date2 = new Date("2016/02/19 09:00")
    days_since = Math.floor((date2 - date1) / (1000*24*60*60))
    hour_since = Math.floor((date2 - date1) / (1000*60*60))
    msg.send "卒業論文発表会まで、あと"+ days_since + "日(" + hour_since + "時間)しかないよ！ピンチだよ！"

  robot.hear /(大人形|おおひとかた|ひとかた|人形|にんぎょう)/i, (msg) ->
    msg.send "うんこ"

  robot.hear /(修論|しゅうろん)/i, (msg) ->
    date1 = new Date()
    date2 = new Date("2016/02/18 09:00")
    days_since = Math.floor((date2 - date1) / (1000*24*60*60))
    hour_since = Math.floor((date2 - date1) / (1000*60*60))
    msg.send "修士論文発表会まで、あと"+ days_since + "日(" + hour_since + "時間)しかないよ！ピンチだよ！"

  robot.hear /(ですか|ですよね)/i, (msg) ->
    msg.send "そうだね〜"

  robot.hear /(古森|こもり)/i, (msg) ->
    msg.send "公聴会お疲れ様でした！"

  robot.hear /(からふとししゃも|樺太ししゃも|カラフトシシャモ)/i, (msg) ->
    timestamp = (new Date()).toISOString().replace(/[^0-9]/g, "")
    msg.send "http://www.umai-iroha.jp/datafile/brand_dish_image_1505.jpg?" + timestamp

  robot.hear /あー/i, (msg) ->
    msg.send "うー"

  robot.hear /あさむら/i, (msg) ->
    msg.send "ししゃも！"

  robot.hear /(くりや|厨)/i, (msg) ->
    msg.send "んー？なにー？"

  robot.hear /(川久保|かわくぼ)/i, (msg) ->
    msg.send "研究しろ！"

  robot.hear /今日の昼ごはん|今日のランチ|今日の昼飯|今日の昼ご飯|今日の昼御飯/i, (msg) ->
    msg.send msg.random [
        "今日は中華ですね。",
        "今日はラーメンの気分です。",
        "今日はイタリアンですね。",
        "今日はフレンチなんかどうでしょう。",
        "今日はやっぱり定食が良いですね。",
        "今日はタイ料理日和です。",
        "今日は日本食が良いかもしれませんよ。",
        "今日はファーストフードなんかいかがでしょう。",
        "今日はランチビールを飲める店が良いですね",
        "今日はカレーが美味しい陽気です。",
        "今日はピザでも食べたら如何かしら？",
        "とりあえず、腹にたまるものが良いですね。",
        "今日は絶食しましょう。"
    ]
