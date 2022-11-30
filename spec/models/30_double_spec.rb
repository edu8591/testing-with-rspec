RSpec.describe 'a random double' do
  it 'only allows defined methods to be invoked' do
    # stuntman = double('Mr. Danger', { fall_off_ladder: 'Ouch', light_on_fire: true })
    # what is inside the hash are the methods and return values of the double
    # expect(stuntman).to respond_to(:fall_off_ladder, :light_on_fire)
    # expect(stuntman.fall_off_ladder).to eq('Ouch')
    # expect(stuntman.light_on_fire).to be(true)

    # stuntman = double('Mr. Danger')
    # allow(stuntman).to receive(:fall_off_ladder).and_return('Ouch')
    # expect(stuntman.fall_off_ladder).to eq('Ouch')

    stuntman = double('Mr. Danger')
    allow(stuntman).to receive_messages(fall_off_ladder: 'Ouch', light_on_fire: true)
    expect(stuntman).to respond_to(:fall_off_ladder, :light_on_fire)
    expect(stuntman.fall_off_ladder).to eq('Ouch')
    expect(stuntman.light_on_fire).to be(true)
  end
end
