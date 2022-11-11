# frozen_string_literal: true

RSpec.describe 'Before and after hooks' do
  before(:context) do
    puts 'before context'
  end

  after(:context) do
    puts 'after context'
  end

  before(:example) do
    puts 'before example'
  end

  after(:example) {puts 'after example'}

  it 'just an example' do
    expect(true).to be(true)
  end

  it 'just another example' do
    expect(true).to be(true)
  end
end
