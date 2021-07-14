require 'spec_helper'

# describe class名
RSpec describe WeatherBot do
  describe '#tweet_forecast' do
    #it 'エラーなく、予報をツイートすること' do
    #  weather_bot = WeatherBot.new
    #  expect{ weather_bot.tweet_forecast }.not_to raise_error
    #end
    it 'エラーなく、予報をツイートすること' do
      # Twitter::REST::Clientのモックオブジェクト作成↓
      # double(引数：任意) = モックオブジェクト作成
      twitter_client_mock = double('Twitter client')
      # twitter_client.update できるようにしている↓
      # allow(モックオブジェクト).to receive(メソッド名) = 呼び出し可能なメソッドを指定
      allow(twitter_client_mock).to receive(:update)

      weather_bot = WeatherBot.new
      # weather_botにtwitter_clientメソッドを呼び出されたら、twitter_client_mockを返すようにする
      allow(weather_bot).to receive(:twitter_client).and_return(twitter_client_mock)

      expect{ weather_bot.tweet_forecast }.not_to raise_error
    end
  end
end
