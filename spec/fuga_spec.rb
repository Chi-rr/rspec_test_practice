require 'spec_helper'

RSpec.describe 'fuga' do
  describe 'ここは[1]' do
    it 'ここは[1:1]' do
      #fail 'わざと失敗させる'
      expect(true).to be true
    end
    describe 'ここは[1:2]' do
      it 'ここは[1:2:1]' do
        #fail 'わざと失敗させる'
        expect(true).to be true
      end
      it 'ここは[1:2:2]' do
        expect(true).to be true
      end
    end
  end
end
