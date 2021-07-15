require 'spec_helper'

RSpec.describe 'fuga' do
  describe 'Slow spec' do
    let(:fruits) { %w(apple orange melon) }
    before do
      puts "Preparing..."
      sleep 2
      puts "OK."
    end

    it 'has valid items' do
      aggregate_failures 'testing items' do
        expect(fruits.size).to eq 2
        expect(fruits.uniq).to contain_exactly(*fruits)
        expect(fruits).to include 'tomato'
      end
    end

    # 2つのエクスペクテーションが失敗するにも関わらず、1件しか報告されない
    # it 'has valid items' do
      # expect(fruits.size).to eq 2
      # expect(fruits.uniq).to contain_exactly(*fruits)
      # expect(fruits).to include 'tomato'
    # end

    # 失敗する↓
    # it 'has 3 items' do
      # expect(fruits.size).to eq 2
    # end

    # 失敗する↓
    # it 'does not have duplicated items' do
      # expect(fruits.uniq).to contain_exactly(*fruits)
    # end

    # 成功する↓
    # it 'contains apple' do
      # expect(fruits).to include 'tomato'
    # end
  end
end
