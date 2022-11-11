# frozen_string_literal: true

RSpec.describe '#even? method' do
  # when testing instance method we start the method with # and with a . for class name

  context 'with even number' do
    expect(4.even?).to eq(true)
  end

  context 'with odd number' do
    expect(1.even?).to eq(false)
  end
end
