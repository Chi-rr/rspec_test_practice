require 'spec_helper'

RSpec.describe 'changeマッチャ' do
  it '(changeなし)配列のサイズが減少することを確認' do
    array = [1, 2, 3]
    expect(array.size).to eq 3
    array.pop #=>[1, 2]
    expect(array.size).to eq 2
  end

  it 'changeを利用して、配列のサイズが減少することを確認' do
    array = [1, 2, 3]
    # expect(X).to change(Y).from(A).to(B) = Xすると、YがA→Bとなる
    expect{ array.pop }.to change{ array.size }.from(3).to(2)
  end

  it 'change×byで、A増減することを確認' do
    array = [1, 2, 3]
    # expect(X).to change(Y).by(A) = Xすると、Yが+Aor-Aとなる
    expect{ array.pop }.to change{ array.size }.by(-1)
    expect{ array.push(4, 5) }.to change{ array.size }.by(2)
  end
end
