# Description:
#
# Commands:
#

util = require 'util'

module.exports = (robot) ->
  robot.hear /(SHISHAMO|shishamo|アルバム|新作)/i, (msg) ->
    date1 = new Date()
    date2 = new Date("2016/03/2 00:00")
    days_since = Math.floor((date2 - date1) / (1000*24*60*60))
    hour_since = Math.floor((date2 - date1) / (1000*60*60))
    msg.send "SHISHAMO 3 発売まで、あと"+ days_since + "日(" + hour_since + "時間)しかないよ！アマゾンへ急げ！"


module.exports = (robot) ->
  robot.hear /(ライブ|live|)/i, (msg) ->
    date1 = new Date()
    date2 = new Date("2016/05/15 00:00")
    days_since = Math.floor((date2 - date1) / (1000*24*60*60))
    hour_since = Math.floor((date2 - date1) / (1000*60*60))
    msg.send "SHISHAMO live at　福岡 発売まで、あと"+ days_since + "日(" + hour_since + "時間)しかないよ！！"


  robot.hear /(shishamo|ししゃも|シシャモ)/i, (msg) ->
    timestamp = (new Date()).toISOString().replace(/[^0-9]/g, "")
    msg.send "http://www.umai-iroha.jp/datafile/brand_dish_image_1505.jpg?" + timestamp


  robot.hear /(朝子|あさこ)/i, (msg) ->
    msg.send "ししゃも！"
