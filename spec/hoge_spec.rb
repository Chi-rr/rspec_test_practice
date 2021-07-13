require 'spec_helper'

# describe class名
RSpec.describe User do
  describe '#greet' do
    let(:user) { User.new(name: '花子', age: age) }
    # subject = テストの主語。テストするものが一つに決まっている時に使用
    subject { user.greet }

    context '12歳以下であったら' do
      let(:age) { 12 }
      it { is_expected.to eq '12でーす！'  }
    end

    context '12歳より大きければ' do
      let(:age) { 13 }
      it { is_expected.to eq '13です'}
    end
  end
end
