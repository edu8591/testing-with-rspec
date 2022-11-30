# frozen_string_literal: true

RSpec.describe '#even? method' do
  # when testing instance method we start the method with # and with a . for class name

  context 'with even number' do
    it 'should return true' do
      expect(4.even?).to eq(true)
    end
  end

  context 'with odd number' do
    it 'should return false' do
      expect(1.even?).to eq(false)
    end
  end
end
