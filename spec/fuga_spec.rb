require 'spec_helper'

# このテストが必ずパスするようになった
class Counter
  def initialize
    @mutex = Mutex.new
    @count = 0
  end

  attr_reader :count

  def increment
    @mutex.synchronize { @count += 1 }
  end
end

RSpec.describe Counter do
  let(:counter) { Counter.new }

  it 'increments the count in a threadsafe manner' do
    threads = 10.times.map do
      Thread.new { 1000.times { counter.increment } }
    end
    threads.each &:join
    expect(counter.count).to eq 10_000
  end
end
