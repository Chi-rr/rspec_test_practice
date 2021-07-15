require 'spec_helper'

RSpec.describe "Monkey patched Calculator" do
  it 'does screwy math' do
    # モンキーパッチを当てて、addメソッドの振る舞いを変更する
    def Calculator.add(x, y)
      x - y
    end

    expect(Calculator.add(5, 10)).to eq(-5)
  end
end
