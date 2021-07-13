require 'spec_helper'

RSpec.describe 'raise_errorマッチャ' do
  it 'エラーが起きることを確認' do
    expect{ 1/0 }.to raise_error ZeroDivisionError
  end
end
