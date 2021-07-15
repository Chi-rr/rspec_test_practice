require 'spec_helper'

RSpec.describe "Calculator" do
  it 'adds numbers' do
    expect(Calculator.add(1, 2)).to eq(3)
  end
end
