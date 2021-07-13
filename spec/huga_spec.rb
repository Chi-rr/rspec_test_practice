require 'spec_helper'

RSpec.describe 'be/eqについて' do
  let(:color1) { 'red' }
  let(:color2) { 'red' }
  
  context 'beを使う場合' do
    # インスタンスが異なるので別物
    it 'color1 != color2' do
      expect(color1).not_to be color2
    end

    it '「同じ値であれば同じインスタンス」のためパスする' do
      expect(true).to be true
      expect(nil).to be nil
      expect(1 + 1).to be 2
      expect(:foo).to be :foo
    end
  end

  context 'eqを使う場合' do
    # インスタンスが異なっても、同値のためパスする
    it 'color1 == color2' do
      expect(color1).to eq color2
    end
  end
end
