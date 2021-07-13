require 'spec_helper'

# describe class名
RSpec.describe User do
  describe '#greet' do
    let(:user) { User.new(params) } #2
    let(:params) { { name: '花子', age: age } } #3

    context '12歳以下であったら' do
      # letは遅延評価される(必要なタイミングで呼ばれる)
      let(:age) { 12 } #4
      it '語尾が「でーす！」になること' do
        expect(user.greet).to eq '12でーす！' #1
      end
    end

    context '12歳より大きければ' do
      let(:age) { 13 }
      it '語尾が「です」になること' do
        expect(user.greet).to eq '13です'
      end
    end
  end
end
