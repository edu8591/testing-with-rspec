# frozen_string_literal: true

require_relative '../../app/models/king'

# described class lecture
RSpec.describe King do
  subject { King.new('Edward') } # if by any chance the name of the class we are testing is changed
  let(:luis) { described_class.new('Luis') } # instead of replacing the specific use of class name we use described_class

  it 'represents a great king' do
    expect(subject.name).to eq('Edward')
  end

  it 'represents a bad king' do
    expect(luis.name).to eq('Luis')
  end
end
