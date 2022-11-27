# frozen_string_literal: true

RSpec.describe Hash do
  # let(:my_hash) { {} } when we pass a class to the describe, Rspec
  # let us access an instance of said class (Hash.new in this case)
  # under the name of subject

  it 'should start off empty' do
    subject[:hola] = 'hola'
    expect(subject).not_to be_empty
  end

  it 'should be isolated for each example' do
    expect(subject).to be_empty
    expect(subject.length).to eq(0)
  end
end
