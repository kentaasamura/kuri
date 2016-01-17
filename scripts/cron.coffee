# Description:
#   cronを使用したスクリプト
#
# Commands:
#

cron = require('cron').CronJob

module.exports = (robot) ->
  new cron '0 0 10 * * 1-5', () =>
    robot.send {room: "#kuriya-bot"}, "コアタイムです。"
  , null, true, "Asia/Tokyo"
