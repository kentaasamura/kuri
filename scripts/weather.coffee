# Description:
#   Returns weather information from weather.livedoor.com
#
#
# Commands:
#   hubot 天気 <地名> - 天気予報情報を返します

arrify = require('arrify')
dateFormat = require('dateformat')

module.exports = (robot) ->
  robot.hear /(天気|てんき|weather)/i, (msg) ->
    cityId = "400010"
    msg
      .http('http://weather.livedoor.com/forecast/webservice/json/v1')
      .query(city: cityId)
      .header('Accept', 'application/json')
      .get() (err, res, body) ->
        if err
          msg.send('うーん、わかんないや..')
          return
        result = JSON.parse(body)
        forecastTime = new Date(result.publicTime)
        msg.send "えーっと、" +
        "#{dateFormat(forecastTime, "yyyy年mm月dd日HH時MM分")}の情報によると、\n" +
        "今日の天気は#{result.forecasts[0].telop}みたい!\n" +
        "下記に詳細を書いておくね!\n\n #{result.description.text}\n"
