require 'spec_helper'

RSpec.describe 'be/eqについて' do
  let(:color1) { 'red' }
  let(:color2) { 'red' }
  
  # インスタンスが異なるので別物
  it 'beを使うとcolor1 != color2' do
    expect(color1).not_to be color2
  end

  # インスタンスが異なっても、同値のためパスする
  it 'eqを使うとcolor1 == color2' do
    expect(color1).to eq color2
  end
end
