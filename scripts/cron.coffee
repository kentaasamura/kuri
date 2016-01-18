# Description:
#   cronを使用したスクリプト
#
# Commands:
#

cron = require('cron').CronJob

module.exports = (robot) ->
  new cron '0 0 10 * * 1-5', () =>
    robot.send {room: "#kuriya-bot"}, "コアタイムが始まったよ！"
  , null, true, "Asia/Tokyo"

  new cron '0 0 17 * * 1-5', () =>
    robot.send {room: "#kuriya-bot"}, "コアタイムが終わったよ！\nお疲れ様でした!"
  , null, true, "Asia/Tokyo"

  new cron '0 0 15 * * 4', () =>
    robot.send {room: "#kuriya-bot"}, "掃除の時間だよ！"
  , null, true, "Asia/Tokyo"

  new cron '0 56 20 * * 1-5', () =>
    robot.http.get() (err, res, body) ->
      robot.send {room: "#kuriya-bot"},JSON.parse(body).image, null, true, "Asia/Tokyo"
      if JSON.parse(body).tags
        robot.send {room: "#kuriya-bot"},JSON.parse(body).tags, null, true, "Asia/Tokyo"
