require 'spec_helper'

# describe class名
RSpec describe WeatherBot do
  it 'エラーなく、予報をツイートすること' do
    twitter_client_mock = double('Twitter client')
    expect(twitter_client_mock).to receive(:update).with('今日は晴れです')
    weather_bot = WeatherBot.new
    allow(weather_bot).to receive(:twitter_client).and_return(twitter_client_mock)
    expect{ weather_bot.tweet_forecast }.not_to raise_error
  end
end
