require 'spec_helper'

# describe class名
RSpec describe WeatherBot do
  it 'エラーなく、予報をツイートすること' do
    twitter_client_mock = double('Twitter client')
    # 引数が一つの場合
    allow(twitter_client_mock).to receive(:update).with('今日は晴れです')

    # WeatherBotクラスの全インスタンスに対し、twitter_clientメソッドが呼ばれた時にモックを戻り値として返す
    # allow_any_instance_of(クラス).to receive(:目的のメソッド).and_return(戻り値)
    allow_any_instance_of(WeatherBot).to receive(:twitter_client).and_return(twitter_client_mock)

    weather_bot = WeatherBot.new
    # allow(weather_bot).to receive(:twitter_client).and_return(twitter_client_mock)
    expect{ weather_bot.tweet_forecast }.not_to raise_error
  end
end
