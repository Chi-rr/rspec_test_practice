require 'spec_helper'

RSpec.describe 'includeマッチャ' do
  it '配列内に含まれる値を確認' do
    array = [1, 2, 3]
    expect(array).to include 1, 2
  end

  it 'hash内に含まれる値を確認' do
    hash = { :coffee => 100, :latte => 200, :special => { :moca => 300 } }
    expect(hash).to include :coffee
    expect(hash).to include :coffee => 100, :latte => 200
    expect(hash).not_to include :moca => 300
    expect(hash).not_to include :hoge
  end

  it '文字列に含まれる値を確認' do
    string = 'hogefuga123'
    expect(string).to include 'hoge'
    expect(string).to include 'efu'
    expect(string).not_to include 'hofu13'
  end
end
