# frozen_string_literal: true

require_relative '../../app/models/card'

RSpec.describe Card do
  # def card
  #   card = Card.new 'Ace', 'Spades'
  # end

  before do
    @card = Card.new 'Ace', 'Spades'
  end

  it 'has a rank' do
    # expect(card.rank).to eq('Ace') # using the method
    expect(@card.rank).to eq('Ace')
  end

  it 'has a suit' do
    expect(@card.suit).to eq('Spades')
  end
end
