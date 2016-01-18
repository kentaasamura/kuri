# Description:
#   Get restaurant data from Gurunavi API
#
# Commands:
#   hubot harahe - Reply with restaurant info

Client = require("node-rest-client").Client
client = new Client()
parseString = require('xml2js').parseString

apiHost     = 'http://api.gnavi.co.jp/RestSearchAPI/20150630/?'
keyId       = 'fe6f6f4e0e7a937a6b141bfafdb94d6e'
address_    = '馬出'
hitPerPage  = 1

module.exports = (robot) ->
  robot.hear /mesi ?(.*)$/i, (msg) ->
    attr = msg.match[1].trim()
    if attr != ""
      address = attr
    else
      address = address_
    req = "#{apiHost}keyid=#{keyId}&hit_per_page=#{hitPerPage}&offset_page=1&address=#{encodeURIComponent(address)}"

    client.get req, (data, response) ->
      parseString data, (err, result) ->
        totalCount = result['response']['total_hit_count']
        offsetPage = Math.floor Math.random() * totalCount
        req = "#{apiHost}keyid=#{keyId}&hit_per_page=#{hitPerPage}&offset_page=#{offsetPage}&address=#{encodeURIComponent(address)}"

        client.get req, (data, response) ->
          parseString data, (err, result) ->
            items = result['response']['rest'][0]
            msg.send "Recommend: #{items['name']}"
            msg.send "Category: #{items['category']}"
            msg.send "Address: #{items['address']}"
            msg.send "URL: #{items['url']}"
            msg.send "Image: #{items['image_url'][0]['shop_image1']}"
