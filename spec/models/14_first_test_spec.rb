require_relative '14_shared_context'

RSpec.describe 'test to use shared context' do
  include_context 'common'

  it 'should have helper methods' do
    expect(some_helper_method).to eq(5)
  end

  it 'can use shared variables' do
    expect(some_variable).to eq([1, 2, 3])
  end

  it 'can use outside instance variables' do
    expect(@foods).to be_empty
    @foods << 'apple'
    expect(@foods.length).to eq(1)
  end
end
