RSpec.describe 'not_to method' do
  it 'checks that 2 values do not match' do
    # expect(5).not_to eq(5) # this will fail as it is expecting it to be Different than 5
    expect(1).not_to eq(2)
    expect('Hello').not_to eq('hello')
  end
end
