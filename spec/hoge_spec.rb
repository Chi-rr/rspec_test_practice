require 'spec_helper'

# describe class名
RSpec describe WeatherBot do
  describe '#tweet_forecast' do
    #it 'エラーなく、予報をツイートすること' do
    #  weather_bot = WeatherBot.new
    #  expect{ weather_bot.tweet_forecast }.not_to raise_error
    #end
    it 'エラーなく、予報をツイートすること' do
      twitter_client_mock = double('Twitter client')
      #allow(twitter_client_mock).to receive(:update)

      # こうすることで、updateメソッドが呼び出されたかも検証できる↓
      expect(twitter_client_mock).to receive(:update)

      weather_bot = WeatherBot.new
      allow(weather_bot).to receive(:twitter_client).and_return(twitter_client_mock)

      expect{ weather_bot.tweet_forecast }.not_to raise_error
    end
  end
end
