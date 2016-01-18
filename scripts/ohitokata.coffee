# Description:
#   大人形用スクリプト
#
# Commands:
#

util = require 'util'

module.exports = (robot) ->
  robot.hear /(卒論|そつろん|論文)/i, (msg) ->
    date1 = new Date()
    date2 = new Date("2016/02/19 09:00")
    days_since = Math.floor((date2 - date1) / (1000*24*60*60))
    hour_since = Math.floor((date2 - date1) / (1000*60*60))
    msg.send "卒業論文発表会まで、あと"+ days_since + "日だよ！"
    msg.send "ちなみに時間で表すと、あと"+ hour_since + "時間しかないよ！ピンチだよ！"

  robot.hear /(大人形|おおひとかた|ひとかた|人形|にんぎょう)/i, (msg) ->
    msg.send "うんこ"
