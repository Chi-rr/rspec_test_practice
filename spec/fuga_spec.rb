require 'spec_helper'

RSpec.describe 'fuga' do
  describe 'ここは[1]' do
    it 'ここは[1:1]' do
      expect(true).to be true
    end
    # rspec 'spec/fuga_spec.rb[1:2]'
    describe 'ここは[1:2]' do
      it 'ここは[1:2:1]' do
        expect(true).to be true
      end
      it 'ここは[1:2:2]' do
        expect(true).to be true
      end
    end
  end
end
