# Description:
#   橋本環奈用スクリプト
#
# Commands:
#

module.exports = (robot) ->
  robot.hear /(kanna|かんな|カンナ|環奈|天使)/i, (msg) ->
    timestamp = (new Date()).toISOString().replace(/[^0-9]/g, "")
    msg.send msg.random ["http://img.laughy.jp/19431/default_76bb62b0a89c87694f2956e246ea08db.jpg?" + timestamp,
                         "http://img.laughy.jp/19431/default_4ec7a47fd4b9ebb54fdccf11afe1b218.jpg?" + timestamp,
                         "http://everyday-e-news.com/wp-content/uploads/2014/04/samekiseki.jpg?" + timestamp,
                         "http://img.laughy.jp/15010/default_0ae5c87614a8370e5dcd148d14e9470e.jpg?" + timestamp,
                         "http://www.officiallyjd.com/wp-content/uploads/2015/04/20150401_hashimotokannna_13.jpeg?" + timestamp,
                         "http://cache2.nipc.jp/m/baseball/news/img/bb-in-140701-02_m500.jpg?" + timestamp,
                         "http://ecx.images-amazon.com/images/I/51Sr8XxBVnL.jpg?" + timestamp
    ]
