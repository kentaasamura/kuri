# Description:
#   Returns weather information from weather.livedoor.com
#
#
# Commands:
#   hubot 天気 <地名> - 天気予報情報を返します
#
# Author:
#   ryurock

arrify = require('arrify')
dateFormat = require('dateformat')

module.exports = (robot) ->
  robot.hear /天気/i, (msg) ->
    cityId = "400010"
    msg
      .http('http://weather.livedoor.com/forecast/webservice/json/v1')
      .query(city: cityId)
      .header('Accept', 'application/json')
      .get() (err, res, body) ->
        if err
          msg.send('天気の取得に失敗しました')
          return
        result = JSON.parse(body)
        forecastTime = new Date(result.publicTime)
        msg.send "【お天気情報】\n" +
        "■  #{dateFormat(forecastTime, "yyyy年mm月dd日HH時MM分")}の予報です\n" +
        "予報 : #{result.forecasts[0].telop}\n" +
        "#{result.description.text}\n"
