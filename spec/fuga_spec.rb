require 'spec_helper'

RSpec.describe 'hoge' do
  it '10は1以上10以下であること' do
    expect(10).to be_between(1, 10)
    # inclusive = デフォルトで両端の値含む
    expect(10).to be_between(1, 10).inclusive
  end

  # exclusive = 両端含まない
  it '10は1より大きく10より小さい数値ではないこと' do
    expect(10).not_to be_between(1, 10).exclusive
  end
end
