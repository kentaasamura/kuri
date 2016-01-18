# Description:
#
# Commands:
#

util = require 'util'

module.exports = (robot) ->
  robot.hear /(SHISHAMO|shishamo|ししゃも|アルバム|新作)/i, (msg) ->
    date1 = new Date()
    date2 = new Date("2016/03/2 00:00")
    days_since = Math.floor((date2 - date1) / (1000*24*60*60))
    hour_since = Math.floor((date2 - date1) / (1000*60*60))
    msg.send "SHISHAMO 3 発売まで、あと"+ days_since + "日(" + hour_since + "時間)しかないよ！アマゾンへ急げ！"


  robot.hear /(ライブ|live)/i, (msg) ->
    date1 = new Date()
    date2 = new Date("2016/05/15 00:00")
    days_since = Math.floor((date2 - date1) / (1000*24*60*60))
    hour_since = Math.floor((date2 - date1) / (1000*60*60))
    msg.send "SHISHAMO live at　福岡 発売まで、あと"+ days_since + "日(" + hour_since + "時間)しかないよ！！"


  robot.hear /(朝子|あさこ)/i, (msg) ->
    msg.send "ししゃも！"
