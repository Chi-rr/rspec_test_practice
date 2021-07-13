require 'spec_helper'

# describe class名
RSpec.describe User do
  describe '#greet' do
    let(:params) { { name: '花子' } }

    # context = describeと機能としては同じだが「条件」をグループ化するのに使用する
    context '12歳以下であったら' do
      it '語尾が「でーす！」になること' do
        user = User.new(params.merge(age: 12))
        expect(user.greet).to eq '12でーす！'
      end
    end

    context '12歳より大きければ' do
      it '語尾が「です」になること' do
        user = User.new(params.merge(age: 13))
        expect(user.greet).to eq '13です'
      end
    end
  end
end
