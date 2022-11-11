RSpec.describe 'nested hooks' do
  before(:context) do
    puts 'Outer Before context'
  end

  before(:example) do
    puts 'Outer Before example'
  end

  it 'does basic math' do
    expect(2 + 2).to eq(4)
  end
  context 'with condition A' do
    before(:context) do
      puts 'Inner Before context'
    end

    before(:example) do
      puts 'Inner Before example'
    end

    it 'does multiplication' do
      expect(2 * 2).to eq(4)
    end
  end
end
