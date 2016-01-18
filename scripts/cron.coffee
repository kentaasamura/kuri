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

  new cron '0 48 20 * * 1-5', () =>
    robot.http {room: "#kuriya-bot"}, "http://mstr.aozora0000.biz/"
  , null, true, "Asia/Tokyo"
      .get() (err, res, body) ->
          msg.send JSON.parse(body).image
          if JSON.parse(body).tags
            msg.send JSON.parse(body).tags
