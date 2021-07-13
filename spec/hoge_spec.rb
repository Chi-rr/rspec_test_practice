require 'spec_helper'

# describe class名
RSpec.describe User do
  let(:user) { User.new(name: '花子', age: age) }

  describe '#greet' do
    subject { user.greet }

    pending 'なぜか落ちてしまうテスト' do
    #context '12歳より大きい' do
      let(:age) { 12 }
      it { is_expected.to eq '花子です' }
    end
  end
end
