RSpec.describe 'contain_exactly matcher' do
  # checks that an array contains exactly certain elements but in any order
  subject { [1, 2, 3] }

  context 'long syntax' do
    it 'should check for the presence of all elements' do
      expect(subject).to contain_exactly(1, 2, 3)
      expect(subject).to contain_exactly(3, 2, 1)
    end
  end

  context 'short syntax' do
    it { is_expected.to contain_exactly(1, 2, 3) }
  end
end
