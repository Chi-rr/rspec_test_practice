require 'spec_helper'

# describe class名
RSpec.describe User do
  let(:user) { User.new(name: '花子', age: age) }
  shared_context '12歳以下の場合' do
    let(:age) { 12 }
  end
  shared_context '12歳より大きい場合' do
    let(:age) { 13 }
  end

  describe '#greet' do
    subject { user.greet }

    context '12歳以下' do
    include_context '12歳以下の場合'
      it { is_expected.to eq '花子でーす！' }
    end
    context '13歳' do
    include_context '12歳より大きい場合'
      it { is_expected.to eq '花子です'}
    end
  end

  describe '#child?' do
    subject { user.child? }

    context '12歳以下' do
      include_context '12歳以下の場合'
      it { is_expected.to eq true }
    end

    context '12歳より大きい' do
      include_context '12歳より大きい場合'
      it { is_expected.to eq false }
    end
  end
end
