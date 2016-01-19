# Description:
#   cronを使用したスクリプト
#
# Commands:
#

cron = require('cron').CronJob

module.exports = (robot) ->
  new cron '0 0 10 * * 1-5', () =>
    robot.send {room: "#free-talk"}, "コアタイムが始まったよ！"
  , null, true, "Asia/Tokyo"

  new cron '0 0 17 * * 1-5', () =>
    robot.send {room: "#free-talk"}, "コアタイムが終わったよ！\nお疲れ様でした!"
  , null, true, "Asia/Tokyo"

  new cron '0 0 15 * * 4', () =>
    robot.send {room: "#free-talk"}, "掃除の時間だよ！"
  , null, true, "Asia/Tokyo"
