require 'spec_helper'

RSpec.describe '真偽値の確認' do
  # ※Rybyは、false/nilは偽、それ以外は真
  it 'be_truthy/be_falsey、テストはパスする' do
    expect(1).to be_truthy
    expect(nil).to be_falsey
  end

  it 'be true/alseの場合、テストは失敗する' do
    expect(1).not_to be true
    expect(nil).not_to be false
  end

  it 'eq true/falseの場合、テストは同じく失敗する' do
    expect(1).not_to eq true
    expect(nil).not_to eq false
  end
end
