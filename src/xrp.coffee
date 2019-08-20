# Description
#   Get current price of XRP in USD
#
# Commands:
#   hubot xrp [me] - get current price of XRP (ripple) in USD

url = 'https://api.binance.com/api/v3/ticker/price?symbol=XRPUSDT'

module.exports = (robot) ->
  robot.respond /xrp(?: me)?$/i, (msg) ->
    robot.http(url).get() (err, res, body) ->
      data = JSON.parse(body)
      msg.send "$" + data.price
