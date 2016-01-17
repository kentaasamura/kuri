# Description:
#   橋本環奈用スクリプト
#
# Commands:
#

module.exports = (robot) ->
  robot.hear /(kanna|かんな|カンナ|環奈|天使)/i, (msg) ->
    timestamp = (new Date()).toISOString().replace(/[^0-9]/g, "")
    msg.send msg.random ["http://laughy.jp/static/img/common/blank.gif?" + timestamp,
                         "http://img.laughy.jp/19431/default_76bb62b0a89c87694f2956e246ea08db.jpg?" + timestamp,
                         "http://img.laughy.jp/19431/default_4ec7a47fd4b9ebb54fdccf11afe1b218.jpg?" + timestamp,
                         "http://laughy.jp/static/img/common/blank.gif?" + timestamp]
