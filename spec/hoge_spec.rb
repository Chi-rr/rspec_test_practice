require 'spec_helper'

# describe class名
RSpec.describe User do
  describe '#greet' do
    # context = describeと機能としては同じだが「条件」をグループ化するのに使用する
    context '12歳以下であったら' do
      it '語尾が「でーす！」になること' do
        user = User.new(age: 12, name: 'はなこ')
        expect(user.greet).to eq '#{@age}でーす！'
      end
    end

    context '12歳より大きければ' do
      it '語尾が「です」になること' do
        user = User.new(age: 13, name: '花子')
        expect(user.greet).to eq '#{@age}です'
      end
    end
  end
end
