require 'rspec'
require_relative 'task2'

RSpec.describe "Foo function" do
  it 'returns the correct result when c < 0 and b != 0' do
    expect(Foo(2, 5, -1, 4)).to eq(36) # 2*(4**2)+(5**2)*4 = 36
  end

  it 'returns the correct result when c > 0 and b == 0' do
    expect(Foo(2, 0, 1, 4)).to eq(6) # (4+2)/(4/1) = 6
  end

  it 'returns the correct result for other cases' do
    expect(Foo(2, 1, 1, 4)).to eq(4) # 4/1 = 4
  end
end