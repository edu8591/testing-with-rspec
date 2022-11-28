RSpec.describe 'predicate matchers' do
  let(:result) { 16 / 2 }

  it 'can be tested with ruby methods' do
    expect(result.even?).to eq(true)
  end

  it 'can be tested with predicate matchers' do
    # we can use all the other methods in ruby to test, we only append them to the be_
    expect(result).to be_even
    expect(result).not_to be_odd
  end

  describe 0 do
    it { is_expected.to be_zero }
  end
end
