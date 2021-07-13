require 'spec_helper'

# describe class名
RSpec.describe User do
  describe '#greet' do
    let(:user) { User.new(name: '花子', age: age) }
    subject { user.greet }

    # shared_examples = 再利用したいexamoleの定義
    shared_examples '12歳までの子の挨拶' do
      it { is_expected.to eq '花子でーす！' }
    end
    context '0歳' do
      let(:age) { 0 }
      # it_behaves_like = exampleの呼び出し
      it_behaves_like '12歳までの子の挨拶'
    end
    context '12歳' do
      let(:age) { 12 }
      it_behaves_like '12歳までの子の挨拶'
    end

    shared_examples '13歳以上の人の挨拶' do
      it { is_expected.to eq '花子です'}
    end
    context '13歳' do
      let(:age) { 13 }
      it_behaves_like '13歳以上の人の挨拶'
    end
    context '100歳' do
      let(:age) { 100 }
      it_behaves_like '13歳以上の人の挨拶'
    end
  end
end
