require 'twitter'　#gemが必要

class WeatherBot
  def tweet_forecast
    twitter_client.update '今日は晴れです'
  rescue => e
    notify(e)
  end

  def twitter_client
    Twitter::REST::Client.new
  end

  def notify(error)
    #error処理
  end
end
