# frozen_string_literal: true

require_relative '../../app/models/card'

RSpec.describe Card do
  # def card
  #   card = Card.new 'Ace', 'Spades'
  # end

  # before do
  #   @card = Card.new 'Ace', 'Spades'
  # end

  let(:card) { Card.new 'Ace', 'Spades' }


  it 'has a rank that can change' do
    # expect(card.rank).to eq('Ace') # using the method
    # expect(@card.rank).to eq('Ace') # using the before hook
    expect(card.rank).to eq('Ace')
    card.rank = 'Queen'
    expect(card.rank).to eq('Queen') # This will not work when using the helper method
  end

  it 'has a suit' do
    expect(card.suit).to eq('Spades')
  end

  it 'has custom error message' do
    comparison = 'Hearts'
    msg = "card.suit is expected to be #{comparison} but got #{card.suit} instead!"

    expect(card.suit).to eq(comparison), msg
  end
end
