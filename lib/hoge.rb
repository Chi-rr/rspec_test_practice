require 'twitter'　#gemが必要

class WeatherBot
  # 「天気」を検索し、はじめに返ってきたツイート文を返すメソッド
  def serch_first_wether_tweet
    twitter_client.serch('天気').first.text
  end

  def tweet_forecast
    twitter_client.update '今日は晴れです'
  end

  def twitter_client
    Twitter::REST::Client.new
  end
end
