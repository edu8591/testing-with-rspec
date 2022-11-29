RSpec.describe 'compound expectations' do
  context 25 do
    it 'can test multimple matchers' do
      expect(subject).to be_odd.and be > 20
    end

    # with sone line syntax
    it { is_expected.to be_odd.and be > 20}
  end

  context 'caterpillar' do
    it 'supports multimple expectation on a single line' do
      expect(subject).to start_with('cat').and end_with('pillar')
    end
    it { is_expected.to start_with('cat').and end_with('pillar') }
  end

  context %i[usa canada mexico] do
    it 'can check for multiple possibilities' do
      expect(subject.sample).to be(:usa).or be(:canada).or be(:mexico)
    end
  end
end
