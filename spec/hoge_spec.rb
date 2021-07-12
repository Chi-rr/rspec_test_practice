require 'spec_helper'

# describe = テストのグループ化
RSpec.describe '四則計算' do

  # itはexample(it do...end)という単位にまとめる
  # 1つのexample内には、1つのエクスペクテーションが原則
  it '1+1は2になる' do
    expect(1 + 1).to eq 2
  end

  # describeのネストもOK
  describe '引き算' do
    it '10-1は9' do
      expect(10 - 1).to eq 9
    end
  end
end
