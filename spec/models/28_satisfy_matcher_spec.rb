RSpec.describe 'satify matcher' do
  subject { 'racecar' }

  it 'is a palindrome' do
    expect(subject).to satisfy { |value| value == value.reverse }
  end

  it 'can accept a custom message' do
    expect(subject).to satisfy('be a palindrome') do |value|
      value == value.reverse
    end

    expect(subject).to satisfy("be #{subject.reverse}") { |value| value == value.reverse }
  end
end
