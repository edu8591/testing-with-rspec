RSpec.describe 'comparison matchers' do
  it 'allows comparison with built-in ruby operators' do
    expect(10).to be > 5
    expect(10).to be < 11
    expect(10).to be >= 5
    expect(10).to be <= 11
  end

  context 100 do # if we pass it an instance the subject will be that
    it { is_expected.to be > 90 }
    it { is_expected.to be >= 100 }
    it { is_expected.to be < 500 }
    it { is_expected.to be <= 100 }
    it { is_expected.not_to be > 105 }
  end
end
