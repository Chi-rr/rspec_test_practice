require 'spec_helper'

# describe class名
RSpec describe WeatherBot do
  it '天気を含む最初のツイートを返すこと' do
    status_mock = double('Status')
    allow(status_mock).to receive(:text).and_return('天気は曇り')

    twitter_client_mock = double('TwitterClient')
    allow(twitter_client).to receive(:serch).and_return([status_mock])

    weather_bot = WeatherBot.new
    allow(weather_bot).to receive(:twitter_client).and_return(twitter_client_mock)

    expect(weather_bot.serch_first_wether_tweet).to eq '天気は曇り'
  end

  # 上記と同じテスト↑
  it '天気を含む最初のツイートを返すこと(receive_message_chainを利用)' do
    weather_bot = WeatherBot.new
    allow(weather_bot).to receive_message_chain('twitter_client.search.first.text').and_return('天気は曇り')

    expect(weather_bot.search_first_weather_tweet).to eq '西脇市の天気は曇りです'
  end
end
