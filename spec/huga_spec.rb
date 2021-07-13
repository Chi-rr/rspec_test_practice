require 'spec_helper'

RSpec.describe 'be/eqについて' do
  it 'be_emptyがempty?と同義である' do
    expect([]).to be_empty
    expect([].empty?).to eq true
  end
end
