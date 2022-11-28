RSpec.describe 'all matcher' do
  # the all mathcer looks to check a specific condition for all elements of al collection
  it 'allows for aggregate check' do
    expect([5, 7, 9]).to all(be_odd)
    expect([4, 6, 8]).to all(be_even)
    expect([[], [], []]).to all(be_empty)
    expect([0, 0, 0]).to all(be_zero)
    expect([5, 7, 9]).to all(be < 10)
  end

  context [1, 2, 3] do
    # we can also use the shorthand format
    it { is_expected.to all(be < 10) }
  end
end
