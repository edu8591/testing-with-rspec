RSpec.describe 'include matcher' do
  context 'hot chocolate' do
    it 'should check for substring inclussion' do
      expect(subject).to include('hot')
      expect(subject).to include('choc')
      expect(subject).to include('late')
    end

    it { is_expected.to include('choc') }
  end

  context [10, 20, 30] do
    it 'should check for inclussion regardless of order' do
      expect(subject).to include(10)
      expect(subject).to include(20)
      expect(subject).to include(30)
      expect(subject).to include(30, 10)
      expect(subject).not_to include(40)
    end

    it { is_expected.to include(30, 10, 20) }
  end

  context({ a: 2, b: 4 }) do
    it 'can check for a key existance' do
      expect(subject).to include(:a)
      expect(subject).to include(:a, :b)
      expect(subject).to include(:b, :a)
    end
    it 'can check for a key value pair' do
      expect(subject).to include(a: 2)
      expect(subject).to include(a: 2, b: 4)
    end
  end
end
