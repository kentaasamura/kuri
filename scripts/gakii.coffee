# Description:
#   新垣結衣用スクリプト
#
# Commands:
#

module.exports = (robot) ->
  robot.hear /(gakki-|がっきー|ガッキー|新垣|結衣|掟上|今日子)/i, (msg) ->
    timestamp = (new Date()).toISOString().replace(/[^0-9]/g, "")
    msg.send msg.random ["http://blogs.c.yimg.jp/res/blog-e0-c3/k_smsk_sq_soccer/folder/493625/01/3529001/img_23?1272841739?" + timestamp,
                         "http://blogs.c.yimg.jp/res/blog-e0-c3/k_smsk_sq_soccer/folder/493625/01/3529001/img_23?1272841739?" + timestamp,
                         "http://blogs.c.yimg.jp/res/blog-e0-c3/k_smsk_sq_soccer/folder/493625/01/3529001/img_23?1272841739?" + timestamp,
                         "http://i2.wp.com/holakikou.com/wp-content/uploads/2015/08/%E8%A6%AA%E6%8C%87%E3%82%92%E7%AB%8B%E3%81%A6%E3%81%A6%E3%81%84%E3%82%8B%E6%96%B0%E5%9E%A3%E7%B5%90%E8%A1%A3.jpg?" + timestamp,
                         "http://img01.hida-ch.com/usr/sitatan/08%E6%96%B0%E5%9E%A3%E7%B5%90%E8%A1%A3-1.JPG?" + timestamp,
                         "http://img01.hida-ch.com/usr/sitatan/08%E6%96%B0%E5%9E%A3%E7%B5%90%E8%A1%A3-1.JPG?" + timestamp
                         "http://www.niusnews.com/upload/imgs/default/13OctE/LEGALHIGH/23.jpg?" + timestamp,
                         "https://s3-ap-northeast-1.amazonaws.com/s3.locari.jp/web/images/p/post_element/picture/677/mobile_picture.jpg?" + timestamp,
                         "http://image.space.rakuten.co.jp/d/strg/ctrl/2/ef4cb41d4e18638c1e3fe4caddf8c862406dfb52.68.2.2.2.jpg?thum=53?" + timestamp,
                         "http://p.twpl.jp/show/large/eq5bC?" + timestamp
     ]
