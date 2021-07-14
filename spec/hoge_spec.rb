require 'spec_helper'

# describe class名
RSpec describe WeatherBot do
  it 'エラーなく、予報をツイートすること' do
    twitter_client_mock = double('Twitter client')
    expect(twitter_client_mock).to receive(:update)
    weather_bot = WeatherBot.new
    allow(weather_bot).to receive(:twitter_client).and_return(twitter_client_mock)
    expect{ weather_bot.tweet_forecast }.not_to raise_error
  end

  it 'エラーが起こったら、通知する' do
    twitter_client_mock = double('Twitter client')
    # updateメソッドが呼ばれた時に、意図的にエラーを発生させる
    expect(twitter_client_mock).to receive(:update).and_raise('エラーが発生しました')

    weather_bot = WeatherBot.new
    allow(weather_bot).to receive(:twitter_client).and_return(twitter_client_mock)
    # エラーの発生を受け、notifyメソッドが呼ばれることを検証
    expect(weather_bot).to receive(:notify)

    # コードを実行する
    # tweet_forecastメソッドを呼び出し、notifyメソッドが呼ばれればテストはパス
    weather_bot.tweet_forecast
  end

end
