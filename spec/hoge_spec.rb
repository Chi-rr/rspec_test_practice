require 'spec_helper'

# describe class名
RSpec.describe User do
  describe '#greet' do
    it '12歳以下であったら、語尾が「でーす！」になること' do
     user = User.new(age: 12, name: 'はなこ')
     expect(user.greet).to eq '#{@age}でーす！'
    end

    it '12歳より大きければ、語尾が「です」になること' do
      user = User.new(age: 13, name: '花子')
      expect(user.greet).to eq '#{@age}です'
    end
  end
end
