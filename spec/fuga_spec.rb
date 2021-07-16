require 'spec_helper'

RSpec.describe 'hoge' do
  it 'すべての数値が偶数であること' do
    # allマッチャ= 全要素trueであることを検証
    expect([2, 4, 6]).to all( be_even )
  end
end
