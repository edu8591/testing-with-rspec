RSpec.describe 'equality matchers' do
  let(:a) { 3.0 }
  let(:b) { 3 }

  context 'the eq matcher' do
    it 'test for value and ignores the type or class' do
      expect(a).to eq(3)
      expect(b).to eq(3.0)
      expect(a).to eq(b)
    end
  end

  context 'the eql matcher' do
    it 'tests for the value including the same type or class' do
      expect(a).not_to eql(3)
      expect(b).not_to eql(3.0)
      expect(a).not_to eql(b)

      expect(a).to eql(3.0)
      expect(b).to eql(3)
    end
  end

  context 'the equal and be matcher' do
    # with this matcher we are looking for identity, meaning that they are the same object in memory
    let(:c) { [1, 2, 3] }
    let(:d) { [1, 2, 3] }
    let(:e) { c }

    it 'cares about the object identity' do
      expect(c).not_to be([1, 2, 3])
      expect(c).not_to be(d)
      expect(c).to equal(e)
    end
  end
end
