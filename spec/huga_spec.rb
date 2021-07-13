require 'spec_helper'

RSpec.describe '四則計算' do
  it '1+1=2' do
    expect(1 + 1).to eq 2
  end
  
  specify '1+1=2' do
    expect(1 + 1).to eq 2
  end
  
  example '1+1=2' do
    expect(1 + 1).to eq 2
  end
end
