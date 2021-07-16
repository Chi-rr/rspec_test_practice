require 'spec_helper'

RSpec.describe 'hoge' do
  it '配列の個数と内容が正しいこと(順番は保証されない)' do
    x = [2, 3, 1]
    # 要素の個数、要素の同値性のみ検証し、配列の順番は検証されない(一つの配列を引数にとる)
    expect(x).to match_array([1, 3, 2])
    expect(x).to match_array [3, 2, 1]
    
    # 要素の個数、要素の同値性のみ検証し、配列の順番は検証されない(任意の数の引数を渡すことができる)
    expect(x).to contain_exactly(1, 2, 3)
  end
end
