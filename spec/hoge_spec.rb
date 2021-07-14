require 'spec_helper'

# describe class名
RSpec describe WeatherBot do
  it 'エラーなく予報をツイートする' do
    # as_null_object = どんなメソッドも許容する。戻り値はnull object
    twitter_client_mock = double('Twitter client').as_null_object
    # allow(twitter_client_mock).to receive(:update)

    weather_bot = WeatherBot.new
    allow(weather_bot).to receive(:twitter_client).and_return(twitter_client_mock)
    expect{ weather_bot.tweet_forecast }.not_to raise_error
  end
end
