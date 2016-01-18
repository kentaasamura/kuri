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

  robot.hear /(shishamo|ししゃも|シシャモ)/i, (msg) ->
    timestamp = (new Date()).toISOString().replace(/[^0-9]/g, "")
    msg.send "http://www.umai-iroha.jp/datafile/brand_dish_image_1505.jpg?" + timestamp
