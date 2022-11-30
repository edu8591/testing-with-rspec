RSpec.describe 'start_with and end_with matchers' do
  context 'caterpillar' do
    it 'should check for a substring at the begining or end' do
      expect(subject).to start_with('cat')
      expect(subject).to end_with('pillar')
    end
    it { is_expected.to start_with('cat') }
    it { is_expected.to end_with('pillar') }
  end

  # it works with more than arrays
  context [:a, :b, :c] do
    it 'should check for elements at the begining or end of the array' do
      expect(subject).to start_with(:a)
      expect(subject).to start_with(:a, :b)
      expect(subject).to start_with(:a, :b, :c)
      expect(subject).to end_with(:c)
      expect(subject).to end_with(:b, :c)
    end
    it { is_expected.to start_with(:a) }
  end
end
