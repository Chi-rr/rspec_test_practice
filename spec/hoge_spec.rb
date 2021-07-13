require 'spec_helper'

# describe class名
RSpec.describe User do
  let(:user) { User.new(name: '花子', age: age) }

  describe '#greet' do
    xit '意図的に実行したくない(skipしたい)テスト' do
    # context '12歳より大きい' do
      let(:age) { 13 }
      it '語尾が「です」' do
        expect(user.greet).to eq '花子です'
      end
    end
  end
end
